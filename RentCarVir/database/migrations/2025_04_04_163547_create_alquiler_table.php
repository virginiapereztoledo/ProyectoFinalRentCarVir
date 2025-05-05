<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
<<<<<<< HEAD
    public function up(): void
    {
        Schema::create('alquiler', function (Blueprint $table) {
            $table->id(); // ID auto incrementable de la tabla

            // Definición de los campos del alquiler
=======
    public function up(): void{
        Schema::create('alquiler', function (Blueprint $table) {
            $table->id();
>>>>>>> d158cc9ab74152c3b9d486272152d953da8c375e
            $table->date("fechaRecogida");
            $table->string("lugarRecogida", 100);
            $table->string("horaRecogida", 5);
            $table->date("fechaEntrega");
            $table->string("lugarEntrega", 100);
            $table->string("horaEntrega", 5);
<<<<<<< HEAD
            $table->decimal("importe", 9, 2);  // Añadido decimal de dos cifras
            $table->boolean("activo"); // Campo de actividad para el alquiler

            // Definición de las claves foráneas
            $table->unsignedBigInteger("clienteID"); // Relación con el cliente
            $table->foreign('clienteID')->references('id')->on('cliente')->onDelete('cascade');

            $table->unsignedBigInteger("vehiculoID"); // Relación con el vehículo
            $table->foreign('vehiculoID')->references('id')->on('vehiculo')->onDelete('cascade');

            // Definición de timestamps para el registro de fechas
            $table->timestamps(); // Para tener campos de created_at y updated_at si es necesario
=======
            $table->decimal("importe", 9);
            $table->boolean("activo");
            $table->unsignedBigInteger("clienteID" );
            $table->foreign('clienteID')->references('id')->on('cliente')->onDelete('cascade');
            $table->unsignedBigInteger("vehiculoID");
            $table->foreign('vehiculoID')->references('id')->on('vehiculo')->onDelete('cascade');
>>>>>>> d158cc9ab74152c3b9d486272152d953da8c375e
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
<<<<<<< HEAD
        // Elimina la tabla de alquiler
=======
>>>>>>> d158cc9ab74152c3b9d486272152d953da8c375e
        Schema::dropIfExists('alquiler');
    }
};
