<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tahun extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/tahun_model');
    }
    
    function index()
	{	
        $data['title'] = 'Tahun Pelajaran';
        $data['data'] = $this->tahun_model->tampil_tahun();
  		$this->template->admin('admin/dashboard','admin/tahun/tahun', $data);
    }

    function tambah_tahun_pelajaran()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 	
                $this->tahun_model->tambah_tahun_pelajaran();
            }
		}
		$data['title'] = 'Tambah Tahun Pelajaran';
		$this->template->admin('admin/dashboard','admin/tahun/form_tambah_tahun',$data);
    }

    function edit_tahun_pelajaran($id_tahun)
	{ 
        $cek = $this->tahun_model->cek_tahun($id_tahun); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            if($this->input->post('submit', TRUE) == 'Submit')
            { 
                $this->_validation();
                if($this->form_validation->run() == TRUE)
                { 	
                    $this->tahun_model->edit_tahun_pelajaran($id_tahun);
                }
            }
        }
        $data['title'] = 'Edit Tahun Pelajaran';
        $data['data'] = $this->db->select('*')->from('tb_tahun')->where('id_tahun',$id_tahun)->get()->row();
		$this->template->admin('admin/dashboard','admin/tahun/form_edit_tahun',$data);
    }

    function hapus_tahun_pelajaran($id_tahun)
	{ 
        $cek = $this->tahun_model->cek_tahun($id_tahun); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $this->tahun_model->hapus_tahun_pelajaran($id_tahun);
        }
    }

    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
		$this->form_validation->set_rules('tahun', 'Tahun Pelajaran', 'required');
    }

}