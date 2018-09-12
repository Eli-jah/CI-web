<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php include_once VIEWS.'inc/head.php'; ?>
</head>
<body>
	<?php include_once VIEWS.'inc/nav.php'; ?>
    
    <!--内容开始-->
	<div class="banner-in service-banner">
		<div class="owl-theme">
			<div class="item">
				<a href="javascript:;">
					<img class="img-responsive" src="<?php echo $banner ?>">
				</a>
				<div class="text">
					<h3>联系我们</h3>
					<h4>Contact Us</h4>
				</div>
			</div>
		</div>
	</div>
	<div class="sidenav">
		<div class="sub-box">
			<div class="category">
				<ul class="level-1">
					<li class="active"><a href="<?php echo site_url('contact/index') ?>">联系我们</a></li>
					<li><a href="<?php echo site_url('contact/message') ?>">在线留言</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="wrap wrap-contact">
			<div class="title-in wow fadeInUp" data-wow-duration="1s">
				<h2>联系我们</h2>
			</div>
			<div class="contact">

				<div class="map wow fadeInUp">
					<div id="dituContent"></div>
				</div>

				<?php echo tag_single(94, "content"); ?>

			</div>
		</div>

	</div>


    <?php include_once VIEWS.'inc/footer.php'; ?>
</body>

</html>
