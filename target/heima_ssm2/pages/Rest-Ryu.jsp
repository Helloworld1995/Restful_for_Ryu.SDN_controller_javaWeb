<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>数据 - AdminLTE2定制版</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				策略调整 <small>策略表单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/user/findAll.do">策略调整</a></li>
				<li class="active">策略表单</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${pageContext.request.contextPath}/user/save.do"
				method="post">
				<!-- 正文区域 -->
				<section class="content"> <!--产品信息-->

				<div class="panel panel-default">
					<div class="panel-heading">元字段信息</div>
					<div  class="row data-type">
						<div class="col-md-2 title">网关编号</div>
						<div class="col-md-4 data">
							<select  id="dpid" onchange="checkDpid()" class="form-control select2" style="width: 100%"
									name="dpid">
								<option value="none" selected disabled hidden>请选择选项</option>
                                <c:if test="${swList!=null}"><c:forEach items="${swList}" var="sw">
                                    <option value="${sw}">${sw}</option>
                                </c:forEach></c:if>
                                <c:if test="${swList==null}"><c:forEach items="3001,3002,3003,3004,3005,3006,3007,3008" var="sw">
                                    <option value="${sw}">${sw}</option>
                                </c:forEach></c:if>
							</select>
						</div>
						<div class="col-md-2 title">优先级</div>
						<div class="col-md-4 data">
							<input type="text"id="priority" required="required" class="form-control" name="priority"
								   placeholder="default is 30 , range:0~65535" value="">
						</div>
						<div class="col-md-2 title">流表号</div>
						<div class="col-md-4 data">
							<input type="text" id="table_id" class="form-control" name="table_id"
								   placeholder="0" value="">
						</div>
						<div class="col-md-2 title">flag</div>
						<div class="col-md-4 data">
							<select id="flag" class="form-control select2" style="width: 100%"name="flag" >
								<option value="none" selected disabled hidden>请选择选项</option>
								<option value="1" >1</option>
								<option value="0" >0</option>
							</select>
						</div>
						<div class="col-md-2 title">无数据时存留时间</div>
						<div class="col-md-4 data">
							<input id="idle_time" type="text" class="form-control" name="idle_time"
								   placeholder="10" value="">
						</div>
						<div class="col-md-2 title">强制存留时间</div>
						<div  class="col-md-4 data">
							<input id="hard_time" type="text" class="form-control" name="hard_time"
								   placeholder="0" value="">
						</div>

					</div>
					<%--匹配信息--%>
					<div class="panel-heading">数据匹配域</div>
					<div class="row data-type">
						<div class="col-md-2 title">源IP</div>
						<div class="col-md-4 data">
							<input id="nw_src" type="text"  class="form-control" name="nw_src"
								   placeholder="源ip地址" value=${nw_src}>
						</div>
						<div class="col-md-2 title">目的IP</div>
						<div class="col-md-4 data">
							<input id="nw_dst" type="text"  class="form-control" name="nw_dst"
								   placeholder="目的ip地址" value=${nw_dst}>
						</div>
						<div class="col-md-2 title">入端口</div>
						<div class="col-md-4 data">
							<input id="in_port" type="text"  class="form-control" name="in_port"
								   placeholder="" value="">
						</div>
						<div class="col-md-2 title">服务字段Tos</div>
						<div class="col-md-4 data">
							<input id="dscp" type="text" class="form-control" name="dscp"
								   placeholder="0~63" value="">
						</div>

					</div>
					<%--动作信息--%>
					<div class="panel-heading">数据转发动作</div>
					<div id="p" class="row data-type">
						<div class="col-md-2 title">动作</div>
						<div  class="col-md-4 data">
							<select id="actions" onchange="check()" class="form-control select2" style="width: 100%" name="actions" >
								<option value="none" selected disabled hidden>请选择选项</option>
								<option value="OUTPUT" >output</option>
								<option value="GROUP" >group</option>
								<option value="DROP" >drop</option>
							</select>
						</div>

					</div>
					<%--Add,modify,delete--%>
					<div class="panel-heading">策略动作</div>
					<div id="p" class="row data-type">
						<div class="col-md-2 title">策略下发</div>
						<div  class="col-md-4 data">
							<select id="direction" class="form-control select2" style="width: 100%" name="actions" >
								<option value="add" selected="selected">添加</option>
								<option value="modify" >修改</option>
								<option value="delete" >删除</option>
							</select>
						</div>

					</div>

				<!--/--> <!--工具栏-->
				<div class="box-tools text-center">
					<button type="button" id="btn" onclick="restRyu()" class="btn bg-maroon">开始</button>
					<button type="button" class="btn bg-default"
						onclick="location.reload();">取消</button>
				</div>
				<!--工具栏/-->
				<!-- 正文区域 /-->
				</div>
				</section>
			</form>
		</div>


		<script>
			function restRyu() {
				var dpid=$("#dpid").val();
				var table_id=$('#table_id').val();
				var priority=$('#priority').val();
				var idle_time=$('#idle_time').val();
				var hard_time=$('#hard_time').val();
				var nw_src=$('#nw_src').val();
				var flag=$('#flag').val();
				var in_port=$('#in_port').val();
				var nw_dst=$('#nw_dst').val();
				var action=$('#actions').val();
				var ip_dscp=$('#dscp').val();
				var reg =  /^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/
				var point="";
				var direct=$('#direction').val();
				var params= {
					"dpid": dpid,
					"cookie": 0,
					"cookie_mask": 1,
					"match": {
						"dl_type":0x800,
					},
					"actions": [
						{}
					]
				};
				if(dpid==null){
					point+="dpid非空,";
				}
				if(0>parseInt(table_id)||parseInt(table_id)>255){
					point+="table_id不合法,";
				}else if(table_id!=""){
					params["table_id"]=table_id;
				}
				if(0>parseInt(priority)||parseInt(priority)>65535){
					point+="priority不合法,";
				}else if(priority!=""){
					params["priority"]=priority;
				}
				if(flag!=null){
					params["flags"]=flag;
				}
				if(parseInt(idle_time)<0||parseInt(hard_time)<0||idle_time==""){
					point+="流表截止时间不合法，"
				}else if(idle_time!=""||hard_time!=""){
					if(idle_time!="") {
						params["idle_timeout"] = idle_time;
					}

					if(hard_time!=""){
						params["hard_timeout"]=hard_time;
					}
				}
				var check=true;
				if(nw_dst!=""||nw_src!=""){
					if(nw_src!=""){
						if(!reg.test(nw_src)){
							check=false;
						}
					}
					if(nw_dst!=""){
						if(!reg.test(nw_dst)){
							check=false;
						}
					}
					if(nw_dst==nw_src){
						check=false;
					}
				}
				if(!check){
					point+="ip地址不合法,";
				}else {
					if (nw_src != "" || nw_dst != "") {
						if (nw_src != "") {
							params["match"]["nw_src"] = nw_src;
						}
						if (nw_dst != "") {
							params["match"]["nw_dst"] = nw_dst;
						}
					}
				}
				if(0>parseInt(ip_dscp)||parseInt(ip_dscp)>63){
					point+="tos不合法,"
				}else if(ip_dscp!=""){
					params["match"]["ip_dscp"]=ip_dscp;
				}
				if(0>parseInt(in_port)||parseInt(in_port)>4){
					point+="入端口不合法,"
				}else if(in_port!=""){
					params["match"]["in_port"]=in_port;
				}
				if(action==null){
					if(direct=="add"||direct=="modify"){
						point+="actions不合法,"
					}

				}else if(action=="DROP"){
					params["actions"][0]["type"]=action;
				}else if(action=="OUTPUT"){
					var out_port=$('#out_port').val();
					params["actions"][0]["type"]=action;
					params["actions"][0]["port"]=out_port;
				}else if(action=="GROUP") {
					var groupId = $('#groupId').val();
					params["actions"][0]["type"] = action;
					params["actions"][0]["group_id"] = groupId;
				}
				if(point!=""){
					alert(point);
					return;
				}
				$.ajax({
					url:"http://192.168.16.137 :8080/stats/flowentry/"+direct,
					type:"post",
					dataType:"JSON",
					data:JSON.stringify(params),
					success:function(data) {
						var msg="";
						if(data.toString()=="success"){
							msg="操作成功！";
						}else{
							msg="操作失败！";
						}
						alert(msg);
					},error:function () {
						alert("操作失败！");
					}
				});

			}
		</script>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
		<strong>Copyright &copy; 2014-2017 <a
			href="http://www.itcast.cn">研究院研发部</a>.
		</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->

	</div>
	<script>
		function check(){
			var v=document.getElementById("actions").value;

			if(v=="OUTPUT"){
				var divv='<div id="divadd" class="col-md-2 title">'+'出端口'+'</div>'+
						'<div id="index" class="col-md-4 data">'+
						'<input id="out_port" type="text" class="form-control" name="out_port" placeholder="1~4" value="">'+
						'</div>';
				// var parent=document.getElementById("p")
				// 	var child=document.getElementById("divadd");
				// 	if(child) {
				// 		parent.removeChild(child);
				// 	}
				$('#p>div[id="divadd"]').remove();
				$('#p>div[id="index"]').remove();
				$("#p").append(divv);
			}else if(v=="GROUP"){

				var divv='<div id="divadd" class="col-md-2 title">'+'转发组'+'</div>'+
						'<div id="index" class="col-md-4 data">'+
						'<input id="groupId" type="text" class="form-control" name="groupId" placeholder="1" value="">'+
						'</div>';
				// var parent=document.getElementById("p");
				// 	var child=document.getElementById("divadd");
				// 	if(child) {
				// 		parent.removeChild(child);
				// 	}
				$('#p>div[id="divadd"]').remove();
				$('#p>div[id="index"]').remove();
				$("#p").append(divv);
			}else if(v=="DROP"){
				$('#p>div[id="divadd"]').remove();
				$('#p>div[id="index"]').remove();
				$("#p").append(divv);
			}
		}
	</script>

	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}
	</script>


</body>

</html>