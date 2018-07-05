<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TTest</title>
<link rel="stylesheet" href="jquery-easyui-1.5/demo/demo.css" type="text/css"></link>
<link rel="stylesheet" href="jquery-easyui-1.5/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="jquery-easyui-1.5/themes/default/easyui.css" type="text/css"></link>
<script type="text/javascript" src="jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5/jquery.easyui.min.js"></script>
 
<script type="text/javascript">
	$(document).ready(function(){
		var height1 = $(window).height()-20;
		$("#main_layout").attr("style","width:100%;height:"+height1+"px");
		$("#main_layout").layout("resize",{
			width:"100%",
			height:height1+"px"
		});
	});
	
	
	$(window).resize(function(){
		var height1 = $(window).height()-30;
		$("#main_layout").attr("style","width:100%;height:"+height1+"px");
		$("#main_layout").layout("resize",{
			width:"100%",
			height:height1+"px"
		});
	}); 
</script>
</head>
<body>
<div style="margin-top:5px;margin-left:5px;margin-right:5px;margin-bottom:5px;">
	<div id="main_layout" class="easyui-layout"  style="width:100%; height:680px;">
		<!-- 北方 -->
		<div data-options="region:'north'" style="height: 100px;background-color:#95B8E7;">
			<span style="margin-left:25px;">
				<font size="6" style="line-height: 2.5em; " color="white" >
					<b>常州兆辉机房设备有限公司 </b>
				</font>
			</span>
	    	
	    	<span style="float:right;margin-top:20px;margin-right:20px;">
	    		<font size="3" color="white">欢迎 :小东同志</font>    
	           	<a href="<%=path %>/loginOut.do" > <font size="3" color="red">退出</font> </a>
	        </span>
		</div>
		
		<!-- 西方 -->
		<div data-options="region:'west',split:true" title="分类" style="width: 200px;">
			<div class="easyui-accordion"  data-options="fit:true,border:false">
				
			</div>
		</div>
		<!-- 中间 -->
		<div data-options="region:'center',iconCls:'icon-ok'">
			<div id="tTabs" class="easyui-tabs" data-options="fit:true,border:false,plain:true">
				<div title="首页"
					data-options="closable:true,href:'<%=path%>/demo.jsp'"
					style="overflow: auto; padding: 20px;">
				</div>
			</div>
		</div>
		<!-- 南方 -->
		<div data-options="region:'south',split:true" style="height:10%;background-color:#95B8E7;">
			<div style="" align="center">
				<font size="" color="white">Copyright &copy; 2018 taiyuan  Co., Ltd. All Rights Reserved 版权所有<br> </font>
				<font size="" color="white">作者：周小东 </font>
			</div>
		</div>
	</div>
</div>
</body>
</html>
