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
					<li><a href="<?php echo site_url('about/culture') ?>">企业文化</a></li>
					<li><a href="<?php echo site_url('about/development') ?>">发展历程</a></li>
					<li class="active"><a href="<?php echo site_url('about/honor') ?>">资质荣誉</a></li>
					<li><a href="<?php echo site_url('about/responsibility') ?>">社会责任</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div class="wrap wrap-honor">
			<div class="title-in wow fadeInUp" data-wow-duration="1s">
				<h2>资质荣誉</h2>
			</div>
			<div class="honor wow fadeInUp" data-wow-duration="1s">
                <?php echo tag_single(38, "content"); ?>
            </div>


		</div>
		<div class="scroll-honor wow fadeInUp" data-wow-duration="1s">
			<ul class="sort">
				<li class="active"><a href="javascript:;"><span>荣誉证书</span></a></li>
				<li><a href="javascript:;"><span>资质证书</span></a></li>
			</ul>
			<div class="info">
				<div class="list wow fadeInUp" data-wow-duration="1s">

					<div class="slick-slider slick-equipment">
                        <?php if (!empty($honor_02)): ?>
                        <?php foreach ($honor_02 as $k => $v): ?>
							<div>
								<div class="item">
									<a class="img-box">
										<img src="<?php echo tag_photo($v['photo']); ?>" width="688" height="494" />
									</a>

								</div>
							</div>
                            <?php endforeach; ?>
                        <?php endif; ?>
					</div>
					<div class="equipment-btn">
						<span class="eprev"></span>
						<span class="enext"></span>
					</div>

				</div>
				<div class="list">
					<div class="slick-slider slick-equipment">
                        <?php if (!empty($honor_03)): ?>
                        <?php foreach ($honor_03 as $k => $v): ?>
							<div>
								<div class="item">
									<a class="img-box">
										<img src="<?php echo tag_photo($v['photo']); ?>" width="748" height="703" />
									</a>
								</div>
							</div>
                            <?php endforeach; ?>
                        <?php endif; ?>
					</div>
					<div class="equipment-btn">
						<span class="eprev"></span>
						<span class="enext"></span>
					</div>
				</div>
			</div>

		</div>

	</div>


    <?php include_once VIEWS.'inc/footer.php'; ?>
</body>

</html>
