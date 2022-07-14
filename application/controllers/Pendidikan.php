<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendidikan extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('template');
		$this->load->model(array('web/pendidikan_model','web/home_model'));
    }
    
    function index()
    {
        show_404();
    }

    function kurikulum()
    {
        $data['titleweb'] = 'Kurikulum - '.title();
        $data['title'] = 'Kurikulum';
        $data['kelompok_a'] = $this->pendidikan_model->tampil_kurikulum_a();
        $data['kelompok_b'] = $this->pendidikan_model->tampil_kurikulum_b();
        $data['kelompok_c'] = $this->pendidikan_model->tampil_kurikulum_c();
        $this->template->web('main','pendidikan/kurikulum',$data);
    }

    function kalender()
    {
        $data['titleweb'] = 'Kalender Akademik - '.title();
        $data['title'] = 'Kalender Akademik';
        $data['data'] = $this->pendidikan_model->kalender();
        $this->template->web('main','pendidikan/kalender',$data);
    }

    function rekap_us()
    {
        if($this->input->post('submit', TRUE) == 'Submit')
	    {
            $data['data'] = $this->pendidikan_model->cari_rekap_us();
        }
        $data['titleweb'] = 'Rekap Ujian Sekolah - '.title();
        $data['title'] = 'Rekap Ujian Sekolah';
        $data['tahun'] = $this->db->select('*')->from('tb_tahun')->order_by('tahun','desc')->get();
        $data['submit'] = $this->input->post('submit', TRUE);
        $this->template->web('main','pendidikan/rekap_us',$data);
    }

}