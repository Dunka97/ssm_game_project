//<span class="top_tag"> 魔法</span>
function gameTagNameView(values,divObj,addr,type){
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
                if(type=="tagids")
                str +='<span class="top_tag">'+data[i]+'</span>';
                else if(type=="platform")
                str +='<span class="platform_img '+data[i]+'"></span>';
			}
			$(divObj).prepend(str);
		}
			
	});
}