<?php

namespace Rd\Portal\Controllers;

class Front extends BaseController
{
    private $ns = "123";
    
    public function home(): string
    {
        return 'Portal Page';
        //return view('welcome_message');
    }
    public function index()
    {
        $data = [
            "year" => '2024',
        ];
        return view('Rd\Portal\Views\home', $data);
    }
}
