<?php require_once VIEWS . 'inc/header.php' ?>
<div class="aboutUs_content" id="aboutUs_content">
    <div class="content_part content_part_1">
        <div class="banner_words">
            <h3><?php echo $introduction['titles'][1]; ?></h3>
            <p><?php echo $introduction['titles'][0]; ?></p>
        </div>
    </div>
    <div class="content_part content_part_2">
        <div class="Companyprofile">
            <div class="Companyprofile_line">
                <span class="spot"></span>
                <span class="Vertical_line"></span>
                <span class="Horizontal_line"></span>
            </div>
            <div class="Companyprofile_title">
                <h4>公司简介</h4>
            </div>
            <div class="Companyprofile_content">
                <?php echo $introduction['content']; ?>
            </div>
        </div>
    </div>
    <div class="content_part content_part_3" data-request-url="<?php echo site_url('about/feedback'); ?>">
        <div class="map_left">
            <div class="map_left_bg">
                <img src="<?php echo $contact_us['photo']; ?>">
            </div>
            <div class="map_left_content">
                <p class="content_title"><?php echo $contact_us['intro']; ?></p>
                <ul class="address_info">
                    <?php echo $contact_us['content']; ?>
                </ul>
                <div class="appointment_com">
                    <span>公司名称</span>
                    <input name="company" id="feedback_company" class="appointment_com_in" placeholder="请输入公司名称">
                </div>
                <div class="appointment_name_mail">
                    <div class="appointment_name">
                        <span>联系人姓名</span>
                        <input name="username" id="feedback_username" class="appointment_com_in" placeholder="请输入联系人姓名">
                    </div>
                    <div class="appointment_mail">
                        <span>联系人电话</span>
                        <input name="telphone" id="feedback_telphone" class="appointment_com_in" placeholder="请输入联系人电话">
                    </div>
                </div>
                <div class="appointment_question">
                    <span>您要咨询的内容</span>
                    <textarea name="content" id="feedback_content" class="appointment_com_in" placeholder="请输入您要咨询的内容"></textarea>
                </div>
                <p>24小时内回访人员马上联系您</p>
                <button class="submit">提交</button>
            </div>
        </div>
        <div class="map_right">
            <div id="allmap"></div>
        </div>
    </div>
</div>

<?php require_once VIEWS . 'inc/footer.php' ?>
