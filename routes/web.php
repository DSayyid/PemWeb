<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\MahasiswaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Models\Mahasiswa;

Route::get('/', function () {
    return redirect('/mahasiswa');
});

Route::middleware('auth')->group(function () {

    Route::resource('mahasiswa', MahasiswaController::class);

});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::middleware('auth')->group(function () {

    Route::get(
        '/dashboard',
        [DashboardController::class, 'index']
    );

    Route::resource(
        'mahasiswa',
        MahasiswaController::class
    );

});

/*
|--------------------------------------------------------------------------
| API untuk n8n
|--------------------------------------------------------------------------
*/

Route::get('/api/mahasiswa', function () {
    return response()->json(Mahasiswa::all());
});

Route::post('/api/mahasiswa', [MahasiswaController::class, 'store']);

Route::delete('/api/mahasiswa/{id}', [MahasiswaController::class, 'destroy']);

Route::get('/api/mahasiswa/cari/{keyword}', function ($keyword) {

    $mahasiswa = Mahasiswa::where('nama', 'like', "%{$keyword}%")
        ->orWhere('nim', 'like', "%{$keyword}%")
        ->get();

    return response()->json($mahasiswa);
});