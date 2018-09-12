<?php if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class About extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helpers('uisite_helper');
        $this->load->model('article_model');
        $this->banner_id = 27;
        $this->seo_id = 19;
    }

    public function index()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $this->load->view('about/index', $data);
    }

    public function strategic()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $this->load->view('about/strategic', $data);
    }

    public function culture()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $this->load->view('about/culture', $data);
    }

    public function development()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));

        $data['type'] = $this->db->order_by('sort_id', 'asc')->get_where('coltypes', array('cid' => 98))->result_array();
        $data['list'] = $this->db->order_by('sort_id', 'desc')->get_where('infos', array('cid' => 98, 'audit' => 1))->result_array();

//        print_r($data['type']);
//        exit();

        $this->load->view('about/development', $data);
    }

    public function honor()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));
        $data['honor_02'] = $this->db->order_by('sort_id', 'desc')->get_where('honor', array('cid' => 39, 'audit' => 1))->result_array();
        $data['honor_03'] = $this->db->order_by('sort_id', 'desc')->get_where('honor', array('cid' => 40, 'audit' => 1))->result_array();
        $this->load->view('about/honor', $data);
    }

    public function responsibility()
    {
        $data['header'] = header_seoinfo($this->seo_id, 0);
        $data['banner'] = tag_photo(tag_single($this->banner_id, "photo"));
        $data['responsibility'] = $this->db->order_by('sort_id', 'desc')->get_where('infos', array('cid' => 24, 'audit' => 1))->result_array();
        $this->load->view('about/responsibility', $data);
    }

//    public function info($id=''){
//        $data['type']=$this->db->order_by('sort_id','asc')->get_where('coltypes',array('cid'=>8))->result_array();
//
//        $data['info']=$this->db->get_where('product',array('cid'=>8,'audit'=>1,'id'=>$id))->row_array();
//
//        $data['addC']=$data['info']['ctype'];
//        $data['seo']=$this->db->get_where('product',array('id'=>$id))->row_array();//获取seo
//        $this->load->view('product/info',$data);
//    }


//    public function search()
//    {
////        $data['search'] = $this->input->get('search',TRUE);
//        $data['type'] = $this->db->order_by('sort_id', 'asc')->get_where('coltypes', array('cid' => 8))->result_array();
////        if(empty($id)){
////            $types=$this->db->order_by('sort_id','asc')->get_where('coltypes',array('cid'=>8))->row_array();
////            $data['addC']=$types['id'];
////        }else{
////            $data['addC']=$id;
////        }
//        $data['seo'] = array('title' => '产品搜索');
////        $data['seo']=$this->db->get_where('columns',array('id'=>8))->row_array();//获取seo
//        $this->load->view('search', $data);
//    }


}