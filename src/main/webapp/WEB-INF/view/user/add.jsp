<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
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
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <fm:form modelAttribute="user" method="post" action="user/insert" enctype="multipart/form-data">
				 <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="userId">用户编码：</label>
                    <fm:input path="userCode" id="userId"/>
                    <fm:errors path="userCode" cssStyle="color:red;"/>
                    <span>*请输入用户编码，且不能重复</span>
                </div>
                <div>
                    <label for="userName">用户名称：</label>
                    <fm:input path="userName" id="userName"/>
                    <fm:errors path="userName" cssStyle="color:red;"/>
                    <span >*请输入用户名称</span>
                </div>
                <div>
                    <label for="userpassword">用户密码：</label>
                    <fm:password path="userPassword" id="userpassword"/>
                    <fm:errors path="userPassword"  cssStyle="color:red;"/>
                    <span>*密码长度必须大于6位小于20位</span>

                </div>
                <div>
                    <label for="userRemi">确认密码：</label>
                    <fm:password path="userRemi" id="userRemi"/>
                    <fm:errors path="userRemi"  cssStyle="color:red;"/>
                    <span>*请输入确认密码</span>
                </div>
                <div>
                    <label >用户性别：</label>
                    <fm:select path="gender">
                    	<fm:option value="1" selected="selected">男</fm:option>
                    	<fm:option value="2">女</fm:option>
                    </fm:select>
                    <span></span>
                </div>
                <div>
                    <label for="data">出生日期：</label>
                    <fm:input path="birthday" id="data"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userphone">用户电话：</label>
                    <fm:input path="phone" id="userphone"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="userAddress">用户地址：</label>
                    <fm:input path="address" id="userAddress"/>
                </div>
                <div>
                    <label >用户类别：</label>
                    <fm:radiobutton path="userRole" value="1"/>管理员
                    <fm:radiobutton path="userRole" value="2"/>经理
                    <fm:radiobutton path="userRole" value="3" checked="checked"/>普通员工
                </div>
                <div id="file">
                    <label for="idPicPath">证件照片：</label>
                    <input type="file" name="attaches" id="idPicPath"/>
                    <span id="fileMsg" style="color:green;">文件的大小必须小于1M，文件的格式为:jpg,png,gif</span>
                </div>
                <div id="workfile">
                    <label for="workPicPath">工作照片：</label>
                    <input type="file" name="attaches" id="workPicPath"/>
                    <span id="workfileMsg" style="color:green;">文件的大小必须小于1M，文件的格式为:jpg,png,gif</span>
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
                    <input type="submit" value="保存"/>
                    <fm:button value="返回" onclick="history.back(-1)"/>
                </div>       	
        	</fm:form>
        </div>

    </div>
</section>
<jsp:include page="../../common/footer.jsp"/>
<script src="js/time.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/user.js"></script>
</body>
</html>
