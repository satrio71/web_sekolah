<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Album extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/album_model');
    }

    function index()
	{	
		$data['data'] = $this->album_model->tampil_album();
		$data['title'] = 'Album';
  		$this->template->admin('admin/dashboard','admin/album/album', $data);
    }

    function tambah_album()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 	
				$this->album_model->tambah_album();
			}
		}
		$data['title'] = 'Tambah Album';
		$this->template->admin('admin/dashboard','admin/album/form_tambah_album',$data);
    }
    
    function edit_album($id)
	{ 
        $cek = $this->album_model->cek_album($id); 
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
                    $this->album_model->edit_album($id);
                }
            }
            $data['title'] = 'Edit Album';
            $data['data'] = $this->db->get_where('tb_album',['id_album'=>$id])->row();
            $this->template->admin('admin/dashboard','admin/album/form_edit_album',$data);
        }
    }

    function hapus_album($id)
	{ 
        $cek = $this->album_model->cek_album($id); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $this->album_model->hapus_album($id);
        }
    }
    
    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
		$this->form_validation->set_rules('album', 'Nama Album', 'required');
		$this->form_validation->set_rules('is_active', 'Status', 'required');
    }

}