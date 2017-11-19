<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
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
        'name'
    ];


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
		'updated_at',
    ];

}