//回显   标志位
function setFlagEcho(name,value){
	var flag = $("input[name="+name+"]");
	$(flag).val(value);
	$(flag).prop("checked",value);
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




