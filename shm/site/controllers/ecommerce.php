<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 电商平台解决方案
class Ecommerce extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');

        $this->seo_id = 33;
        $this->banner_id = 34;
    }

    // 电商平台解决方案
    public function index()
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '电商平台解决方案';

        // banners
        $data['banner'] = $this->db->get_where('page', array('cid' => $this->banner_id))->row_array();
        $data['banner']['photo'] = tag_photo($data['banner']['photo'], 'url');

        // offline + online
        $data['offline']['main_banner'] = $this->db->get_where('page', array('cid' => 35))->row_array();
        $data['offline']['main_banner']['photo'] = tag_photo($data['offline']['main_banner']['photo'], 'url');
        $data['offline']['sub_banner'] = tag_single(36, 'content');
        $data['online']['main_banner'] = $this->db->get_where('page', array('cid' => 37))->row_array();
        $data['online']['main_banner']['photo'] = tag_photo($data['online']['main_banner']['photo'], 'url');
        $data['online']['sub_banner'] = tag_single(38, 'content');
        $data['online']['sub_banner_mobile'] = tag_single(39, 'content');

        // product + marketing + third_party
        $data['product'] = tag_single(40, 'content');
        $data['marketing'] = tag_single(41, 'content');
        $data['third_party'] = tag_single(42, 'content');

        // why
        $data['why']['banners'] = $this->db->order_by('sort_id', 'asc')->where_in('cid', array(43, 44, 45))->get('page')->result_array();
        foreach ($data['why']['banners'] as $key => $banner) {
            $data['why']['banners'][$key]['photo'] = tag_photo($banner['photo'], 'url');
        }

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('ecommerce/index', $data);
    }
}
