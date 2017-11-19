<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFilmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        // Run mingration only if schema has countries and genres tables
        if (Schema::hasTable('countries') and Schema::hasTable('genres')) {

            Schema::create('films', function (Blueprint $table) {
                $table->increments('id');
                $table->tinyInteger('country_id')->unsigned();
                $table->string('name', 100);
                $table->string('slug', 100)->unique();;
                $table->text('description')->nullable();
                $table->date('release_date');
                $table->float('rating', 2, 1)->default(0);
                $table->float('ticket_price', 4, 1)->default(0);
                $table->string('cover', 100);
                $table->timestamps();

                //Indexes
                $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
                $table->foreign('genre_id')->references('id')->on('genres')->onDelete('cascade');
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
        Schema::dropIfExists('films');
    }
}
