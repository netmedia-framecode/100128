<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Beranda";
require_once("templates/top.php");
?>

<div id="page-header" class="ph-full ph-cap-lg ph-ghost-scroll ph-image-cropped ph-content-parallax">
  <div class="page-header-inner tt-wrap">
    <div class="ph-caption">
      <h1 class="ph-caption-title">
        <div class="ph-appear">Dokumen Digital<br> Tradisi <span class="hide-from-sm">→</span> <em class="text-stroke-light">Suku Dawan</em></div>
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
    <div class="tt-section-inner">
      <div id="portfolio-grid" class="pgi-hover">
        <div class="tt-grid ttgr-layout-creative-2 ttgr-gap-4">
          <div class="tt-grid-items-wrap isotope-items-wrap">

            <div class="tt-grid-item isotope-item people">
              <div class="ttgr-item-inner">
                <div class="portfolio-grid-item">
                  <a href="jamuan-tamu" class="pgi-image-wrap" data-cursor="View<br>Project">
                    <div class="pgi-image-holder">
                      <div class="pgi-image-inner anim-zoomin">
                        <figure class="pgi-image ttgr-height">
                          <img src="<?= $baseURL ?>assets/img/jamuan-tamu.jpg" alt="image">
                        </figure>
                      </div>
                    </div>
                  </a>
                  <div class="pgi-caption">
                    <div class="pgi-caption-inner">
                      <h2 class="pgi-title">
                        <a href="jamuan-tamu">Jamuan Tamu</a>
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="tt-grid-item isotope-item creative">
              <div class="ttgr-item-inner">
                <div class="portfolio-grid-item">
                  <a href="perkawinan" class="pgi-image-wrap" data-cursor="View<br>Project">
                    <div class="pgi-image-holder">
                      <div class="pgi-image-inner anim-zoomin">
                        <figure class="pgi-image ttgr-height">
                          <img src="<?= $baseURL ?>assets/img/perkawinan.jpg" alt="image">
                        </figure>
                      </div>
                    </div>
                  </a>
                  <div class="pgi-caption">
                    <div class="pgi-caption-inner">
                      <h2 class="pgi-title">
                        <a href="perkawinan">Perkawinan</a>
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="tt-grid-item isotope-item people">
              <div class="ttgr-item-inner">
                <div class="portfolio-grid-item">
                  <a href="video" class="pgi-image-wrap" data-cursor="View<br>Project">
                    <div class="pgi-image-holder">
                      <div class="pgi-image-inner anim-zoomin">
                        <figure class="pgi-video-wrap ttgr-height">
                          <video class="pgi-video" loop muted preload="metadata" poster="assets/img/tua-adat.jpg">
                            <source src="assets/vids/tua-adat.mp4" type="video/mp4">
                            <source src="assets/vids/tua-adat.webm" type="video/webm">
                          </video>
                        </figure>
                      </div>
                    </div>
                  </a>
                  <div class="pgi-caption">
                    <div class="pgi-caption-inner">
                      <h2 class="pgi-title">
                        <a href="video">Video</a>
                      </h2>
                      <div class="pgi-categories-wrap">
                        <div class="pgi-category">Tradisi Suku Dawan</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="tt-grid-item isotope-item nature">
              <div class="ttgr-item-inner">
                <div class="portfolio-grid-item">
                  <a href="pakaian-adat" class="pgi-image-wrap" data-cursor="View<br>Project">
                    <div class="pgi-image-holder">
                      <div class="pgi-image-inner anim-zoomin">
                        <figure class="pgi-image ttgr-height">
                          <img src="<?= $baseURL ?>assets/img/pakaian-adat.jpg" alt="image">
                        </figure>
                      </div>
                    </div>
                  </a>
                  <div class="pgi-caption">
                    <div class="pgi-caption-inner">
                      <h2 class="pgi-title">
                        <a href="pakaian-adat">Pakaian Adat</a>
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="tt-section padding-top-xlg-100 padding-bottom-xlg-150">
    <div class="tt-section-inner tt-wrap max-width-1700">
      <div class="tt-row margin-left-lg-3-p margin-right-lg-3-p">
        <div class="tt-col-xl-4">
          <div class="tt-heading tt-heading-xlg anim-fadeinup">
            <h3 class="tt-heading-subtitle">Tentang</h3>
            <h2 class="tt-heading-title">Dokumen Digital</h2>
          </div>
          <div class="max-width-600 margin-bottom-60 anim-fadeinup">
            <h5>Dokumentasi digital tradisi mama sirih pinang pada Suku Dawan, guna mempertahankan tradisi sirih pinang pada generasi muda yang akan datang.</h5>
          </div>
        </div>
        <div class="tt-col-xl-1">
        </div>
        <div class="tt-col-xl-7">
          <div class="tt-accordion tt-ac-borders">

            <div class="tt-accordion-item anim-fadeinup">
              <div class="tt-accordion-heading">
                <div class="tt-ac-head cursor-alter">
                  <h3 class="tt-ac-head-title">Jamuan Tamu</h3>
                </div>
                <div class="tt-accordion-caret-wrap">
                  <div class="tt-accordion-caret-inner magnetic-item">
                    <div class="tt-accordion-caret"></div>
                  </div>
                </div>
              </div>
              <div class="tt-accordion-content max-width-800">
                <?php foreach ($view_jamuan_tamu_beranda as $data) {
                  $num_char = 500;
                  $text = trim($data['deskripsi']);
                  $text = preg_replace('#</?strong.*?>#is', '', $text);
                  $lentext = strlen($text);
                  if ($lentext > $num_char) {
                    echo substr($text, 0, $num_char) . '...';
                  } else if ($lentext <= $num_char) {
                    echo substr($text, 0, $num_char);
                  }
                } ?>
              </div>
            </div>

            <div class="tt-accordion-item anim-fadeinup">
              <div class="tt-accordion-heading">
                <div class="tt-ac-head cursor-alter">
                  <h3 class="tt-ac-head-title">Perkawinan</h3>
                </div>
                <div class="tt-accordion-caret-wrap">
                  <div class="tt-accordion-caret-inner magnetic-item">
                    <div class="tt-accordion-caret"></div>
                  </div>
                </div>
              </div>
              <div class="tt-accordion-content max-width-800">
                <?php foreach ($view_perkawinan_beranda as $data) {
                  $num_char = 500;
                  $text = trim($data['deskripsi']);
                  $text = preg_replace('#</?strong.*?>#is', '', $text);
                  $lentext = strlen($text);
                  if ($lentext > $num_char) {
                    echo substr($text, 0, $num_char) . '...';
                  } else if ($lentext <= $num_char) {
                    echo substr($text, 0, $num_char);
                  }
                } ?>
              </div>
            </div>

            <div class="tt-accordion-item anim-fadeinup">
              <div class="tt-accordion-heading">
                <div class="tt-ac-head cursor-alter">
                  <h3 class="tt-ac-head-title">Pakaian Adat</h3>
                </div>
                <div class="tt-accordion-caret-wrap">
                  <div class="tt-accordion-caret-inner magnetic-item">
                    <div class="tt-accordion-caret"></div>
                  </div>
                </div>
              </div>
              <div class="tt-accordion-content max-width-800">
                <?php foreach ($view_pakaian_adat_beranda as $data) {
                  $num_char = 500;
                  $text = trim($data['deskripsi']);
                  $text = preg_replace('#</?strong.*?>#is', '', $text);
                  $lentext = strlen($text);
                  if ($lentext > $num_char) {
                    echo substr($text, 0, $num_char) . '...';
                  } else if ($lentext <= $num_char) {
                    echo substr($text, 0, $num_char);
                  }
                } ?>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="tt-section padding-top-xlg-150 padding-bottom-xlg-150 bg-white-accent-3">
    <div class="tt-section-inner tt-wrap max-width-1600">
      <div class="tt-heading tt-heading-xlg margin-bottom-7-p anim-fadeinup max-width-1250 margin-auto">
        <h3 class="tt-heading-subtitle">Terbaru</h3>
        <h2 class="tt-heading-title">Dari Suku Dawan</h2>
        <a href="semua-dokumen" class="tt-btn tt-btn-link">
          <div data-hover="Lihat Semua">Lihat Semua</div>
          <span class="tt-btn-icon"><i class="fas fa-arrow-right"></i></span>
        </a>
      </div>
      <div class="tt-blog-carousel anim-fadeinup" data-speed="800" data-simulate-touch="true" data-pagination-type="bullets">
        <div class="swiper">
          <div class="swiper-wrapper">
            <?php foreach ($view_semua_dokumen as $data) { ?>
              <div class="swiper-slide">
                <div class="tt-blog-carousel-item">
                  <a href="<?= $data['source'] ?>-detail?post_id=<?= $data['id'] ?>" class="tt-bci-image-wrap" data-cursor="Read<br>More">
                    <figure class="tt-bci-image">
                      <img class="swiper-lazy" src="<?= $baseURL ?>assets/img/<?= $data['source'] ?>/<?= $data['image'] ?>" data-src="<?= $baseURL ?>assets/img/<?= $data['source'] ?>/<?= $data['image'] ?>" alt="Image">
                    </figure>
                  </a>
                  <div class="tt-bci-info">
                    <div class="tt-bci-categories">
                      <a href="<?= $data['source'] ?>-detail"><?= $data['title'] ?></a>
                    </div>
                    <h2 class="tt-bci-title"><a href="<?= $data['source'] ?>?post_id=<?= $data['id'] ?>"><?= $data['judul'] ?></a></h2>
                  </div>
                </div>
              </div>
            <?php } ?>
          </div>
        </div>
        <div class="tt-blc-nav-prev">
          <div class="tt-blc-nav-arrow magnetic-item"><i class="tt-arrow-left"></i></div>
        </div>
        <div class="tt-blc-nav-next">
          <div class="tt-blc-nav-arrow magnetic-item"><i class="tt-arrow-right"></i></div>
        </div>
        <div class="tt-blc-pagination hide-cursor"></div>
      </div>
    </div>
  </div>

  <?php require_once("templates/bottom.php"); ?>