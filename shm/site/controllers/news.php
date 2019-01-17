<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 新闻中心 | 新闻资讯 | 咨询中心
class News extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 68;
        // $this->banner_id = 70;
    }

    // 首页
    public function index($page = 1, $size = 5)
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '咨询中心';

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('news/index', $data);
    }

    // 下拉加载更多
    public function more($cur_page = 1, $per_page = 5)
    {
        $data = array();
        $where = array('audit' => 1, 'cid' => 69);

        $data['cur_page'] = preg_match('/^[1-9]\d*$/', $cur_page) ? $cur_page : 1;
        $data['per_page'] = preg_match('/^[1-9]\d*$/', $cur_page) ? $per_page : 5;
        $data['total_rows'] = $this->db->where($where)->from('article')->count_all_results();
        $data['num_pages'] = ceil($data['total_rows'] / $data['per_page']);
        $data['news_data'] = array();
        $data['prev_page_url'] = false;
        $data['next_page_url'] = false;

        if ($data['total_rows'] > 0 && $cur_page <= $data['num_pages']) {
            $data['news_data'] = $this->db->order_by("sort_id", "desc")->limit($data['per_page'], ($cur_page - 1) * $data['per_page'])->where($where)->get('article')->result_array();
            $data['prev_page_url'] = $cur_page > 1 ? site_url('news/more/' . ($cur_page - 1) . '/' . $per_page) : false;
            $data['next_page_url'] = $cur_page < $data['num_pages'] ? site_url('news/more/' . ($cur_page + 1) . '/' . $per_page) : false;
            foreach ($data['news_data'] as $key => $news) {
                $data['news_data'][$key]['link'] = site_url('news/show/' . $news['id']);
                $data['news_data'][$key]['date_time'] = explode(',', date('Y,m/d', $news['timeline']));
                $data['news_data'][$key]['photo'] = tag_photo($news['photo'], 'url');
                $content = trim(strip_tags($news['content']));
                $data['news_data'][$key]['content'] = (mb_strlen($content) <= 100) ? $content : mb_substr($content, 0, 100) . ' ...';
                // $data['news_data'][$key]['content'] = subHtml(str_replace(array(' ', '<br>', '<br/>'), array('', '', ''), $news['content']), 10);
            }
        }

        // echo json_encode($data);
        $this->output->set_content_type('application/json')->set_output(json_encode($data));
    }

    // 查看详情
    public function show($id = 1)
    {
        $data = array();
        // $this->banner_id = 70;
        $where = array('audit' => 1, 'cid' => 69, 'id' => $id);

        /*seo*/
        $parent_header = header_seoinfo($this->seo_id, 0);
        $data['header'] = $parent_header;

        // local name
        $data['local_name'] = '咨询中心';

        $id = preg_match('/^[1-9]\d*$/', $id) ? $id : 1;
        // 获取当前页的新闻
        $data['news'] = $this->db->get_where('article', $where)->row_array();
        // 获取上一页的新闻
        $data['prev'] = array();
        // 获取下一页的新闻
        $data['next'] = array();

        if (!empty($data['news'])) {
            /*seo*/
            $parent_header = header_seoinfo($this->seo_id, 0);
            $child_header = array('title' => $data['news']['title_seo'], 'tags' => $data['news']['tags'], 'intro' => $data['news']['intro']);
            $data['header'] = array_merge($parent_header, $child_header);

            // news data mutation
            $data['news']['date_time'] = explode(',', date('Y,m/d', $data['news']['timeline']));
            $data['news']['photo'] = preg_match('/^[1-9]\d*$/', $data['news']['photo']) ? tag_photo($data['news']['photo'], 'url') : '';
            // $data['news']['photo'] = preg_match('/^[1-9]\d*$/', $data['news']['photo']) ? tag_photo($data['news']['photo'], 'url') : tag_photo(tag_single($this->banner_id, 'photo'), 'url');

            // 获取上一页的新闻
            $data['prev'] = $this->db->order_by("sort_id", "asc")->get_where('article', array('audit' => 1, 'sort_id >' => $data['news']['sort_id'], 'cid' => 69))->row_array();
            // 获取下一页的新闻
            $data['next'] = $this->db->order_by("sort_id", "desc")->get_where('article', array('audit' => 1, 'sort_id <' => $data['news']['sort_id'], 'cid' => 69))->row_array();

            // click + 1
            $click = $data['news']['click'];
            $click++;
            $update = array('click' => $click);
            $this->db->where($where)->update('article', $update);
        }

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('news/show', $data);
    }
}
