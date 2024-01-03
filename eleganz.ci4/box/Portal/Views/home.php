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
    </style>
    <div id="rd-banner" class="container-fluid">
        <p>
            Eleganz <a class="btn btn-light" href="<?= base_url('logout') ?>">logout</a>
        </p>
        <div class="container-fluid">
            <style>
                #rd-nav {
                    font-weight: 400;
                }

                #rd-nav.nav-link {
                    text-decoration: none;

                }

                #rd-nav li.nav-item {
                    border-radius: 0;
                }

                #rd-nav li.nav-item :hover {
                    background-color: RGB(160, 160, 160);
                    color: black;
                    border-radius: 0;
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
            </style>
            <ul id="rd-nav" class="nav nav-pills">
                <li class="nav-item active">
                    <a class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Projects</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Addressbook</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Wiki</a>
                </li>
            </ul>
        </div>

    </div>
    <div style="background-color: RGB(200, 200, 200);color:black; text-align:center;padding:0.3rem;">
        Menubar
    </div>




    <h1>
        Welcome, <?= $user['dname'] ?> to home page. uid: <?= $ci4_user_id ?>
    </h1>

    <pre>
        <?php var_dump($user); ?>
    </pre>