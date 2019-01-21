<?php require_once VIEWS . 'inc/header.php' ?>
<div class="news_show_content" id="news_show_content">
    <div class="news_content_title">
        <h4><?php echo $news['title']; ?></h4>
        <div class="new_date">
            <span><?php echo $news['date_time'][0]; ?></span>
            <span class="line"></span>
            <span><?php echo $news['date_time'][1]; ?></span>
        </div>
    </div>
    <div class="newShow_change">
        <div class="newShow_change_left">
            <a href="<?php echo empty($prev) ? 'javascript:void(0);' : site_url('news/show/' . $prev['id']) ?>">
                <span>上一篇：</span>
                <span><?php echo empty($prev) ? '没有了' : ((mb_strlen($prev['title']) <= 30) ? $prev['title'] : mb_substr($prev['title'], 0, 30) . ' ...'); ?></span>
            </a>
        </div>
        <div class="newShow_change_right">
            <a href="<?php echo empty($next) ? 'javascript:void(0);' : site_url('news/show/' . $next['id']) ?>">
                <span>下一篇：</span>
                <span><?php echo empty($next) ? '没有了' : ((mb_strlen($next['title']) <= 30) ? $next['title'] : mb_substr($next['title'], 0, 30) . ' ...'); ?></span>
            </a>
        </div>
    </div>
    <div class="news_content_info">
        <!--<div class="info_img">
            <img class="forTestRgba" src="<?php /*echo $news['photo']; */?>">
        </div>-->
        <div class="info_content">
            <?php echo $news['content']; ?>
        </div>
    </div>
</div>
<?php require_once VIEWS . 'inc/footer.php' ?>
