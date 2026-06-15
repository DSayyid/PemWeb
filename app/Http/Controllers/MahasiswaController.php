<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mahasiswa;

class MahasiswaController extends Controller
{
    // =========================
    // TAMPILKAN DATA
    // =========================
    public function index(Request $request)
    {
        $search = $request->search;

        $mahasiswa = Mahasiswa::when($search, function ($query) use ($search) {

            $query->where('nama', 'like', "%{$search}%")
                ->orWhere('nim', 'like', "%{$search}%")
                ->orWhere('jurusan', 'like', "%{$search}%");

        })->get();

        $totalJurusan = Mahasiswa::distinct('jurusan')
            ->count('jurusan');

        return view('welcome', compact(
            'mahasiswa',
            'totalJurusan'
        ));
    }

    // =========================
    // FORM CREATE
    // =========================
    public function create()
    {
        return view('create');
    }

    // =========================
    // SIMPAN DATA
    // =========================
    public function store(Request $request)
    {
        $request->validate([
            'nim' => 'required',
            'nama' => 'required',
            'jurusan' => 'required',
            'email' => 'required|email'
        ]);

        $mahasiswa = Mahasiswa::create([
            'nim' => $request->nim,
            'nama' => $request->nama,
            'jurusan' => $request->jurusan,
            'email' => $request->email
        ]);

        if ($request->is('api/*')) {

            return response()->json([
                'message' => 'Data mahasiswa berhasil ditambahkan!',
                'data' => $mahasiswa
            ]);
        }

        return redirect('/mahasiswa')
            ->with('success', 'Data mahasiswa berhasil ditambahkan!');
    }

    // =========================
    // FORM EDIT
    // =========================
    public function edit(string $id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);

        return view('edit', compact('mahasiswa'));
    }

    // =========================
    // UPDATE DATA
    // =========================
    public function update(Request $request, string $id)
    {
        $request->validate([
            'nim' => 'required',
            'nama' => 'required',
            'jurusan' => 'required',
            'email' => 'required|email'
        ]);

        $mahasiswa = Mahasiswa::findOrFail($id);

        $mahasiswa->update([
            'nim' => $request->nim,
            'nama' => $request->nama,
            'jurusan' => $request->jurusan,
            'email' => $request->email
        ]);

        return redirect('/mahasiswa')
            ->with('success', 'Data mahasiswa berhasil diupdate!');
    }

    // =========================
    // HAPUS DATA
    // =========================
    public function destroy(Request $request, string $id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);

        $mahasiswa->delete();

        if ($request->is('api/*')) {

            return response()->json([
                'message' => 'Data mahasiswa berhasil dihapus!',
                'id' => $id
            ]);
        }

        return redirect('/mahasiswa')
            ->with('success', 'Data mahasiswa berhasil dihapus!');
    }

    // =========================
    // SEARCH DATA
    // =========================
    public function search(string $keyword)
    {
        $mahasiswa = Mahasiswa::where('nama', 'LIKE', "%{$keyword}%")
            ->orWhere('nim', 'LIKE', "%{$keyword}%")
            ->get();

        return response()->json($mahasiswa);
    }
}