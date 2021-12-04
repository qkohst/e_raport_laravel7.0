<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13RencanaBobotPenilaiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_rencana_bobot_penilaian', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelajaran_id')->unsigned();
            $table->integer('bobot_ph');
            $table->integer('bobot_pts');
            $table->integer('bobot_pas');
            $table->timestamps();

            $table->foreign('pembelajaran_id')->references('id')->on('pembelajaran');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_rencana_bobot_penilaian');
    }
}
