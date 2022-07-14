<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Backend extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!$this->session->userdata('id_user'))
		{ 
			redirect('auth/login');
		}
		$this->load->library('template');
		$this->load->model('admin/alumni_model');
	} 

	function index()
	{	
		$data['title'] = 'Hasil Penelusuran Alumni';
  		$this->template->admin('admin/dashboard','admin/home', $data);
	}	

	function get_data_isialumni()
	{	
		$list = $this->alumni_model->get_datatables();
		$data = array();
		$no = $_POST['start'];
        foreach($list as $r)
        {
            if($r->status == 0)
            {
				$status = '<a href="'.base_url("backend/edit-status/$r->id").'" class="badge badge-warning text-white" title="EDIT STATUS">Menunggu</a>';
            }elseif($r->status == 1)
            {
				$status = '<a href="'.base_url("backend/edit-status/$r->id").'" class="badge badge-primary" title="EDIT STATUS">Terpublish</a>';
            }elseif($r->status == 2)
            {
				$status = '<a href="'.base_url("backend/edit-status/$r->id").'" class="badge badge-danger" title="EDIT STATUS">Ditolak</a>';
			}
			
            if($r->gambar != '' AND file_exists("assets/img/alumni/$r->gambar"))
            {
				$img = '<a href="'.base_url("assets/img/alumni/$r->gambar").'" target="_blank">
                            <img src="'.base_url("assets/img/alumni/$r->gambar").'" class="img img-fluid">
                        </a>'; 
            }else
            {
				$img = '';
			}

			$no++;
			$row = array();
			$row[] = '<div class="text-center">'.$no.'</div>';
			$row[] = '<div class="text-center">'.$status.'</div>';
			$row[] = cetak($r->nama);
			$row[] = cetak($r->th_lulus);
			$row[] = cetak($r->instansi);
			$row[] = cetak($r->alamatins);
			$row[] = cetak($r->hp);
			$row[] = cetak($r->email);
			$row[] = cetak($r->alamat);
			$row[] = cetak($r->kesan);
			$row[] = '<div class="text-center>'.$img.'</div>';
			$row[] =  date('d-m-Y', strtotime($r->tglpost));
			$action = '<div class="text-center">
						<a href="javascript:void(0)" class="btn btn-danger btn-xs btn-flat text-white" data-toggle="modal" data-target="#konfirmasi_hapus" 
						data-href="'.base_url("backend/hapus-isialumni/$r->id").'" title="HAPUS DATA">HAPUS</a>
					  </div>';
			$row[] = $action;
			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->alumni_model->count_all(),
			"recordsFiltered" => $this->alumni_model->count_filtered(),
			"data" => $data,
		);
		//output dalam format JSON
		echo json_encode($output);
    }

}	