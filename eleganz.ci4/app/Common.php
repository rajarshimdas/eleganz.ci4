<?php

/**
 * The goal of this file is to allow developers a location
 * where they can overwrite core procedural functions and
 * replace them with their own. This file is loaded during
 * the bootstrap process and is called during the framework's
 * execution.
 *
 * This can be looked at as a `master helper` file that is
 * loaded early on, and may also contain additional functions
 * that you'd like to use throughout your entire application
 *
 * @see: https://codeigniter.com/user_guide/extending/common.html
 */

function rdGetUserById($user_id, $db) :array
{
    // echo 'fx uid: '.$user_id;

    // 1. Get user login details
    $userModel = model('UserModel');
    $user = $userModel->asArray()->find($user_id);
    // var_dump($user);

    // 2. Get Email id
    $sql = 'select 
                `secret` as `email` 
            from 
                `ci4_auth_identities` 
            where 
                `user_id` = '.$user_id.' and 
                `type` = "email_password"';

    $query = $db->query($sql);
    $row = $query->getRow();

    if (isset($row)) {
        //echo $row->email;
        $user['email'] = $row->email;
    }

    // 3. Get Details






    return $user;
}
