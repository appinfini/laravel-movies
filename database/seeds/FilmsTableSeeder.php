<?php

use Illuminate\Database\Seeder;

class FilmsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Add 3 films and 1 comment for each movie
        factory(App\Film::class, 3)->create()->each(function ($film) {
            $film->genres()->save(factory(App\FilmGenre::class)->make());
            $film->comments()->save(factory(App\FilmComment::class)->make());
        });
    }
}
