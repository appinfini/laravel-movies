<?php

$config = [

    /*
    |--------------------------------------------------------------------------
    | APIs Configs
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

	'films' => [
		'images' => [
			'resize'   => [
				'medium' => ['height' => 600, 'width' => 600],//Auto width
			],
		],
	],
];

return $config;
