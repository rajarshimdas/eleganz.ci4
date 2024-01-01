<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Home::index');

// Ci4 Shield
// https://shield.codeigniter.com/quick_start_guide/using_session_auth/

service('auth')->routes($routes);
// service('auth')->routes($routes, ['except' => ['login', 'register']]);
service('auth')->routes($routes, ['except' => ['login']]);

//$routes->get('login', '\App\Controllers\Auth\LoginController::loginView');
//$routes->get('register', '\App\Controllers\Auth\RegisterController::registerView');

