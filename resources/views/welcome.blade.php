<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Pendataan Mahasiswa</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        body{
            background-color: #f4f7fb;
        }

        .navbar{
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .hero{
            background: linear-gradient(135deg, #0d6efd, #4f8cff);
            color: white;
            padding: 50px;
            border-radius: 25px;
        }

        .hero h1{
            font-weight: bold;
        }

        .card-custom{
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .stat-card{
            border-radius: 20px;
            padding: 25px;
            color: white;
        }

        .bg-blue{
            background: linear-gradient(135deg, #0d6efd, #4f8cff);
        }

        .bg-green{
            background: linear-gradient(135deg, #198754, #38c172);
        }

        .bg-orange{
            background: linear-gradient(135deg, #fd7e14, #ffb347);
        }

        .table thead{
            background-color: #0d6efd;
            color: white;
        }

        .btn-custom{
            border-radius: 10px;
        }

        @media(max-width: 768px){

            .hero{
                text-align: center;
                padding: 30px;
            }

            .search-input{
                width: 100% !important;
            }

        }

    </style>

</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

        <div class="container">

            <a class="navbar-brand fw-bold" href="/dashboard">
    <i class="bi bi-globe2"></i>
    T-Verse
</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav ms-auto align-items-center">

    <li class="nav-item">
        <a class="nav-link" href="/dashboard">
            <i class="bi bi-speedometer2"></i>
            Dashboard
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link active" href="/mahasiswa">
            <i class="bi bi-people-fill"></i>
            Mahasiswa
        </a>
    </li>
        
    <li class="nav-item me-3">

        <span class="text-white">

            <i class="bi bi-person-circle"></i>

            {{ Auth::user()->name }}

        </span>

    </li>

    <li class="nav-item">

        <form method="POST"
              action="{{ route('logout') }}">

            @csrf

            <button class="btn btn-light btn-sm">

                <i class="bi bi-box-arrow-right"></i>

                Logout

            </button>

        </form>

    </li>

</ul>

            </div>

        </div>

    </nav>


    <div class="container py-5">

        <!-- HERO -->
        <div class="hero mb-5">

            <div class="row align-items-center">

                <div class="col-lg-8">

                    <h1 class="mb-3 fw-bold">
    T-Verse Student Management
</h1>

<p class="mb-4 fs-5">
    Platform manajemen mahasiswa berbasis Laravel & Automation.
    Kelola data mahasiswa
    dan pantau seluruh aktivitas kampus dalam satu dashboard.
</p>

                    <a href="/mahasiswa/create"
                       class="btn btn-light btn-lg btn-custom">

                        <i class="bi bi-plus-circle"></i>
                        Tambah Mahasiswa

                    </a>

                </div>

                <div class="col-lg-4 text-center mt-4 mt-lg-0">

                    <i class="bi bi-cpu-fill" style="font-size: 120px;"></i>

                </div>

            </div>

        </div>


        <!-- STATISTIC -->
        <div class="row g-4 mb-5">

            <div class="col-md-4">

                <div class="stat-card bg-blue">

                    <h5>Total Mahasiswa</h5>

                    <h1 class="fw-bold">
                        {{ count($mahasiswa) }}
                    </h1>

                </div>

            </div>

            <div class="col-md-4">

                <div class="stat-card bg-green">

                    <h5>Jurusan</h5>

                    <h1 class="fw-bold">
                      {{ $totalJurusan }}
                    </h1>

                </div>

            </div>

            <div class="col-md-4">

                <div class="stat-card bg-orange">

                    <h5>Data Aktif</h5>

                    <h1 class="fw-bold">
                        {{ count($mahasiswa) }}
                    </h1>

                </div>

            </div>

        </div>

        @if(session('success'))

<div class="alert alert-success alert-dismissible fade show mb-4">

    {{ session('success') }}

    <button type="button"
            class="btn-close"
            data-bs-dismiss="alert">
    </button>

</div>

@endif

        <!-- TABLE CARD -->
        <div class="card card-custom p-4">

            <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center gap-3 mb-4">

                <div>

                    <h3 class="fw-bold mb-1">
                        Data Mahasiswa
                    </h3>

                    <p class="text-muted mb-0">
                        Daftar seluruh mahasiswa yang terdaftar.
                    </p>

                </div>

            </div>


            <div class="row mb-3">

    <div class="col-md-6">

        <form method="GET" action="/mahasiswa">

            <div class="input-group">

                <input
                    type="text"
                    name="search"
                    class="form-control"
                    placeholder="Cari nama, NIM, atau jurusan..."
                    value="{{ request('search') }}">

                <button class="btn btn-primary">

                    <i class="bi bi-search"></i>

                </button>

            </div>

        </form>

    </div>

</div>

            <!-- TABLE -->
            <div class="table-responsive">

                <table class="table table-hover align-middle">

                    <thead>

                        <tr>
                            <th>No</th>
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Jurusan</th>
                            <th>Email</th>
                            <th>Aksi</th>
                        </tr>

                    </thead>

                    <tbody>

                        @forelse($mahasiswa as $m)

                        <tr>

                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $m->nim }}</td>
                            <td>{{ $m->nama }}</td>
                            <td>{{ $m->jurusan }}</td>
                            <td>{{ $m->email }}</td>

                            <td>

                                <a href="/mahasiswa/{{ $m->id }}/edit"
                                   class="btn btn-warning btn-sm">

                                    <i class="bi bi-pencil-square"></i>

                                </a>

                                <form action="/mahasiswa/{{ $m->id }}"
                                      method="POST"
                                      style="display:inline;">

                                    @csrf
                                    @method('DELETE')

                                    <button class="btn btn-danger btn-sm"
                                            onclick="return confirm('Yakin hapus data?')">

                                        <i class="bi bi-trash"></i>

                                    </button>

                                </form>

                            </td>

                        </tr>

                        @empty

                        <tr>

                            <td colspan="6" class="text-center text-muted py-4">

                                Belum ada data mahasiswa.

                            </td>

                        </tr>

                        @endforelse

                    </tbody>

                </table>

            </div>

        </div>


        <!-- FOOTER -->
        <div class="text-center mt-5 text-muted">

            <p>
                © 2026 T-Verse • Student Management & Automation System
            </p>

        </div>

    </div>


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>