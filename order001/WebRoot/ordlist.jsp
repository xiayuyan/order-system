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
    
    <title>My JSP 'ordlist.jsp' starting page</title>
    
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
	<%List<order> list=(List<order>)request.getAttribute("orders"); %>
	
  
  </head>
  
  <body>
    <h2>订单信息：</h2>
    <div class="list">
    <table width="800px" cellspacing="0" rules="cols" border="1px">
        <thead>
        <tr>
            
            <th width="40%">订单编号</th>
            
            <th width="60%">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr align="center">
    
   		
   		<%
   		if(list != null){
   			for(order o:list){
   		 %>
   		 
   		 	<tr>
   			<td align="center"><%=o.getOid() %></td>
   			
   			<td align="center"><a href="OrderDelServlet?oid=<%=o.getOid() %>">删除</a>
   				<a href="OrderTranServlet?oid=<%=o.getOid()%>">修改</a>		
   				<a href="OrderViewServlet?oid=<%=o.getOid()%>">查看</a>	
   			</td>
   			
   		</tr>
   		
   		<%} 
   		}%>  
   </table>
   <a href="ordadd.jsp">增加</a>
   <input onclick="history.go(-1)" type="button" value="返回">
  </body>
</html>
