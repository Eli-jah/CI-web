<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 旅游平台解决方案
class Tourism extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');

        $this->seo_id = 46;
        $this->banner_id = 47;
    }

    // 旅游平台解决方案
    public function index()
    {
        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '旅游平台解决方案';

        // banners
        $data['banner'] = $this->db->get_where('page', array('cid' => $this->banner_id))->row_array();
        $data['banner']['photo'] = tag_photo($data['banner']['photo'], 'url');

        // Internet plus tourism
        $data['tourism_plus'] = $this->db->get_where('page', array('cid' => 48))->row_array();
        $data['sub_banners'] = $this->db->order_by('sort_id', 'asc')->where_in('cid', array(49, 50, 51, 52, 53, 54))->get('page')->result_array();
        foreach ($data['sub_banners'] as $key => $banner) {
            $data['sub_banners'][$key]['photo'] = tag_photo($banner['photo'], 'url');
        }

        // why Internet plus tourism
        $data['why_plus'] = $this->db->get_where('page', array('cid' => 55))->row_array();
        $data['why_plus']['photo'] = tag_photo($data['why_plus']['photo'], 'url');

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('tourism/index', $data);
    }
}
