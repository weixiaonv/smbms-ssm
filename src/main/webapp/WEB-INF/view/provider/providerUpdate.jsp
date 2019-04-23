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
            <span>供应商管理页面 >> 供应商修改页</span>
        </div>
        <div class="providerAdd">
            <form action="provider/proUpdate" method="post">
            <input type = "hidden" value="${list.id}" name = "id" id = "id">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="providerId">供应商编码：</label>
                    <input type="text" name="proCode" id="providerId" value="${list.proCode}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="providerName">供应商名称：</label>
                    <input type="text" name="proName" id="providerName" value="${list.proName}" />
                    <span >*</span>
                </div>
                <div>
                    <label for="people">联系人：</label>
                    <input type="text" name="proContact" id="people" value="${list.proContact}"/>
                    <span>*</span>

                </div>
                <div>
                    <label for="phone">联系电话：</label>
                    <input type="text" name="proPhone" id="phone" value="${list.proPhone}"/>
                    <span></span>
                </div>
                <div>
                    <label for="address">联系地址：</label>
                    <input type="text" name="proAddress" id="address" value="${list.proAddress}" />
                    <span></span>

                </div>
                <div>
                    <label for="fax">传真：</label>
                    <input type="text" name="proFax" id="fax" value="${list.proFax}"/>
                    <span></span>

                </div>
                <div>
                    <label for="describe">描述：</label>
                    <input type="text" name="proDesc" id="describe" value="${list.proDesc}"/>
                    <span></span>

                </div>
                <div class="providerAddBtn">
                    <!-- <a href="javascript:up()">保存</a> -->
                    <!--<a href="providerList.jsp">返回</a>-->
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
		
	});
</script>
  </body>
</html>
