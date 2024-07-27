<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Perkawinan Daerah";
require_once("templates/top.php");
?>

<div id="page-header" class="ph-cap-lg ph-ghost-scroll ph-image-cropped ph-content-parallax">
  <div class="page-header-inner tt-wrap">
    <div class="ph-caption max-width-1000">
      <div class="ph-caption-subtitle">
        <div class="ph-appear">Perkawinan</div>
      </div>
      <h1 class="ph-caption-title">
        <div class="ph-appear">Daerah "<?= strtoupper(valid($conn, $_GET['pin'])); ?>"</div>
      </h1>
      <div class="ph-caption-title-ghost">
        <div class="ph-appear">Tradisi Suku Dawan</div>
      </div>
    </div>
  </div>
  <div class="tt-scroll-down">
    <a href="#page-content" class="tt-sd-inner ph-appear" data-offset="0">
      <div class="tt-sd-arrow">
        <div class="tt-sd-arrow-inner"></div>
      </div>
      <div class="tt-sd-text">Scroll</div>
    </a>
  </div>
</div>

<div id="page-content">

  <div class="tt-section">
    <div class="tt-section-inner tt-wrap">
      <div id="blog-list" class="bli-compact bli-image-cropped">
        <?php if (valid($conn, $_GET['pin']) == "ttu") { ?>
          <?php foreach ($view_perkawinan_ttu as $data) { ?>
            <article class="blog-list-item">
              <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" class="bli-image-wrap" data-cursor="Read<br>More">
                <figure class="bli-image">
                  <img src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" data-src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" class="tt-lazy anim-zoomin" alt="Image">
                </figure>
              </a>
              <div class="bli-info">
                <h2 class="bli-title"><a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>"><?= $data['judul_perkawinan'] ?></a></h2>
                <div class="bli-desc">
                  <?php $num_char = 250;
                  $text = trim($data['deskripsi']);
                  $text = preg_replace('#</?strong.*?>#is', '', $text);
                  $lentext = strlen($text);
                  if ($lentext > $num_char) {
                    echo substr($text, 0, $num_char) . '...';
                  } else if ($lentext <= $num_char) {
                    echo substr($text, 0, $num_char);
                  } ?>
                </div>
                <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" class="bli-read-more tt-btn tt-btn-primary">
                  <div data-hover="Lihat Detail">Lihat Detail</div>
                  <span class="tt-btn-icon"><i class="fas fa-arrow-right"></i></span>
                </a>
              </div>
            </article>
          <?php }
        } else if (valid($conn, $_GET['pin']) == "tts") {
          foreach ($view_perkawinan_tts as $data) { ?>
            <article class="blog-list-item">
              <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" class="bli-image-wrap" data-cursor="Read<br>More">
                <figure class="bli-image">
                  <img src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" data-src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" class="tt-lazy anim-zoomin" alt="Image">
                </figure>
              </a>
              <div class="bli-info">
                <h2 class="bli-title"><a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>"><?= $data['judul_perkawinan'] ?></a></h2>
                <div class="bli-desc">
                  <?php $num_char = 250;
                  $text = trim($data['deskripsi']);
                  $text = preg_replace('#</?strong.*?>#is', '', $text);
                  $lentext = strlen($text);
                  if ($lentext > $num_char) {
                    echo substr($text, 0, $num_char) . '...';
                  } else if ($lentext <= $num_char) {
                    echo substr($text, 0, $num_char);
                  } ?>
                </div>
                <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" class="bli-read-more tt-btn tt-btn-primary">
                  <div data-hover="Lihat Detail">Lihat Detail</div>
                  <span class="tt-btn-icon"><i class="fas fa-arrow-right"></i></span>
                </a>
              </div>
            </article>
        <?php }
        } ?>
      </div>
      <div class="tt-sliding-sidebar-wrap">
        <div class="tt-sliding-sidebar">
          <div class="tt-sliding-sidebar-inner">
            <div class="sidebar-widget sidebar-categories">
              <h3 class="sidebar-heading">Daerah</h3>
              <ul class="list-unstyled">
                <li><a href="perkawinan-daerah?pin=ttu">TTU <span title="Entries in this category"><?= mysqli_num_rows($view_perkawinan_ttu) ?></span></a></li>
                <li><a href="perkawinan-daerah?pin=tts">TTS <span title="Entries in this category"><?= mysqli_num_rows($view_perkawinan_tts) ?></span></a></li>
              </ul>
            </div>
            <div class="sidebar-widget sidebar-tags">
              <h3 class="sidebar-heading">Tags</h3>
              <div class="sidebar-tags-list">
                <ul>
                  <li><a href="perkawinan">#perkawinan</a></li>
                  <li><a href="perkawinan-daerah?pin=tts">#perkawinandaerah</a></li>
                  <li><a href="perkawinan-daerah?pin=tts">#daerah</a></li>
                  <li><a href="perkawinan-daerah?pin=ttu">#ttu</a></li>
                  <li><a href="perkawinan-daerah?pin=ttu">#tts</a></li>
                  <li><a href="semua-dokumen">#dokumen_digital</a></li>
                </ul>
              </div>
            </div>
            <div class="sidebar-widget sidebar-meta">
              <h3 class="sidebar-heading">Meta</h3>
              <ul class="list-unstyled">
                <li><a href="./">Beranda</a></li>
                <li><a href="auth/">Log In</a></li>
                <li><a href="auth/register">Register</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="tt-sliding-sidebar-trigger hide-cursor">
          <span class="tt-ss-icon"><i class="fas fa-bars"></i></span>
          <span class="tt-ss-icon-close"><i class="fas fa-times"></i></span>
        </div>
        <div class="tt-sliding-sidebar-close cursor-close"></div>
      </div>
    </div>
  </div>

  <div class="tt-section padding-bottom-xlg-150">
    <div class="tt-section-inner tt-wrap">
      <div class="tt-page-nav tt-pn-stroke">
        <a href="pakaian-adat" class="tt-pn-link anim-fadeinup" data-cursor="<i class='fas fa-arrow-right'></i>">
          <div class="tt-pn-title">Pakaian Adat</div>
          <div class="tt-pn-hover-title">Lainnya</div>
        </a>
        <div class="tt-pn-subtitle anim-fadeinup">Dokumen Digital Selanjutnya</div>
      </div>
    </div>
  </div>

  <?php require_once("templates/bottom.php"); ?>