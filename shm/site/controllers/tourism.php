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
        $this->load->model('article_model');

        $this->seo_id = 19;
        $this->banner_id = 20;
    }

    // 旅游平台解决方案
    public function index()
    {
        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data = $this->load(1, 6);

        $this->load->view('tourism/index', $data);
    }

    protected function load($page = 1, $size = 6)
    {
        $data['tourism'] = array();
        $data['link'] = '';

        $where = array('audit' => 1, 'cid' => 21);
        $row_count = $this->db->where($where)->from('article')->count_all_results();
        $page_count = ceil($row_count / $size);
        if ($page <= $page_count) {
            $data['tourism'] = $this->db->where($where)->order_by("sort_id", "desc")->limit($size, ($page - 1) * $size)->get('article')->result_array();
            $data['link'] = SITE_URL . 'tourism/more/' . ($page + 1) . '/' . $size;
        }
        return $data;
    }
}
