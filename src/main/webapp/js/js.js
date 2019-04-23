/**
 * Created by yaling.he on 2015/11/17.
 */


//供应商管理页面上点击删除按钮弹出删除框(providerList.html)
$(function () {
	var proId;
	var currentObj;
    $('.removeProvider').click(function (e) {
    	e.preventDefault();
    	currentObj = $(this);//设置当前点击的对象
    	proId = $(this).attr("data-id");
    	var proName = $(this).attr("data-proname");
    	//修改提示内容
    	$(".removerChid>.removeMain>p").html("你确定要删除【"+proName+"】吗？");
        $('.zhezhao').css('display', 'block');
        $('#removeProv').fadeIn();
    });
    $('#yes').click(function (e) {
    	e.preventDefault();
        $('.zhezhao').css('display', 'none');
        $(".removerChid").css('display','none');
        $('#removeProv').fadeOut();
        $.post("provider/delete",{"proId":proId},function(result){
        	if(result){
        		alert("删除成功！");
        		location.href="provider/providerList";
        	}else{
        		alert("删除失败！");
        	}
        },"json");
    });
    $('#no').click(function (e) {
    	e.preventDefault();
        $('.zhezhao').css('display', 'none');
        $('#removeProv').fadeOut();
    });
});




//订单管理页面上点击删除按钮弹出删除框(billList.html)
$(function () {
var billId;
var currentObj;
$('.removeBill').click(function (e) {
	e.preventDefault();
	currentObj = $(this);//设置当前点击的对象
	billId = $(this).attr("data-id");
	var billName = $(this).attr("data-biname");
	//修改提示内容
	$(".removerChid>.removeMain>p").html("你确定要删除【"+billName+"】吗？");
    $('.zhezhao').css('display', 'block');
    $('#removeBi').fadeIn();
});
$('#yes').click(function (e) {
	e.preventDefault();
    $('.zhezhao').css('display', 'none');
    $(".removerChid").css('display','none');
    $('#removeBi').fadeOut();
    $.post("bill/delete",{"billId":billId},function(result){
    	if(result.flag){
        	alert("删除成功！");
        	location.href="bill/billList";
    	}else{
    		alert("删除失败！");
    	}
    },"json");
});
$('#no').click(function (e) {
	e.preventDefault();
    $('.zhezhao').css('display', 'none');
    $('#removeBi').fadeOut();
});
});



//用户管理页面上点击删除按钮弹出删除框(userList.html)
$(function () {
	var userId;
	var currentObj;
    $('.removeUser').click(function (e) {
    	e.preventDefault();
    	currentObj = $(this);//设置当前点击的对象
    	userId = $(this).attr("data-id");
    	var userName = $(this).attr("data-username");
    	//修改提示内容
    	$(".removerChid>.removeMain>p").html("你确定要删除【"+userName+"】吗？");
        $('.zhezhao').css('display', 'block');
        $('#removeUse').fadeIn();
    });
    $('#yes').click(function (e) {
    	e.preventDefault();
        $('.zhezhao').css('display', 'none');
        $(".removerChid").css('display','none');
        $('#removeUse').fadeOut();
        
       /* $.ajax({
        	url:"user/delete",
            type:"post",
            dataType:"JSON",
            data:"userId="+userId,
            success:function(data){
            	if(data.flag){
            		alert("删除成功！");
            		currentObj.parent().parent().remove();//删除表格中当前点击的对象所在的行
            		location.href="user/index";
            	}
            }
        });*/
        
        
        $.post("user/delete.json",{"userId":userId},function(date){
       /* $.post("user/delete/"+userId+".json",function(date){	*/
        	if(date.flag){
        		alert("删除成功！");
        		
        		location.href="user/index";
        	}else{
        		alert("删除失败！");
        	}
        },"json");
    });
    $('#no').click(function (e) {
    	e.preventDefault();
        $('.zhezhao').css('display', 'none');
        $('#removeUse').fadeOut();
    });
});

