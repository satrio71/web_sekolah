<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sarpras extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
        $this->load->library('template');
        $this->load->model('admin/sarpras_model');
	} 

	function index()
	{	
        $data['title'] = 'Sarpras';
        $data['data'] = $this->sarpras_model->tampil_sarpras();
  		$this->template->admin('admin/dashboard','admin/sarpras/sarpras', $data);
    }

    function edit_sarpras()
	{
        if($this->input->post('submit', TRUE) == 'Submit')
        { 
            $this->sarpras_model->edit_sarpras();
		}
        $data['title'] = 'Edit Sarpras';
        $data['data'] = $this->sarpras_model->tampil_sarpras();
  		$this->template->admin('admin/dashboard','admin/sarpras/form_sarpras', $data);
    }

}