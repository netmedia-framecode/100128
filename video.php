<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu";
require_once("templates/top.php");
?>

<section class="section transheader parallax" data-stellar-background-ratio="0.5"
  style="background-image:url('assets/img/header.jpg');">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
        <h2 style="font-size: 80px;">Video</h2>
      </div><!-- end col -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

<section class="section">
  <div class="container">
    <div class="row">
      <div class="content col-md-8">

        <?php foreach ($view_video as $data) { ?>
        <div class="blog-box clearfix row">
          <div class="media-box col-md-4">
            <a href="video-detail?post=<?= $data['id_video'] ?>" title="">
              <img src="<?= $baseURL ?>assets/img/thumbnail/<?= $data['thumbnail'] ?>"
                style="width: 100%;height: 200px; object-fit: cover;" alt="" class="img-responsive img-thumbnail"></a>
          </div><!-- end media-box -->
          <div class="blog-desc col-md-8">
            <h3><a href="video-detail?post=<?= $data['id_video'] ?>"
                title=""><?= $data['nama_video'] ?></a></h3>
            <?php $num_char = 250;
                    $text = trim($data['deskripsi']);
                    $text = preg_replace('#</?strong.*?>#is', '', $text);
            $lentext = strlen($text);
            if ($lentext > $num_char) {
            echo substr($text, 0, $num_char) . '...';
            } else if ($lentext <= $num_char) { echo substr($text, 0, $num_char); } ?>
              <a class="readmore" href="video-detail?post=<?= $data['id_video'] ?>">Lihat</a>
          </div><!-- end blog-desc -->
        </div><!-- end blogbox -->
        <?php } ?>
        

      </div><!-- end content -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

  <?php require_once("templates/bottom.php"); ?>