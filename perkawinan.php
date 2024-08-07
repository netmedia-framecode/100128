<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Perkawinan";
require_once("templates/top.php");
?>

<section class="section transheader parallax" data-stellar-background-ratio="0.5"
  style="background-image:url('assets/img/header.jpg');">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
        <h2 style="font-size: 80px;">Perkawinan</h2>
      </div><!-- end col -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

<section class="section">
  <div class="container">
    <div class="row">
      <div class="content col-md-8">

        <?php foreach ($view_perkawinan as $data) { ?>
        <div class="blog-box clearfix row">
          <div class="media-box col-md-4">
            <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" title="">
              <img src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>"
                style="width: 100%;height: 200px; object-fit: cover;" alt="" class="img-responsive img-thumbnail"></a>
          </div><!-- end media-box -->
          <div class="blog-desc col-md-8">
            <h3><a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>"
                title=""><?= $data['judul_perkawinan'] ?></a></h3>
            <div class="text-dark" style="color: #000;font-weight: 500;">
              <?php $num_char = 250;
                    $text = trim($data['deskripsi']);
                    $text = preg_replace('#</?strong.*?>#is', '', $text);
              $lentext = strlen($text);
              if ($lentext > $num_char) {
              echo substr($text, 0, $num_char) . '...';
              } else if ($lentext <= $num_char) { echo substr($text, 0, $num_char); } ?>
            </div>
            <a class="readmore" href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>">Baca Lebih</a>
          </div><!-- end blog-desc -->
        </div><!-- end blogbox -->
        <?php } ?>

      </div><!-- end content -->
    </div><!-- end row -->
  </div><!-- end container -->
</section><!-- end section -->

<?php require_once("templates/bottom.php"); ?>