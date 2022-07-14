<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prestasi extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('template');
        $this->load->model(array('web/prestasi_model','web/home_model'));
	} 

    function index()
    {
        show_404();
    }

    function prestasi_siswa()
    {
        $data['titleweb'] = 'Prestasi Siswa- '.title();
        $data['title'] = 'Prestasi Siswa';
        $data['data'] = $this->prestasi_model->tampil_prestasi_siswa();
        $this->template->web('main','prestasi/prestasi_siswa',$data);
    }

    function prestasi_guru()
    {
        $data['titleweb'] = 'Prestasi Guru- '.title();
        $data['title'] = 'Prestasi Guru';
        $data['data'] = $this->prestasi_model->tampil_prestasi_guru();
        $this->template->web('main','prestasi/prestasi_guru',$data);
    }

    function prestasi_sekolah()
    {
        $data['titleweb'] = 'Prestasi Sekolah- '.title();
        $data['title'] = 'Prestasi Sekolah';
        $data['data'] = $this->prestasi_model->tampil_prestasi_sekolah();
        $this->template->web('main','prestasi/prestasi_sekolah',$data);
    }

    function prestasi_madrasah()
    {
        $data['titleweb'] = 'Prestasi Madrasah- '.title();
        $data['title'] = 'Prestasi Madrasah';
        $data['data'] = $this->prestasi_model->tampil_prestasi_sekolah();
        $this->template->web('main','prestasi/prestasi_sekolah',$data);
    }

}