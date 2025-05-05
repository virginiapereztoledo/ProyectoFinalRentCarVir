<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Cliente;
use App\Models\Empleado;
use App\Models\Vehiculo;
use App\Models\Alquiler;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            ClienteSeeder::class,
            EmpleadoSeeder::class,
            VehiculoSeeder::class,
            AlquilerSeeder::class,
            UsuarioSeeder::class,
        ]);
    }

}

