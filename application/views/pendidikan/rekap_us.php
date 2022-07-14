<div class="container">
    <div class="row">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb bg-white">
                <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Pendidikan</li>
                <li class="breadcrumb-item active" aria-current="page"><?= $title; ?></li>
            </ol>
        </nav>
    </div>
    <div class="row">
        <div class="col-md-12"><h3><b><?php
                                        if(jenjang() == 1 OR jenjang() == 2)
                                        {
                                            echo'REKAP UJIAN SEKOLAH';
                                        }elseif(jenjang() == 3 OR jenjang() == 4)
                                        {
                                            echo'REKAP UJIAN MADRASAH';
                                        }
                                        ?>
                                    </b></h3><hr></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?php echo form_open('pendidikan/rekap-us'); ?>
                <div class="row">
                    <div class="col-md-2">
                        <select name="id_tahun" class="form-control">
                            <?php foreach($tahun->result() as $r): ?>
                                <option value="<?= $r->id_tahun; ?>" <?= set_select('id_tahun',$r->id_tahun); ?> ><?= $r->tahun; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-3">
                    <button type="submit" name="submit" value="Submit" class="btn bg-dark-slate-blue text-white"><i class="fa fa-search"></i> Cari Data</button>
                    </div>
                </div>
            <?php echo form_close(); ?>
            <br>
            <?php if(isset($submit)){ ?>
                <div class="table table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead class="bg-dark-slate-blue text-white text-center">
                            <tr>
                                <th width="5%">NO</th>
                                <th>TAHUN PELAJARAN</th>
                                <th>MATA PELAJARAN</th>
                                <th>TERTINGGI</th>
                                <th>TERENDAH</th>
                                <th>RATA-RATA</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        if($data->num_rows() > 0)
                        {
                            $no = 1;
                            foreach($data->result() as $r):
                                echo'<tr>
                                        <td class="text-center">'.$no++.'</td>
                                        <td>'.$r->tahun.'</td>
                                        <td>'.$r->mapel.'</td>
                                        <td class="text-center">'.$r->tertinggi.'</td>
                                        <td class="text-center">'.$r->terendah.'</td>
                                        <td class="text-center">'.$r->rata.'</td>
                                    </tr>';
                            endforeach;
                        }else
                        {
                            echo'<tr>
                                    <td class="text-center" colspan="6">DATA KOSONG</td>
                                </tr>';
                        } 
                        ?>
                        </tbody>
                    </table>
                </div>
            <?php }else{ echo'<div class="text-center text-danger">ANDA BELUM MELAKUKAN PENCARIAN</div>'; } ?>
        </div>
    </div>
</div>
<br><br>