<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Link extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/link_model');
    } 
    
    function index()
	{	
        $data['title'] = 'Link Terkait';
        $data['data'] = $this->link_model->tampil_link();
  		$this->template->admin('admin/dashboard','admin/link/link', $data);
    }

    function tambah_link()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 
				$this->link_model->tambah_link();
			}
		}
		$data['title'] = 'Tambah Link';
		$this->template->admin('admin/dashboard','admin/link/form_tambah_link',$data);
    }

    function edit_link($id)
	{ 
        $cek = $this->link_model->cek_link($id); 
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
                    $this->link_model->edit_link($id);
                }
            }
        }
        $data['title'] = 'Edit Link';
        $data['data'] = $this->db->select('*')->from('tb_link')->where('id',$id)->get()->row();
		$this->template->admin('admin/dashboard','admin/link/form_edit_link',$data);
    }

    function hapus_link($id)
	{ 
        $cek = $this->link_model->cek_link($id); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $this->link_model->hapus_link($id);
        }
    }

    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
        $this->form_validation->set_rules('nama', 'Nama Link', 'required');
        $this->form_validation->set_rules('link', 'Link URL', 'required|valid_url');
        $this->form_validation->set_rules('is_active', 'Status', 'required');
    }
    
}