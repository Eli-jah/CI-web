<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 关于我们
class About extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 38;
        $this->banner_id = 39;
    }

    // 关于我们
    public function index()
    {
        $this->seo_id = 40;
        $this->banner_id = 39;

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['content'] = tag_single(40, 'content');

        $this->load->view('about/index', $data);
    }

    // 企业简介
    public function enterprise()
    {
        $this->index();
    }

    // 发展历程
    public function history()
    {
        $this->index();
    }

    // 联系我们
    public function contactus()
    {
        $this->seo_id = 42;
        $this->banner_id = 41;

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['content'] = tag_single(42, 'content');

        $this->load->view('about/contactus', $data);
    }

    // 加入我们
    public function joinus()
    {
        $this->seo_id = 42;
        $this->banner_id = 41;

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['content'] = tag_single(42, 'content');

        $this->load->view('about/joinus', $data);
    }
}
