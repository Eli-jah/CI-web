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

    // 景点展示
    public function scenery($page = 2, $size = 6)
    {
        $data = $this->load($page, $size);
        return json_encode($data);
    }

    // 景区攻略咨询
    public function guide($id = '')
    {
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));
        // tourism info
        $data['info'] = $this->db->get_where('article', array('cid' => 21, 'audit' => 1, 'id' => $id))->row_array();
        // click + 1
        $click = $data['info']['click'];
        $click++;
        $update = array('click' => $click);
        $this->db->where('id', $data['info']['id']);
        $this->db->update('article', $update);
        /*seo*/
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['seo'] = $this->db->get_where('article', array('id' => $id))->row_array();//获取seo
        // prev & next
        $data['updown'] = $this->article_model->change_page($id, $cid = 21);

        $this->load->view('tourism/show', $data);
    }

    // 酒店系统
    public function hotel()
    {
        $this->index();
    }

    // 签证代办平台
    public function visa()
    {
        $this->index();
    }

    // 购票平台
    public function ticket()
    {
        $this->index();
    }

    // 特色电商
    public function eshop()
    {
        $this->index();
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
