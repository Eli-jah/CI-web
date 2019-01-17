<?php require_once VIEWS . 'inc/header.php' ?>
<div class="Shortvideo_content">
    <div class="content_part content_part_1" id="Ecommerce_part_1">
        <div class="text_content wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <h3><?php echo $banner['intro']; ?></h3>
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
            <div class="content_part_title wow fadeInDownBig animated" data-wow-duration="1s" data-wow-delay="0s">
                <h3><?php echo $pro['intro']; ?></h3>
                <span class="Grader"></span>
                <?php echo $pro['content']; ?>
            </div>
            <div class="content_part_advantages wow fadeInUpBig animated" data-wow-duration="1s" data-wow-delay="0s">
                <div class="advantage_items">
                    <?php echo $pro_content; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="content_part content_part_3" id="Shortvideo_mousesheel">
        <div class="wrapper">
            <div class="content_part_title wow fadeInDownBig animated" data-wow-duration="1s" data-wow-delay="0s">
                <p class="en_title"><?php echo $feature['titles'][0]; ?></p>
                <h3><?php echo $feature['titles'][1]; ?></h3>
                <span class="Grader"></span>
                <?php echo $feature['content']; ?>
            </div>
            <div class="content_part_characteristic wow fadeInUpBig animated" data-wow-duration="1s"
                 data-wow-delay="0s">
                <div class="img_content">
                    <div class="content_left">
                        <?php foreach ($feature_banners as $key => $feature_banner): ?>
                            <div class="content_left_item <?php echo $key === 0 ? 'active' : ''; ?>" code="0<?php echo($key + 1); ?>">
                                <img src="<?php echo $feature_banner['photo']; ?>">
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="content_center" id="foronMouseWheel">
                        <ul>
                            <?php foreach ($feature_banners as $key => $feature_banner): ?>
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
                        <?php foreach ($feature_banners as $key => $feature_banner): ?>
                            <div class="small_part_title <?php echo $key === 0 ? 'active' : ''; ?>"
                                 code="0<?php echo($key + 1); ?>">
                                <h4><?php echo $feature_banner['intro']; ?></h4>
                                <?php echo $feature_banner['content']; ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer.php' ?>
