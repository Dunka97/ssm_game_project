function setFlagEcho(name,value){
	var flag = $("input[name="+name+"]");
	$(flag).val(value);
	$(flag).prop("checked",value);
}

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


//拼接checkbox中的多选后的id,用#号分割
function joinTagids(name,divObj){
	console.log(name);
	console.log(divObj);
	//拼接标签id
	//console.log()
	$("input[name="+name+"]").click(function(){
		//创建一个数组
		var arr=[];
		$("input[name="+name+"]").each(function(){
			//拼接id字符串
			if(this.checked){
				arr.push(this.value);
				//console.log(arr);
			}else{
				var index = arr.indexOf(this.value);
				if(index!=-1){
					arr[index] ="";
				}
			}
		});
		//遍历完成1，2，3 1#2#3
		$(divObj).val(arr.join("#"));
	});
}
//处理checkbox状态回
function setTagidsAndPlatformEcho(allData, itemData){
	var allDataIds = allData;
	var itemIds = itemData.split("#");
	//遍历，如果值一样，设置选中状态
	for (var i = 0; i < allDataIds.length; i++) {
		for (var j = 0; j < itemIds.length; j++) {
			if(allDataIds[i].value == itemIds[j]){
				allDataIds[i].checked = true;
				break;
			}
		}
	}
}




