<?php require_once VIEWS . 'inc/header.php' ?>
<div class="Ecommerce_content">
    <div class="content_part content_part_1" id="Ecommerce_part_1">
        <div class="text_content wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <h3><?php echo $banner['intro']; ?><span class="Grader"></span></h3>
            <?php echo $banner['content']; ?>
        </div>
        <div class="img_content wow fadeInRightBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <div class="formouseon" style="z-index: 3;">
                <img class="view_parallax" src="<?php echo $banner['photo']; ?>">
            </div>
        </div>
    </div>
    <div class="content_part content_part_2">
        <div class="wrapper">
            <div class="swiper-container banner" id="Ecommerce_part_2">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dis_flex">
                        <div class="swiper_text_left">
                            <span class="Grader"></span>
                            <h3><?php echo $offline['main_banner']['intro']; ?></h3>
                            <?php echo $offline['main_banner']['content']; ?>
                        </div>
                        <div class="imgBox">
                            <img src="<?php echo $offline['main_banner']['photo']; ?>">
                        </div>
                        <?php echo $offline['sub_banner']; ?>
                    </div>
                    <div class="swiper-slide dis_flex">
                        <div class="swiper_text_left">
                            <span class="Grader"></span>
                            <h3><?php echo $online['main_banner']['intro']; ?></h3>
                            <?php echo $online['main_banner']['content']; ?>
                        </div>
                        <div class="imgBox">
                            <img src="<?php echo $online['main_banner']['photo']; ?>">
                        </div>
                        <?php echo $online['sub_banner']; ?>
                    </div>
                </div>
                <div class="forbuttonpos">
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <!--移动端内容展示-->
            <div class="Ecommerce_part_mobile_2">
                <div class="part_mobile">
                    <div class="swiper_text_left">
                        <h3><?php echo $offline['main_banner']['intro']; ?></h3>
                        <?php echo $offline['main_banner']['content']; ?>
                    </div>
                    <?php echo $offline['sub_banner']; ?>
                    <div class="swiper_text_left">
                        <h3><?php echo $online['main_banner']['intro']; ?></h3>
                        <?php echo $online['main_banner']['content']; ?>
                    </div>
                    <?php echo $online['sub_banner_mobile']; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="content_part content_part_3">
        <div class="wrapper">
            <div class="left_type_btns wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
                <ul>
                    <li class="active" code='1'>
                        <p class="btns_title">
                            <span class="ch_content">产品架构 </span>
                            <span class="Grader"></span>
                            <span class="en_content">Product architecture</span>
                        </p>
                    </li>
                    <li code='2'>
                        <p class="btns_title">
                            <span class="ch_content">营销活动 </span>
                            <span class="Grader"></span>
                            <span class="en_content">Marketing activities</span>
                        </p>
                    </li>
                    <li code='3'>
                        <p class="btns_title">
                            <span class="ch_content">第三方接口合作 </span>
                            <span class="Grader"></span>
                            <span class="en_content">Product architecture</span>
                        </p>
                    </li>
                </ul>
            </div>
            <!--移动端展示-->
            <div class="left_type_btns_mobile">
                <ul>
                    <li class="active" code='1'>
                        <p class="btns_title">
                            <span class="ch_content">产品架构 </span>
                            <span class="en_content">Product architecture</span>
                        </p>
                    </li>
                    <li code='2'>
                        <p class="btns_title">
                            <span class="ch_content">营销活动 </span>
                            <span class="en_content">Marketing activities</span>
                        </p>
                    </li>
                    <li code='3'>
                        <p class="btns_title">
                            <span class="ch_content">第三方接口合作 </span>
                            <span class="en_content">Product architecture</span>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="right_type_icons wow fadeInRightBig animated" data-wow-duration="1s" data-wow-delay="0.3s">
                <div class="icons_box active" code="1">
                    <?php echo $product; ?>
                </div>
                <div class="icons_box small_num" code="2">
                    <?php echo $marketing; ?>
                </div>
                <div class="icons_box small_num" code="3">
                    <?php echo $third_party; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="content_part content_part_4">
        <div class="bgcanvas">
            <img src="/web/shmweb/assets/images/banner/kejixian.png">
        </div>
        <div class="reason_content">
            <div class="wrapper">
                <div class="reason_title">
                    <h2>为什么选择我们</h2>
                </div>
                <div class="reason_lists">
                    <?php foreach($why['banners'] as $banner): ?>
                    <div class="reason_item">
                        <div class="reason_item_img">
                            <div class="img_left"></div>
                            <div class="img_center">
                                <img src="<?php echo $banner['photo']; ?>">
                            </div>
                            <div class="img_right"></div>
                        </div>
                        <h3><?php echo $banner['intro']; ?></h3>
                        <?php echo $banner['content']; ?>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer.php' ?>
