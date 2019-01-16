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

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('ecommerce/index', $data);
    }
}
