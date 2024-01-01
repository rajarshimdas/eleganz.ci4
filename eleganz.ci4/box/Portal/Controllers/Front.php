<?php

namespace Rd\Portal\Controllers;

class Front extends BaseController
{
    private $db;
    private $user_id;
    private $user;
    

    function __construct(){

        $this->db = db_connect();
        $this->user_id = $_SESSION["user"]["id"];
        
        $this->user = rdGetUserById($this->user_id, $this->db);

    }

    public function index()
    {
        
        $data = [
            'user_id' => $this->user_id,
            'user' => $this->user,
            "year" => '2024',
        ];
        return view('Rd\Portal\Views\home', $data);
    }
}
