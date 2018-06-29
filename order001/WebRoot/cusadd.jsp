<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cusadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
		body {
    		background: #FAF9F7;
    		background-image:url(img/Hippopx.jpg);
		}
</style>
  </head>
  
  <body>
    <h2>添加客户：</h2>
    <form action="CustomAddServlet" method="post" >
    	客户编号：<input type="text" name="cid" ><br>
    	客户名称：<input type="text" name="cname" ><br>
    	联 系 人 ：  <input type="text" name="clink" ><br>
    	联系电话：<input type="text" name="cphmun" ><br>
    	地     址   ： <input type="text" name="cadd" ><br>
    	邮      编    ：<input type="text" name="cpost" ><br>
    	<input type="submit" value="提交"></input>
    	<input onclick="history.go(-1)" type="button" value="返回">
    </form>
  </body>
</html>
