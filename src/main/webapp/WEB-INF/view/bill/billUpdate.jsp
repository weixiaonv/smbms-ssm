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
    <section class="publicMian ">
        <jsp:include page="../../common/left.jsp"/>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>账单管理页面 >> 订单添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="bill/update" method="post">
            <input type = "hidden" value="${list.id}" name = "id"  id = "id">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="providerId">订单编码：</label>
                    <input type="text" name="billCode" id="providerId" value="${list.billCode}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="providerName">商品名称：</label>
                    <input type="text" name="productName" id="providerName" value="${list.productName}"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="people">商品单位：</label>
                    <input type="text" name="productUnit" id="people" value="${list.productUnit}"/>
                    <span>*</span>

                </div>
                <div>
                    <label for="phone">商品数量：</label>
                    <input type="text" name="productCount" id="phone" value="${list.productCount}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="address">总金额：</label>
                    <input type="text" name="totalPrice" id="address" value="${list.totalPrice}"/>
                    <span>*</span>
                </div>
                <div>
                    <label >供应商：</label>
                    <input type = "hidden" id ="su" value="${list.providerId}"/>
                    <select name="providerId" id = "su1" >
                        <option value="">--请选择相应的提供商--</option>
                        <c:forEach var="li" items="${BillList}">
	                        <option value="${li.id}">${li.proName}</option>
                        </c:forEach>
                    </select>
                    <span>*</span>
                </div>
                <div>
                    <label >是否付款：</label>
                    <input type="hidden" id ="pays" value="${list.isPayment}" />
                    <input type="radio" value="0" id = "pay0" name="zhifu" checked/>未付款
                    <input type="radio" value="1" id = "pay1" name="zhifu"/>已付款
                </div>
                
                <div class="providerAddBtn">
                    <!-- <a href="javascript:up()">保存</a> -->
                    <!--<a href="billList.html">返回</a>-->
                    <input type="submit" value="保存"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
           
        </div>

    </div>
</section>
<!-- 底部 -->
<jsp:include page="../../common/footer.jsp"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/time.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var su = $("#su").val();
		$("#su1").val(su);
	});
</script>
  </body>
</html>
