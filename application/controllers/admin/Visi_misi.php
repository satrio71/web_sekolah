<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visi_misi extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
        $this->load->library('template');
        $this->load->model('admin/visi_misi_model');
	} 

	function index()
	{	
        $data['title'] = 'Visi & Misi';
        $data['data'] = $this->visi_misi_model->tampil_visi_misi();
  		$this->template->admin('admin/dashboard','admin/visi_misi/visi_misi', $data);
    }	

    function edit_visi_misi()
	{
        if($this->input->post('submit', TRUE) == 'Submit')
        { 
            $this->visi_misi_model->edit_visi_misi();
		}
        $data['title'] = 'Edit Visi & Misi';
        $data['data'] = $this->visi_misi_model->tampil_visi_misi();
  		$this->template->admin('admin/dashboard','admin/visi_misi/form_visi_misi', $data);
    }

}