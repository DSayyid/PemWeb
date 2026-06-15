<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Mahasiswa</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background:#f4f7fb;">

<div class="container py-5">

    <div class="card shadow border-0 rounded-4">

        <div class="card-body p-5">

            <h2 class="fw-bold mb-4">
                Tambah Mahasiswa
            </h2>

@if ($errors->any())

<div class="alert alert-danger">

    <ul class="mb-0">

        @foreach ($errors->all() as $error)

            <li>{{ $error }}</li>

        @endforeach

    </ul>

</div>

@endif

            <form action="/mahasiswa" method="POST">

                @csrf

                <div class="mb-3">

                    <label class="form-label">
                        NIM
                    </label>

                    <input type="text"
                           name="nim"
                           class="form-control"
                           required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Nama
                    </label>

                    <input type="text"
                           name="nama"
                           class="form-control"
                           required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Jurusan
                    </label>

                    <input type="text"
                           name="jurusan"
                           class="form-control"
                           required>

                </div>

                <div class="mb-4">

                    <label class="form-label">
                        Email
                    </label>

                    <input type="email"
                           name="email"
                           class="form-control"
                           required>

                </div>

                <button class="btn btn-primary">
                    Simpan
                </button>

                <a href="/mahasiswa" class="btn btn-secondary">
                    Kembali
                </a>

            </form>

        </div>

    </div>

</div>

</body>
</html>