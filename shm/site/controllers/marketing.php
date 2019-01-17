<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 企业营销解决方案
class Marketing extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->seo_id = 61;
        $this->banner_id = 62;
    }

    // 视频流解决方案
    public function index()
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '企业营销解决方案';

        // banner
        $data['banner'] = $this->db->get_where('page', array('cid' => $this->banner_id))->row_array();
        $data['banner']['photo'] = tag_photo($data['banner']['photo'], 'url');

        // important_points
        $data['important_points'] = $this->db->order_by('sort_id', 'asc')->where_in('cid', array(63, 64, 65))->get('page')->result_array();
        foreach ($data['important_points'] as $key => $important_point) {
            $data['important_points'][$key]['photo'] = tag_photo($important_point['photo'], 'url');
        }

        // website
        $data['website'] = $this->db->get_where('page', array('cid' => 66))->row_array();
        $data['website']['photos'] = $this->multiImg($data['website']['photo']);

        // strategy
        $data['strategy'] = $this->db->get_where('page', array('cid' => 67))->row_array();
        $data['strategy']['photo'] = tag_photo($data['strategy']['photo'], 'url');

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('marketing/index', $data);
    }

    protected function multiImg($photo)
    {
        if (empty($photo)) {
            $img = '';
        } else {
            $img = array();
            if (strstr($photo, ',')) {
                $img_id = explode(",", $photo);
                foreach ($img_id as $k => $v) {
                    $img_one = tag_photo($v);
                    $img[$k] = $img_one;
                }
            } else {
                $img_one = tag_photo($photo);
                $img['0'] = $img_one;
            }
        }
        return $img;
    }
}
