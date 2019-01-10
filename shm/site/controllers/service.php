<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 项目开发
class Service extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 22;
        $this->banner_id = 23;
    }

    // 企业营销解决方案
    public function index()
    {
        $this->seo_id = 24;
        $this->banner_id = 23;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/index', $data);
    }

    // 品牌网站建设
    public function website()
    {
        $this->index();
    }

    // 微信公众号搭建
    public function wxmpbuild()
    {
        $this->seo_id = 26;
        $this->banner_id = 25;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/miniprogram', $data);
    }

    // 微信公众号运营
    public function wxmprun()
    {
        $this->seo_id = 28;
        $this->banner_id = 27;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/wechat', $data);
    }

    // 品牌策划
    public function plan()
    {
        $this->seo_id = 30;
        $this->banner_id = 29;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/platform', $data);
    }

    // 新媒体营销
    public function media()
    {
        $this->index();
    }

    protected function get_data()
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['content'] = tag_single($this->seo_id, 'content');

        return $data;
    }
}
