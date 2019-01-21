<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title><?php echo $header['title']; ?></title>
    <meta name="Keywords" content="<?php echo $header['tags']; ?>"/>
    <meta name="Description" content="<?php echo $header['intro']; ?>"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="author" content="青岛尚禾维曼网络科技股份有限公司-高端网站建设-http://www.sahereman.com"/>
    <link href="/web/shmweb/assets/images/favicon.ico" rel="shortcut icon">

    <?php
    echo static_file("assets/js/bootstrap/css/bootstrap.min.css");
    echo static_file("assets/js/animate.css/animate.min.css");
    // echo static_file("assets/js/jquery.fancybox/jquery.fancybox.css");
    echo static_file("assets/js/swiper/css/swiper.min.css");
    echo static_file("assets/js/fullPage/css/fullPage.min.css");
    echo static_file("assets/fonts/iconfont.css");
    echo static_file("assets/css/style.css");

    echo static_file("assets/js/base_loading.js");
    echo static_file("assets/js/layer/skin/layer.css");
    ?>

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?b1adbc20b757cd6750d05cbb489f30e7";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>
<header id="header" class="normal_page">
    <div class="header_left">
        <div class="logo_box">
            <a href="<?php echo site_url(); ?>">
                <img src="/web/shmweb/assets/images/white_logo.png" class="img1">
                <img src="/web/shmweb/assets/images/color_logo.png" class="img2">
            </a>
        </div>
        <div class="header_menu">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="local_name">
            <span><?php echo $local_name ? $local_name : '首页'; ?></span>
        </div>
    </div>
    <!--头部右侧菜单-->
    <div class="header_menu_lists" id="lists_area">
        <ul class="nav-list1">
            <li class="active">
                <a href="<?php echo site_url(); ?>">首页</a>
            </li>
            <li class="more">
                <a href="javascript:void(0);">解决方案 &or;</a>
            </li>
            <li>
                <a href="<?php echo site_url('news/index'); ?>">资讯中心</a>
            </li>
            <li>
                <a href="<?php echo site_url('about/us'); ?>">联系我们</a>
            </li>
        </ul>
        <div class="child_menu" id="child_menu">
            <ul class="nav-list2">
                <li class="active">
                    <a href="<?php echo site_url('ecommerce/index'); ?>">电商平台解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('ecommerce/index'); ?>">产品架构</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('ecommerce/index'); ?>">营销活动</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('ecommerce/index'); ?>">第三方接口合作</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('tourism/index'); ?>">旅游平台解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">景点展示</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">景区攻略咨询</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">酒店系统</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">签证代办平台</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">购票平台</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>">特色电商</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('media/index'); ?>">视频流解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">智能美肤</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">特效滤镜</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">人脸识别</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">功能贴纸</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">直播弹幕</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>">礼物连击</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('marketing/index'); ?>">企业营销解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('marketing/index'); ?>">品牌网站建设</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('marketing/index'); ?>">微信公众号运营</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('marketing/index'); ?>">微信公众号搭建</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('marketing/index'); ?>">品牌策划</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('marketing/index'); ?>">新媒体营销</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="com_phone">
        <img src="/web/shmweb/assets/images/telephone_white2.png" class="img1">
        <img src="/web/shmweb/assets/images/telephone2.png" class="img2">
    </div>
    <!--隐藏菜单移动端显示-->
    <div class="mobile_menu">
        <button id="nav-xs-btn">
            <span class="btn-line"></span>
            <span class="btn-line"></span>
        </button>
        <ul class="nav-list1">
            <li><a href="<?php echo site_url(); ?>">首页</a></li>
            <li class="mobile_more">
                <a href="javascript:void(0);">解决方案</a>
                <ul class="nav-list4">
                    <li><a href="<?php echo site_url('ecommerce/index'); ?>">电商平台解决方案</a></li>
                    <li><a href="<?php echo site_url('tourism/index'); ?>">旅游平台解决方案</a></li>
                    <li><a href="<?php echo site_url('media/index'); ?>">视频流解决方案</a></li>
                    <li><a href="<?php echo site_url('marketing/index'); ?>">企业营销解决方案</a></li>
                </ul>
            </li>
            <li><a href="<?php echo site_url('news/index'); ?>">资讯中心</a></li>
            <li><a href="<?php echo site_url('about/us'); ?>">联系我们</a></li>
        </ul>
    </div>
</header>
