<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark"><?= $title; ?></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?= base_url('backend'); ?>">Dashboard</a></li>
            <li class="breadcrumb-item active"><?= $title; ?></li>
          </ol>
        </div>
      </div>
    </div>
  </div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <?php 
              if($this->session->flashdata('msg-karyawan'))
              {
                echo pesan_sukses($this->session->flashdata('msg-karyawan'));
              }elseif($this->session->flashdata('msg-gagal-karyawan'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-karyawan'));
              }
            ?>
            <div class="card">
                <div class="card-header">
                    <a href="<?= base_url('backend/tambah-karyawan'); ?>" class="btn bg-primary btn-flat"><i class="fa fa-plus"></i> Tambah Karyawan</a>
                    <a href="" target="_self" class="btn bg-info btn-flat text-white border border-white"><i class="fas fa-sync-alt"></i> REFRESH</a>
                    <br>
                    <h3 class="text-center"><?= strtoupper($title); ?></h3>
                </div>
                <div class="card-body">
                    <div class="table table-responsive">
                        <table class="table table-bordered table-striped" id="table-karyawan">
                            <thead class="bg-secondary text-center">
                            <tr>
                                <th width="5%">NO</th>
                                <th>NAMA</th>
                                <th>NIP</th>
                                <th>JK</th>
                                <th>STATUS PEGAWAI</th>
                                <th>TUGAS</th>
                                <th>STATUS AKTIF</th>
                                <th>FOTO</th>
                                <th width="15%">AKSI</th>
                            </tr>
                            </thead>
                            <tbody>
                           
                            </tbody>
                        </table>
                    </div>
                </div>  
            </div>
        </div>
    </div>
</section>
</div>

<div class="modal fade" id="konfirmasi_hapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
               <b>Anda yakin ingin menghapus data ini ?</b><br><br>
               <a class="btn btn-danger btn-ok"> Hapus</a>
                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-close"></i> Batal</button>
            </div>
        </div>
    </div>
</div>