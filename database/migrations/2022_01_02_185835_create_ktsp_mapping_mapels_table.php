<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKtspMappingMapelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ktsp_mapping_mapel', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('mapel_id')->unsigned();
            $table->enum('kelompok', ['1', '2', '3']);
            $table->integer('nomor_urut');
            $table->timestamps();

            $table->foreign('mapel_id')->references('id')->on('mapel');
        });

        // Kelompok 
        // 1 = Mapel Wajib
        // 2 = Pilihan
        // 3 = Muatan Lokal
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ktsp_mapping_mapel');
    }
}
