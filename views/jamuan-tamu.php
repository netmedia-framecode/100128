<?php require_once("../controller/jamuan-tamu.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_dokumen_digital"]["name_page"] ?></h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="modal" data-target="#tambah"><i class="bi bi-plus-lg"></i> Tambah</a>
  </div>

  <div class="row">
    <div class="col-lg-12">
      <?php foreach ($views_jamuan_tamu as $data) { ?>
        <div class="card mb-3">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?= $baseURL ?>assets/img/jamuan-tamu/<?= $data['image'] ?>" style="width: 100%; height: 300px; object-fit: cover;" alt="<?= $data['judul_jamuan'] ?>">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h2 class="card-title"><?= $data['judul_jamuan'] ?></h2>
                <p class="card-text mb-4 mt-n3">Daerah <?= $data['daerah'] ?></p>
                <?= $data['deskripsi'] ?>
                <p class="card-text"><small class="text-muted">Update terkahir <?php $date = date_create($data["updated_at"]);
                                                                                echo date_format($date, "d M Y h:i a"); ?></small></p>
              </div>
              <div class="card-footer">
                <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_jamuan_tamu'] ?>">
                  <i class="bi bi-pencil-square"></i> Ubah
                </button>
                <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_jamuan_tamu'] ?>">
                  <i class="bi bi-trash3"></i> Hapus
                </button>

                <div class="modal fade" id="ubah<?= $data['id_jamuan_tamu'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header border-bottom-0 shadow">
                        <h5 class="modal-title" id="exampleModalLabel">Ubah <?= $data['judul_jamuan'] ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <form action="" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="id_jamuan_tamu" value="<?= $data['id_jamuan_tamu'] ?>">
                        <input type="hidden" name="imageOld" value="<?= $data['image'] ?>">
                        <input type="hidden" name="judul_jamuanOld" value="<?= $data['judul_jamuan'] ?>">
                        <div class="modal-body">
                          <div class="form-group">
                            <label for="image">Gambar</label>
                            <input type="file" name="image" class="form-control" id="image">
                          </div>
                          <div class="form-group">
                            <label for="judul_jamuan">Judul jamuan</label>
                            <input type="text" name="judul_jamuan" value="<?= $data['judul_jamuan'] ?>" class="form-control" id="judul_jamuan" required>
                          </div>
                          <div class="form-group">
                            <label for="daerah">Daerah</label>
                            <select name="daerah" class="form-control" id="daerah" required>
                              <option selected value="">Pilih Daerah</option>
                              <option value="TTU">TTU</option>
                              <option value="TTS">TTS</option>
                            </select>
                          </div>
                          <div class="form-group">
                            <label for="deskripsi<?= $data['id_jamuan_tamu'] ?>">Deskripsi</label>
                            <textarea name="deskripsi" class="form-control" id="deskripsi<?= $data['id_jamuan_tamu'] ?>" rows="3"><?= $data['deskripsi'] ?></textarea>
                            <script>
                              CKEDITOR.replace('deskripsi<?= $data['id_jamuan_tamu'] ?>');
                            </script>
                          </div>
                        </div>
                        <div class="modal-footer justify-content-center border-top-0">
                          <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                          <button type="submit" name="edit_jamuan_tamu" class="btn btn-warning btn-sm">Ubah</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>

                <div class="modal fade" id="hapus<?= $data['id_jamuan_tamu'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header border-bottom-0 shadow">
                        <h5 class="modal-title" id="exampleModalLabel">Hapus <?= $data['judul_jamuan'] ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <form action="" method="post">
                        <input type="hidden" name="id_jamuan_tamu" value="<?= $data['id_jamuan_tamu'] ?>">
                        <input type="hidden" name="image" value="<?= $data['image'] ?>">
                        <input type="hidden" name="judul_jamuan" value="<?= $data['judul_jamuan'] ?>">
                        <div class="modal-body">
                          <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                        </div>
                        <div class="modal-footer justify-content-center border-top-0">
                          <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                          <button type="submit" name="delete_jamuan_tamu" class="btn btn-danger btn-sm">hapus</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>

  <div class="modal fade" id="tambah" tabindex="-1" aria-labelledby="tambahLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header border-bottom-0 shadow">
          <h5 class="modal-title" id="tambahLabel">Tambah Jamuan Tamu</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <div class="form-group">
              <label for="image">Gambar</label>
              <input type="file" name="image" class="form-control" id="image" required>
            </div>
            <div class="form-group">
              <label for="judul_jamuan">Judul jamuan</label>
              <input type="text" name="judul_jamuan" class="form-control" id="judul_jamuan" required>
            </div>
            <div class="form-group">
              <label for="daerah">Daerah</label>
              <select name="daerah" class="form-control" id="daerah" required>
                <option selected value="">Pilih Daerah</option>
                <option value="TTU">TTU</option>
                <option value="TTS">TTS</option>
              </select>
            </div>
            <div class="form-group">
              <label for="deskripsi">Deskripsi</label>
              <textarea name="deskripsi" class="form-control" id="deskripsi" rows="3"></textarea>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="add_jamuan_tamu" class="btn btn-primary btn-sm">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>