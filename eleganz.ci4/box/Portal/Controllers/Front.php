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

        $data = [
            'user' => $user,
            'ci4_user_id' => $user['ci4_users_id'],
            'username' => $user['username'],
            
            
        ];
        return view('Rd\Portal\Views\home', $data); 
        
    }
}
