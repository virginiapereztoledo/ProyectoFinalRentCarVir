<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('alquiler', function (Blueprint $table) {
            $table->time('horaRecogida')->change();
            $table->time('horaEntrega')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('alquiler', function (Blueprint $table) {
            $table->string('horaRecogida', 5)->change();  // Si es que originalmente usaba 5 caracteres.
            $table->string('horaEntrega', 5)->change();  // Lo mismo para horaEntrega.
        });
    }
};
