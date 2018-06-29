<%@page import="com.entity.order"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ordalter.jsp' starting page</title>
    
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
    <h2>修改订单信息</h2>
    <form action="OrderModifyServlet" method="post">
    	<table>
    		<%order o=(order)request.getAttribute("orders"); %><br>
			<tr><td>订单编号：</td>
			<td><input type="text" name="oid" value="<%=o.getOid()%>"></td></tr>
    		<tr><td>客户编号：</td>
			<td><input type="text" name="cid" value="<%=o.getCid()%>"></td></tr>
    		
			<tr><td>下单日期：</td>
			<td><input type="text" name="odate" value="<%=o.getOdate()%>"></td></tr>
    		<tr><td colspan="2">
    		<input type="submit" value="提交"></input>
    		<input onclick="history.go(-1)" type="button" value="返回"></td></tr>
    	</table>
    </form>
  </body>
</html>
