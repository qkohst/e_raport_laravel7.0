<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13RencanaNilaiSpiritualsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_rencana_nilai_spiritual', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelajaran_id')->unsigned();
            $table->unsignedBigInteger('k13_butir_sikap_id')->unsigned();
            $table->timestamps();

            $table->foreign('pembelajaran_id')->references('id')->on('pembelajaran');
            $table->foreign('k13_butir_sikap_id')->references('id')->on('k13_butir_sikap');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_rencana_nilai_spiritual');
    }
}
