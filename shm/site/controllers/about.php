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

        // 公司名称
        if ($valid) {
            if ($this->input->post('company') == '') {
                $valid = false;
                $data = array(
                    'error' => '请填写公司名称！'
                );
            } else if (strlen($this->input->post('company')) > 100) {
                $valid = false;
                $data = array(
                    'error' => '公司名称过长！'
                );
            } else {
                $data['company'] = $this->input->post('company');
            }
        }

        // 联系人姓名
        if ($valid) {
            if ($this->input->post('username') == '') {
                $valid = false;
                $data = array(
                    'error' => '请填写联系人姓名！'
                );
            } else if (strlen($this->input->post('username')) > 50) {
                $valid = false;
                $data = array(
                    'error' => '联系人姓名过长！'
                );
            } else {
                $data['username'] = $this->input->post('username');
            }
        }

        // 联系人电话
        if ($valid) {
            if ($this->input->post('telphone') == '') {
                $valid = false;
                $data = array(
                    'error' => '请填写联系人电话！'
                );
            } else if (strlen($this->input->post('telphone')) > 50) {
                $valid = false;
                $data = array(
                    'error' => '联系人电话过长！'
                );
            } else {
                $data['telphone'] = $this->input->post('telphone');
            }
        }

        // 您要咨询的内容
        if ($valid) {
            $data['content'] = $this->input->post('content');
            /*if ($this->input->post('content') != '') {
                $data['content'] = $this->input->post('content');
            } else {
                $valid = false;
                $data = array(
                    'error' => '请填写咨询内容！'
                );
            }*/
        }

        if ($valid) {
            $data['timeline'] = now();
            $this->db->insert('feedback', $data);
            $data['code'] = 200;
            $this->output->set_content_type('application/json')->set_output(json_encode($data));
        } else {
            $data['code'] = 422;
            $this->output->set_content_type('application/json')->set_output(json_encode($data));
        }
    }
}
