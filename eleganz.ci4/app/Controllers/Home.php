<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        
        echo ROOTPATH;
        return view('welcome_message');
    }
}
