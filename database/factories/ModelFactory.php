<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Film::class, function (Faker\Generator $faker) {

    $countryID = random_int(App\Country::min('id'), App\Country::max('id'));
    $filmName  = $faker->words(3, true);

    return [
        'country_id'   => $countryID,
        'name'         => ucwords($filmName),
        'slug'         => str_slug($filmName, '-'),
        'description'  => $faker->text(500),
        'release_date' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'rating'       => rand(1,5),
        'ticket_price' => rand(50,999),
        'cover'        => $faker->image('storage/app/public/films', 400, 400, 'cats', false),
    ];
});

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\FilmComment::class, function (Faker\Generator $faker) {

    $filmID = rand(App\Film::min('id'), App\Film::max('id'));
    $userID = rand(App\User::min('id'), App\User::max('id'));

    return [
        'film_id'  => $filmID,
        'user_id'  => $userID,
        'comment'  => $faker->text(500),
    ];
});

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\FilmGenre::class, function (Faker\Generator $faker) {

    $filmID  = rand(App\Film::min('id'), App\Film::max('id'));
    $genreID = rand(App\Genre::min('id'), App\Genre::max('id'));

    return [
        'film_id'  => $filmID,
        'genre_id'  => $genreID,
    ];
});

