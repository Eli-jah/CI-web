<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 首页
class Welcome extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->seo_id = 14;
        $this->banner_id = 15;
    }

    // 首页
    public function index()
    {
        // seo
        $data['header'] = header_seoinfo(0, 0);
        $data['banner'] = tag_photo(tag_single(15, "photo"));

        $data['service'] = tag_single(16, 'content');
        $data['partner'] = $this->db->order_by('sort_id', 'desc')->limit(8)->get_where('links', array('cid' => 17, 'audit' => 1, 'flag' => 1, 'show' => 1))->result_array();
        $data['news'] = $this->db->order_by('sort_id', 'desc')->limit(3)->get_where('article', array('cid' => 21, 'audit' => 1, 'flag' => 1))->result_array();
        $data['team'] = tag_single(18, 'content');

        $this->load->view('welcome', $data);
    }
}
