<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSocmatchesTeamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('socmatches_teams', function (Blueprint $table) {
            $table->unsignedBigInteger('socmatch_id');
            $table->unsignedBigInteger('team_id');
            $table->primary(['socmatch_id', 'team_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('socmatches_teams');
    }
}
