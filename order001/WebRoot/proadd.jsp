<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'proadd.jsp' starting page</title>
    
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
    <h2>添加产品：</h2>
    <form action="ProductAddServlet" method="post" >
    	产品编号：<input type="text" name="pid" ><br>
    	产品名称：<input type="text" name="pname" ><br>
    	产品价格 ：  <input type="text" name="pprice" ><br>
    	产品类型：<input type="text" name="ptype" ><br>
    	地     址   ： <input type="text" name="padd" ><br>
    	说     明   ：<input type="text" name="pdes" ><br>
    	<input type="submit" value="提交"></input>
    	<input onclick="history.go(-1)" type="button" value="返回">
    </form>
  </body>
</html>
