function gameTagName(values,divObj,addr){
	//获取td内容数组
	//拆分数组
	var idArray = values.split("#");
	
	//使用ajax发送数据
	$.ajax({
		type:"POST",
		url:addr,
		data:JSON.stringify(idArray),
		dataType:"json",
		contentType:"application/json",
		success:function(data){
			//获取名字列表
			//alert(data[0]);
			var str ="";
			for(var i=0; i<data.length; i++){
				str +=data[i]+" ";
			}
			$(divObj).html(str);
		}
			
	});
}

