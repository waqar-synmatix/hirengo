<?php

class Login_register_model extends CI_model{
	 function __construct()
    {
         parent::__construct();
    }
	public function register_user($user){
 
		$this->db->insert('hg_users', $user);
 
	}


	public function email_check($email){
	 
	  $this->db->select('*');
	  $this->db->from('hg_users');
	  $this->db->where('email_id',$email);
	  $query=$this->db->get();
	 
	  if($query->num_rows()>0){
	    return false;
	  }else{
	    return true;
	  }
	 
	}

	public function login_user($email,$pass){
	 
	  $this->db->select('*');
	  $this->db->from('hg_users');
	  $this->db->where('email_id',$email);
	  $this->db->where('password',$pass);
	  if($query=$this->db->get())
	  {
	      return $query->row_array();
	  }
	  else{
	    return false;
	  }
	}
	 public function loginpost($email){
	 
	  $this->db->select('*');
	  $this->db->from('hg_users');
	  $this->db->where('email',$email);
	  if($query=$this->db->get())
	  {
	      return $query->row_array();
	  }
	  else{
	    return false;
	  }
	 
	}



}


?>