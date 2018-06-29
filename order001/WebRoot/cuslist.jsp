<%@page import="com.entity.custom"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page  import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cuslist.jsp' starting page</title>
    
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
		align="center";
		}
	</style>
	<%List<custom> list=(List<custom>)request.getAttribute("customs"); %>
	
  

  </head>
  
  <body>
  <h2>客户信息：</h2>
  <div class="list">
    <table width="800px" cellspacing="0" rules="cols" border="1px">
        <thead>
        <tr>
            
            <th width="40%">客户编号</th>
            
            <th width="60%">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr align="center">
            
            <%
   		if(list != null){
   			for(custom c:list){
   		 %>
            <td align="center"><%=c.getCid() %></td>
            
           
            <td align="center"><a href="CustomDelServlet?cid=<%=c.getCid() %>" >删除</a>
   				<a href="CustomTranServlet?cid=<%=c.getCid()%>">修改</a>		
   				<a href="CustomViewServlet?cid=<%=c.getCid()%>">查看</a>	
   			</td>
        </tr>
        <%} 
   		}%>  
        </tbody>
    </table>
</div>
    
   <a href="cusadd.jsp">添加客户</a><input onclick="history.go(-1)" type="button" value="返回">
  </body>
</html>
