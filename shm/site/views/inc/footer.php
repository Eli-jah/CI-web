<footer>
    <div id="footer-text">
        <div class="footer_up">
            <?php echo $footer['navigation']; ?>
            <div class="erwei_num">
                <img src="/web/shmweb/assets/images/white_logo.png" class="footer_logo">
                <img src="<?php echo $footer['mp']['photo']; ?>" class="footer_erweima">
                <span><?php echo $footer['mp']['intro']; ?></span>
            </div>
        </div>
        <div class="footer_down">
            <div class="copyright">
                <?php echo $footer['icp']; ?>
            </div>
            <div class="iso">
                <img src="<?php echo $footer['iso']; ?>">
            </div>
        </div>
    </div>
</footer>

</body>

<?php
echo static_file("assets/js/jquery-2.1.4.min.js");
echo static_file("assets/js/jquery.lazyload/jquery.lazyload.min.js");
// <!--窗口弹出插件-->
// <!--<script src="assets/js/jquery.fancybox/jquery.fancybox.min.js"></script>-->
echo static_file("assets/js/swiper/js/swiper.js");
echo static_file("assets/js/swiper/js/swiper.animate.min.js");
echo static_file("assets/js/wow.min.js");
// <!-- ie8 bootstrap -->
echo static_file("assets/js/bootstrap/js/html5shiv.js");
echo static_file("assets/js/bootstrap/js/respond.min.js");
echo static_file("assets/js/sticky-sidebar.js");
echo static_file("assets/main.js");
// <!--图片取色器-->
echo static_file("assets/js/jquery.adaptive-backgrounds.js");
echo static_file("assets/js/wrapper/ecommerce_page.js");
?>

<!--地图-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=tW416g6K9qLsCaR4gHOPkNfHkz9L4vG4"></script>

<!--mock数据(开发环境下有效)-->
<!--<script type="text/javascript" src="/web/shmweb/assets/js/mock/mock.js"></script>-->

<script type="text/javascript">
    // 创建和初始化地图函数：
    function initMap() {
        createMap(); // 创建地图
        setMapEvent(); // 设置地图事件
        addMapControl(); // 向地图添加控件
        addMarker(); // 向地图中添加marker
    }
    // 创建地图函数：
    function createMap() {
        var map = new BMap.Map("allmap"); // 在百度地图容器中创建一个地图
        var point = new BMap.Point(120.387604, 36.098572); // 定义一个中心点坐标
        map.centerAndZoom(point, 18); // 设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; // 将map变量存储在全局
    }
    // 地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); // 启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); // 启用地图滚轮放大缩小
        map.enableDoubleClickZoom(); // 启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard(); // 启用键盘上下左右键移动地图
    }
    // 地图控件添加函数：
    function addMapControl() {
    }
    // 标注点数组
    var markerArr = [{
        title: "青岛尚禾维曼网络科技有限公司",
        content: "地址：中国山东省青岛市市北区敦化路328号诺德广场B座607",
        point: "120.387604|36.098572",
        isOpen: 1,
        icon: {w: 23, h: 25, l: 0, t: 21, x: 9, lb: 12},
    }];
    // 创建marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0, p1);
            // var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point);
            // marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title, {"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor: "#808080",
                color: "#333",
                cursor: "pointer",
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
                });
                _iw.addEventListener("close", function () {
                    _marker.getLabel().show();
                });
                label.addEventListener("click", function () {
                    _marker.openInfoWindow(_iw);
                });
                if (!!json.isOpen) {
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })();
        }
    }
    // 创建InfoWindow
    function createInfoWindow(i) {
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
        return iw;
    }
    // 创建一个Icon
    function createIcon(json) {
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
            imageOffset: new BMap.Size(-json.l, -json.t),
            infoWindowOffset: new BMap.Size(json.lb + 5, 1),
            offset: new BMap.Size(json.x, json.h)
        });
        return icon;
    }
    $(function () {
        if (document.getElementById("aboutUs_content")) {
            initMap(); // 创建和初始化地图
        }
    });
</script>

</html>
