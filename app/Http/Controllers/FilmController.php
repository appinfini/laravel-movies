<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;

class FilmController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Redirect to films route.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return redirect()->route('films');
    }

    /**
     * Show the listing of all movies.
     *
     * @return \Illuminate\Http\Response
     */
    public function filmsList(Request $request)
    {
        //Calling API for getting film list
        $response = $this->callApi('GET', 'films', $request);

        //If film present then providing data to view
        $data['films'] = !empty ($response['data']['films']) ? $response['data']['films'] : [];

        //View page
        $data['paginate'] = $this->paginate($data['films']);
        return view('films/list', $data);
    }

    /**
     * Guzzle calls.
     *
     * @return \Illuminate\Http\Response
     */
    public function callApi($method = 'GET', $uri, $request, $params =  [])
    {
        //Prepping form params
        $formParams = $method == 'GET' ? array_merge($request->all(), $params) : ['form_params' => $params];
        $responseBody = [];

        //Calling resource
        $client       = new GuzzleHttp\Client();
        $response     = $client->request(
            $method,
            env('APP_URL') . '/api/' . $uri,
            $formParams
        );

        //If it's a success?
        if (!empty($response->getBody()) and $response->getStatusCode() == 200) {

            //Check if response is okay?
            $responseBody = json_decode((string)$response->getBody(), true);
        }

        return $responseBody;
    }

    /**
     * Paginate Handler.
     *
     * @return \Illuminate\Http\Response
     */
    public function paginate($array)
    {
        $currentPage = LengthAwarePaginator::resolveCurrentPage();

        $col = new Collection($array['data']);

        $currentPageSearchResults = $col->slice(($currentPage - 1) * $array['per_page'], $array['per_page'])->all();

        return new LengthAwarePaginator($currentPageSearchResults, count($col), $array['per_page']);
    }
}
