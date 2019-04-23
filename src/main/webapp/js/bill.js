$(function(){
	
	var billCode = $("input[name='billCode']");
	
	billCode.bind({
		"blur":function(){
			var billCodeVal = $(this).val();//获取用户编码输入框中的值
			if(billCodeVal != null && billCodeVal != ""){
				bill.billCodeIsExists(billCodeVal);
			}
			
		},
		"focus":function(){
			var billMsg = $("input[name='billCode']").next();
			bill.billMsg.css("color","yellow");
			bill.billMsg.html("账单编码必须是6个字符");
		}
	});
	
	
	var bill = {
		billCodeMsg : $("input[name='billCode']").next(),
		billCodeIsExists:function(billCodeVal){
			//$.post(url,data,callback,resultType)
			$.post("BillServlet?method=isExists",{"checkData":billCodeVal,"checkType":"billCode"},function(result){
				if(result.data.flag){//表示用户编码不可用
					bill.billCodeMsg.css("color","red");
					bill.billCodeMsg.html("账单编码不能重复");
					return;
				}
				bill.billCodeMsg.css("color","green");
				bill.billCodeMsg.html("该账单编码可用");
			},"json");
		}
	};
	
	
});