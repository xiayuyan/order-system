<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//判断session是否有用户名
String name = (String)session.getAttribute("currName");
if(name == null){
	//保存错误信息
	request.setAttribute("errmsg", "您还没有登录，请先登录！");
	//非法访问，跳转回登录页面
	request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
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
		body {
    padding: 0;
    margin: 0;
    text-align: center;
    font-family: 'proxima-nova','Helvetica Neue', Helvetica, Arial, sans-serif;
    font-size: 16px;
    line-height: 25px;
    color: #333;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
}
		#header {
    background: #f6f4ef;
    border-bottom: 1px solid #e7e5e0;
}
#header ul {
    position: absolute;
    right: 0px;
    top: 14px;
}
#header ul li {
    float: left;
    list-style: none;
}
#header .wrapper {
    position: relative;
}
.wrapper {
    text-align: left;
    margin: 0 auto;
    width: 1035px;
}
		#header ul li.logout a {
    display: block;
    font-weight: 600;
    color: #fff;
    margin: 0;
    text-align: center;
    cursor: pointer;
    width: 66px;
    padding: 6px 3px 6px 3px;
    background: #777;
    border-radius: 6px;
    position: relative;
}
</style>
  </head>
  
  <body>
  
  <div id="header">
	<div class="wrapper">
	
		<div id="logo" aria-label="Survs Logo">
		<a href="/" title="Survs – Online Survey Tool"></a></div>
		<ul>
			
			
			<li class="logout"><a href="LogoutServlet"><span>log out</span></a></li>
		</ul>
	</div>
</div>
<br>
<br>
<h2>订单管理首页</h2>
    
    
  <!--  <a href="OrderdetailListServlet">查看订单详情信息</a><br> 
    
    <a href="LogoutServlet">用户退出登录</a><br>-->
    <main class=" mt-5">
        <div class="container">
            <div class="row">

               
                <div class="col-md-5 mb-4">

                    <h2>Some awesome infomation</h2>
                    <hr>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-4">

                    <div class="card">

                        <div class="view overlay hm-white-slight">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(72).jpg" class="img-fluid" alt="">
                            <a href="#">
                                <div class="mask"></div>
                            </a>
                        </div>
                        <div class="card-body">
                             <a href="CustomListServlet">查看客户信息</a><br>
    
   
                            
                        </div>

                    </div>

                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="view overlay hm-white-slight">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(74).jpg" class="img-fluid" alt="">
                            <a href="#">
                                <div class="mask"></div>
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="OrderListServlet">查看订单信息</a><br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="card">

                        <div class="view overlay hm-white-slight">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(75).jpg" class="img-fluid" alt="">
                            <a href="#">
                                <div class="mask"></div>
                            </a>
                        </div>
                        <div class="card-body">
                             <a href="ProductListServlet">查看产品信息</a><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </main>
  </body>
</html>

