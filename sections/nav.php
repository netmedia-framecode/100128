<!-- ===================
				///// Begin header /////
				========================
				* Use class "tt-header-fixed" to set header to fixed position.
				-->
<header id="tt-header" class="tt-header-fixed">
  <div class="tt-header-inner"> <!-- add/remove class "tt-wrap" to enable/disable element boxed layout (class "tt-boxed" is required in <body> tag!). Note: additionally you can use prepared helper class "max-width-*" to add custom width to "tt-wrap". Example: "max-width-1500" (class "tt-wrap" is still required!). More info about helper classes can be found in the file "helper.css". -->

    <div class="tt-header-col">

      <!-- Begin logo 
							================ -->
      <div class="tt-logo">
        <a href="index.html">
          <!-- Hint: You may need to change the img height to match your logo type. You can do this from the "theme.css" file (find: ".tt-logo img"). -->
          <img src="<?= $baseURL ?>assets/img/logo-light.png" class="tt-logo-light magnetic-item" alt="Logo"> <!-- logo light -->
          <img src="<?= $baseURL ?>assets/img/logo-dark.png" class="tt-logo-dark magnetic-item" alt="Logo"> <!-- logo dark -->
        </a>
      </div>
      <!-- End logo -->

    </div> <!-- /.tt-header-col -->

    <div class="tt-header-col">

      <!-- Begin overlay menu toggle button -->
      <div id="tt-ol-menu-toggle-btn-wrap">
        <div class="tt-ol-menu-toggle-btn-text-wrap hide-cursor">
          <div class="tt-ol-menu-toggle-btn-text">
            <span class="text-menu" data-hover="Open">Menu</span>
            <span class="text-close">Close</span>
          </div> <!-- /.tt-ol-menu-toggle-btn-text -->
        </div> <!-- /.tt-ol-menu-toggle-btn-text-wrap -->
        <div class="tt-ol-menu-toggle-btn-holder">
          <a href="#" class="tt-ol-menu-toggle-btn magnetic-item"><span></span></a>
        </div> <!-- /.tt-ol-menu-toggle-btn-holder -->
      </div>
      <!-- End overlay menu toggle button -->

      <!-- Begin overlay menu 
							======================== 
							* Use class "tt-ol-menu-count" to enable menu counter.
							-->
      <nav class="tt-overlay-menu tt-ol-menu-count">
        <div class="tt-ol-menu-ghost">Explore</div>
        <div class="tt-ol-menu-holder">
          <div class="tt-ol-menu-inner tt-wrap">
            <div class="tt-ol-menu-content">

              <!-- Begin menu list -->
              <ul class="tt-ol-menu-list">

                <li class="active"><a href="./">Home</a></li>

                <!-- Begin submenu (submenu master)
												==================================== -->
                <li class="tt-ol-submenu-wrap">
                  <div class="tt-ol-submenu-trigger">
                    <a href="#">Jamuan Tamu</a>
                    <div class="tt-ol-submenu-caret-wrap">
                      <div class="tt-ol-submenu-caret magnetic-item"></div>
                    </div> <!-- /.tt-ol-submenu-caret-wrap -->
                  </div> <!-- /.tt-ol-submenu-trigger -->
                  <div class="tt-ol-submenu">
                    <ul class="tt-ol-submenu-list">

                      <li><a href="jamuan-tamu-daerah?pin=ttu">TTU</a></li>
                      <li><a href="jamuan-tamu-daerah?pin=tts">TTS</a></li>

                    </ul> <!-- /.tt-ol-submenu-list -->
                  </div> <!-- /.tt-ol-submenu -->
                </li>
                <!-- End submenu (sub-master) -->

                <!-- Begin submenu (submenu master)
												==================================== -->
                <li class="tt-ol-submenu-wrap">
                  <div class="tt-ol-submenu-trigger">
                    <a href="#">Perkawinan</a>
                    <div class="tt-ol-submenu-caret-wrap">
                      <div class="tt-ol-submenu-caret magnetic-item"></div>
                    </div> <!-- /.tt-ol-submenu-caret-wrap -->
                  </div> <!-- /.tt-ol-submenu-trigger -->
                  <div class="tt-ol-submenu">
                    <ul class="tt-ol-submenu-list">

                      <li><a href="perkawinan-daerah?pin=ttu">TTU</a></li>
                      <li><a href="perkawinan-daerah?pin=tts">TTS</a></li>

                    </ul> <!-- /.tt-ol-submenu-list -->
                  </div> <!-- /.tt-ol-submenu -->
                </li>
                <!-- End submenu (sub-master) -->

                <!-- Begin submenu (submenu master)
												==================================== -->
                <li class="tt-ol-submenu-wrap">
                  <div class="tt-ol-submenu-trigger">
                    <a href="#">Pakian Adat</a>
                    <div class="tt-ol-submenu-caret-wrap">
                      <div class="tt-ol-submenu-caret magnetic-item"></div>
                    </div> <!-- /.tt-ol-submenu-caret-wrap -->
                  </div> <!-- /.tt-ol-submenu-trigger -->
                  <div class="tt-ol-submenu">
                    <ul class="tt-ol-submenu-list">

                      <li><a href="pakaian-adat-daerah?pin=ttu">TTU</a></li>
                      <li><a href="pakaian-adat-daerah?pin=tts">TTS</a></li>

                    </ul> <!-- /.tt-ol-submenu-list -->
                  </div> <!-- /.tt-ol-submenu -->
                </li>
                <!-- End submenu (sub-master) -->

                <li><a href="auth/">Login</a></li>

              </ul>
              <!-- End menu list -->

              <!-- Begin overlay menu social links 
											===================================== -->
              <ul class="tt-ol-menu-social">
                <li>
                  <h6 class="tt-ol-menu-social-heading">Social Links:</h6>
                </li>
                <li><a href="" target="_blank" rel="noopener">Facebook</a></li>
                <li><a href="" target="_blank" rel="noopener">Twitter</a></li>
                <li><a href="" target="_blank" rel="noopener">Instagram</a></li>
                <li><a href="" target="_blank" rel="noopener">Youtube</a></li>
              </ul>
              <!-- End overlay menu social links -->

            </div> <!-- /.tt-ol-menu-content -->
          </div> <!-- /.tt-ol-menu-inner -->
        </div> <!-- /.tt-ol-menu-holder -->
      </nav>
      <!-- End overlay menu -->

    </div> <!-- /.header-col -->
  </div> <!-- /.header-inner -->
</header>
<!-- End header -->