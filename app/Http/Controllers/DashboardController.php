<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;

class DashboardController extends Controller
{
    public function index()
    {
        $totalMahasiswa = Mahasiswa::count();

        $totalJurusan = Mahasiswa::distinct('jurusan')
            ->count('jurusan');

        $mahasiswaTerbaru = Mahasiswa::latest()
            ->take(5)
            ->get();

        return view(
            'dashboard',
            compact(
                'totalMahasiswa',
                'totalJurusan',
                'mahasiswaTerbaru'
            )
        );
    }
}