<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Video extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/video_model');
    }

    function index()
	{	
		$data['title'] = 'Video Youtube';
  		$this->template->admin('admin/dashboard','admin/video/video', $data);
    }

    function get_data_video()
	{
		$list = $this->video_model->get_datatables();
		$data = array();
		$no = $_POST['start'];
        foreach($list as $r)
        {	
			$no++;
			$row = array();
			$row[] = '<div class="text-center">'.$no.'</div>';
            $row[] = '<iframe src="https://www.youtube.com/embed/'.$r->link.'"></iframe>';
            $row[] = $r->judul;
            $row[] = $r->keterangan;
            $row[] = '<div class="text-center">'.date('d-m-Y H:i:s', strtotime($r->uploaded_on)).'</div>';
			$action = '<div class="text-center">
						<a href="'.base_url("backend/edit-video/$r->id_video").'" class="btn btn-dark btn-xs btn-flat" title="EDIT DATA">EDIT</a>
						<a href="javascript:void(0)" class="btn btn-danger btn-xs btn-flat text-white" data-toggle="modal" data-target="#konfirmasi_hapus" 
						data-href="'.base_url("backend/hapus-video/$r->id_video").'" title="HAPUS DATA">HAPUS</a>
					  </div>';
			$row[] = $action;
			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->video_model->count_all(),
			"recordsFiltered" => $this->video_model->count_filtered(),
			"data" => $data,
		);
		//output dalam format JSON
		echo json_encode($output);
    }

    function tambah_video()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 	
				$this->video_model->tambah_video();
			}
		}
		$data['title'] = 'Tambah Video Youtube';
		$this->template->admin('admin/dashboard','admin/video/form_tambah_video',$data);
    }

	function edit_video($id)
	{ 
        $cek = $this->video_model->cek_video($id); 
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
                    $this->video_model->edit_video($id);
                }
            }
        }
        $data['title'] = 'Edit Video Youtube';
        $data['data'] = $this->db->select('*')->from('tb_video')->where('id_video',$id)->get()->row();
		$this->template->admin('admin/dashboard','admin/video/form_edit_video',$data);
    }

	function hapus_video($id)
	{ 
        $cek = $this->video_model->cek_video($id);
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $this->video_model->hapus_video($id);
        }
    }

    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
        $this->form_validation->set_rules('judul', 'Judul Video', 'required');
        $this->form_validation->set_rules('link', 'Kode Video Youtube', 'required');
    }

}