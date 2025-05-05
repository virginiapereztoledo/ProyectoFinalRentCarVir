<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AlquilerSeeder extends Seeder
{
    public function run()
    {
        // Insertar registros en la tabla alquiler
        DB::table('alquiler')->insert([
            [
                'fechaRecogida' => Carbon::parse('2025-05-10 8:00:00'),
                'lugarRecogida' => 'Calle Ficticia 456, Fuengirola',
                'horaRecogida' => '8:00:00',
                'fechaEntrega' => Carbon::parse('2025-05-12 8:00:00'),
                'lugarEntrega' => 'Calle Ficticia 456, Fuengirola',
                'horaEntrega' => '8:00:00',
                'importe' => 180,
                'activo' => 1,  // Puede ser 1 o 0, dependiendo si está activo o no
                'clienteID' => 1,  // ID del cliente existente
                'vehiculoID' => 1,  // ID del vehículo insertado (Yaris Hybrid)
            ],
            [
                'fechaRecogida' => Carbon::parse('2025-05-15 8:00:00'),
                'lugarRecogida' => 'Calle Ejemplo 101, Fuengirola',
                'horaRecogida' => '8:00:00',
                'fechaEntrega' => Carbon::parse('2025-05-18 8:00:00'),
                'lugarEntrega' => 'Calle Ejemplo 101, Fuengirola',
                'horaEntrega' => '8:00:00',
                'importe' => 255,
                'activo' => 1,  // Puede ser 1 o 0
                'clienteID' => 4946,  // ID del cliente existente
                'vehiculoID' => 2,  // ID del vehículo insertado (Ioniq Hybrid)
            ],
        ]);
    }
}
