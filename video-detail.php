<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: video");
  exit();
} else {
  $id_video = valid($conn, $_GET['post']);
  $video = "SELECT * FROM video WHERE id_video='$id_video'";
  $view_video = mysqli_query($conn, $video);
  $data = mysqli_fetch_assoc($view_video);
  $sql = "UPDATE video SET penonton=penonton+1 WHERE id_video='$id_video'";
  mysqli_query($conn, $sql);
  require_once("templates/top.php");
?>

<section class="section normalhead lb">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
        <h2>Video</h2>
        <p class="lead"><?= $data['nama_video']?></p>
      </div><!-- end col -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

<section class="section">
  <div class="container">
    <div class="row">

      <div class="content col-md-12 blog-alt">
        <div class="blog-box clearfix">
          <div class="media-box">
            <?php
              $link_video = $data['link_video'];
              $autoplay_url = $link_video;
              ?>
            <iframe id="videoIframe" class="ph-video" style="width: 100%;" height="450" src="<?= $autoplay_url ?>"
              title="YouTube video player"
              allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
              referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            <script src="https://www.youtube.com/iframe_api"></script>
          </div><!-- end media-box -->
          <div class="blog-single">
            <div class="blog-meta">
              <ul class="list-inline">
                <li><a href="#"><i class="fa fa-calendar-o"></i> <?= $data['created_at']?></a></li>
                <li><a href="#"><i class="fa fa-folder-open-o"></i> <?php if ($data['id_tipe_fitur'] == 1) {
                      echo "Jamuan Tamu";
                    } else if ($data['id_tipe_fitur'] == 2) {
                      echo "Pakaian Adat";
                    } else if ($data['id_tipe_fitur'] == 3) {
                      echo "Perkawinan";
                    }  ?></a></li>
                <li><a href="#"><i class="fa fa-eye"></i> <?= $data['penonton'] ?></a></li>
                <li>
                  <p>Author : <?= $data['author']?></p>
                </li>
              </ul>
            </div><!-- end meta -->
            <h3 class="post-title"><?= $data['nama_video']?></h3>
            <div class="text-dark" style="color: #000;font-weight: 500;">
              <?= $data['deskripsi']?>
            </div>
          </div><!-- end blog-desc -->
        </div><!-- end blogbox -->
      </div><!-- end content -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

<?php }
require_once("templates/bottom.php"); ?>