<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 新媒体运营
class Media extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    function __construct()
    {
        parent::__construct();

        $this->seo_id = 31;
        $this->banner_id = 32;
    }

    // 视频流解决方案
    public function index()
    {
        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        // 新媒体营销
        $data['marketing'] = tag_single(33, 'content');
        // 亮点功能
        $data['spotlight'] = tag_single(34, 'content');

        $this->load->view('media/index', $data);
    }

    // 智能美肤
    public function beautify()
    {
        $this->index();
    }

    // 特效滤镜
    public function filter()
    {
        $this->index();
    }

    // 人脸识别
    public function recognition()
    {
        $this->index();
    }

    // 功能贴纸
    public function sticker()
    {
        $this->index();
    }

    // 直播弹幕
    public function barrage()
    {
        $this->index();
    }

    // 礼物连击
    public function gift()
    {
        $this->index();
    }
}
