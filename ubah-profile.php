<!DOCTYPE html>
<html lang="en">
<?php
require "layout/head.php";
require "include/conn.php";

$username = $_SESSION['username']; // Assuming username is stored in session
$query = mysqli_query($db, "SELECT * FROM saw_users WHERE username='$username'");
$data = mysqli_fetch_array($query);
?>
<body>
    <div id="app">
        <?php require "layout/sidebar.php"; ?>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            <div class="page-heading">
                <h3>Profile</h3>
            </div>
            <div class="page-content">
                <section class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="card">
                            <div class="card-header bg-primary text-white">
                                <h4 class="card-title">Profile</h4>
                            </div>
                            <div class="card-body">
                                <div class="text-center mb-4">
                                    <!-- Display user's photo -->
                                    <?php if (!empty($data['photo'])): ?>
                                        <img src="./assets/photo/<?php echo $data['photo'] ?>" alt="User Photo" class="img-fluid rounded-circle" style="width: 150px; height: 150px;">
                                    <?php else: ?>
                                        <img src="./assets/photo/user.png" alt="Default User Icon" class="img-fluid rounded-circle mt-3" style="width: 150px; height: 150px;">
                                    <?php endif; ?>
                                </div>
                                <hr>
                                <!-- Profile update form -->
                                <form action="update-profile.php" method="POST" enctype="multipart/form-data">
                                    <div class="form-group mb-3">
                                        <label for="photo" class="form-label">Profile Photo:</label>
                                        <input type="file" id="photo" name="photo" class="form-control">
                                        <input type="hidden" name="photo_lama" value="<?php echo $data['photo']; ?>">
                                    </div>
                                    <div class="form-group mb-3">
                                        <input type="hidden" id="id_user" name="id_user" value="<?php echo $data['id_user']; ?>" class="form-control" required>
                                        <label for="username" class="form-label">Username:</label>
                                        <input type="text" id="username" name="username" value="<?php echo $data['username']; ?>" class="form-control" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="telp" class="form-label">Phone Number:</label>
                                        <input type="number" id="telp" name="telp" value="<?php echo $data['telp']; ?>" class="form-control" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="password" class="form-label">Password:</label>
                                        <input type="password" id="password" name="password" class="form-control">
                                        <small class="text-muted">Leave blank if you don't want to change the password.</small>
                                    </div>
                                    <button type="submit" name="submit" class="btn btn-primary">Update Profile</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <?php require "layout/footer.php"; ?>
        </div>
    </div>
    <?php require "layout/js.php"; ?>
</body>
</html>
