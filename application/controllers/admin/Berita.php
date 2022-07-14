<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/berita_model');
    }

    function index()
	{	
		$data['title'] = 'Berita';
  		$this->template->admin('admin/dashboard','admin/berita/berita', $data);
	}

	function get_data_berita()
	{	
		$list = $this->berita_model->get_datatables();
		$data = array();
		$no = $_POST['start'];
        foreach($list as $r)
        {	
			if(strlen($r->isi) > 200)
            {
				$isi = substr($r->isi,0,200); 
				$berita = substr($r->isi,0,strrpos($isi," ")). '...';
            }else
            {
				$berita = $r->isi;
			}

            if($r->gambar != '' AND file_exists("assets/img/berita/$r->gambar"))
            {
				$img = '<a href="'.base_url("assets/img/berita/$r->gambar").'" target="_blank">
						<img src="'.base_url("assets/img/berita/$r->gambar").'" class="img img-fluid"></a>'; 
            }else
            {
				$img = '';
			}

            if($r->is_active == 1)
            {
				$status = '<span class="badge badge-primary">Aktif</span>';
            }else
            {
				$status = '<span class="badge badge-danger">Non Aktif</span>';
			}

			if($r->id_user == $this->session->userdata('id_user'))
			{
				$aksi = '<div class="text-center">
							<a href="'.base_url("backend/edit-berita/$r->id").'" class="btn btn-dark btn-xs btn-flat" title="EDIT DATA">EDIT</a>
							<a href="javascript:void(0)" class="btn btn-danger btn-xs btn-flat text-white" data-toggle="modal" data-target="#konfirmasi_hapus" 
							data-href="'.base_url("backend/hapus-berita/$r->id").'" title="HAPUS DATA">HAPUS</a>
						</div>';
			}else
			{
				$aksi = '<div class="text-center">
							<button class="btn btn-dark btn-xs btn-flat disabled">EDIT</button>
							<button class="btn btn-danger btn-xs btn-flat disabled">HAPUS</button>
						</div>';
			}

			$no++;
			$row = array();
			$row[] = '<div class="text-center">'.$no.'</div>';
			$row[] = $r->nama;
			$row[] = $berita;
			$row[] = $img;
			$row[] = $r->nama_operator;
			$row[] = $r->hari. ',' .date('d-m-Y', strtotime($r->tgl));
			$row[] = '<div class="text-center">'.$status.'</div>';
			$row[] = $r->dibaca.' Kali';
			$action = $aksi;
			$row[] = $action;
			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->berita_model->count_all(),
			"recordsFiltered" => $this->berita_model->count_filtered(),
			"data" => $data,
		);
		//output dalam format JSON
		echo json_encode($output);
    } 

    function tambah_berita()
	{ 
		if($this->input->post('submit', TRUE) == 'Submit')
		{ 
			$this->_validation();
			if($this->form_validation->run() == TRUE)
			{ 	
                $this->berita_model->tambah_berita();
			}
		}
		$data['title'] = 'Tambah Berita';
		$this->template->admin('admin/dashboard','admin/berita/form_tambah_berita',$data);
    }

    function edit_berita($id)
	{ 
        $cek = $this->berita_model->cek_berita($id); 
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
                    $this->berita_model->edit_berita($id);
                }
            }
        }
        $data['title'] = 'Edit Berita';
        $data['data'] = $this->db->select('*')->from('tb_berita')->where('id',$id)->get()->row();
		$this->template->admin('admin/dashboard','admin/berita/form_edit_berita',$data);
    }

    function hapus_berita($id)
	{ 
        $cek = $this->berita_model->cek_berita($id); 
        if(!$cek)
        { 
            show_404(); 
        }else
        { 	
            $this->berita_model->hapus_berita($id);   
        }
    }

    private function _validation()
    {
        $this->form_validation->set_error_delimiters('<div style="color:#fff; background-color:#DC143C; padding:2px;"><i class="fa fa-times-circle"></i> ', '</div>');
        $this->form_validation->set_rules('nama', 'Judul Berita', 'required');
        $this->form_validation->set_rules('isi', 'Isi Berita', 'required');
        $this->form_validation->set_rules('is_active', 'Status', 'required');
    }

}