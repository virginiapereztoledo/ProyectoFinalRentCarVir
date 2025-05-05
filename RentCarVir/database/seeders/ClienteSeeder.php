<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Cliente;
use Illuminate\Support\Facades\DB;

class ClienteSeeder extends Seeder
{
    public function run()
    {
        // Desactiva las restricciones de clave foránea temporalmente si es necesario
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Elimina todos los clientes
        Cliente::query()->delete();

        // Activa nuevamente las claves foráneas
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // Inserta clientes fijos
        Cliente::create([
            'id' => 1,
            'nombre' => 'cliente',
            'apellidos' => 'cliente',
            'domicilio' => 'calle fuengirola',
            'ocupacion' => 'Estudiante',
            'fechaNacimiento' => '1995-01-01',
            'foto' => 'storage/cliente/1.png',
        ]);

        Cliente::create([
            'id' => 4946,
            'nombre' => 'clienteuno',
            'apellidos' => 'clienteuno',
            'domicilio' => 'sin',
            'ocupacion' => 'No especificado',
            'fechaNacimiento' => '2000-10-10',
            'foto' => 'storage/cliente/4946.png',
        ]);


    }
}
