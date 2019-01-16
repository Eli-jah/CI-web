<?php require_once VIEWS . 'inc/header.php' ?>
<div class="Tourism_content" id="Tourism_content">
    <div class="content_part content_part_1" id="Ecommerce_part_1">
        <div class="text_content wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <h3><?php echo $banner['intro']; ?><span class="Grader"></span></span></h3>
            <?php echo $banner['content']; ?>
        </div>
        <div class="img_content wow fadeInRightBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <div class="formouseon" style="z-index: 3;">
                <img class="view_parallax" src="<?php echo $banner['photo']; ?>">
            </div>
        </div>
    </div>
    <div class="content_part content_part_2">
        <div class="content_part_title wow fadeInDownBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <span class="Grader"></span>
            <h3><?php echo $tourism_plus['intro']; ?></h3>
            <?php echo $tourism_plus['content']; ?>
        </div>
        <div class="content_part_img wow fadeInUpBig animated" data-wow-duration="0.5s" data-wow-delay="0s">
            <div class="content_part_img_left wow fadeInLeftBig animated" data-wow-duration="1s"
                 data-wow-delay="0.5s">
                <ul id="Tourism_lists">
                    <li code="1">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">景点展示</span>
                        <span class="Grader"></span>
                    </li>
                    <li code="2">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">景区攻略资讯</span>
                        <span class="Grader"></span>
                    </li>
                    <li code="3">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">酒店系统</span>
                        <span class="Grader"></span>
                    </li>
                    <li code="4">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">签证代办平台</span>
                        <span class="Grader"></span>
                    </li>
                    <li code="5">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">购票平台</span>
                        <span class="Grader"></span>
                    </li>
                    <li code="6">
                        <span class="Grader"></span>
                        <span class="left_swiper_content">特色电商</span>
                        <span class="Grader"></span>
                    </li>
                </ul>
            </div>
            <div class="content_part_img_right wow fadeInRightBig animated" data-wow-duration="1s"
                 data-wow-delay="0.5s">
                <ul id="Tourism_img_lists">
                    <?php foreach ($sub_banners as $key => $sub_banner): ?>
                        <li code="<?php echo($key + 1); ?>" <?php echo $key === 0 ? 'class="active"' : ''; ?>>
                            <div class="for_write_effect">
                                <h2><?php echo $sub_banner['intro']; ?></h2>
                                <?php echo $sub_banner['content']; ?>
                            </div>
                            <div class="img_right_box">
                                <img src="<?php echo $sub_banner['photo']; ?>">
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
        <!--移动端展示-->
        <div class="content_part_img_mobile">
            <ul id="Tourism_img_lists_mobile">
                <?php foreach ($sub_banners as $key => $sub_banner): ?>
                    <li>
                        <div class="for_write_effect">
                            <h2><?php echo $sub_banner['intro']; ?></h2>
                            <?php echo $sub_banner['content']; ?>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="content_part content_part_3">
        <div class="img_content_leftDown wow fadeInleftDown animated" data-wow-duration="1s" data-wow-delay="0s">
            <img src="<?php echo $why_plus['photo']; ?>">
        </div>
        <div class="img_content_rightUp wow fadeInrightUp animated" data-wow-duration="1s" data-wow-delay="0s">
            <div class="travel_title">
                <h3><?php echo $why_plus['intro']; ?></h3>
                <span class="Grader"></span>
            </div>
            <div class="travel_content">
                <?php echo $why_plus['content']; ?>
            </div>
        </div>
        <!--移动端展示-->
        <div class="img_content_rightUp_mobile">
            <div class="travel_title">
                <h3><?php echo $why_plus['intro']; ?></h3>
                <span class="Grader"></span>
            </div>
            <div class="travel_content">
                <?php echo $why_plus['content']; ?>
            </div>
            <div class="travel_img">
                <img src="<?php echo $why_plus['photo']; ?>">
            </div>
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer.php' ?>
