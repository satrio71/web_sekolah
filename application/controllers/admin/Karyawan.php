<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {
	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/karyawan_model');
    }

    function index()
	{	
		$data['title'] = 'Karyawan';
  		$this->template->admin('admin/dashboard','admin/karyawan/karyawan', $data);
	}

	function get_data_karyawan()
	{
		$list = $this->karyawan_model->get_datatables();
		$data = array();
		$no = $_POST['start'];
        foreach($list as $r)
        {
			if($r->jk == 1)
			{
				$jk = 'L';
			}elseif($r->jk == 2)
			{
				$jk = 'P';
			}

			if($r->gambar != '' AND file_exists("assets/img/karyawan/$r->gambar"))
            {
				$img = '<a href="'.base_url("assets/img/karyawan/$r->gambar").'" target="_blank"><img src="'.base_url("assets/img/karyawan/$r->gambar").'" class="img img-fluid"></a>'; 
            }else
            {
				$img = '';
			}

			$no++;
			$row = array();
			$row[] = '<div class="text-center">'.$no.'</div>';
			$row[] = $r->nama;
			$row[] = $r->nip;
			$row[] = '<div class="text-center">'.$jk.'</div>';
			$row[] = $r->statuspeg;
			$row[] = $r->tugas;
			$row[] = $r->status;
			$row[] = '<div class="text-center">'.$img.'</div>';
			$action = '<div class="text-center">
						<a href="'.base_url("backend/detail-karyawan/$r->id").'" target="_blank" class="btn btn-primary btn-xs btn-flat" title="LIHAT DETAIL">DETAIL</a>
						<a href="'.base_url("backend/edit-karyawan/$r->id").'" class="btn btn-dark btn-xs btn-flat" title="EDIT DATA">EDIT</a>
						<a href="javascript:void(0)" class="btn btn-danger btn-xs btn-flat text-white" data-toggle="modal" data-target="#konfirmasi_hapus" 
						data-href="'.base_url("backend/hapus-karyawan/$r->id").'" title="HAPUS DATA">HAPUS</a>
					  </div>';
			$row[] = $action;
			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->karyawan_model->count_all(),
			"recordsFiltered" => $this->karyawan_model->count_filtered(),
			"data" => $data,
		);
		//output dalam format JSON
		echo json_encode($output);
    }

    function tambah_karyawan()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 	
                $this->karyawan_model->tambah_karyawan();
			}
		}
		$data['title'] = 'Tambah Karyawan';
		$this->template->admin('admin/dashboard','admin/karyawan/form_tambah_karyawan',$data);
    }

    function edit_karyawan($id)
	{ 
        $cek = $this->karyawan_model->cek_karyawan($id); 
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
                    $this->karyawan_model->edit_karyawan($id);
                }
            }
        }
        $data['title'] = 'Edit Karyawan';
        $data['data'] = $this->db->select('*')->from('tb_karyawan')->where('id',$id)->get()->row();
		$this->template->admin('admin/dashboard','admin/karyawan/form_edit_karyawan',$data);
    }

	function detail_karyawan($id)
	{ 
        $cek = $this->karyawan_model->cek_karyawan($id); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
			$data['title'] = 'Detail Karyawan';
			$data['data'] = $this->db->select('*')->from('tb_karyawan')->where('id',$id)->get()->row();
			$this->template->admin('admin/dashboard','admin/karyawan/detail_karyawan',$data);
        }
    }

    function hapus_karyawan($id)
	{ 
        $cek = $this->karyawan_model->cek_karyawan($id); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $this->karyawan_model->hapus_karyawan($id);
        }
    }

    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
        $this->form_validation->set_rules('nama', 'Nama Lengkap', 'required');
        $this->form_validation->set_rules('tmp_lahir', 'Tempat Lahir', 'required');
        $this->form_validation->set_rules('tgl_lahir', 'Tgl Lahir', 'required');
        $this->form_validation->set_rules('jk', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('statuspeg', 'Status Pegawai', 'required');
        $this->form_validation->set_rules('status', 'Status', 'required');
        $this->form_validation->set_rules('email', 'Email', 'trim|valid_email');
    }
    
}