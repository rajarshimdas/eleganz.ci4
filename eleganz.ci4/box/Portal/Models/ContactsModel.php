<?php

namespace Rd\Portal\Models;

use CodeIgniter\Model;

class ContactsModel extends Model
{
    protected $table      = 'contacts';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = [

        'ci4_users_id',
        'dname',
        'fname',
        'mname',
        'lname',
        'gender',
        'dob',
        'current_address_id',
        'active',

    ];


    protected $validationRules = [

        'ci4_users_id' => 'required',
        'dname' => 'required',
        'fname' => 'required',
        'mname' => 'required',
        'lname' => 'required',
        'gender' => 'required',
        'dob' => 'required',
        'current_address_id' => 'required',
        'active' => 'required|is_natural|less_than[2]',

    ];

    /* 
    
    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';
    
    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];
    */
}
