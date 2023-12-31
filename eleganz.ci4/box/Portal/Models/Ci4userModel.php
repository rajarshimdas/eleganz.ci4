<?php

namespace Rd\Portal\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table      = 'ci4_users';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;
    
    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['active']; // Set 0 to delete an user

    protected $validationRules = [
        'active' => 'required|is_natural|less_than[2]',
    ];

    /* 
    Not required since this is a readonly model

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