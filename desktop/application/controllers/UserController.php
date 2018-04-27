<?php

/**
 * Description of User
 *
 * @author roytuts.com
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class UserController extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('usermodel');
    }

    public function index() {

        if ($this->input->post('finish')) {
            $this->form_validation->set_rules('name', 'Full Name', 'trim|required');
            $this->form_validation->set_rules('password', 'Password', 'trim|required');
            $this->form_validation->set_rules('email', 'Email Address', 'trim|required');
            $this->form_validation->set_rules('phone', 'Phone No.', 'trim|required');
            $this->form_validation->set_rules('gender', 'Gender', 'trim|required');
            $this->form_validation->set_rules('dob', 'Date of Birth', 'trim|required');
            $this->form_validation->set_rules('address', 'Contact Address', 'trim|required');

            if ($this->form_validation->run() !== FALSE) {
            $user = array(
            'name' => $this->input->post('name'),
            'password' => $this->input->post('password'),
            'email' => $this->input->post('email')
        );
            $id= $this->db->insert_id();

                $this->usermodel->insert_user($user);

            $userdata = array(
            'user_id'=>$this->db->insert_id(),
            'phone' => $this->input->post('phone'),
            'gender' => $this->input->post('gender'),
            'dob' => $this->input->post('dob'),
            'address' => $this->input->post('address')
            //$str = hash ( "sha256", $str );
        );
                $this->usermodel->insert_user1($userdata);
//echo $id= $this->db->insert_id();
           //var_dump($id);
                $this->load->view('user', $user, $userdata);
            } else {
                $this->load->view('user');
            }
        } else {
            $this->load->view('user');
        }
    }

}