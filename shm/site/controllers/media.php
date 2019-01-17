<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 视频流解决方案
class Media extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->seo_id = 56;
        $this->banner_id = 57;
    }

    // 视频流解决方案
    public function index()
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '视频流解决方案';

        // banner
        $data['banner'] = $this->db->get_where('page', array('cid' => $this->banner_id))->row_array();
        $data['banner']['photo'] = tag_photo($data['banner']['photo'], 'url');

        // pros
        $data['pro'] = $this->db->get_where('page', array('cid' => 58))->row_array();
        $data['pro_content'] = tag_single(59, 'content');

        // features
        $data['feature'] = $this->db->get_where('page', array('cid' => 60))->row_array();
        $data['feature']['titles'] = explode('|', $data['feature']['intro']);

        // media
        $data['feature_banners'] = $this->db->order_by('sort_id', 'asc')->where_in('cid', array(22, 23, 24, 25, 26, 27))->get('page')->result_array();
        foreach ($data['feature_banners'] as $key => $feature_banner) {
            $data['feature_banners'][$key]['photo'] = tag_photo($feature_banner['photo'], 'url');
        }

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('media/index', $data);
    }
}
