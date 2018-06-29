<%@page import="com.entity.custom"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cusalter.jsp' starting page</title>
    
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
  <h2>修改客户信息</h2>
    <form action="CustomModifyServlet" method="post">
    	<table>
    		<%custom c=(custom)request.getAttribute("customs"); %><br>
			
			<tr><td>客户编号：</td>
			<td><input type="text" name="cid" value="<%=c.getCid()%>"></td></tr>
    		<tr><td>客户名称：</td>
			<td><input type="text" name="cname" value="<%=c.getCname()%>"></td></tr>
			<tr><td>联系人：</td>
			<td><input type="text" name="clink" value="<%=c.getClink()%>"></td></tr>
			<tr><td>电话：</td>
			<td><input type="text" name="cphmun" value="<%=c.getCphmun()%>"></td></tr>
			<tr><td>地址：</td>
			<td><input type="text" name="cadd" value="<%=c.getCadd()%>"></td></tr>
			
			<tr><td>邮编：</td>
			<td><input type="text" name="cpost" value="<%=c.getCpost()%>"></td></tr>
    		<tr><td colspan="2">
    		<input type="submit" value="提交"></input>
    		<input onclick="history.go(-1)" type="button" value="返回"></td></tr>
    		
    	</table>
    </form>
  </body>
</html>
