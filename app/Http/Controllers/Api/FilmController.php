<?php

namespace App\Http\Controllers\Api;

// Basics
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;

// Custom
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class FilmController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['only' => ['store', 'postComment']]);
    }

    /**
     * Listing of all films.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get Films
        $resultSet = \App\Film::with(['country', 'genres', 'comments'])
            ->paginate(1);

        if ($resultSet->count() < 1)
            return response()->api(['messages' => __('Api/global.global_no_more_data'), 'error_code' => 18]);

        //Response
        return response()->api(['result' => ['films' => $resultSet]]);
    }

    /**
     * Store a newly created film.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation rules
        $validator = Validator::make( $request->all(), [
            'country'       => 'required|numeric|exists:countries,id',
            'name'          => 'required|max:100',
            'description'   => 'required|max:5000',
            'release_date'  => 'required|date',
            'rating'        => 'required|integer|between:1,5',
            'ticket_price'  => 'required|integer|between:50,999',
            'genre'         => 'required',
            'genre.*'       => 'required|numeric|exists:genres,id',
            'cover'         => 'image',
        ]);

        // If validation fails
        if ( $validator->fails() ) {
            $errors = $validator->errors()->all();
            return response()->api(['messages' => $errors, 'error_code' => 1]);
        }

        //Uploading cover if uploaded
        $image = $request->file('cover');
        $fileName = '';
        if (!empty($image)) {
            // Resize image to small size and save it
            $uploadPath = 'app/public/films/';

            // Random file name based on microseconds
            $fileName = uniqid() .'_'. mt_rand() . '.' . $image->extension();

            // Small image
            $resizeConfig = config('api.films.images.resize.medium');
            Image::make($image)
                ->resize($resizeConfig['width'], $resizeConfig['height'], function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(storage_path($uploadPath . $fileName));
        }

        // Create film
        $film = \App\Film::create([
            'country_id'    => $request->input('country'),
            'name'          => $request->input('name'),
            'slug'          => str_slug($request->input('name'), '-'),
            'description'   => $request->input('description'),
            'release_date'  => date('Y-m-d H:i:s', strtotime($request->input('release_date'))),
            'rating'        => $request->input('rating'),
            'ticket_price'  => $request->input('ticket_price'),
            'cover'         => $fileName,
        ]);

        // If filmID is generated, then adding genres referance to the film
        if ( !empty ($film['film_id']) ) {

            //Prepping an array to save genres
            foreach ($request->input('genre') as $genre) {

                $addGenres = [
                    'film_id' => $film['film_id'],
                    'genre_id' => $genre,
                ];
            }

            $film->genres()->createMany($addGenres);
        }

        // Return response
        return response()->api(['result' => ['film' => $film->toArray()], 'messages' => __('Api/film.success_film_created')]);
    }

    /**
     * Store a new comment.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function postComment(\App\Film $film, \App\User $user, Request $request)
    {
        // Validation rules
        $validator = Validator::make( $request->all(), [
            'comment'       => 'required|min:3|max:5000',
        ]);

        // If validation fails
        if ( $validator->fails() ) {
            $errors = $validator->errors()->all();
            return response()->api(['messages' => $errors, 'error_code' => 1]);
        }

        // Create comment
        $comment = \App\FilmComment::create([
            'user_id'  => $user->id,
            'film_id'  => $film->id,
            'comment'  => $request->input('comment'),
        ]);

        // Return response
        return response()->api(['result' => ['comment' => $comment->toArray()], 'messages' => __('Api/film.success_comment_created')]);
    }

    /**
     * Display the specified film.
     *
     * @param  \App\Film $film
     * @return \Illuminate\Http\Response
     */
    public function show(\App\Film $film)
    {
        //Response
        return response()->api(['result' => ['films' => $film]]);
    }
}
