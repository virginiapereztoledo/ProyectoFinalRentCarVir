<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsuarioSeeder extends Seeder
{
    public function run()
    {
        // ⚠️ Desactivar las restricciones de claves foráneas (si existen relaciones)
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // 💣 Eliminar todos los registros anteriores de la tabla 'usuario'
        DB::table('usuario')->truncate();

        // ✅ Reactivar las restricciones de claves foráneas
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // 🚀 Insertar los registros sin especificar 'id' (la base de datos lo manejará)
        DB::table('usuario')->insert([
            [
                'username' => 'clientecliente',
                'password' => Hash::make('Cliente1'), // Cambia la contraseña según lo que desees
                'utenteable_id' => 1,
                'utenteable_type' => 'App\Models\Cliente',
                'remember_token' => 'FzX5RjAKd4HNkapq0fYsjo8mEEcrcUCeeOhtW8TeQZ5KhzCPotacDxllLgti',
            ],
            [
                'username' => 'empleadoempleado',
                'password' => Hash::make('Empleado1'), // Cambia la contraseña según lo que desees
                'utenteable_id' => 1,
                'utenteable_type' => 'App\Models\Empleado',
                'remember_token' => 'yRNRqevnIORXEqxtMUFavqDi5BczELMjbe3jIC9IE6EnpxxD2wYzG04Rn6Kf',
            ],
            [
                'username' => 'adminadmin',
                'password' => Hash::make('Admin1'), // Cambia la contraseña según lo que desees
                'utenteable_id' => null,
                'utenteable_type' => 'Admin',
                'remember_token' => '71Su1iMWqs9qLubXl7jmYzEe5hrCXmrmu3yMD9zEswwbBNIlArGsTOyjE6d6',
            ],
            // Agrega más usuarios según lo necesites
        ]);
    }
}
