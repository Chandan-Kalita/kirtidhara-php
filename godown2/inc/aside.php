<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
        <img src="dist/img/logo-1.jpg" alt="Kirtidhara Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Kirtidhara</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <!--<div class="image">-->
            <!--    <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">-->
            <!--</div>-->
            <div class="info">
                <a style="text-transform:capitalize" href="#" class="d-block"><?php echo $_SESSION['NAME2'] ?></a>
            </div>
            <div class="info">

                <a style="color: red;" href="logout.php" class="d-block"><i class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a>
            </div>
        </div>


        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="index.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Home
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="add_products.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Add Products
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="unit.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Add Unit
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="transaction.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Transaction
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="req.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Sheet
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="invoice.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Invoice
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="change_pass.php" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            Change Password
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>