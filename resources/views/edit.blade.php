<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Mahasiswa</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background:#f4f7fb;">

<div class="container py-5">

    <div class="card shadow border-0 rounded-4">

        <div class="card-body p-5">

            <h2 class="fw-bold mb-4">
                Edit Mahasiswa
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

            <form action="/mahasiswa/{{ $mahasiswa->id }}" method="POST">

                @csrf
                @method('PUT')

                <div class="mb-3">

                    <label class="form-label">
                        NIM
                    </label>

                    <input type="text"
                           name="nim"
                           class="form-control"
                           value="{{ $mahasiswa->nim }}"
                           required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Nama
                    </label>

                    <input type="text"
                           name="nama"
                           class="form-control"
                           value="{{ $mahasiswa->nama }}"
                           required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Jurusan
                    </label>

                    <input type="text"
                           name="jurusan"
                           class="form-control"
                           value="{{ $mahasiswa->jurusan }}"
                           required>

                </div>

                <div class="mb-4">

                    <label class="form-label">
                        Email
                    </label>

                    <input type="email"
                           name="email"
                           class="form-control"
                           value="{{ $mahasiswa->email }}"
                           required>

                </div>

                <button class="btn btn-primary">
                    Update
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