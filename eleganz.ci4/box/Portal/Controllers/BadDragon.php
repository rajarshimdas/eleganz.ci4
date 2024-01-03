<?php

namespace Rd\Portal\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

// ci4 shield
// use CodeIgniter\Shield\Entities\User;


/**
 * Class BadDragon
 *
 * BadDragon provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BadDragon
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BadDragon extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BadDragon.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Be sure to declare properties for any property fetch you initialized.
     * The creation of dynamic property is deprecated in PHP 8.2.
     */
    // protected $session;

    /**
     * The currently logged in User
     * 
     * @var array
     */
    protected $user;

    /**
     * @return void
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();



        // Shield - Fetch details of currently logged in User
        $ci4_users_id = $_SESSION['user']['id'];

        // Get the User Provider (UserModel by default)
        $users = auth()->getProvider();
        // To get the complete user object with ID, we need to get from the database
        $thisUser = $users->findById($ci4_users_id);

        $contactsModel = model('ContactsModel');
        $userArray = $contactsModel
                        ->where('ci4_users_id', $ci4_users_id)
                        ->where('active', 1)
                        ->asArray()
                        ->find();

        if (count($userArray) > 0) {
            $user = $userArray[0];
        } else {
            die('Error :: Your [ '.$thisUser->username.' ] profile details could not be fetched.');
        }

        $user['ci4_users_id'] = $ci4_users_id;
        $user['username'] = $thisUser->username;

        $this->user = $user;
    }
}
