<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', '\Rd\Portal\Controllers\Front::index');
$routes->get('/portal', '\Rd\Portal\Controllers\Front::home');

