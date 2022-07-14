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
              if($this->session->flashdata('msg-sejarah'))
              {
                echo pesan_sukses($this->session->flashdata('msg-sejarah'));
              }elseif($this->session->flashdata('msg-gagal-sejarah'))
              {
                echo pesan_gagal($this->session->flashdata('msg-gagal-sejarah'));
              }
            ?>
            <div class="card">
                <div class="card-header">
                </div>
                <div class="card-body">
                    <div class="table table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead class="bg-secondary text-center">
                            <tr>
                                <th>SEJARAH</th>
                                <th width="10%">AKSI</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                  <?php 
                                  if($data->isi != '')
                                  {
                                    echo $data->isi;
                                  }else
                                  {
                                    echo'<div class="text-danger">Sejarah belum diisi</div>';
                                  }
                                  ?>
                                </td>
                                <td class="text-center">
                                    <a href="<?= base_url('backend/edit-sejarah'); ?>" class="btn btn-primary btn-flat btn-sm"><i class="fa fa-edit"></i> EDIT</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>  
            </div>
        </div>
    </div>
</section>
</div>