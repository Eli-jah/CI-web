<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// 关于我们
class About extends MY_Controller
{
    protected $seo_id;
    protected $banner_id;

    public function __construct()
    {
        parent::__construct();

        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');

        $this->seo_id = 71;
        // $this->banner_id = 72;
    }

    public function index()
    {
        $this->us();
    }

    // 关于我们 + 公司简介 + 发展历程 + 联系我们
    public function us()
    {
        $data = array();

        // seo
        $data['header'] = header_seoinfo($this->seo_id, 0);

        // local name
        $data['local_name'] = '关于我们';

        // introduction
        $data['introduction'] = $this->db->get_where('page', array('cid' => 72))->row_array();
        $data['introduction']['titles'] = explode('|', $data['introduction']['intro']);

        // contact us
        $data['contact_us'] = $this->db->get_where('page', array('cid' => 73))->row_array();
        $data['contact_us']['photo'] = tag_photo($data['contact_us']['photo'], 'url');

        // footer
        $data['footer']['navigation'] = tag_single(29, 'content');
        $data['footer']['icp'] = tag_single(30, 'content');
        $data['footer']['mp'] = $this->db->get_where('page', array('cid' => 31))->row_array();
        $data['footer']['mp']['photo'] = tag_photo($data['footer']['mp']['photo'], 'url');
        $data['footer']['iso'] = tag_photo(tag_single(32, 'photo'));

        $this->load->view('about/us', $data);
    }

    // 客户来访 信息提交
    public function feedback()
    {
        $valid = true;
        $data = array();

        if ($valid) {
            if ($this->input->post('company') != '' && strlen($this->input->post('company')) < 100) {
                $data['company'] = $this->input->post('company');
            } else {
                $valid = false;
                $data = array(
                    'error' => '请填写正确的公司名称'
                );
            }
        }

        if ($valid) {
            if ($this->input->post('username') != '') {
                $data['username'] = $this->input->post('username');
            } else {
                $valid = false;
                $data = array(
                    'error' => '请填写正确的联系人姓名'
                );
            }
        }

        if ($valid) {
            if ($this->input->post('email') != '' && preg_match('/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/', $this->input->post('email'))) {
                $data['email'] = $this->input->post('email');
            } else {
                $valid = false;
                $data = array(
                    'error' => '请填写正确的联系人邮箱'
                );
            }
        }

        if ($valid) {
            $this->db->insert('feedback', $data);
            $data['code'] = 200;
            $this->output->set_content_type('application/json')->set_output(json_encode($data));
        } else {
            $data['code'] = 422;
            $this->output->set_content_type('application/json')->set_output(json_encode($data));
        }
    }
}
