<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" href="css/myCss.css"/>
</head>
<body>
<!--头部-->
<jsp:include page="../../common/header.jsp"/>

<!--主体内容-->
<section class="publicMian">
    <jsp:include page="../../common/left.jsp"/>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户信息查看页面</span>
        </div>
        <div class="providerView">
            <p><strong>用户编号：</strong><span>${user.userCode}</span></p>
            <p><strong>用户名称：</strong><span>${user.userName}</span></p>
            <p><strong>用户性别：</strong><span>
            	<c:if test="${user.gender==1}">男</c:if>
            	<c:if test="${user.gender==2}">女</c:if>
            </span></p>
            <p><strong>出生日期：</strong><span><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/></span></p>
            <p><strong>用户电话：</strong><span>${user.phone}</span></p>
            <p><strong>用户地址：</strong><span>${user.address}</span></p>
            <p><strong>用户类别：</strong><span>${user.roleName}</span></p>
            <a href="javascript:history.go(-1);">返回</a>
        </div>
    </div>
</section>

<jsp:include page="../../common/footer.jsp"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/time.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
</body>
</html>
