<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eleganz</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap" rel="stylesheet">

    <link href="box/bs5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="box/bs5/js/bootstrap.min.js"></script>
    <script src="box/jquery.min.js"></script>
    <link href="box/style.css" rel="stylesheet" type="text/css">

</head>

<body>
    <style>
        #rd-banner {
            background-color: var(--rd-banner-bgcolor);
            color: var(--rd-banner-color);
            font-weight: 700;
        }

        #rd-nav {
            font-weight: 400;
        }

        #rd-nav.nav-link {
            text-decoration: none;

        }

        #rd-nav li.nav-item * {
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
            height: 32px;
            margin: auto;
            padding: 4px 25px 0 25px;
        }

        #rd-nav li.nav-item :hover {
            background-color: RGB(160, 160, 160);
            color: black;
        }

        #rd-nav li.active,
        #rd-nav li.active :hover {
            background-color: RGB(200, 200, 200);
        }

        #rd-nav li a {
            color: white;
        }

        #rd-nav li.active a {
            color: black;
        }

        .rd-banner-top {
            height: 50px;
            margin: auto;

        }

        .rd-banner-top div {
            /* background-color: yellow; */
            vertical-align: middle;
            margin: auto;
        }

        .rd-banner-top a {
            text-decoration: none;
            font-weight: 400;
            font-size: 0.7rem;
            color: white;
        }

        .rd-banner-profile {
            display: block;
            text-align: right;
            font-size: 0.8rem;
            margin: auto
        }
    </style>
    <div id="rd-banner" class="container-fluid">
        <div class="rd-banner-top row">

            <div class="col">
                Eleganz
            </div>
            <div class="col">
                Placeholder
            </div>
            <div class="rd-banner-profile col">
                <div>
                    <?= $user['dname'] ?>
                </div>
                <div>
                    <a href="<?= base_url('profile') ?>">Profile</a> | <a href="<?= base_url('logout') ?>">Logout</a>
                </div>

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
    
    <div style="background-color: RGB(200, 200, 200);color:black; text-align:center;padding:0.3rem;border-bottom:1px solid black; height:50px">
        Menubar
    </div>




    <h1>
        Welcome, <?= $user['dname'] ?> to home page. uid: <?= $ci4_user_id ?>
    </h1>

    <pre>
        <?php var_dump($user); ?>
    </pre>