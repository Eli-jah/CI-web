<?php require_once VIEWS . 'inc/header.php' ?>
    <div class="news_content" id="news_content" data-ab-css-background>
        <div class="news_content_title">
            <h4>新闻资讯</h4>
            <span class="Grader"></span>
        </div>
        <div class="news_content_lists">
            <!--时间线-->
            <div class="center_line">
                <span class="first_cricle dis_ni"></span>
                    <span class="arrowup">
                        <i class="iconfont icon-arrow-top"></i>
                        <i class="iconfont icon-arrow-top"></i>
                        <i class="iconfont icon-arrow-top"></i>
                        <i class="iconfont icon-arrow-top"></i>
                    </span>
                <span class="dashed_line short_line"></span>
                <?php $_ii = 0;
                while ($_ii++ < 5): ?>
                    <i></i>
                    <span class="dashed_line"></span>
                <?php endwhile; ?>
                <span class="arrowdown">
                        <i class="iconfont icon-arrow-down"></i>
                        <i class="iconfont icon-arrow-down"></i>
                        <i class="iconfont icon-arrow-down"></i>
                        <i class="iconfont icon-arrow-down"></i>
                    </span>
            </div>
            <ul class="news_content_lists_ul" id="foronMouseWheel">
                <!--
                    此处需要ajax接口请求，每次请求返回的数量为5！！
                    -->
                <?php $_ii = 0;
                while ($_ii++ < 5): ?>
                    <li class="for_show">
                        <a href="<?php echo site_url('news/show/' . $i) ?>">
                            <div class="timeline-content">
                                <div class="new_dateTime">
                                    <span>01-15</span>
                                    <span>2019</span>
                                </div>
                                <div class="new_info_content">
                                    <p class="new_title">中企高呈再获殊荣 —— "2018行业用户推荐品牌"</p>
                                    <p class="news_shortInfo">
                                        近日，在中国信息化领域中具有高规格、大规模和深层影响力的表彰活动“2018第二届中国信息化创新发展大会”上……</p>
                                </div>
                            </div>
                            <div class="bg_img">
                                <img class="forTestRgba active" id="images" src="/web/shmweb/assets/images/img/yanshi_img.jpg">
                            </div>
                        </a>
                    </li>
                <?php endwhile; ?>
            </ul>
            <!--加载更多的隐藏内容-->
            <!--固定内容不需要更改-->
            <div class="fonMore_show_items">
                <div class="forMoreLoad">
                    <span>查看更多</span>
                </div>
            </div>
        </div>
    </div>
<?php require_once VIEWS . 'inc/footer.php' ?>
