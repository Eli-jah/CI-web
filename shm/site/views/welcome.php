<?php require_once VIEWS . 'inc/header.php' ?>
<div class="index_content">
    <ul id="menu">
        <li data-menuanchor="page1" class="page1 active">
            <a href="#page1"><span class="first_tips"></span><span>01</span></a>
        </li>
        <li data-menuanchor="page2" class="page2">
            <a href="#page2"><span class="second_tips"></span><span>02</span></a>
        </li>
        <li data-menuanchor="page3" class="page3">
            <a href="#page3"><span class="third_tips"></span><span>03</span></a>
        </li>
        <li data-menuanchor="page4" class="page4">
            <a href="#page4"><span class="forth_tips"></span><span>04</span></a>
        </li>
        <li data-menuanchor="page5" class="page5">
            <a href="#page5"><span class="fifth_tips"></span><span>05</span></a>
        </li>
    </ul>
    <div id="full_page">
        <div class="section full_page1">
            <div class="section_content">
                <div class="bgcanvas">
                    <!--用来存放canvas的地方，暂时先用图片占位一下-->
                    <img src="/web/shmweb/assets/images/banner/BGxian.png">
                    <canvas></canvas>
                </div>
                <div class="swiper-container banner banner_content" id="page1_banner">
                    <div class="swiper-wrapper">
                        <?php foreach ($banners as $banner): ?>
                            <div class="swiper-slide dis_flex">
                                <div class="text_content ani" swiper-animate-effect="fadeInLeft"
                                     swiper-animate-duration="0.2s" swiper-animate-delay="0s">
                                    <h1><?php echo $banner['title']; ?></h1>
                                    <h3><?php echo $banner['sub_title']; ?></h3>
                                    <a class="view_details" href="<?php echo $banner['link']; ?>">查看详情</a>
                                </div>
                                <div class="img_content ani" swiper-animate-effect="fadeInRight"
                                     swiper-animate-duration="0.2s" swiper-animate-delay="0s">
                                    <div class="formouseon" style="z-index: 3;">
                                        <img src="<?php echo $banner['photo']; ?>">
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="swiper-pagination banner-pagination"></div>
                </div>
            </div>
        </div>
        <div class="section full_page2">
            <div class="section_content">
                <div class="part_title">
                    <h3><?php echo $marketing['title']['intro']; ?></h3>
                    <?php echo $marketing['title']['content']; ?>
                </div>
                <div class="part2_banner">
                    <div class="swiper-container banner" id="page2_banner">
                        <div class="swiper-wrapper">
                            <?php foreach ($marketing['banners'] as $banner): ?>
                                <div class="swiper-slide dis_flex">
                                    <div class="ani swiper_text_left">
                                        <h3><?php echo $banner['intro']; ?></h3>
                                        <span class="Grader"></span>
                                        <?php echo $banner['content']; ?>
                                    </div>
                                    <div class="imgBox ani">
                                        <img src="<?php echo $banner['photo']; ?>">
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <div class="forbuttonpos">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section full_page3 partone_bg">
            <div class="section_content">
                <div class="bgcanvas">
                    <canvas id="particle_wave" width="2560" height="1000"></canvas>
                </div>
                <div class="parttwo_bg_content">
                    <div class="part_title partone_bg_text">
                        <h3><?php echo $ecommerce['title']['intro']; ?></h3>
                        <?php echo $ecommerce['title']['content']; ?>
                    </div>
                    <div class="change_box">
                        <a href="javascript:void(0);" name="B2C" class="first_tip active">B2C</a>
                        <a href="javascript:void(0);" name="O2O" class="second_tip">O2O</a>
                    </div>
                    <div class="change_content">
                        <div name="B2C" class="change_content_part active">
                            <div class="B2Clist_box">
                                <?php echo $ecommerce['b2c']; ?>
                            </div>
                        </div>
                        <div name="O2O" class="change_content_part">
                            <div class="O2O_box" id="parallax_box">
                                <div class="text_content">
                                    <h4><?php echo $ecommerce['o2o']['intro']; ?></h4>
                                    <?php echo $ecommerce['o2o']['content']; ?>
                                </div>
                                <div class="img_content">
                                    <img class="moveimg" style="z-index: 3;"
                                         src="<?php echo $ecommerce['o2o']['photo']; ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section full_page4">
            <div class="section_content">
                <div class="bgcanvas">
                    <canvas id="particle"></canvas>
                </div>
                <div class="page4_content">
                    <div class="part_title">
                        <h3><?php echo $tourism['title']['intro']; ?></h3>
                        <?php echo $tourism['title']['content']; ?>
                    </div>
                    <div class="banner_content">
                        <div class="swiper-container" id="page4_banner">
                            <div class="swiper-wrapper">
                                <?php foreach ($tourism['banners'] as $banner): ?>
                                    <div class="swiper-slide">
                                        <img src="<?php echo $banner['photo']; ?>">
                                        <div class="slide_content">
                                            <p class="title"><?php echo $banner['intro']; ?></p>
                                            <?php echo $banner['content']; ?>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <div class="swiper-pagination page4-pagination"></div>
                        </div>
                        <!--移动端展示-->
                        <div class="content_for_mobile">
                            <?php foreach ($tourism['banners'] as $banner): ?>
                                <div class="small_part_title">
                                    <h4><?php echo $banner['intro']; ?></h4>
                                    <?php echo $banner['content']; ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section full_page5">
            <div class="section_content">
                <div class="bgcanvas">
                    <!--<canvas></canvas>-->
                    <img src="/web/shmweb/assets/images/banner/kejixian.png" class="page5_bgimg">
                </div>
                <div class="page5_content">
                    <div class="part_title">
                        <h3><?php echo $media['title']['intro']; ?></h3>
                        <?php echo $media['title']['content']; ?>
                    </div>
                    <div class="img_content">
                        <div class="content_left">
                            <?php foreach ($media['banners'] as $key => $banner): ?>
                                <div class="content_left_item <?php echo $key === 0 ? 'active' : ''; ?>" code="0<?php echo($key + 1); ?>">
                                    <img src="<?php echo $banner['photo']; ?>">
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <div class="content_center" id="foronMouseWheel">
                            <ul>
                                <?php foreach ($media['banners'] as $key => $banner): ?>
                                    <li class="<?php echo $key === 0 ? 'active' : ''; ?>" code="<?php echo($key + 1); ?>">
                                        <span>0<?php echo($key + 1); ?></span>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <div class="content_right">
                            <div class="show_tip_num">
                                <span>01</span>
                            </div>
                            <?php foreach ($media['banners'] as $key => $banner): ?>
                                <div class="small_part_title <?php echo $key === 0 ? 'active' : ''; ?>"
                                     code="0<?php echo($key + 1); ?>">
                                    <h4><?php echo $banner['intro']; ?></h4>
                                    <?php echo $banner['content']; ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section" id="section-footer">
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
                        <img src="<?php echo $footer['iso']; ?>">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer_home.php' ?>
