<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEkstrakulikulersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ekstrakulikuler', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('tapel_id')->unsigned();
            $table->unsignedBigInteger('pembina_id')->unsigned();
            $table->string('nama_ekstrakulikuler', 50);
            $table->timestamps();

            $table->foreign('tapel_id')->references('id')->on('tapel');
            $table->foreign('pembina_id')->references('id')->on('guru');

            // Guru ID == Pembina
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ekstrakulikuler');
    }
}
