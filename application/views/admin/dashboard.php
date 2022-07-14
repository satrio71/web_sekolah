<?php
$this->load->view('admin/template/head');
$this->load->view('admin/template/topbar');
$this->load->view('admin/nav');
echo $contents;
$this->load->view('admin/template/js');
$this->load->view('admin/template/foot');
?>