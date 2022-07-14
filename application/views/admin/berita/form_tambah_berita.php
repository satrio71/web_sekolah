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
            <li class="breadcrumb-item"><a href="<?= base_url('backend/berita'); ?>">Berita</a></li>
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
              if($this->session->flashdata('msg-berita'))
              {
                echo pesan_sukses($this->session->flashdata('msg-berita'));
              }elseif($this->session->flashdata('msg-gagal-berita'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-berita'));
              }
            ?>
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">FORM <?= strtoupper($title); ?></h3>
                </div>
                <?php echo form_open_multipart('backend/tambah-berita','id="form"'); ?>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">JUDUL BERITA *</label>
                        <div class="col-sm-8">
                            <input type="text" name="nama" maxlength="100" value="<?= set_value('nama'); ?>" class="form-control required" placeholder="JUDUL BERITA">
                            <?php echo form_error('nama'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">ISI *</label>
                        <div class="col-sm-8">
                            <textarea class="textarea" name="isi"><?= set_value('isi'); ?></textarea>
                            <?php echo form_error('isi'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">GAMBAR</label>
                        <div class="col-sm-5">
                            <img class='img-responsive' id='preview_gambar' width='150px'>
                            <input type='file' name='gambar' id="file-upload" accept='image/png, image/jpeg' class='form-control' onchange='readURL(this);'>
                            <small style="color: red"> *) format file JPG/PNG ukuran maksimal 1 MB</small>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">STATUS AKTIF *</label>
                        <div class="col-sm-5">
                            <div class="icheck-primary d-inline">
                                <input type="radio" name="is_active" value="1" id="radioPrimary1" <?= set_radio('is_active',1); ?> required> 
                                <label for="radioPrimary1">Aktif</label> 
                                &nbsp;&nbsp;&nbsp; 
                            </div>
                            <div class="icheck-primary d-inline">
                                <input type="radio" name="is_active" value="0" id="radioPrimary2" <?= set_radio('is_active',0); ?> required> 
                                <label for="radioPrimary2">Non Aktif</label>
                            </div>
                            <br><label for="is_active" class="error"></label>
                            <?php echo form_error('is_active'); ?>
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
                  <a href="<?= base_url('backend/berita'); ?>" class="btn btn-danger btn-flat float-right"><i class="fa fa-arrow-left"></i> BATAL</a>
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