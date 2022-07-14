<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sejarah extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
        $this->load->library('template');
        $this->load->model('admin/sejarah_model');
	} 

	function index()
	{	
        $data['title'] = 'Sejarah';
        $data['data'] = $this->sejarah_model->tampil_sejarah();
  		$this->template->admin('admin/dashboard','admin/sejarah/sejarah', $data);
    }	

    function edit_sejarah()
	{
        if($this->input->post('submit', TRUE) == 'Submit')
        { 
            $this->sejarah_model->edit_sejarah();
		}
        $data['title'] = 'Edit Sejarah';
        $data['data'] = $this->sejarah_model->tampil_sejarah();
  		$this->template->admin('admin/dashboard','admin/sejarah/form_sejarah', $data);
    }

}