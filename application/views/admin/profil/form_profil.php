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
            <li class="breadcrumb-item"><a href="<?= base_url('backend/profil-web'); ?>">Profil Website</a></li>
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
              if($this->session->flashdata('msg-profil'))
              {
                echo pesan_sukses($this->session->flashdata('msg-profil'));
              }elseif($this->session->flashdata('msg-gagal-profil'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-profil'));
              }
            ?> 
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">FORM <?= strtoupper($title); ?></h3>
                </div>
                <?php echo form_open('backend/edit-profil-web','id="form"'); ?>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NAMA SEKOLAH / MADRASAH *</label>
                        <div class="col-sm-8">
                            <input type="text" name="nama_web" maxlength="100" value="<?= $data->nama_web; ?>" class="form-control required" placeholder="NAMA WEBSITE">
                            <?php echo form_error('nama_web'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">JENJANG *</label>
                        <div class="col-sm-8">
                            <select name="jenjang" class="form-control required">
                                <option value="1" <?php if($data->jenjang == 1){ echo'selected'; } ?> >SMP</option>
                                <option value="2" <?php if($data->jenjang == 2){ echo'selected'; } ?> >SMA</option>
                                <option value="3" <?php if($data->jenjang == 3){ echo'selected'; } ?> >MTs</option>
                                <option value="4" <?php if($data->jenjang == 4){ echo'selected'; } ?> >MAN</option>
                            </select>
                            <?php echo form_error('jenjang'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">META DESCRIPTION *</label>
                        <div class="col-sm-8">
                            <textarea name="meta_description" maxlength="300" class="form-control required"><?= $data->meta_description; ?></textarea>
                            <?php echo form_error('meta_description'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">META KEYWORD *</label>
                        <div class="col-sm-8">
                            <input type="text" name="meta_keyword" maxlength="200" value="<?= $data->meta_keyword; ?>" class="form-control required" placeholder="META KEYWORD">
                            <?php echo form_error('meta_keyword'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">PROFIL</label>
                        <div class="col-sm-8">
                            <textarea name="profil" class="textarea"><?= $data->profil; ?></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">ALAMAT *</label>
                        <div class="col-sm-8">
                            <textarea name="alamat" maxlength="300" class="form-control required"><?= $data->alamat; ?></textarea>
                            <?php echo form_error('alamat'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">EMAIL *</label>
                        <div class="col-sm-8">
                            <input type="email" name="email" maxlength="100" value="<?= $data->email; ?>" class="form-control required" placeholder="EMAIL">
                            <?php echo form_error('email'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">TELP *</label>
                        <div class="col-sm-8">
                            <input type="text" name="telp" maxlength="20" value="<?= $data->telp; ?>" class="form-control required" placeholder="TELP">
                            <?php echo form_error('telp'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">FAX *</label>
                        <div class="col-sm-8">
                            <input type="text" name="fax" maxlength="20" value="<?= $data->fax; ?>" class="form-control required" placeholder="FAX">
                            <?php echo form_error('fax'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">WHATSAPP</label>
                        <div class="col-sm-8">
                            <input type="text" name="whatsapp" maxlength="20" value="<?= $data->whatsapp; ?>" class="form-control" placeholder="WHATSAPP">
                            <?php echo form_error('whatsapp'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">AKREDITASI</label>
                        <div class="col-sm-5">
                            <input type="text" name="akreditasi" maxlength="2" value="<?= $data->akreditasi; ?>" class="form-control" placeholder="AKREDITASI">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">KURIKULUM *</label>
                        <div class="col-sm-5">
                            <input type="text" name="kurikulum" maxlength="30" value="<?= $data->kurikulum; ?>" class="form-control required" placeholder="KURIKULUM">
                            <?php echo form_error('kurikulum'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NAMA KEPSEK / KAMAD *</label>
                        <div class="col-sm-5">
                            <input type="text" name="nama_kepsek" maxlength="100" value="<?= $data->nama_kepsek; ?>" class="form-control required" placeholder="NAMA KEPSEK">
                            <?php echo form_error('nama_kepsek'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NAMA OPERATOR *</label>
                        <div class="col-sm-5">
                            <input type="text" name="nama_operator" maxlength="100" value="<?= $data->nama_operator; ?>" class="form-control required" placeholder="NAMA OPERATOR">
                            <?php echo form_error('nama_operator'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">INSTAGRAM</label>
                        <div class="col-sm-8">
                            <input type="url" name="instagram" maxlength="200" value="<?= $data->instagram; ?>" class="form-control" placeholder="INSTAGRAM">
                            <?php echo form_error('instagram'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">FACEBOOK</label>
                        <div class="col-sm-8">
                            <input type="url" name="facebook" maxlength="200" value="<?= $data->facebook; ?>" class="form-control" placeholder="FACEBOOK">
                            <?php echo form_error('facebook'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">TWITTER</label>
                        <div class="col-sm-8">
                            <input type="url" name="twitter" maxlength="150" value="<?= $data->twitter; ?>" class="form-control" placeholder="TWITTER">
                            <?php echo form_error('twitter'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">YOUTUBE</label>
                        <div class="col-sm-8">
                            <input type="url" name="youtube" maxlength="150" value="<?= $data->youtube; ?>" class="form-control" placeholder="YOUTUBE">
                            <?php echo form_error('youtube'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                            <label class="form-check-label" for="exampleCheck2">*) Field Wajib Diisi</label>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                  <button type="submit" name="submit" value="Submit" class="btn btn-primary btn-flat"><i class="fa fa-check"></i> SIMPAN</button>
                  <a href="<?= base_url('backend/profil-web'); ?>" class="btn btn-danger btn-flat float-right"><i class="fa fa-arrow-left"></i> BATAL</a>
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