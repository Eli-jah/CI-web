<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php include_once VIEWS.'inc/head.php'; ?>
</head>
<body>
	<?php include_once VIEWS.'inc/nav.php'; ?>
    
    <!--内容开始-->
	<div class="banner-in">
		<div class="owl-theme">
			<div class="item">
				<a href="javascript:;">
					<img class="img-responsive" src="<?php echo $banner ?>">
				</a>
				<div class="text">
					<h3>关于益和</h3>
					<h4>About YIHE</h4>
					<p>益国利民 和谐共赢 服务社会 创造生活</p>
				</div>
			</div>
		</div>
	</div>
	<div class="sidenav">
		<div class="sub-box">
			<div class="category">
				<ul>
					<li><a href="<?php echo site_url('about/index') ?>">集团简介</a></li>
					<li><a href="<?php echo site_url('about/strategic') ?>">集团战略</a></li>
					<li class="active"><a href="<?php echo site_url('about/culture') ?>">企业文化</a></li>
					<li><a href="<?php echo site_url('about/development') ?>">发展历程</a></li>
					<li><a href="<?php echo site_url('about/honor') ?>">资质荣誉</a></li>
					<li><a href="<?php echo site_url('about/responsibility') ?>">社会责任</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div class="wrap wrap-culture">
			<div class="title-in wow fadeInUp" data-wow-duration="1s">
				<h2>企业文化</h2>
			</div>
			<div class="culture">
				<?php echo tag_single(22, "content"); ?>

			</div>
		</div>

	</div>

    <?php include_once VIEWS.'inc/footer.php'; ?>
</body>

</html>
