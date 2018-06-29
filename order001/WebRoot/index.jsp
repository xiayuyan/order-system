<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body.small {
    		background: #FAF9F7;
    		background-image:url(img/Hippopx.jpg);
		}
		body.small #header {
    		margin-bottom: 45px;
    		padding: 45px 0 0 0;
    		border: none;
    		background: none;
		}
		#header .wrapper {
    		position: relative;
		}

		body.small .wrapper {
    		width: auto;
		}
		@media only screen and (max-width: 800px) and (min-width: 0px)
		.wrapper, .call {
   			 width: 100% !important;
    		position: static;
    		padding-left: 15px !important;
    		padding-right: 15px !important;
    		box-sizing: border-box;
		}
		.wrapper {
    		text-align: left;
   		 	margin: 0 auto;
    		width: 1035px;
		}
		div {
    		display: block;
		}
		
		#logo {
    		margin: 0 30px;
		}
		#header #logo {
    		text-align: center;
		}
		body.small #header #logo a {
    		background: url(/--images/logo/survs-logo-1.svg) bottom center no-repeat;
    		background-size: 162px;
    		padding-top: 40px;
    		margin: auto;
		}
		@media only screen and (max-width: 800px) and (min-width: 0px)
		#header #logo a {
    		width: 162px;
    		margin: 0 auto 20px auto;
		}
		#header #logo a {
    		background: url(/--images/logo/survs-logo-1.svg) 0px 4px no-repeat;
   		 	background-size: 152px;
    		width: 162px;
    		height: 25px;
    		display: block;
    		padding-top: 50px;
    		text-indent: -9999px;
    		overflow: hidden;
    		outline: none;
		}
		a {
    		text-decoration: none;
		}

		a:-webkit-any-link { user agent stylesheet
    		color: -webkit-link;
    		cursor: pointer;
    		text-decoration: underline;
		}
		body.small #container{
    border-radius: 0;
    border: 1px solid #e7e5e0;
    border-left: none;
    border-right: none;
}
@media only screen and (max-width: 800px) and (min-width: 0px)
body.small #container {
    width: 100%;
}
body.small #container {
    background: #fdfcfb;
    border: 1px solid #e7e5e0;
}
body.small #container {
    border-radius: 6px;
}
body.login #container {
    width: 500px;
}
@media only screen and (max-width: 800px) and (min-width: 0px)
#container {
}
#container, #header {
    margin: 0 auto;
}
body.small #content {
    padding: 25px 0 20px 0;
}
body.small #content {
    padding: 32px 45px 27px 45px;
}
@media only screen and (max-width: 800px) and (min-width: 0px)
#content {
    padding: 30px 00px 30px 00px;
}
/*#content {
     color: #515348; 
    height: 1%;
}
#content {
    position: relative;
}
#content {
    padding: 50px 00px 30px 00px;
}*/
.small #footer {
    background: none;
    font-size: 14px !important;
    padding: 27px 00px 20px 00px;
}
#footer {
    background: #f1efea;
}
#footer {
    width: 100%;
}
#footer {
    padding: 47px 00px 40px 00px;
}
.small #footer-menu {
    margin: 5px 0 10px 0;
}
.small #footer #copyright {
    border-top: none;
    margin-top: 0;
    color: #777;
    font-size: 12px;
}
	</style>
  </head>
  
  <body class="small login">
    <div id="header">
    	<div class="wrapper">
    		<div id="logo">
    			<a href="https://survs.com/--images/logo/survs-logo-1.svg">searching</a>
    			<h2>物流订单管理系统</h2>
    		</div>
    	</div>
    </div>
    <div id="container">
    	<div id="content">
    		<div class="wrapper">
					
				<form name="f_0_11_1_3_1" method="post" action="UserServlet">
				<input type="hidden" value="false" name="returning" id="returning">
					<table class="login" style="margin-left: auto; margin-right: auto;">
						<tbody><tr>
							<td><p class="mtop0 mbottom025"><strong><label for="email">Username</label></strong></p><input id="email" tabindex="1" class="inputtext" type="text" name="uname"></td>
						</tr>
						<tr>
							<td><p class="mtop1 mbottom025"><strong><label for="password">Password</label></strong></p><input tabindex="2" class="inputtext" type="password" name="upwd" id="password"></td>
						</tr>
						
						<tr>
							<td><p class="mtop025 mbottom0 smalltxt"><input type="checkbox" name="remember" id="rememberMe" tabindex="3"> <label for="rememberMe">Remember me</label></p></td>
						</tr>
						
						
						<tr>
							<td style="padding-top: 10px;"><input class="public-button" type="submit" tabindex="4" value="Log in"></td>
						</tr>
					</tbody></table>
				</form>
			
			
			
		</div> <!-- wrapper -->
		</div> <!-- content -->
	</div>
    <!-- <form action="UserServlet" method="post">
    	用户名：<input name="uname"> <br>
    	密码：<input type="password" name="upwd" /><br>
			
			<select name="daylength">
				<option value="-1">请选择	</option>
				<option value="3">3天</option>
				<option value="7">7天</option>
				<option value="30">30天</option>
			</select>
			<input type="submit" value="登录"/>
    </form>
    <br> -->
    
</div>
  </body>
</html>
