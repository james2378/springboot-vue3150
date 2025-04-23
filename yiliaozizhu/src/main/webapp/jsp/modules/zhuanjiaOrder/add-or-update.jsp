<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑专家挂号订单</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">专家挂号订单管理</li>
                        <li class="breadcrumb-item active">编辑专家挂号订单</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">专家挂号订单信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa huanzhe">
                                        <label>患者</label>
                                        <div>
                                            <select style="width: 450px" id="huanzheSelect" name="huanzheSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>患者姓名</label>
                                        <input style="width: 450px" id="huanzheName" name="huanzheName" class="form-control"
                                               placeholder="患者姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa zhuanjia">
                                        <label>专家</label>
                                        <div>
                                            <select style="width: 450px" id="zhuanjiaSelect" name="zhuanjiaSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 zhuanjia">
                                        <label>专家姓名</label>
                                        <input style="width: 450px" id="zhuanjiaName" name="zhuanjiaName" class="form-control"
                                               placeholder="专家姓名" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6 zhuanjiaOrderUuidNumberDiv">
                                        <label>号</label>
                                        <input style="width: 450px" id="zhuanjiaOrderUuidNumber" name="zhuanjiaOrderUuidNumber" class="form-control"
                                               placeholder="号">
                                    </div>
                                <input id="zhuanjiaId" name="zhuanjiaId" type="hidden">
                                <input id="huanzheId" name="huanzheId" type="hidden">
                                    <div class="form-group col-md-6 guahaoTimeDiv">
                                        <label>挂号日期</label>
                                        <input style="width: 450px" type="date" id="guahaoTime-input" name="guahaoTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6 shijianduanTypesDiv">
                                        <label>时间段</label>
                                        <select style="width: 450px" id="shijianduanTypesSelect" name="shijianduanTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 zhuanjiaOrderYuyueTypesDiv">
                                        <label>预约状态</label>
                                        <select style="width: 450px" id="zhuanjiaOrderYuyueTypesSelect" name="zhuanjiaOrderYuyueTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "zhuanjiaOrder";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var shijianduanTypesOptions = [];
    var zhuanjiaOrderYuyueTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var huanzheOptions = [];
    var zhuanjiaOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '专家'){//当前登录用户不为这个
                if($("#zhuanjiaId") !=null){
                    var zhuanjiaId = $("#zhuanjiaId").val();
                    if(zhuanjiaId == null || zhuanjiaId =='' || zhuanjiaId == 'null'){
                        alert("专家不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '患者'){//当前登录用户不为这个
                if($("#huanzheId") !=null){
                    var huanzheId = $("#huanzheId").val();
                    if(huanzheId == null || huanzheId =='' || huanzheId == 'null'){
                        alert("患者不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("zhuanjiaOrder/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addzhuanjiaOrder');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function shijianduanTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shijianduan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shijianduanTypesOptions = res.data.list;
                }
            });
        }
        function zhuanjiaOrderYuyueTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuanjia_order_yuyue_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuanjiaOrderYuyueTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function huanzheSelect() {
            //填充下拉框选项
            http("huanzhe/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    huanzheOptions = res.data.list;
                }
            });
        }

        function huanzheSelectOne(id) {
            http("huanzhe/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                huanzheShowImg();
                huanzheShowVideo();
                huanzheDataBind();
            }
        });
        }
        function zhuanjiaSelect() {
            //填充下拉框选项
            http("zhuanjia/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuanjiaOptions = res.data.list;
                }
            });
        }

        function zhuanjiaSelectOne(id) {
            http("zhuanjia/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                zhuanjiaShowImg();
                zhuanjiaShowVideo();
                zhuanjiaDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationShijianduantypesSelect(){
            var shijianduanTypesSelect = document.getElementById('shijianduanTypesSelect');
            if(shijianduanTypesSelect != null && shijianduanTypesOptions != null  && shijianduanTypesOptions.length > 0 ){
                for (var i = 0; i < shijianduanTypesOptions.length; i++) {
                    shijianduanTypesSelect.add(new Option(shijianduanTypesOptions[i].indexName,shijianduanTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhuanjiaorderyuyuetypesSelect(){
            var zhuanjiaOrderYuyueTypesSelect = document.getElementById('zhuanjiaOrderYuyueTypesSelect');
            if(zhuanjiaOrderYuyueTypesSelect != null && zhuanjiaOrderYuyueTypesOptions != null  && zhuanjiaOrderYuyueTypesOptions.length > 0 ){
                for (var i = 0; i < zhuanjiaOrderYuyueTypesOptions.length; i++) {
                    zhuanjiaOrderYuyueTypesSelect.add(new Option(zhuanjiaOrderYuyueTypesOptions[i].indexName,zhuanjiaOrderYuyueTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationhuanzheSelect() {
            var huanzheSelect = document.getElementById('huanzheSelect');
            if(huanzheSelect != null && huanzheOptions != null  && huanzheOptions.length > 0 ) {
                for (var i = 0; i < huanzheOptions.length; i++) {
                        huanzheSelect.add(new Option(huanzheOptions[i].huanzheName, huanzheOptions[i].id));
                }

                $("#huanzheSelect").change(function(e) {
                        huanzheSelectOne(e.target.value);
                });
            }

        }

        function initializationzhuanjiaSelect() {
            var zhuanjiaSelect = document.getElementById('zhuanjiaSelect');
            if(zhuanjiaSelect != null && zhuanjiaOptions != null  && zhuanjiaOptions.length > 0 ) {
                for (var i = 0; i < zhuanjiaOptions.length; i++) {
                        zhuanjiaSelect.add(new Option(zhuanjiaOptions[i].zhuanjiaName, zhuanjiaOptions[i].id));
                }

                $("#zhuanjiaSelect").change(function(e) {
                        zhuanjiaSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var shijianduanTypesSelect = document.getElementById("shijianduanTypesSelect");
        if(shijianduanTypesSelect != null && shijianduanTypesOptions != null  && shijianduanTypesOptions.length > 0 ) {
            for (var i = 0; i < shijianduanTypesOptions.length; i++) {
                if (shijianduanTypesOptions[i].codeIndex == ruleForm.shijianduanTypes) {//下拉框value对比,如果一致就赋值汉字
                        shijianduanTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhuanjiaOrderYuyueTypesSelect = document.getElementById("zhuanjiaOrderYuyueTypesSelect");
        if(zhuanjiaOrderYuyueTypesSelect != null && zhuanjiaOrderYuyueTypesOptions != null  && zhuanjiaOrderYuyueTypesOptions.length > 0 ) {
            for (var i = 0; i < zhuanjiaOrderYuyueTypesOptions.length; i++) {
                if (zhuanjiaOrderYuyueTypesOptions[i].codeIndex == ruleForm.zhuanjiaOrderYuyueTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhuanjiaOrderYuyueTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var huanzheSelect = document.getElementById("huanzheSelect");
            if(huanzheSelect != null && huanzheOptions != null  && huanzheOptions.length > 0 ) {
                for (var i = 0; i < huanzheOptions.length; i++) {
                    if (huanzheOptions[i].id == ruleForm.huanzheId) {//下拉框value对比,如果一致就赋值汉字
                        huanzheSelect.options[i+1].selected = true;
                        $("#huanzheSelect" ).selectpicker('refresh');
                    }
                }
            }
            var zhuanjiaSelect = document.getElementById("zhuanjiaSelect");
            if(zhuanjiaSelect != null && zhuanjiaOptions != null  && zhuanjiaOptions.length > 0 ) {
                for (var i = 0; i < zhuanjiaOptions.length; i++) {
                    if (zhuanjiaOptions[i].id == ruleForm.zhuanjiaId) {//下拉框value对比,如果一致就赋值汉字
                        zhuanjiaSelect.options[i+1].selected = true;
                        $("#zhuanjiaSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addzhuanjiaOrder');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                zhuanjiaOrderUuidNumber: "required",
                zhuanjiaId: "required",
                huanzheId: "required",
                guahaoTime: "required",
                shijianduanTypes: "required",
                zhuanjiaOrderYuyueTypes: "required",
            },
            messages: {
                zhuanjiaOrderUuidNumber: "号不能为空",
                zhuanjiaId: "专家不能为空",
                huanzheId: "患者不能为空",
                guahaoTime: "挂号日期不能为空",
                shijianduanTypes: "时间段不能为空",
                zhuanjiaOrderYuyueTypes: "预约状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addzhuanjiaOrder = window.sessionStorage.getItem("addzhuanjiaOrder");
        if (addzhuanjiaOrder != null && addzhuanjiaOrder != "" && addzhuanjiaOrder != "null") {
            //注册表单验证
            $(validform());
            $("#zhuanjiaOrderUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("zhuanjiaOrder/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        // var guahaoTime = laydate.render({
        //     elem: '#guahaoTime-input'
        //     ,type: 'date'
        // });
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        huanzheDataBind();
        zhuanjiaDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#zhuanjiaOrderUuidNumber").val(ruleForm.zhuanjiaOrderUuidNumber);
        $("#zhuanjiaId").val(ruleForm.zhuanjiaId);
        $("#huanzheId").val(ruleForm.huanzheId);
        $("#guahaoTime-input").val(ruleForm.guahaoTime);

    }
    <!--  级联表的数据回显  -->
    function huanzheDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#huanzheId").val(ruleForm.id);

        $("#huanzheName").val(ruleForm.huanzheName);
        $("#huanzhePhone").val(ruleForm.huanzhePhone);
        $("#huanzheIdNumber").val(ruleForm.huanzheIdNumber);
        $("#huanzheEmail").val(ruleForm.huanzheEmail);
        $("#newMoney").val(ruleForm.newMoney);
    }

    function zhuanjiaDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#zhuanjiaId").val(ruleForm.id);

        $("#zhuanjiaName").val(ruleForm.zhuanjiaName);
        $("#zhuanjiaPhone").val(ruleForm.zhuanjiaPhone);
        $("#zhuanjiaIdNumber").val(ruleForm.zhuanjiaIdNumber);
        $("#keshiValue").val(ruleForm.keshiValue);
        $("#zhiweiValue").val(ruleForm.zhiweiValue);
        $("#guahaoMoney").val(ruleForm.guahaoMoney);
        $("#zhuanjiaEmail").val(ruleForm.zhuanjiaEmail);
        $("#zhuanjiaContent").val(ruleForm.zhuanjiaContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        huanzheShowImg();
        zhuanjiaShowImg();
    }


    <!--  级联表的图片  -->

    function huanzheShowImg() {
        $("#huanzhePhotoImg").attr("src",ruleForm.huanzhePhoto);
    }


    function zhuanjiaShowImg() {
        $("#zhuanjiaPhotoImg").attr("src",ruleForm.zhuanjiaPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        huanzheShowVideo();
        zhuanjiaShowVideo();
    }


    <!--  级联表的视频  -->

    function huanzheShowVideo() {
        $("#huanzhePhotoV").attr("src",ruleForm.huanzhePhoto);
    }

    function zhuanjiaShowVideo() {
        $("#zhuanjiaPhotoV").attr("src",ruleForm.zhuanjiaPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            shijianduanTypesSelect();
            zhuanjiaOrderYuyueTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            huanzheSelect();
            zhuanjiaSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationShijianduantypesSelect();
            initializationZhuanjiaorderyuyuetypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationhuanzheSelect();
            initializationzhuanjiaSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addzhuanjiaOrder');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '患者') {
            // $(".aaaaaa").remove();
            $(".huanzhe").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '专家') {
            $(".aaaaaa").remove();
            $(".zhuanjia").remove();//删除当前用户的信息
            $('#zhuanjiaOrderUuidNumber').attr('readonly', 'readonly');
            $('#guahaoTime-input').attr('readonly', 'readonly');
            $('#shijianduanTypesSelect').attr('style', 'pointer-events:none;width:450px;');
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
