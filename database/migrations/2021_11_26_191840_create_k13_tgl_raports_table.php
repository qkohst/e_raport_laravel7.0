<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateK13TglRaportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('k13_tgl_raport', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tapel_id')->unique()->unsigned();
            $table->string('tempat_penerbitan', 50);
            $table->date('tanggal_pembagian');
            $table->timestamps();

            $table->foreign('tapel_id')->references('id')->on('tapel');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('k13_tgl_raport');
    }
}
