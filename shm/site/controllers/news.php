<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 新闻中心
class News extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id    = 35;
        $this->banner_id = 36;
    }

    // 首页
    public function index($page = 1, $size = 5)
    {
        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        /*分页*/
        $config['base_url'] = SITE_URL . 'news/index/';//分页地址
        $config['uri_segment'] = 3;//页码所在URI段
        $where = array('audit' => 1, 'cid' => 37);
        $config['total_rows'] = $this->db->where($where)->from('article')->count_all_results();

        $config['per_page'] = $size;//每页显示的条数
        $config['use_page_numbers'] = TRUE;//默认分页URL中是显示每页记录数,启用use_page_numbers后显示的是当前页码。
        $config['cur_tag_open'] = '<a class="active">';
        $config['cur_tag_close'] = '</a>';
        $config['full_tag_open'] = '<div class="page">';
        $config['full_tag_close'] = '</div>';
        $config['last_link'] = false;
        $config['first_link'] = false;
        $config['num_links'] = 5;
        $config['cur_tag_open'] = '<a href="#" class="active">';
        $config['cur_tag_close'] = '</a>';
        $config['prev_link'] = '<';
        $config['next_link'] = '>';
        $config['num_tag_open'] = '';
        $config['num_tag_close'] = '';
        $config['prev_tag_open'] = '';
        $config['prev_tag_close'] = '';
        $config['next_tag_open'] = '';
        $config['next_tag_close'] = '';
        $data['fenye'] = $this->article_model->article_page($config, $page, $where);

        $this->load->view('news/index', $data);
    }

    // 查看详情
    public function show($id = '')
    {
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['info'] = $this->db->get_where('article', array('cid' => 37, 'audit' => 1, 'id' => $id))->row_array();

        // click+1
        $click = $data['info']['click'];
        $click++;
        $update = array('click' => $click);
        $this->db->where('id', $data['info']['id']);
        $this->db->update('article', $update);

        /*seo*/
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['seo']    = $this->db->get_where('article', array('id' => $id))->row_array();//获取seo

        $data['updown'] = $this->article_model->change_page($id, $cid = 37);

        $this->load->view('news/show', $data);
    }
}
