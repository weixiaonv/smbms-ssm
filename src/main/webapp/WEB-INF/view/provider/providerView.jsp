<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <span>供应商管理页面 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>供应商编码：</strong><span>${list.proCode}</span></p>
            <p><strong>供应商名称：</strong><span>${list.proName}</span></p>
            <p><strong>联系人：</strong><span>${list.proContact}</span></p>
            <p><strong>联系电话：</strong><span>${list.proPhone}</span></p>
            <p><strong>传真：</strong><span>${list.proFax}</span></p>
            <p><strong>描述：</strong><span>${list.proDesc}</span></p>
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
