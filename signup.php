<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/pages/auth.css">
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <style>
        body {
            background-color: #d7e3fc;
            font-family: 'Nunito', sans-serif;
        }

        #auth {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        #auth-left {
            background-color: #3366cc;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }

        #auth-left h3 {
            color: white;
            text-align: center;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .form-control {
            background-color: #cbd7f3;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
        }

        .form-control::placeholder {
            color: #556789;
        }

        .form-control-icon {
            color: #556789;
        }

        .btn-primary {
            background-color: #0047ab;
            border: none;
            padding: 10px;
            border-radius: 4px;
            width: 100%;
            margin-top: 20px;
        }

        .btn-primary:hover {
            background-color: #003a8c;
        }

        .text-center {
            text-align: center;
        }

        .auth-title {
            color: #3366cc;
        }

        .auth-subtitle {
            color: #333;
        }

        #auth-right {
            display: none;
        }

        @media (min-width: 992px) {
            #auth-right {
                display: block;
                background-image: url('assets/images/background.jpg');
                background-size: cover;
                background-position: center;
            }
        }

        .text-white {
            color: white;
        }
    </style>
</head>

<body>
    <div id="auth">
        <div class="row h-100 w-100">
            <div class="col-lg-12 d-flex align-items-center justify-content-center">
                <div id="auth-left">
                    <h3 class="auth-title">Pemilihan Karyawan Terbaik</h3>
                    <h4 class="auth-subtitle text-white text-center mb-4">SIGN UP</h4>
                    <form action="signup-act.php" method="post">
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="email" class="form-control form-control-xl" required placeholder="Email" name="username">
                            <div class="form-control-icon">
                                <i class="bi bi-person"></i>
                            </div>
                        </div>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="number" class="form-control form-control-xl" required placeholder="Telepon" name="telp">
                            <div class="form-control-icon">
                                <i class="bi bi-phone"></i>
                            </div>
                        </div>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="password" class="form-control form-control-xl" required placeholder="Password" name="password">
                            <div class="form-control-icon">
                                <i class="bi bi-shield-lock"></i>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Log in</button>
                    </form>
                    <div class="text-center mt-3 text-white">
                        Sudah punya akun? <a href="login.php" class="text-white"><strong>Login</strong></a>
                    </div>
                </div>
            </div>
            <!-- <div class="col-lg-6 d-none d-lg-block">
                <div id="auth-right">
                </div>
            </div> -->
        </div>
    </div>
</body>

</html>
