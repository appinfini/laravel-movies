<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;

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
        //Default alert
        $messages = [];

        //If posting comment
        if ($request->isMethod('post')) {

            //Calling API for posting comment
            $response = $this->callApi('POST', $request->path() . '/post-comment/' . Auth::User()->id, $request);
            $messages = $this->messages_parser($response);
        }

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
        $film['genre']    = $genreText;
        $data['film']     = $film;
        $data['messages'] = $messages;
        return view('films/show', $data);
    }

    /**
     * Create film.
     *
     * @return \Illuminate\Http\Response
     */
    public function filmsCreate(Request $request)
    {
        //Default alert
        $messages = [];

        //If posting comment
        if ($request->isMethod('post')) {

            //Calling API for creating film
            $response = $this->callApi('POST', 'films', $request);
            $messages = $this->messages_parser($response);

            //If success, then redirecting to new created film.
            if (array_key_exists('error_code', $response) and $response['error_code'] == 0)
                return redirect('films/' . $response['data']['film']['slug']);
        }

        //Calling API for getting film creation data
        $response = $this->callApi('GET', $request->path(), $request);

        //If film present then providing data to view
        $films = !empty ($response['data']['films']) ? $response['data']['films'] : [];

//        $genreText = '';
//        if (count($film) > 0) {
//            if (count($film['genres']) > 0) {
//                foreach ($film['genres'] as $k => $genre) {
//                    $genreText .= ($k == 0 ? '' : ', ') . $genre['genre']['name'];
//                }
//            }
//        }

        //View page
//        $film['genre']    = $genreText;
        $data['films']    = $films;
        $data['messages'] = $messages;
        return view('films/create', $data);
    }

    /**
     * Guzzle calls.
     *
     * @return \Illuminate\Http\Response
     */
    public function callApi($method = 'GET', $uri, $request, $params =  [])
    {
        //Prepping form params
        $formParams = $method == 'GET' ? ['query' => array_merge($request->all(), $params)] : ['form_params' => array_merge($request->all(), $params)];
        $responseBody = [];

        //Including headers
        if (Auth::check()) {
            $accessToken = Auth::User()->createToken('Auth')->accessToken;

            $formParams = array_merge($formParams, [
                'headers' => [
                    'Accept' => 'application/json',
                    'Authorization' => 'Bearer '.$accessToken,
                ],
            ]);
        }

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
     * Paginate.
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

    /**
     * Response parser for success and error messages.
     *
     * @return array
     */
    public function messages_parser($response)
    {
        // Default response
        $result = [
            'success' => [],
            'error'   => [],
        ];

        // If response not present
        if (empty($response) or empty($response['messages']) or !array_key_exists('error_code', $response))
            return $result;

        // If success message
        if ($response['error_code'] == 0)
            $result['success'] = $response['messages'];

        // If error message
        if ($response['error_code'] != 0)
            $result['error'] = $response['messages'];

        // Return response
        return $result;
    }

}
