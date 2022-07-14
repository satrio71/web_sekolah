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
            <li class="breadcrumb-item"><a href="<?= base_url('backend/rekap-us'); ?>">Rekap Ujian Sekolah</a></li>
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
              if($this->session->flashdata('msg-us'))
              {
                echo pesan_sukses($this->session->flashdata('msg-us'));
              }elseif($this->session->flashdata('msg-gagal-us'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-us'));
              }
            ?>
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">FORM <?= strtoupper($title); ?></h3>
                </div>
                <?php echo form_open('backend/edit-rekap-us/'.$this->uri->segment('3'), 'id="form"'); ?>
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">TAHUN PELAJARAN *</label>
                        <div class="col-sm-5">
                            <select name="id_tahun" class="form-control required">
                                <?php foreach($tahun->result() as $r): ?>    
                                    <option value="<?= $r->id_tahun; ?>" <?php if($data->id_tahun == $r->id_tahun){ echo'selected'; } ?> ><?= $r->tahun; ?></option>
                                <?php endforeach; ?>
                            </select>
                            <?php echo form_error('id_tahun'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">MATA PELAJARAN *</label>
                        <div class="col-sm-5">
                            <select name="id_kurikulum" class="form-control required">
                                <?php foreach($mapel->result() as $r): ?>    
                                    <option value="<?= $r->id_kurikulum; ?>" <?php if($data->id_kurikulum == $r->id_kurikulum){ echo'selected'; } ?> ><?= $r->mapel; ?></option>
                                <?php endforeach; ?>
                            </select>
                            <?php echo form_error('id_kurikulum'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NILAI TERTINGGI *</label>
                        <div class="col-sm-5">
                            <input type="number" name="tertinggi" value="<?= $data->tertinggi; ?>" min="0" class="form-control required" onkeypress="return hanyaAngka(event)" placeholder="NILAI TERTINGGI">
                            <?php echo form_error('tertinggi'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NILAI TERENDAH *</label>
                        <div class="col-sm-5">
                            <input type="number" name="terendah" value="<?= $data->terendah; ?>" min="0" class="form-control required" onkeypress="return hanyaAngka(event)" placeholder="NILAI TERENDAH">
                            <?php echo form_error('terendah'); ?>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">NILAI RATA-RATA *</label>
                        <div class="col-sm-5">
                            <input type="number" name="rata" value="<?= $data->rata; ?>" min="0" class="form-control required" onkeypress="return hanyaAngka(event)" placeholder="NILAI RATA-RATA">
                            <?php echo form_error('rata'); ?>
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
                  <a href="<?= base_url('backend/rekap-us'); ?>" class="btn btn-danger btn-flat float-right"><i class="fa fa-arrow-left"></i> BATAL</a>
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