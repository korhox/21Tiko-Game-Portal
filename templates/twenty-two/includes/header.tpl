<!DOCTYPE html>
<html lang="fi">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>21TIKO Peliportaali</title>
        <meta name="theme-color" content="#4e008e">
        <meta name="description" content="2021 vuonna aloittaneiden opiskelijoiden 2022 vuonna tehdyt pelit">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" media="screen,print">
        <link rel="stylesheet" href="{$config->syspath}/templates/{$config->smarty->template_dir}/css/theme.min.css" media="screen,print" />
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700;800&display=swap" rel="stylesheet" media="screen,print">
        <script async src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <!-- Add your own FontAwesome kit here -->
    </head>

    <body>
        <div class="container d-flex justify-content-between align-items-center py-5">
            <div>
                <a href="{$config->syspath}">
                    <h1 class="d-flex align-items-center">
                        <i class="fa-solid fa-2x fa-person-from-portal"></i>
                        <span>21TIKO Peliportaali</span>
                    </h1>
                </a>
            </div>
            <div>
                <div class="dropdown">
                    <span class="btn btn-primary d-flex align-items-center dropdown-toggle m-0 p-0 pe-3" id="dd1" data-bs-toggle="dropdown" aria-expanded="false" role="button"><i class="fa-solid fa-flag p-3" style="font-size:130% !important;opacity:0.8;"></i></span>
                    <ul class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="dd1">
                        <li><a class="dropdown-item" href="{$config->syspath}">Suomeksi</a></li>
                        <li><a class="dropdown-item" href="{$config->syspath}/en/">In English</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
            <div class="container">
                <div class="navbar-nav w-100 g-0">
                    <a class="nav-link" href="/21tiko/"><i class="fa-solid fa-person-from-portal"></i> Portaali</a>
                    <a class="nav-link" href="https://www.tuni.fi/fi/tule-opiskelemaan/tietojenkasittelyn-tutkinto-ohjelma"><i class="fa-solid fa-book"></i> Tutkinto-ohjelma</a>
                    <a class="nav-link ms-auto" href="https://github.com/korhox/21tiko-game-portal" target="_blank"><i class="fa-brands fa-github"></i>Game Portal GitHub</a>
                </div>
            </div>
</nav>