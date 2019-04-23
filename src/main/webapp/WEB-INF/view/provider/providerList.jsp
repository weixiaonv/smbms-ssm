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
     <style type="text/css">
    	.right>.pagination{
    		font-weight:bolder;
    		margin-top:10px;
    		/* border:1px solid red; */
    		float:right;
    		/* width:300px; */
    	}
    	.pagination li{
    		float:left;
    		border:1px solid gray;
    		width:30px;
    		height:30px;
    		border-left:none;
    		line-height:30px;
    		text-align:center;
    	}
    	.pagination li:first-child{
    		border-radius:5px 0px 0px 5px;
    		border-left:1px solid gray;
    	}
    	.pagination li:last-child{
    		border-radius:0px 5px 5px 0px;
    	}
    	
    	.pagination:after{
    		content:'';
    		clear:both;
    		display:block;
    	}
    	.pagination li:hover{
    		border-color:#47acf1;
    		background-color:#47acf1;
    	}
    	
    	.active{
    		border-color:#47acf1;
    		background-color:#47acf1;
    	}
    	.page{
    		display:inline-block;
    		/* border:1px solid red; */
    		height:30px;
    		line-height:30px;
    		margin-top:10px;
    	}
    </style>
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
            <span>供应商管理页面</span>
        </div>
        <div class="search">
          <form action="provider/providerList" method="post">
            <span>供应商名称：</span>
            <input type="text" name = "findParam" value="${findParam}" placeholder="请输入供应商的名称"/>
            <input type="hidden" name="pageIndex" value="${page.pageIndex}"/>
            <input type="button" class="find-sub" value="查询"/>
          </form>
            
          <a href="provider/providerAdd">添加供应商</a>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">供应商编码</th>
                <th width="20%">供应商名称</th>
                <th width="10%">联系人</th>
                <th width="10%">联系电话</th>
                <th width="10%">传真</th>
                <th width="10%">创建时间</th>
                <th width="30%">操作</th>
            </tr>
            <c:forEach var="list" items="${page.list}">
              <tr>
                <td>${list.proCode}</td>
                <td>${list.proName}</td>
                <td>${list.proContact}</td>
                <td>${list.proPhone}</td>
                <td>${list.proFax}</td>
                <td>${list.createDate}</td>
                <td>
                    <a href="provider/providerView/${list.id}"><img src="img/read.png" alt="查看" title="查看"/></a>
	                <a href="provider/providerUpdate/${list.id}"><img src="img/xiugai.png" alt="修改" title="修改"/></a>
	                <a href="#" class="removeProvider" data-id="${list.id}" data-proname="${list.proName}" ><input type="hidden" value="${list.id}"><img src="img/schu.png" alt="删除" title="删除"/></a>
                </td>
              </tr>         
            </c:forEach>
            
        </table>
        
        <span class="page">当前${page.pageIndex}/${page.totalPage}页</span>
        <ul class="pagination">
		    <li><a href="#" data-pageindex="${page.pageIndex-1 <1 ? 1:page.pageIndex-1}">&laquo;</a></li>
		    <c:forEach begin="1" end="${page.totalPage}" var="c">
		       <li <c:if test="${page.pageIndex == c}">class="active"</c:if> ><a href="#" data-pageindex="${c}">${c}</a></li>
		    </c:forEach>
		    <li><a href="#" data-pageindex="${page.pageIndex+1 > page.totalPage ? page.totalPage :page.pageIndex+1}">&raquo;</a></li>
	   </ul>
   </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该供应商吗？</p>
           <a href="#" id="yes">确定</a>
           <a href="#" id="no">取消</a>
       </div>
   </div>
</div>

<jsp:include page="../../common/footer.jsp"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/time.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".pagination>li").click(function(e){
			e.preventDefault();
			$(this).siblings().removeClass("active");
			$(this).addClass("active");
			var $pageIndex = $(this).children("a").attr("data-pageindex");
			//获取查询表单对象
			var $findForm = $(".search").find("form");
			//为查询表单中的name="pageIndex"文本框设置属性值
			$findForm.find("input[name='pageIndex']").val($pageIndex);
			//提交查询表单
			$findForm.submit();
		});
		$(".find-sub").click(function(){
			$(this).parent().submit();
		});
	});
</script>
</body>
</html>