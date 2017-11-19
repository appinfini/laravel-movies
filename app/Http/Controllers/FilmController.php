<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp;
use Illuminate\Routing\Route;

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

        //Get paginate links
        $data['paginate'] = $this->paginate($data['films'], $request);

        //View page
        return view('films/list', $data);
    }

    /**
     * Show the specific film.
     *
     * @return \Illuminate\Http\Response
     */
    public function filmsShow(Request $request)
    {
        //Calling API for getting film list
        $response = $this->callApi('GET', $request->path(), $request);

        //If film present then providing data to view
        $film = !empty ($response['data']['films']) ? $response['data']['films'] : [];

        $genreText = '';
        if (count($film) > 0) {
            if (count($film['genres']) > 0) {
                foreach ($film['genres'] as $k => $genre) {
                    $genreText .= ($k == 0 ? '' : ', ') . $genre['genre']['name'];
                }
            }
        }

        //View page
        $film['genre'] = $genreText;
        $data['film'] = $film;
        return view('films/show', $data);
    }

    /**
     * Guzzle calls.
     *
     * @return \Illuminate\Http\Response
     */
    public function callApi($method = 'GET', $uri, $request, $params =  [])
    {
        //Prepping form params
        $formParams = $method == 'GET' ? ['query' => array_merge($request->all(), $params)] : ['form_params' => $params];
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
     * Paginate
     *
     * @return array
     */
    public function paginate($data, $request)
    {
        $prevPageURL = '';
        $nextPageURL = '';

        //If prev page is present
        if (!empty($data['prev_page_url']))
            $prevPageURL = '<a href="'.$request->url() .'?page='. ($data['current_page'] - 1).'" class="btn btn-primary pull-left" role="button">Previous</a>';

        //If next page is present
        if (!empty($data['next_page_url']))
            $nextPageURL = '<a href="'.$request->url() .'?page='. ($data['current_page'] + 1).'" class="btn btn-primary pull-right" role="button">Next</a>';

        //Return paginate URLs
        return [
            'prevPageURL' => $prevPageURL,
            'nextPageURL' => $nextPageURL,
        ];
    }

}
