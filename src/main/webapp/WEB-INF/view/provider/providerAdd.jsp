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
            <span>供应商管理页面 >> 供应商添加页面</span>
        </div>
        <div class="providerAdd">
            <form onsubmit="return sub()" action="provider/proAdd" method="post">
            <input type="hidden" name="method" value="create"/>
               <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="providerId">供应商编码：</label>
                    <input type="text" name="proCode" id="providerId"/>
                    <span>*请输入供应商编码</span>
                </div>
                <div>
                    <label for="providerName">供应商名称：</label>
                    <input type="text" name="proName" id="providerName"/>
                    <span >*请输入供应商名称</span>
                </div>
                <div>
                    <label for="people">联系人：</label>
                    <input type="text" name="proContact" id="people"/>
                    <span>*请输入联系人</span>

                </div>
                <div>
                    <label for="phone">联系电话：</label>
                    <input type="text" name="proPhone" id="phone"/>
                    <span>*请输入联系电话</span>
                </div>
                <div>
                    <label for="address">联系地址：</label>
                    <input type="text" name="proAddress" id="address"/>
                    <span></span>
                </div>
                <div>
                    <label for="fax">传真：</label>
                    <input type="text" name="proFax" id="fax"/>
                    <span></span>
                </div>
                <div>
                    <label for="describe">描述：</label>
                    <input type="text" name="proDesc" id="describe"/>
                </div>
                <div class="providerAddBtn">
                    <!-- <a href="javascript:insertInfo()">保存</a> -->
                    <!--<a href="providerList.html">返回</a>-->
                    <input type="submit" value="保存"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<jsp:include page="../../common/footer.jsp"/>
<script src="js/time.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/provider.js"></script>
<script type="text/javascript">
    function sub(){
       if($("#providerId").val() == null || $("#providerId").val() == ""){
         alert("供应商编码不能为空！");
         return false;
       }
       if($("#providerName").val() == null || $("#providerName").val() == ""){
         alert("供应商名称不能为空！");
         return false;
       }
       if($("#people").val() == null || $("#people").val() == ""){
         alert("联系人不能为空！");
         return false;
       }
       if($("#phone").val() == null || $("#phone").val() == ""){
         alert("联系电话不能为空！");
         return false;
       }
       if($("#address").val() == null || $("#address").val() == ""){
         alert("地址不能为空！");
         return false;
       }
       if($("#fax").val() == null || $("#fax").val() == ""){
         alert("传真不能为空！");
         return false;
       }
       if($("#describe").val() == null || $("#describe").val() == ""){
         alert("描述不能为空！");
         return false;
       }
       return true;
    }
</script>
</body>
</html>