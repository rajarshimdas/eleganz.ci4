<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        
        $userModel = model('Ci4userModel');
        $users = $userModel->asArray()->where('active >', '0')->findAll();

        var_dump($users);
        
        return view('welcome_message');
    }
}
