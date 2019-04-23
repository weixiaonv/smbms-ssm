$(function(){
	
	var proCode = $("input[name='proCode']");
	
	proCode.bind({
		"blur":function(){
			var proCodeVal = $(this).val();//获取用户编码输入框中的值
			if(proCodeVal != null && proCodeVal != ""){
				pro.proCodeIsExists(proCodeVal);
			}
			
		},
		"focus":function(){
			var proCodeMsg = $("input[name='proCode']").next();
			pro.proCodeMsg.css("color","yellow");
			pro.proCodeMsg.html("供应商编码必须是6个字符");
		}
	});
	
	var pro = {
		proCodeMsg : $("input[name='proCode']").next(),
		proCodeIsExists:function(proCodeVal){
			$.post("ProviderServlet?method=isExists",{"checkData":proCodeVal,"checkType":"proCode"},function(result){
				if(result.data.flag){//表示用户名称不可用
					pro.proCodeMsg.css("color","red");
					pro.proCodeMsg.html("供应商编码不能重复");
					return;
				}
				pro.proCodeMsg.css("color","green");
				pro.proCodeMsg.html("该供应商编码可用");
			},"json");
		}
	};
	
	
});