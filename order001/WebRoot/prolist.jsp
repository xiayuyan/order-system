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
    
    <title>My JSP 'prolist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
table{
		border:1px solid gray;
		border-collapse:collapse;
		width:100%;	
		}
		td{
		border:1px solid gray;
		}
		body {
    		background: #FAF9F7;
    		background-image:url(img/Hippopx.jpg);
		}
	</style>
	<%List<product> list=(List<product>)request.getAttribute("products"); %>
	
  

  </head>
  
  <body>
    <h2>产品信息：</h2>
    <div class="list">
    <table width="800px" cellspacing="0" rules="cols" border="1px">
        <thead>
        <tr>
            
            <th width="40%">产品编号</th>
            
            <th width="60%">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr align="center">
   
    
   		
   		<%
   		if(list != null){
   			for(product p:list){
   		 %>
   		 
   		 	<tr>
   			<td align="center"><%=p.getPid() %></td>
   			<!-- <td><%=p.getPname() %></td>
   			<td><%=p.getPprice() %></td>
   			<td><%=p.getPtype() %></td>
   			<td><%=p.getPadd() %></td>
   			<td><%=p.getPdes() %></td> -->
   			<td align="center"><a href="ProductDelServlet?pid=<%=p.getPid() %>">删除</a>
   				<a href="ProductTranServlet?pid=<%=p.getPid()%>">修改</a>		
   				<a href="ProductViewServlet?pid=<%=p.getPid()%>">查看</a>	
   			</td>
   			
   		</tr>
   		
   		<%} 
   		}%>  
   </table>
   <a href="proadd.jsp">增加</a> <input onclick="history.go(-1)" type="button" value="返回">
  </body>
</html>
