<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_register extends CI_Controller {

	public function index()
	{
		$this->load->view('login');
	}

	public function register_user(){
		$user = array(
			'user_type' => $this->input->post('usertype'),
			'user_status'  => $this->input->post('status'),
			'email_id' => $this->input->post('email'),
			'phone' => $this->input->post('phone'),
			'password' => hash("sha256", $this->input->post('password')),
			//$str = hash ( "sha256", $str );
		);

		$email_check=$this->Login_register_model->email_check($user['email_id']);
 
		if($email_check){
 		$this->Login_register_model->register_user($user);
 		$test=$this->db->insert_id();
 		 		echo $test;
var_dump($test);
die;
 		$this->session->set_flashdata('success_msg', 'Registered successfully.Now login to your account.');
 		redirect('Login_register');
 		 		

 
		}
		else{
 
  		$this->session->set_flashdata('error_msg', 'Error occured,Try again.');
  		redirect('Login_register');
 
 
		}
	}

	public function login_user(){
	  $user_login=array(
	 
	  'email'=>$this->input->post('email_id'),
	  'password'=>md5($this->input->post('password'))
	 
	    );
	 
	    $data=$this->Login_register_model->login_user($user_login['email'],$user_login['password']);
	      if($data)
	      {

	        $this->session->set_userdata('user_id',$data['ID']);
	        $this->session->set_userdata('email',$data['email']);
	        $this->session->set_userdata('firstname',$data['firstname']);
	        $this->session->set_userdata('lastname',$data['lastname']);
	        $this->session->set_userdata('phone',$data['phone']);
	        $this->session->set_userdata('user_type',$data['user_type']);
	        if ($this->session->user_type==1) {
	        redirect('admin/choose_action');
	        }
	        else{
	        redirect('user/dashboard');

	        }

	      }
	      else{
	        $this->session->set_flashdata('error_msg', 'Error occured,Try again.');
	        $this->load->view('login');
	 
	      }
	}

	public function user_logout(){
 
 		$this->session->sess_destroy();
		redirect('login/index', 'refresh');
	}


}
