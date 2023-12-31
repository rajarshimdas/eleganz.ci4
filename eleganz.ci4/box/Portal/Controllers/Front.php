<?php

namespace Rd\Portal\Controllers;

class Front extends BaseController
{
    public function home(): string
    {
        return 'Portal Page';
        //return view('welcome_message');
    }
}
