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
<jsp:include page="../common/header.jsp"/>

<!--主体内容-->
<section class="publicMian">
    <jsp:include page="../common/left.jsp"/>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>密码修改页面</span>
            </div>
            <div class="providerAdd">
                <form action="">
                    <p id ="pass" style="color:red;padding-left: 280px;font-size: 16px;"></p>
                    <!--div的class 为error是验证错误，ok是验证成功-->
                    <div class="">
                        <label for="oldPassword">旧密码：</label>
                        <input type="password" name="oldPassword" id="oldPassword" required/>
                        <span>*请输入原密码</span>
                    </div>
                    <div>
                        <label for="newPassword">新密码：</label>
                        <input type="password" name="newPassword" id="newPassword" required/>
                        <span >*请输入新密码</span>
                    </div>
                    <div>
                        <label for="reNewPassword">确认新密码：</label>
                        <input type="password" name="reNewPassword" id="reNewPassword" required/>
                        <span >*请输入新确认密码，保证和新密码一致</span>
                    </div>
                    <div class="providerAddBtn">
                        <a href="javascript:repwd()">保存</a>
                        <!-- <input type="button" value="保存" onclick="history.back(-1)"/> -->
                    </div>
                </form>
            </div>
        </div>
    </section>
<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/time.js"></script>
<script type="text/javascript" src="js/password.js"></script>
</body>
</html>