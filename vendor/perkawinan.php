<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Perkawinan";
require_once("templates/top.php");
?>

<div id="page-header" class="ph-cap-lg ph-ghost-scroll ph-image-cropped ph-content-parallax">
  <div class="page-header-inner tt-wrap">
    <div class="ph-caption max-width-1000">
      <h1 class="ph-caption-title">
        <div class="ph-appear">Perkawinan</div>
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
      <div class="tt-row">
        <div class="tt-col-lg-8">
          <div id="blog-list" class="bli-image-cropped">
            <?php foreach ($view_perkawinan as $data) { ?>
              <article class="blog-list-item">
                <a href="perkawinan-detail?post_id=<?= $data['id_perkawinan'] ?>" class="bli-image-wrap" data-cursor="Read<br>More">
                  <figure class="bli-image">
                    <img src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" data-src="<?= $baseURL ?>assets/img/perkawinan/<?= $data['image'] ?>" class="tt-lazy anim-zoomin" alt="Image">
                  </figure>
                </a>
                <div class="bli-info">
                  <div class="bli-categories">
                    <a href="perkawinan-daerah?pin=<?= strtolower($data['daerah']) ?>">Daerah <?= $data['daerah'] ?></a>
                  </div>
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
            <?php } ?>
          </div>
        </div>
        <div class="tt-col-lg-4">
          <div class="tt-sidebar">
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
      </div>
      <div class="tt-pagination anim-fadeinup">
        <div class="tt-pagin-prev">
          <?php if ($page_2 > 1) : ?>
            <a href="?page=<?php echo $page_2 - 1; ?>" class="tt-pagin-item magnetic-item">
              <i class="fas fa-chevron-left"></i>
            </a>
          <?php endif; ?>
        </div>
        <div class="tt-pagin-numbers">
          <?php for ($i = 1; $i <= $total_pages_2; $i++) : ?>
            <a href="?page=<?php echo $i; ?>" class="tt-pagin-item magnetic-item <?php if ($i == $page_2) echo 'active'; ?>">
              <?php echo $i; ?>
            </a>
          <?php endfor; ?>
        </div>
        <div class="tt-pagin-next">
          <?php if ($page_2 < $total_pages_2) : ?>
            <a href="?page=<?php echo $page_2 + 1; ?>" class="tt-pagin-item tt-pagin-next magnetic-item">
              <i class="fas fa-chevron-right"></i>
            </a>
          <?php endif; ?>
        </div>
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