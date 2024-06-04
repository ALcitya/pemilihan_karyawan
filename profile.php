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
                                <!-- Display user data in a table -->
                                <table class="table table-striped">
                                    <tr>
                                        <th>Username</th>
                                        <td><?php echo $data['username']; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Phone Number</th>
                                        <td><?php echo $data['telp']; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Update</th>
                                        <td><a class="btn btn-dark" href="ubah-profile.php?id_user=<?php echo $data['id_user']; ?>">Update</a></td>
                                    </tr>
                                </table>
                                <hr>
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
