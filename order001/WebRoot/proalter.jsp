<%@page import="com.entity.product"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'proalter.jsp' starting page</title>
    
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
    <h2>修改产品信息</h2>
    <form action="ProductModifyServlet" method="post">
    	<table>
    		<%product p=(product)request.getAttribute("products"); %><br>
			
			<tr><td>产品编号：</td>
			<td><input type="text" name="pid" value="<%=p.getPid()%>"></td></tr>
    		<tr><td>产品名称：</td>
			<td><input type="text" name="pname" value="<%=p.getPname()%>"></td></tr>
			<tr><td>价格：</td>
			<td><input type="text" name="pprice" value="<%=p.getPprice()%>"></td></tr>
			<tr><td>类型：</td>
			<td><input type="text" name="ptype" value="<%=p.getPtype()%>"></td></tr>
			<tr><td>地址：</td>
			<td><input type="text" name="padd" value="<%=p.getPadd()%>"></td></tr>
			
			<tr><td>说明：</td>
			<td><input type="text" name="pdes" value="<%=p.getPdes()%>"></td></tr>
    		<tr><td colspan="2">
    		<input type="submit" value="提交"></input>
    		<input onclick="history.go(-1)" type="button" value="返回"></td></tr>
    	</table>
    </form>
  </body>
</html>
