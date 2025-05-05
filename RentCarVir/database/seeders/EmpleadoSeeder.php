<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Empleado;

class EmpleadoSeeder extends Seeder
{
    /**
     * Ejecuta las semillas de la base de datos.
     */
    public function run(): void
    {
        // ⚠️ Desactiva claves foráneas
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Vacía la tabla de empleados
        Empleado::truncate();

        // Activa claves foráneas de nuevo
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // Crea registros de ejemplo
        Empleado::create([
            'id' => 1,
            'nombre' => 'empleado',
            'apellidos' => 'empleado',
            'foto' => 'storage/empleado/1.png',
        ]);

        Empleado::create([
            'id' => 4885,
            'nombre' => 'virginia',
            'apellidos' => 'perez',
            'foto' => 'storage/empleado/4885.png',
        ]);

        Empleado::create([
            'id' => 4886,
            'nombre' => 'TestdosTestdos',
            'apellidos' => 'TestdosTestdos',
            'foto' => 'storage/empleado/4886.png',
        ]);
    }
}
