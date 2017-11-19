<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class FilmComment extends Model
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
        'film_id', 'user_id', 'comment'
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
     * Get the genre record associated with the film.
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }

}