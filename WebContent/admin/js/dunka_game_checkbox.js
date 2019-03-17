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
yukon_datepicker = {
    p_forms_extended: function (name) {
        $.isFunction($.fn.datepicker) && ($.fn.datepicker.DPGlobal.template = $.fn.datepicker.DPGlobal.template.replace(/\&laquo;/g, '<i class="arrow_carrot-left"></i>').replace(/\&raquo;/g, '<i class="arrow_carrot-right"></i>'));
        $("#dp_basic").length && $("#dp_basic").datepicker({
            autoclose: !0
        });
        $("#dp_component"+name).length && $("#dp_component"+name).datepicker({
            autoclose: !0
        });
        $("#dp_range").length && $("#dp_range").datepicker({
            autoclose: !0
        });
        $("#dp_inline").length && $("#dp_inline").datepicker()
    }
};



