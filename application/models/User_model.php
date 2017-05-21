<?php

class User_model extends CI_Model {

    public function register($password) {
        $data = array(
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email'),
            'username' => $this->input->post('username'),
            'zipcode' => $this->input->post('zipcode'),
            'password' => $password
        );
        
        return $this->db->insert('users', $data);
    }
    
    public function login($username, $password) {
        $query = $this->db->query("SELECT id, password FROM users WHERE username = '$username'");
        $result = $query->result_array();
        if (!$result) {
            return FALSE;
        }
        $hash = $result[0]['password'];
        if (password_verify($password, $hash)) {
            return $result[0]['id'];
        } else {
            return FALSE;
        }
    }
    
    public function check_username_exists($username) {
        $query = $this->db->get_where('users', array('username' => $username));
        if(empty($query->row_array())) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    public function check_email_exists($email) {
        $query = $this->db->get_where('users', array('email' => $email));
        if(empty($query->row_array())) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}

