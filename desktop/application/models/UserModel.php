<?php

/**
 * Description of User
 *
 * @author roytuts.com
 */
class UserModel extends CI_Model {

    private $user_table = 'users';

    function __construct() {
        parent::__construct();
    }

function insert_user($user) {
        
   // $this->db->trans_start();

    $this->db->insert('users', $user); 
    $fk = $this->db->insert_id(); 
//echo $userdata;
//var_dump($userdata);
//die();
   // $this->db->insert('userdata', $userdata);
    //$this->db->where('id_user',$fk);

    //$this->db->trans_complete(); 

    return $this->db->insert_id(); 

}

function insert_user1($userdata) {
        
  //  $this->db->trans_start();

   $this->db->insert('userdata', $userdata); 
//echo $userdata;
//var_dump($userdata);
//die();
   //$this->db->insert('userdata', $userdata); 
   // $this->db->insert('userdata', $userdata);
    //$this->db->where('id_user',$fk);

   // $this->db->trans_complete(); 

  return true; 

}


}