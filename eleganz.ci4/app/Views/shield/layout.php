<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title><?= $this->renderSection('title') ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?= base_url('box/bs5/css/bootstrap.min.css') ?>" rel="stylesheet">

    <?= $this->renderSection('pageStyles') ?>
</head>

<body class="bg-light">

    <main role="main" class="container">
        <?= $this->renderSection('main') ?>
    </main>

<?= $this->renderSection('pageScripts') ?>
</body>
</html>
