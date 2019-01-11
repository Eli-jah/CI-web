<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 关于我们
class About extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 38;
        $this->banner_id = 39;
    }

    public function index()
    {
        return $this->us();
    }

    // 关于我们 + 公司简介 + 发展历程 + 联系我们
    public function us()
    {
        $this->seo_id = 40;
        $this->banner_id = 39;

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['content'] = tag_single(40, 'content');

        $this->load->view('about/us', $data);
    }
}
