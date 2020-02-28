<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSocmatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('socmatches', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('report_overview')->nullable();
            $table->string('report_detail')->nullable();
            $table->string('home_team')->nullable();
            $table->string('away_team')->nullable();
            $table->string('home_score')->nullable();
            $table->string('away_score')->nullable();
            $table->string('image')->nullable();
            $table->string('media_url')->nullable();
            $table->string('match_date')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('socmatches');
    }
}
