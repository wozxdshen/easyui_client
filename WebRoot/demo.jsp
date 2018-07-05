<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!-- 把刚刚的那个header.jsp文件包含进去,里面就有了JqueryEasyUI所需要的文件了 -->
  	<jsp:include page="header.jsp"/>
    <title>JqueryEasyUI的Layout</title>
  </head>
  
  <body>
      <a href="#" class="easyui-linkbutton">搜索</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">搜索</a> 
  </body>
</html>