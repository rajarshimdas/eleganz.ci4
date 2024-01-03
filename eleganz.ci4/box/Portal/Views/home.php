<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eleganz</title>
    <link rel="icon" href="<?= base_url('box/images/arkafe.png') ?>">

    <link href="box/bs5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="box/bs5/js/bootstrap.min.js"></script>
    <script src="box/jquery.min.js"></script>
    <link href="box/style.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="rd-banner" class="container-fluid">
        <div class="rd-banner-top row">

            <div class="col">
                Eleganz
            </div>
            <div class="col">
                CONCERT
            </div>
            <div class="rd-banner-profile col col-md-2">
                <div>
                    <?= $user['dname'] ?>
                </div>
                <div>
                    <a href="<?= base_url('profile') ?>">Profile</a> | <a href="<?= base_url('logout') ?>">Logout</a>
                </div>
            </div>
            <div class="col col-auto">
                <img src="<?= base_url('box/images/concert.jpg') ?>" alt="CONCERT" height="35px">
            </div>
        </div>
        <div class="container-fluid">
            <ul id="rd-nav" class="nav nav-pills">
                <li class="nav-item active">
                    <a class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MIS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">CRM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">HRM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Projects</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Timesheets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Wiki</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="rd-banner-menu">
        Menubar
    </div>





    Welcome, <?= $user['dname'] ?> to home page. uid: <?= $ci4_user_id ?>


    <pre>
        <?php // var_dump($user); 
        ?>
    </pre>