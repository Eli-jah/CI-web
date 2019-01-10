<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>尚禾维曼</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link href="/web/shmweb/assets/images/favicon.ico" rel="shortcut icon">

    <?php
    echo static_file("assets/js/bootstrap/css/bootstrap.min.css");
    echo static_file("assets/js/animate.css/animate.min.css");
    echo static_file("assets/js/jquery.fancybox/jquery.fancybox.css");
    echo static_file("assets/js/swiper/css/swiper.css");
    echo static_file("assets/js/fullPage/css/fullPage.css");
    echo static_file("assets/fonts/iconfont.css");
    echo static_file("assets/css/style.css");
    ?>

    <!--<script> var _hmt = _hmt || []; (function() { var hm = document.createElement("script"); hm.src = "https://hm.baidu.com/hm.js?b1adbc20b757cd6750d05cbb489f30e7"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(hm, s); })(); </script>-->
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
            <span>首页</span>
        </div>
    </div>
    <!--头部右侧菜单-->
    <div class="header_menu_lists" id="lists_area">
        <ul class="nav-list1">
            <li class="active">
                <a href="<?php echo site_url(); ?>?name=首页">首页</a>
            </li>
            <li class="more">
                <a href="javascript:void(0)">解决方案 &or;</a>
            </li>
            <li>
                <a href="news.php?name=资讯中心">资讯中心</a>
            </li>
            <li>
                <a href="aboutUs.php?name=关于我们">关于我们</a>
            </li>
        </ul>
        <div class="child_menu" id="child_menu">
            <ul class="nav-list2">
                <li class="active">
                    <a href="Ecommerce.php?name=电商平台解决方案">电商平台解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="Ecommerce.php?name=电商平台解决方案">产品架构</a>
                        </li>
                        <li>
                            <a href="Ecommerce.php?name=电商平台解决方案">营销活动</a>
                        </li>
                        <li>
                            <a href="Ecommerce.php?name=电商平台解决方案">第三方接口合作</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">旅游平台解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">景点展示</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">景区攻略咨询</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">酒店系统</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">签证代办平台</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">购票平台</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('tourism/index'); ?>?name=旅游平台解决方案">特色电商</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">视频流解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">智能美肤</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">特效滤镜</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">人脸识别</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">功能贴纸</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">直播弹幕</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('media/index'); ?>?name=视频流解决方案">礼物连击</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="Marketing.php?name=企业营销解决方案">企业营销解决方案</a>
                    <ul class="nav-list3">
                        <li>
                            <a href="Marketing.php?name=企业营销解决方案">品牌网站建设</a>
                        </li>
                        <li>
                            <a href="Marketing.php?name=企业营销解决方案">微信公众号运营</a>
                        </li>
                        <li>
                            <a href="Marketing.php?name=企业营销解决方案">微信公众号搭建</a>
                        </li>
                        <li>
                            <a href="Marketing.php?name=企业营销解决方案">品牌策划</a>
                        </li>
                        <li>
                            <a href="Marketing.php?name=企业营销解决方案">新媒体营销</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
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
                <a href="javascript:void(0)">解决方案</a>
                <ul class="nav-list4">
                    <li><a href="Ecommerce.php">电商平台解决方案</a></li>
                    <li><a href="<?php echo site_url('tourism/index'); ?>">旅游平台解决方案</a></li>
                    <li><a href="<?php echo site_url('media/index'); ?>">视频流解决方案</a></li>
                    <li><a href="Marketing.php.php">企业营销解决方案</a></li>
                </ul>
            </li>
            <li><a href="news.php">资讯中心</a></li>
            <li><a href="aboutUs.php">关于我们</a></li>
        </ul>
    </div>
</header>
