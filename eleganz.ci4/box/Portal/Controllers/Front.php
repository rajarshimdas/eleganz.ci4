<?php

namespace Rd\Portal\Controllers;

class Front extends BadDragon
{
    
    function __construct()
    {

    }

    public function index()
    {
        
        
        $user = $this->user;
        /*
        echo '<pre>';
        var_dump($user->username);
        echo '</pre>';
       */ 
        $data = [
            'user_id' => $user->id,
            'username' => $user->username,
            "year" => '2024',

        ];
        return view('Rd\Portal\Views\home', $data);
    
    }
}
