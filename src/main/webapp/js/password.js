$(function(){

	var password = $("input[name='oldPassword']");
	
	password.bind({
		"blur":function(){
			var passwordVal = $(this).val();//获取用户电话输入框中的值
			if(passwordVal != null && passwordVal != ""){
				pword.pwdIsExists(passwordVal);
			}
		},
		"focus":function(){
			var passwordMsg = $("input[name='oldPassword']").next();
			pword.passwordMsg.css("color","yellow");
			pword.passwordMsg.html("*请输入正确的电话号码");
		}
	});
	
	var pword = {
		pwd : $("input[name='oldPassword']").next(),
		pwdIsExists:function(passwordVal){
			$.post("login/isExists",{"checkData":passwordVal},function(result){
				if(result.data.flag){//表示用户名称不可用
					pword.passwordMsg.css("color","red");
					pword.passwordMsg.html("电话号码不能重复");
					return;
				}
				pword.passwordMsg.css("color","green");
				pword.passwordMsg.html("该电话码号可用");
			},"json");
		}
	};
    
    function repwd(){
        var repwd = $("#reNewPassword").val();
        $("form").attr({"action":"UserServlet?method=updateUserPwd&repwd="+repwd+"","method":"post"});
        $("form").submit();
    }
    
});