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
            <span>账单管理页面 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>订单编号：</strong><span>${list.billCode}</span></p>
            <p><strong>商品名称：</strong><span>${list.productName}</span></p>
            <p><strong>商品单位：</strong><span>${list.productUnit}</span></p>
            <p><strong>商品数量：</strong><span>${list.productCount}</span></p>
            <p><strong>总金额：</strong><span>${list.totalPrice}</span></p>
            <p><strong>供应商：</strong><span>${list.providerName}</span></p>
            <p><strong>是否付款：</strong><span>
            <c:if test="${list.isPayment == 0}">未付款</c:if>
            <c:if test="${list.isPayment == 1}">已付款</c:if>
            </span></p>
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
