<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFilmCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Run mingration only if schema has films tables
        if (Schema::hasTable('films')) {

            Schema::create('film_comments', function (Blueprint $table) {
                $table->increments('id');
                $table->integer('film_id')->unsigned();
                $table->integer('user_id')->unsigned();
                $table->text('comment');
                $table->timestamps();

                //Indexes
                $table->foreign('film_id')->references('id')->on('films')->onDelete('cascade');
                $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('film_comments');
    }
}
