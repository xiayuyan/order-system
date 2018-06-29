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
    
    <title>My JSP 'cusview.jsp' starting page</title>
    
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
  <h2>客户信息：</h2>
    <table>
   		<tr>
   			<td>客户编号</td>
   			<td>客户名称</td>
   			<td>联系人</td>
   			<td>联系电话</td>
   			<td>地址</td>
   			<td>邮编</td>
   		</tr>
   		<%custom c=(custom)request.getAttribute("customs"); %><br>   		 
   		 	<tr>
   			<td><%=c.getCid() %></td>
   			<td><%=c.getCname() %></td>
   			<td><%=c.getClink() %></td>
   			<td><%=c.getCphmun() %></td>
   			<td><%=c.getCadd() %></td>
   			<td><%=c.getCpost() %></td></br>
   			
   		</tr>
   </table>
   <input onclick="history.go(-1)" type="button" value="返回">
  </body>
</html>
