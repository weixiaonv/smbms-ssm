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
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="user/update" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="hidden" name="id" value="${user.id}" />
                    <input type="text" name="userName" id="userName" value="${user.userName}" />
                    <span >*</span>
                </div>

                <div>
                    <label >用户性别：</label>

                    <select name="gender">
                        <option value="1" <c:if test="${user.gender==1}">selected</c:if>>男</option>
                        <option value="2" <c:if test="${user.gender==2}">selected</c:if>>女</option>
                    </select>
                </div>
                <div>
                    <label for="data">出生日期：</label>
                  	 <input type="text" name="birthday" id="data" 
                    	   value='<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>'/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userphone">用户电话：</label>
                    <input type="text" name="userphone" id="userphone" value="${user.phone }"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userAddress">用户地址：</label>
                    <input type="text" name="userAddress" id="userAddress" value= "${user.address}"/>
                </div>
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="userRole" value="1" <c:if test="${user.userRole==1}">checked</c:if>/>管理员
                    <input type="radio" name="userRole" value="2" <c:if test="${user.userRole==2}">checked</c:if>/>经理
                    <input type="radio" name="userRole" value="3" <c:if test="${user.userRole==3}">checked</c:if>/>普通用户

                </div>
                <div class="providerAddBtn">
                    <input type="submit" value="保存" onclick="history.back(-1)"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
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
