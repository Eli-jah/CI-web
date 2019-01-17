<?php require_once VIEWS . 'inc/header.php' ?>
<div class="marketing_content" id="Marketing_content">
    <div class="content_part content_part_1">
        <div class="content_part_1_title wow fadeInDownBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <h3><?php echo $banner['intro']; ?></h3>
        </div>
        <div class="content_img wow fadeInUpBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <div class="content_img_center">
                <img src="<?php echo $banner['photo']; ?>">
                <img src="/web/shmweb/assets/images/img/xiankuang.png" class="wow zoomIn animated"
                     data-wow-duration="1s" data-wow-delay="1s">
            </div>
            <div class="content_img_words">
                <?php echo $banner['content']; ?>
            </div>
        </div>
    </div>
    <div class="content_part content_part_2">
        <div class="content_part_2_title wow fadeInDownBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <h3>品牌网站的重要性</h3>
            <span class="Grader"></span>
        </div>
        <div class="content_part_2_text wow fadeInUpBig animated" data-wow-duration="1s" data-wow-delay="0s"
             id="importance_parts">
            <?php foreach($important_points as $key => $important_point): ?>
            <div class="import_item">
                <div class="import_item_forbg"></div>
                <div class="import_item_title">
                    <span>0<?php echo ($key + 1); ?></span>
                    <h3><?php echo $important_point['intro']; ?></h3>
                </div>
                <div class="import_item_img">
                    <img src="<?php echo $important_point['photo']; ?>">
                </div>
                <div class="import_item_content">
                    <?php echo $important_point['content']; ?>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        <!--移动端展示-->
        <div class="content_part_2_text_mobile wow fadeInUpBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <?php foreach($important_points as $key => $important_point): ?>
            <div class="import_item">
                <div class="import_item_title">
                    <h3><?php echo $important_point['intro']; ?></h3>
                </div>
                <div class="import_item_img">
                    <img src="<?php echo $important_point['photo']; ?>">
                </div>
                <div class="import_item_content">
                    <?php echo $important_point['content']; ?>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="content_part content_part_3">
        <div class="content_part_3_left wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <img src="<?php echo $website['photos'][0]; ?>">
        </div>
        <div class="content_part_3_right wow fadeInRightBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <div class="content_part_3_right_text">
                <div class="text_title">
                    <h3><?php echo $website['intro']; ?></h3>
                </div>
                <?php echo $website['content']; ?>
            </div>
            <img src="<?php echo $website['photos'][1]; ?>">
        </div>
    </div>
    <div class="content_part content_part_4">
        <div class="content_part_4_text wow fadeInLeftBig animated" data-wow-duration="1s" data-wow-delay="0s">
            <span class="Grader"></span>
            <h3><?php echo $strategy['intro']; ?></h3>
            <?php echo $strategy['content']; ?>
        </div>
    </div>
    <div class="content_part content_part_5">
        <div class="content_part_5_img">
            <img src="<?php echo $strategy['photo']; ?>">
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer.php' ?>
