<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
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
            <form onsubmit="return sub()" action="bill/insert" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <input type = "hidden" name = "method" value="create">
                <div class="">
                    <label for="billId">订单编码：</label>
                    <input type="text"  name="billCode" id="billId" required/>
                    <span>*请输入订单编码</span>
                </div>
                <div>
                    <label for="billName">商品名称：</label>
                    <input type="text" name="productName" id="billName" required/>
                    <span >*请输入商品名称</span>
                </div>
                <div>
                    <label for="billCom">商品单位：</label>
                    <input type="text" name="productUnit" id="billCom" required/>
                    <span>*请输入商品单位</span>

                </div>
                <div>
                    <label for="billNum">商品数量：</label>
                    <input type="text" name="productCount" id="billNum" required/>
                    <span>*请输入大于0的正自然数，小数点后保留2位</span>
                </div>
                <div>
                    <label for="money">总金额：</label>
                    <input type="text" name="totalPrice" id="money" required/>
                    <span>*请输入大于0的正自然数，小数点后保留2位</span>
                </div>
                <div>
                    <label >供应商：</label>
                    <select name="providerId" id = "providerId">
                        <option value="">--请选择相应的提供商--</option>
                          <c:forEach var="list" items="${list}">
	                        <option value="${list.id}">${list.proName}</option>
                          </c:forEach>
                    </select>
                    <span>*请选择供应商</span>
                </div>
                <div>
                    <label >是否付款：</label>
                    <input type="radio" value="0" name="isPayment" checked />未付款
                    <input type="radio" value="1" name="isPayment"/>已付款
                </div>
                <div class="providerAddBtn">
                    <!-- <a href="javascript:insert()">保存</a> -->
                    <!--<a href="billList.html">返回</a>-->
                    <input type="submit" value="保存" />
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<jsp:include page="../../common/footer.jsp"/>
<script src="js/time.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bill.js"></script>
<script type="text/javascript">
    function sub(){
        if($("#billId").val() == null || $("#billId").val() == "" ){
            alert("账单编号不能为空");
            return false;
        }
        if($("#billName").val() == null || $("#billName").val() == "" ){
            alert("商品名称不能为空");
            return false;
        }
        if($("#billCom").val() == null || $("#billCom").val() == "" ){
            alert("商品单位不能为空");
            return false;
        }
        if($("#billNum").val() == null || $("#billNum").val() == "" ){
            alert("商品数量不能为空");
            return false;
        }
        if($("#money").val() == null || $("#money").val() == "" ){
            alert("总金额不能为空");
            return false;
        }
        if($("#providerId").val() == null || $("#providerId").val() == "" ){
            alert("请选择供应商");
            return false;
        }
        return true;
    }
</script>
</body>
</html>