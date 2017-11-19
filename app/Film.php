<?php
namespace App;

// Database
use Illuminate\Database\Eloquent\Model;

// File Storage
use Illuminate\Support\Facades\Storage;

class Film extends Model
{

    /**
     * Update created_at and updated_at columns.
     *
     * @var bool
     */
	public $timestamps = true;

	
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'country_id', 'genre_id', 'name', 'slug', 'description', 'release_date', 'rating', 'ticket_price', 'cover'
    ];


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
		'updated_at',
    ];


    /**
     * Set the cover link.
     *
     * @param  string  $value
     * @return string
     */
    public function getCoverAttribute($value)
    {
        // Film cover path
        $path = 'app/public/films/';

		// If image is empty or file not exists
		if (empty ($value))
			return storage_path($path . 'custom/default-cover.png');

        //If cover exists
        return storage_path( $path . $value );

    }

    /**
     * Get the country record associated with the film.
     */
    public function country()
    {
        return $this->belongsTo('App\Country');
    }


    /**
     * Get the comments record associated with the film.
     */
    public function comments()
    {
        return $this->hasMany('App\FilmComment');
    }


    /**
     * Get the genres record associated with the film.
     */
    public function genres()
    {
        return $this->hasMany('App\FilmGenre');
    }

}