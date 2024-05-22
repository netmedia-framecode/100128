<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu Detail";

if (!isset($_GET['post_id'])) {
  header("Location: jamuan-tamu");
  exit();
} else {
  $post_id = valid($conn, $_GET['post_id']);
  $jamuan_tamu = "SELECT * FROM jamuan_tamu WHERE id_jamuan_tamu='$post_id'";
  $view_jamuan_tamu_detail = mysqli_query($conn, $jamuan_tamu);
  if (mysqli_num_rows($view_jamuan_tamu_detail) == 0) {
    header("Location: jamuan-tamu");
    exit();
  } else if (mysqli_num_rows($view_jamuan_tamu_detail) > 0) {
    $data = mysqli_fetch_assoc($view_jamuan_tamu_detail);
    $num_char = 97;
    $text = trim($data['deskripsi']);
    $text = preg_replace('#</?strong.*?>#is', '', $text);
    $lentext = strlen($text);
    if ($lentext > $num_char) {
      $deskripsi = substr($text, 0, $num_char) . '...';
    } else if ($lentext <= $num_char) {
      $deskripsi = substr($text, 0, $num_char);
    }
?>

    <!DOCTYPE html>

    <html lang="en">

    <head>
      <?php require_once("sections/head.php"); ?>
      <!-- Open Graph Meta Tags -->
      <meta property="og:title" content="<?= $data['judul_jamuan'] ?>">
      <meta property="og:description" content="<?= $deskripsi ?>">
      <meta property="og:image" content="<?= $baseURL ?>assets/img/jamuan-tamu/<?= $data['image'] ?>">
      <meta property="og:url" content="<?= $baseURL ?>jamuan-tamu-detail?post_id=<?= $data['id_jamuan_tamu'] ?>">
      <meta property="og:type" content="website">
      <meta property="og:site_name" content="Dokumen Digital">

      <!-- Twitter Card Meta Tags -->
      <meta name="twitter:card" content="summary_large_image">
      <meta name="twitter:title" content="<?= $data['judul_jamuan'] ?>">
      <meta name="twitter:description" content="<?= $deskripsi ?>">
      <meta name="twitter:image" content="<?= $baseURL ?>assets/img/jamuan-tamu/<?= $data['image'] ?>">
      <meta name="twitter:site" content="@netmediaframecode">
      <meta name="twitter:creator" content="@netmediaframecode">
    </head>

    <body id="body" class="tt-transition tt-boxed tt-smooth-scroll tt-magic-cursor">

      <main id="body-inner">

        <div id="page-transition">
          <div class="ptr-overlay"></div>
          <div class="ptr-preloader">
            <div class="ptr-prel-content">
              <img src="<?= $baseURL ?>assets/img/logo-light.png" class="ptr-prel-image tt-logo-light" alt="Logo">
            </div>
          </div>
        </div>
        <div id="magic-cursor">
          <div id="ball"></div>
        </div>
        <div id="scroll-container">
          <?php require_once("sections/nav.php"); ?>
          <div id="content-wrap">

            <div id="page-header" class="ph-cap-sm ph-bg-image ph-ghost-scroll ph-image-cover-6 ph-content-parallax">
              <div class="page-header-inner tt-wrap">
                <div class="ph-image">
                  <div class="ph-image-inner">
                    <img src="<?= $baseURL ?>assets/img/jamuan-tamu/<?= $data['image'] ?>" alt="Image">
                  </div>
                </div>
                <div class="ph-caption max-width-1000">
                  <div class="ph-categories ph-appear">
                    <a href="jamuan-tamu-daerah?pin=<?= strtolower($data['daerah']) ?>" class="ph-category"><?= $data['daerah'] ?></a>
                  </div>
                  <h1 class="ph-caption-title">
                    <div class="ph-appear"><?= $data['judul_jamuan'] ?></div>
                  </h1>
                  <div class="ph-caption-title-ghost">
                    <div class="ph-appear">Blog</div>
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
                <div class="tt-section-inner tt-wrap max-width-900">
                  <article class="tt-blog-post lightgallery">
                    <div class="tt-blog-post-content">
                      <p class="text-xlg"><?= $data['deskripsi'] ?></p>
                    </div>
                    <div class="tt-blog-post-tags">
                      <ul>
                        <li><span>Tags:</span></li>
                        <li><a href="jamuan-tamu">#jamuantamu</a></li>
                        <li><a href="jamuan-tamu-daerah?pin=tts">#jamuantamudaerah</a></li>
                        <li><a href="jamuan-tamu-daerah?pin=tts">#daerah</a></li>
                        <li><a href="semua-dokumen">#dokumen_digital</a></li>
                      </ul>
                    </div>
                    <div class="tt-blog-post-share">
                      <div class="tt-bps-text">Bagikan:</div>
                      <div class="social-buttons">
                        <ul>
                          <li>
                            <a href="#" class="magnetic-item" rel="noopener" title="Share on Facebook" onclick="shareOnFacebook()">
                              <i class="fab fa-facebook-f"></i>
                            </a>
                          </li>
                          <li>
                            <a href="#" class="magnetic-item" rel="noopener" title="Share on Twitter" onclick="shareOnTwitter()">
                              <i class="fab fa-twitter"></i>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <script>
                      function shareOnFacebook() {
                        const url = encodeURIComponent(window.location.href);
                        const text = encodeURIComponent(document.title);
                        const facebookUrl = `https://www.facebook.com/sharer/sharer.php?u=${url}&quote=${text}`;
                        window.open(facebookUrl, '_blank', 'width=600,height=400');
                      }

                      function shareOnTwitter() {
                        const url = encodeURIComponent(window.location.href);
                        const text = encodeURIComponent(document.title);
                        const twitterUrl = `https://twitter.com/intent/tweet?url=${url}&text=${text}`;
                        window.open(twitterUrl, '_blank', 'width=600,height=400');
                      }
                    </script>
                  </article>
                  <div class="tt-sliding-sidebar-wrap">
                    <div class="tt-sliding-sidebar">
                      <div class="tt-sliding-sidebar-inner">
                        <div class="sidebar-widget sidebar-categories">
                          <h3 class="sidebar-heading">Daerah</h3>
                          <ul class="list-unstyled">
                            <li><a href="jamuan-tamu-daerah?pin=ttu">TTU <span title="Entries in this category"><?= mysqli_num_rows($view_jamuan_tamu_ttu) ?></span></a></li>
                            <li><a href="jamuan-tamu-daerah?pin=tts">TTS <span title="Entries in this category"><?= mysqli_num_rows($view_jamuan_tamu_tts) ?></span></a></li>
                          </ul>
                        </div>
                        <div class="sidebar-widget sidebar-tags">
                          <h3 class="sidebar-heading">Tags</h3>
                          <div class="sidebar-tags-list">
                            <ul>
                              <li><a href="jamuan-tamu">#jamuantamu</a></li>
                              <li><a href="jamuan-tamu-daerah?pin=tts">#jamuantamudaerah</a></li>
                              <li><a href="jamuan-tamu-daerah?pin=tts">#daerah</a></li>
                              <li><a href="jamuan-tamu-daerah?pin=ttu">#ttu</a></li>
                              <li><a href="jamuan-tamu-daerah?pin=ttu">#tts</a></li>
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

          <?php
        }
      }
      require_once("templates/bottom.php"); ?>