<?php

namespace Rd\Portal\Controllers;

class Front extends PortalController
{
    public function home(): string
    {
        return 'Portal';
        //return view('welcome_message');
    }
}
