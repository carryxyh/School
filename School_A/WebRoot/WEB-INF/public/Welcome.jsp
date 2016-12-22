<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css"/>
	<link type="text/css" href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet"/>
  </head>
  
  <body style=" background-image: url(images/1.jpg);background-repeat: no-repeat;" > 
  
  <div class="container-fluid" >
  <div class="row">
  
  <div class="col-md-12" style="margin-bottom: 200">
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">SKY</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  </div>
  </div>
<div class="row" >
  <div class="col-md-1" ></div>
  <div class="col-md-3" style=" background-color: #ffffff " >
 <p> 
  <ul class="wel_ul">
    	<li><a href="${pageContext.request.contextPath}/goReg">注册</a></li>
    	<li><a href="${pageContext.request.contextPath}/login/goLoginUi">登陆</a></li>
    </ul>
  </p>
  
  </div>
  <div class="col-md-8" ></div>
</div>

</div>
  
  </body>
</html>
