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
            <li class="breadcrumb-item"><a href="<?= base_url('backend/kurikulum'); ?>">Kurikulum</a></li>
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
              if($this->session->flashdata('msg-kurikulum'))
              {
                echo pesan_sukses($this->session->flashdata('msg-kurikulum'));
              }elseif($this->session->flashdata('msg-gagal-kurikulum'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-kurikulum'));
              }
            ?>
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">FORM <?= strtoupper($title); ?></h3>
                </div>
                <?php echo form_open('backend/edit-kurikulum/'.$this->uri->segment('3'), 'id="form"'); ?>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">MATA PELAJARAN *</label>
                        <div class="col-sm-5">
                            <input type="text" name="mapel" maxlength="50" value="<?= $data->mapel; ?>" class="form-control required" placeholder="NAMA MATA PELAJARAN">
                            <?php echo form_error('mapel'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">KELOMPOK *</label>
                        <div class="col-sm-3">
                            <select name="kelompok" class="form-control required">
                                <option value="A" <?php if($data->kelompok == 'A'){ echo'selected'; } ?> >A</option>
                                <option value="B" <?php if($data->kelompok == 'B'){ echo'selected'; } ?> >B</option>
                                <option value="C" <?php if($data->kelompok == 'C'){ echo'selected'; } ?> >C</option>
                            </select>
                            <?php echo form_error('kelompok'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NO URUT *</label>
                        <div class="col-sm-3">
                            <input type="number" name="no_urut" value="<?= $data->no_urut; ?>" min="0" onkeypress="return hanyaAngka(event)" class="form-control required" placeholder="NO URUT">
                            <?php echo form_error('no_urut'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">ALOKASI WAKTU *</label>
                        <div class="col-sm-3">
                            <input type="number" name="alokasi" value="<?= $data->alokasi; ?>" min="0" onkeypress="return hanyaAngka(event)" class="form-control required" placeholder="ALOKASI WAKTU">
                            <?php echo form_error('alokasi'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">STATUS AKTIF *</label>
                        <div class="col-sm-5">
                            <div class="icheck-primary d-inline">
                                <input type="radio" name="is_active" value="1" id="radioPrimary1" <?php if($data->is_active == 1){ echo'checked'; } ?> > 
                                <label for="radioPrimary1">Aktif</label> 
                                &nbsp;&nbsp;&nbsp; 
                            </div>
                            <div class="icheck-primary d-inline">
                                <input type="radio" name="is_active" value="0" id="radioPrimary2" <?php if($data->is_active == 0){ echo'checked'; } ?> > 
                                <label for="radioPrimary2">Non Aktif</label>
                            </div>
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
                  <button type="submit" name="submit" value="Submit" class="btn btn-primary btn-flat"><i class="fa fa-check"></i> SIMPAN</button>
                  <a href="<?= base_url('backend/kurikulum'); ?>" class="btn btn-danger btn-flat float-right"><i class="fa fa-arrow-left"></i> BATAL</a>
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