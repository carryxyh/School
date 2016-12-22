<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>登陆</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
</head>

<body>
	<div class="logForm">
    	<form action="${pageContext.request.contextPath}/login/checkLog" method="post">
	    	<span class="font4">登录邮箱:</span><br/>
	    	<input type="text"  name="email" /><br/> 
	    	<span class="font4">登录密码:</span><br/>
	    	<input type="password" name="password" /><br/>
	    	<input type="checkbox" /> 自动登录<br/>
	    	<input type="submit" value="登录" class="btn btn-success btn-sm"/>
	    　	<a href="#">找回密码</a>
	    </form>
    </div>
</body>
</html>
