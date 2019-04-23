$(function(){
	
	var userCode = $("input[name='userCode']");
	var userName = $("input[name='userName']");
	var userPhone = $("input[name='userphone']");
	
	userCode.bind({
		"blur":function(){
			var userCodeVal = $(this).val();//获取用户编码输入框中的值
			if(userCodeVal != null && userCodeVal != ""){
				user.userCodeIsExists(userCodeVal);
		    }
			
		},
		"focus":function(){
			var userMsg = $("input[name='userCode']").next();
			user.userMsg.css("color","yellow");
			user.userMsg.html("用户编码必须是6个字符");
		}
	});
	
	userName.bind({
		"blur":function(){
			var userNameVal = $(this).val();//获取用户名称输入框中的值
			if(userNameVal != null && userNameVal != ""){
				user.userNameIsExists(userNameVal);
			}
		},
		"focus":function(){
			var userMsg = $("input[name='userName']").next();
			user.userMsg.css("color","yellow");
			user.userMsg.html("*请输入用户名称");
		}
	});
	
	userPhone.bind({
		"blur":function(){
			var userPhoneVal = $(this).val();//获取用户电话输入框中的值
			if(userPhoneVal != null && userPhoneVal != ""){
				user.userPhoneIsExists(userPhoneVal);
			}
		},
		"focus":function(){
			var userPhoneMsg = $("input[name='userphone']").next();
			user.userPhoneMsg.css("color","yellow");
			user.userPhoneMsg.html("*请输入正确的电话号码");
		}
	});
	
	var user = {
		userCodeMsg : $("input[name='userCode']").next(),
		userNameMsg : $("input[name='userName']").next(),
		userPhoneMsg : $("input[name='userphone']").next(),
		userPhoneIsExists:function(userPhoneVal){
			$.post("UserServlet?method=isExists",{"checkData":userPhoneVal,"checkType":"userPhone"},function(result){
				if(result.data.flag){//表示用户名称不可用
					user.userPhoneMsg.css("color","red");
					user.userPhoneMsg.html("电话号码不能重复");
					return;
				}
				user.userPhoneMsg.css("color","green");
				user.userPhoneMsg.html("该电话码号可用");
			},"json");
		},
		userNameIsExists:function(userNameVal){
			$.post("UserServlet?method=isExists",{"checkData":userNameVal,"checkType":"userName"},function(result){
				if(result.data.flag){//表示用户名称不可用
					user.userNameMsg.css("color","red");
					user.userNameMsg.html("用户名称不能重复");
					return;
				}
				user.userNameMsg.css("color","green");
				user.userNameMsg.html("用户名称可用");
			},"json");
		},
		userCodeIsExists:function(userCodeVal){
			//$.post(url,data,callback,resultType)
			$.post("UserServlet?method=isExists",{"checkData":userCodeVal,"checkType":"userCode"},function(result){
				if(result.data.flag){//表示用户编码不可用
					user.userCodeMsg.css("color","red");
					user.userCodeMsg.html("用户编码不能重复");
					return;
				}
				user.userCodeMsg.css("color","green");
				user.userCodeMsg.html("该用户编码可用");
			},"json");
		}
	};
	
	
});