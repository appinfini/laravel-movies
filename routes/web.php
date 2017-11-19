<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

Auth::routes();

Route::get('/',             'FilmController@index');
Route::get('/films/',       'FilmController@filmsList')->name('films');
Route::get('/films/{slug}', 'FilmController@filmsShow')->name('filmsShow');
