<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市账单管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <style type="text/css">
    	.lictive{
			background-color: #92c609;
		    border-radius: 4px;
		}
    </style>
</head>
<body>
<!--头部-->
<jsp:include page="../common/header.jsp"/>

<!--主体内容-->
<section class="publicMian">
    <jsp:include page="../common/left.jsp"/>
    <jsp:include page="../common/right.jsp"/>
</section>
<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/time.js"></script>
</body>
</html>
