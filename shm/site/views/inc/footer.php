<footer>
    <div id="footer-text">
        <div class="footer_up">
            <ul>
                <li>
                    <span>首页</span>
                    <ul>
                        <li><a href="#">公司简介</a></li>
                        <li><a href="#">企业营销解决方案</a></li>
                        <li><a href="#">电商平台解决方案</a></li>
                        <li><a href="#">旅游平台解决方案</a></li>
                        <li><a href="#">视频流解决方案</a></li>
                    </ul>
                </li>
                <li>
                    <span>解决方案</span>
                    <ul>
                        <li><a href="#">企业营销解决方案</a></li>
                        <li><a href="#">电商平台解决方案</a></li>
                        <li><a href="#">旅游平台解决方案</a></li>
                        <li><a href="#">旅游平台解决方案</a></li>
                        <li><a href="#">视频流解决方案</a></li>
                    </ul>
                </li>
                <li>
                    <span>互联网资讯中心</span>
                    <ul>
                        <li><a href="#">企业营销解决方案</a></li>
                        <li><a href="#">电商平台解决方案</a></li>
                        <li><a href="#">旅游平台解决方案</a></li>
                        <li><a href="#">旅游平台解决方案</a></li>
                        <li><a href="#">视频流解决方案</a></li>
                    </ul>
                </li>
                <li>
                    <span>关于我们</span>
                    <ul>
                        <li><a href="#">公司介绍</a></li>
                        <li><a href="#">发展历程</a></li>
                        <li><a href="#">联系我们</a></li>
                        <li><a href="#">加入我们</a></li>
                    </ul>
                </li>
            </ul>
            <div class="erwei_num">
                <img src="assets/images/white_logo.png" class="footer_logo">
                <img src="assets/images/wxnum.jpg" class="footer_erweima">
                <span>关注尚禾维曼公众号</span>
            </div>
        </div>
        <div class="footer_down">
            <div class="copyright">
                <p>© 2018 尚禾维曼 | 用户协议 | SLA | 服务状态</p>
                <p>24小时违法和不良信息举报热线：021-20703838，举报邮箱：jubao@qiniu.com</p>
                <p>沪公网安备 31011502000961 号 沪 ICP 备 11037377 号-5</p>
            </div>
            <div class="iso">
                <img src="assets/images/iso.png">
            </div>
        </div>
    </div>
</footer>
</body>
<script src="assets/js/jquery-2.1.4.min.js"></script>
<script src="assets/js/jquery.lazyload/jquery.lazyload.min.js"></script>
<!--窗口弹出插件-->
<!--<script src="assets/js/jquery.fancybox/jquery.fancybox.min.js"></script>-->
<script src="assets/js/swiper/js/swiper.js"></script>
<script src="assets/js/swiper/js/swiper.animate.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<!-- ie8 bootstrap -->
<script src="assets/js/bootstrap/js/html5shiv.js"></script>
<script src="assets/js/bootstrap/js/respond.min.js"></script>
<script src="assets/js/sticky-sidebar.js"></script>
<script src="assets/main.js"></script>
<!--图片取色器-->
<script type="text/javascript" src="assets/js/jquery.adaptive-backgrounds.js"></script>
<script src="assets/js/wrapper/ecommerce_page.js"></script>
<!--地图-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=tW416g6K9qLsCaR4gHOPkNfHkz9L4vG4"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap() {
        createMap(); //创建地图
        setMapEvent(); //设置地图事件
        addMapControl(); //向地图添加控件
        addMarker(); //向地图中添加marker
    }
    //创建地图函数：
    function createMap() {
        var map = new BMap.Map("allmap"); //在百度地图容器中创建一个地图
        var point = new BMap.Point(120.387604, 36.098572); //定义一个中心点坐标
        map.centerAndZoom(point, 18); //设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; //将map变量存储在全局
    }
    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
        map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard(); //启用键盘上下左右键移动地图
    }
    //地图控件添加函数：
    function addMapControl() {
    }
    //标注点数组
    var markerArr = [{
        title: "青岛尚禾维曼科技有限公司",
        content: "地址：中国山东省青岛市市北区敦化路328号诺德广场B座607",
        point: "120.387604|36.098572",
        isOpen: 1,
        icon: {w: 23, h: 25, l: 0, t: 21, x: 9, lb: 12}
    }];
    //创建marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0, p1);
//	            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point);
//	            marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title, {"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor: "#808080",
                color: "#333",
                cursor: "pointer"
            });

            (function () {
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click", function () {
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open", function () {
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close", function () {
                    _marker.getLabel().show();
                })
                label.addEventListener("click", function () {
                    _marker.openInfoWindow(_iw);
                })
                if (!!json.isOpen) {
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i) {
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
        return iw;
    }
    //	    //创建一个Icon
    function createIcon(json) {
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
            imageOffset: new BMap.Size(-json.l, -json.t),
            infoWindowOffset: new BMap.Size(json.lb + 5, 1),
            offset: new BMap.Size(json.x, json.h)
        })
        return icon;
    }
    $(function () {
        if (document.getElementById("aboutUs_content")) {
            initMap(); //创建和初始化地图
        }
    })
</script>
</html>
