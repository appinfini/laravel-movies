<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Response;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;

class ResponseServiceProvider extends ServiceProvider
{
    /**
     * Register the application's response macros.
     *
     * @return void
     */
    public function boot(ResponseFactory $factory, Request $request)
    {
        $factory->macro('api', function ($data) use ($factory, $request) {
			
			//Prep messages
			$messages = array();
			if ( array_key_exists( 'messages', $data ) ) {
				
				//If it's array
				if ( is_array( $data['messages'] ) ) {
					
					//Remove custom keys!
					$messages = array_values( $data['messages'] );
					
				} else {
					$messages[] = $data['messages'];
				}
			}
		
			//Final custom format
			$customFormat = [
                'messages' => count( $messages ) > 0 ? implode( ' ', $messages ) : __('Api/global.global_success_result_available'),
                'data' => array_key_exists( 'result', $data ) ? $data['result'] : (object) array(),
                'error_code' => array_key_exists( 'error_code', $data ) ? $data['error_code'] : 0,
				'request' => [
					'params' => $request->all(),
					'headers' => $request->header(),
					'files'   => $_FILES,
				],
            ];

			//Final response
			return response::json(
				$customFormat,
				array_key_exists( 'status_code', $data ) ? $data['status_code'] : 200
			);
		});
    }

	
    /**
     * Register
     *
     * @return void
     */
	public function register()
	{
	}
}