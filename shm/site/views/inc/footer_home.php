<!--for home page-->

<footer>
    <div id="footer-text">
        <div class="footer_up">
            <?php echo $footer['navigation']; ?>
            <div class="erwei_num">
                <img src="/web/shmweb/assets/images/white_logo.png" class="footer_logo">
                <img src="<?php echo $footer['mp']['photo']; ?>" class="footer_erweima">
                <span><?php echo $footer['mp']['intro']; ?></span>
            </div>
        </div>
        <div class="footer_down">
            <div class="copyright">
                <?php echo $footer['icp']; ?>
            </div>
            <div class="iso">
                <img src="/web/shmweb/assets/images/telephone_white2.png">
            </div>
        </div>
    </div>
</footer>

</body>

<?php
echo static_file("assets/js/jquery-2.1.4.min.js");
echo static_file("assets/js/fullPage/js/jquery.fullPage.js");
echo static_file("assets/js/jquery.lazyload/jquery.lazyload.min.js");
// <!--窗口弹出插件-->
echo static_file("assets/js/swiper/js/swiper.min.js");
echo static_file("assets/js/swiper/js/swiper.animate.min.js");
echo static_file("assets/js/wow.min.js");
// <!--首屏全屏及首屏波浪插件-->
echo static_file("assets/js/canvas/particle_wave/jwmeyy.js");
echo static_file("assets/js/canvas/particle_wave/wave.js");
echo static_file("assets/js/canvas/particle.js");
// <!-- ie8 bootstrap -->
echo static_file("assets/js/bootstrap/js/html5shiv.js");
echo static_file("assets/js/bootstrap/js/respond.min.js");
echo static_file("assets/js/sticky-sidebar.js");
echo static_file("assets/main.js");
echo static_file("assets/js/home_index.js");
// <!--[if gt IE 7]>

// <![endif]-->
?>

<script>

</script>

</html>
