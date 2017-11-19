<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Films Routes
Route::post    ('films/{film}/post-comment/{user}',  'Api\FilmController@postComment');
Route::resource('films',   'Api\FilmController');

// \Event::listen('Illuminate\Database\Events\QueryExecuted', function ($query) {
//     echo'<pre>';
//     var_dump($query->sql);
//     var_dump($query->bindings);
//     var_dump($query->time);
//     echo'</pre>';
// });
