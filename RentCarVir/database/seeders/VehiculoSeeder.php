<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Vehiculo; // Asegúrate de tener este modelo creado
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class VehiculoSeeder extends Seeder
{
    /**
     * Ejecuta las semillas de la base de datos.
     *
     * @return void
     */
    public function run()
    {
        // ⚠️ Desactivar claves foráneas si existen relaciones (si usas claves foráneas)
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // 💣 Eliminar todos los registros anteriores (si es necesario, dependiendo de tu caso)
        Vehiculo::truncate();

        // ✅ Reactivar claves foráneas
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // 🚗 Insertar nuevos datos sin el campo 'id' (deja que la base de datos lo maneje)
        Vehiculo::create([
            'matricula' => '2222AAA',
            'modelo' => 'Yaris Hybrid',
            'marca' => 'Toyota',
            'motor' => 'Hibrido',
            'cambio' => 'Automatico',
            'equipamiento' => 'Navegador',
            'puertas' => 4,
            'asientos' => 5,
            'autonomia' => 600.00,
            'color' => 'Blanco',
            'foto' => 'storage/vehiculo/10.png',
            'descripcion' => 'El Toyota Yaris Hybrid es un coche compacto ideal para ciudad, gracias a su tamaño reducido y su eficiencia energética. Su sistema híbrido combina un motor de gasolina con uno eléctrico, ofreciendo una conducción suave, silenciosa y con bajo consumo. Dispone de cambio automático, navegador, y etiqueta ECO, lo que lo convierte en una excelente opción para circular por zonas restringidas al tráfico.',
            'disponible' => 1,
            'emision' => '2025-04-15',
            'vencimiento' => '2026-04-15',
            'costoDiario' => 90.00,
            'created_at' => now(),
            'updated_at' => now(),
            'lat' => 36.5364000,
            'lng' => -4.6218000,
            'ruta_json' => '[ { "lat": 36.540970, "lng": -4.638239 }, { "lat": 36.541750, "lng": -4.637800 } ]'
        ]);

        Vehiculo::create([
            'matricula' => '2222BBB',
            'modelo' => 'Ioniq Hybrid',
            'marca' => 'Hyundai',
            'motor' => 'Hibrido',
            'cambio' => 'Automatico',
            'equipamiento' => 'Control crucero adaptativo, pantalla táctil, sensores',
            'puertas' => 5,
            'asientos' => 5,
            'autonomia' => 900.00,
            'color' => 'Gris plata',
            'foto' => 'storage/vehiculo/11.png',
            'descripcion' => 'El Hyundai Ioniq Hybrid es una berlina moderna que destaca por su eficiencia y confort. Su sistema híbrido permite una conducción económica tanto en ciudad como en carretera. Ofrece un diseño elegante, buena capacidad de maletero y un interior cómodo equipado con tecnologías de asistencia al conductor.',
            'disponible' => 0,
            'emision' => '2025-04-15',
            'vencimiento' => '2026-04-15',
            'costoDiario' => 85.00,
            'created_at' => now(),
            'updated_at' => now(),
            'lat' => null,
            'lng' => null,
            'ruta_json' => '[ { "lat": 36.550000, "lng": -4.640000 }, { "lat": 36.551000, "lng": -4.641000 } ]'
        ]);
    }
}
