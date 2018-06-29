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
    
    <title>My JSP 'proview.jsp' starting page</title>
    
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
table{
		border:1px solid gray;
		border-collapse:collapse;
		width:100%;	
		}
		td{
		border:1px solid gray;
		}
	</style>
  </head>
  
  <body>
  <h2>产品信息：</h2>
    <table>
   		<tr>
   			<td>产品编号</td>
   			<td>产品名称</td>
   			<td>价格</td>
   			<td>类型</td>
   			<td>地址</td>
   			<td>说明</td>
   		</tr>
   		<%product p=(product)request.getAttribute("products"); %><br>   		 
   		 	<tr>
   			<td><%=p.getPid() %></td>
   			<td><%=p.getPname() %></td>
   			<td><%=p.getPprice() %></td>
   			<td><%=p.getPtype() %></td>
   			<td><%=p.getPadd() %></td>
   			<td><%=p.getPdes() %></td>
   			
   		</tr>
   </table>
   <input onclick="history.go(-1)" type="button" value="返回">
  </body>
</html>
