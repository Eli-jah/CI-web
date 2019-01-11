<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 项目开发
class Service extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 22;
        $this->banner_id = 23;
    }

    public function index()
    {
        return $this->marketing();
    }

    // 企业营销解决方案
    public function marketing()
    {
        $this->seo_id = 24;
        $this->banner_id = 23;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/marketing', $data);
    }

    // ecommerce
    public function ecommerce()
    {
        $this->seo_id = 26;
        $this->banner_id = 25;

        $data = array();
        $data = $this->get_data();

        $this->load->view('service/ecommerce', $data);
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
