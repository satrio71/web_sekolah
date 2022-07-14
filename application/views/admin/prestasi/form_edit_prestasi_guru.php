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
            <li class="breadcrumb-item"><a href="<?= base_url('backend/prestasi-guru'); ?>">Prestasi Guru</a></li>
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
            if($this->session->flashdata('msg-prestasi'))
            {
                echo pesan_sukses($this->session->flashdata('msg-prestasi'));
            }elseif($this->session->flashdata('msg-gagal-prestasi'))
            {
                echo pesan_gagal($this->session->flashdata('msg-gagal-prestasi'));
            }
            ?>
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">FORM <?= strtoupper($title); ?></h3>
                </div>
                <?php echo form_open_multipart('backend/edit-prestasi-guru/'.$this->uri->segment('3'), 'id="form"'); ?>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">TAHUN PELAJARAN *</label>
                        <div class="col-sm-4">
                            <select name="id_tahun" class="form-control required">
                                <?php foreach($tahun->result() as $r): ?>    
                                    <option value="<?= $r->id_tahun; ?>" <?php if($data->id_tahun == $r->id_tahun){ echo'selected'; } ?>><?= $r->tahun; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">JENIS *</label>
                        <div class="col-sm-4">
                            <select name="jenis" class="form-control required">
                                <option value="1" <?php if($data->jenis == '1'){ echo'selected'; } ?> >Akademik</option>
                                <option value="2" <?php if($data->jenis == '2'){ echo'selected'; } ?> >Non Akademik</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NAMA LOMBA *</label>
                        <div class="col-sm-8">
                            <input type="text" name="nama" maxlength="100" value="<?= $data->nama; ?>" class="form-control required" placeholder="NAMA LOMBA">
                            <?php echo form_error('nama'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">PRESTASI *</label>
                        <div class="col-sm-4">
                            <select name="prestasi" class="form-control required">
                                <option value="1" <?php if($data->prestasi == '1'){ echo'selected'; } ?> >Juara 1</option>
                                <option value="2" <?php if($data->prestasi == '2'){ echo'selected'; } ?> >Juara 2</option>
                                <option value="3" <?php if($data->prestasi == '3'){ echo'selected'; } ?> >Juara 3</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NAMA GURU</label>
                        <div class="col-sm-8">
                            <input type="text" name="nama_guru" maxlength="100" value="<?= $data->nama_guru; ?>" class="form-control" placeholder="NAMA GURU">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">TINGKAT *</label>
                        <div class="col-sm-4">
                            <select name="tingkat" class="form-control required">
                                <option value="1" <?php if($data->tingkat == '1'){ echo'selected'; } ?> >Kabupaten</option>
                                <option value="2" <?php if($data->tingkat == '2'){ echo'selected'; } ?> >Karesidenan</option>
                                <option value="3" <?php if($data->tingkat == '3'){ echo'selected'; } ?> >Provinsi</option>
                                <option value="4" <?php if($data->tingkat == '4'){ echo'selected'; } ?> >Nasional</option>
                                <option value="5" <?php if($data->tingkat == '5'){ echo'selected'; } ?> >Internasional</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">KETERANGAN</label>
                        <div class="col-sm-8">
                            <input type="text" name="keterangan" maxlength="100" value="<?= $data->keterangan; ?>" class="form-control" placeholder="KETERANGAN">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">GAMBAR</label>
                        <div class="col-sm-5">
                            <?php if(empty($data->gambar)){ ?>
                                <img class='img-responsive' id='preview_gambar' width='150px'>
                            <?php }else{ ?>
                                <img class='img-responsive' id='preview_gambar' width='150px' src="<?= base_url(); ?>assets/img/prestasi/guru/<?= $data->gambar; ?>">
                            <?php } ?>
                            <input type='file' name='gambar' id="file-upload" accept='image/png, image/jpeg' class='form-control' onchange='readURL(this);'>
                            <small style="color: red"> *) format file JPG/PNG ukuran maksimal 1 MB</small>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                            <label class="form-check-label" for="exampleCheck2">*) Field Wajib Diisi</label>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                  <button type="submit" name="submit" value="Submit" class="btn btn-primary btn-flat" onclick="return VerifyUploadSizeIsOK()"><i class="fa fa-check"></i> SIMPAN</button>
                  <a href="<?= base_url('backend/prestasi-guru'); ?>" class="btn btn-danger btn-flat float-right"><i class="fa fa-arrow-left"></i> BATAL</a>
                </div>
              <?php echo form_close() ?>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>