<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <jsp:include page="header.jsp"></jsp:include>
    
    <title>My JSP 'index.jsp' starting page</title>
	  
	  <script type="text/javascript">
            var loginAndRegister;
		  $(function(){
	                loginAndRegister=$('#loginAndRegister').dialog({
	                    closable : false,
	                    modal : true,
	                    buttons : [
	                                {
	                                    text:'注册',
	                                    handler:function(){
	                                        console.info("注册事件");
	                                        alert("打开注册页面");
	                                    }
	                                },
	                                {text:'登录',handler:function(){
	                                    console.info("登录事件");
	                                }}
	                                ]
	                });
	            });
	</script>
	
  </head>
  
  <body>
    <div 
            id="loginAndRegister" 
            title="用户登录" 
            style="width: 400px;height : 200px">
            <table align="center">
                <tr>
                    <th align="right">用户名</th>
                    <td><input name="name"></td>
                </tr>
                <tr>
                    <th align="right">密码</th>
                    <td><input name="pasword" type="password"/></td>
                </tr>
            </table>
        </div>
  </body>
</html>
