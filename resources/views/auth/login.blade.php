<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>T-Verse Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;

    background:
    radial-gradient(circle at top left,#4f8cff,#001f5c),
    radial-gradient(circle at bottom right,#00c6ff,#001f5c);

    overflow:hidden;
}

.blob{
    position:absolute;
    border-radius:50%;
    filter:blur(100px);
}

.blob1{
    width:300px;
    height:300px;
    background:#4f8cff;

    top:-50px;
    left:-50px;
}

.blob2{
    width:300px;
    height:300px;
    background:#00c6ff;

    bottom:-50px;
    right:-50px;
}   

.login-card{

    width:420px;

    background:rgba(255,255,255,.12);

    backdrop-filter:blur(15px);

    border-radius:25px;

    padding:40px;

    color:white;

    box-shadow:
    0 10px 40px rgba(0,0,0,.2);

}

.login-card{
    transition:.3s;
}

.login-card:hover{
    transform:translateY(-5px);
}

.logo{

    font-size:3rem;

    margin-bottom:15px;

}

.form-control{

    border-radius:12px;

}

.btn-login{

    border-radius:12px;

    padding:12px;

    font-weight:bold;

}

.subtitle{

    opacity:.8;

    font-size:.9rem;

}

</style>

</head>
<body>

<div class="blob blob1"></div>
<div class="blob blob2"></div>

<div class="login-card">

    <div class="text-center mb-4">

        <i class="bi bi-stars logo"></i>

        <h1 class="fw-bold">
            T-Verse
        </h1>

        <p class="subtitle">
            Academic Data Management System
        </p>

    </div>

    <form method="POST" action="{{ route('login') }}">

        @csrf

        <div class="mb-3">

            <label>Email</label>

            <input
            type="email"
            name="email"
            class="form-control"
            required>

        </div>

        <div class="mb-4">

            <label>Password</label>

            <input
            type="password"
            name="password"
            class="form-control"
            required>

        </div>

        <button
        class="btn btn-light w-100 btn-login">

            <i class="bi bi-box-arrow-in-right"></i>

            Login   

        </button>

    </form>

</div>

</body>
</html>
```
