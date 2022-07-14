<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('template');
		$this->load->model(array('web/profil_model','web/home_model'));
	} 

    function index()
    {
        if(jenjang() == 1 OR jenjang() == 2)
        {
            $data['titleweb'] = 'Profil Sekolah - '.title();
            $data['title'] = 'Profil Sekolah';
        }else
        {
            $data['titleweb'] = 'Profil Madrasah - '.title();
            $data['title'] = 'Profil Madrasah';
        }
        $data['data'] = $this->profil_model->tampil_profil();
        $this->template->web('main','profil/profil',$data);
	}

	function sejarah()
    {
        $data['titleweb'] = 'Sejarah - '.title();
        $data['title'] = 'Sejarah';
		$data['data'] = $this->profil_model->tampil_sejarah();
        $this->template->web('main','profil/sejarah',$data);
	}

	function visi_misi()
    {
        $data['titleweb'] = 'Visi & Misi - '.title();
        $data['title'] = 'Visi & Misi';
		$data['data'] = $this->profil_model->tampil_visi_misi();
        $this->template->web('main','profil/visi_misi',$data);
    }
    
    function struktur_organisasi()
    {
        $data['titleweb'] = 'Struktur Organisasi - '.title();
        $data['title'] = 'Struktur Organisasi';
		$data['data'] = $this->profil_model->tampil_struktur_organisasi();
        $this->template->web('main','profil/struktur_organisasi',$data);
    }
    
    function ekstrakurikuler()
    {
        $data['titleweb'] = 'Ekstrakurikuler - '.title();
        $data['title'] = 'Ekstrakurikuler';
		$data['data'] = $this->profil_model->tampil_ekstrakurikuler();
        $this->template->web('main','profil/ekstrakurikuler',$data);
    }

    function detail_ekstrakurikuler($slug)
    {
        $cek = $this->profil_model->cek_ekstrakurikuler($slug); 
        if(!$cek)
        { 
            show_404(); 
        }else
        {
            $get = $this->db->get_where('tb_ekstrakurikuler',['slug'=>$slug])->row();
			$data['titleweb'] = $get->nama_ekstrakurikuler.' - '.title();
			$data['title'] = $get->nama_ekstrakurikuler;
			$data['data'] = $get;
            $data['berita_terpopuler'] = $this->home_model->berita_terpopuler();
            $data['link_terkait'] = $this->home_model->tampil_link();
			$this->template->web('main','profil/detail_ekstrakurikuler',$data);
        }
    }

    function sarpras()
    {
        $data['titleweb'] = 'Sarana & Prasarana - '.title();
        $data['title'] = 'Sarana & Prasarana';
		$data['data'] = $this->profil_model->tampil_sarpras();
        $this->template->web('main','profil/sarpras',$data);
    }

}