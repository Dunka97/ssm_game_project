package com.dunka.bean;


/**
 * 
 * @author Dunka
 * @Time   2019年3月10日
 * @Todo	游戏系统词典对象
 */
public class SysDict {
	//词典内信息id
    private String dict_id;
    //类型id
    private String dict_type_id;
    //类型名称
    private String dict_type_name;
    //字段名称
    private String dict_field_name;
    //具体名称
    private String dict_item_name;
    //是否启用
    private Boolean is_enable;
    
	public String getDict_id() {
		return dict_id;
	}
	public void setDict_id(String dict_id) {
		this.dict_id = dict_id;
	}
	public String getDict_type_id() {
		return dict_type_id;
	}
	public void setDict_type_id(String dict_type_id) {
		this.dict_type_id = dict_type_id;
	}
	public String getDict_type_name() {
		return dict_type_name;
	}
	public void setDict_type_name(String dict_type_name) {
		this.dict_type_name = dict_type_name;
	}
	public String getDict_field_name() {
		return dict_field_name;
	}
	public void setDict_field_name(String dict_field_name) {
		this.dict_field_name = dict_field_name;
	}
	public String getDict_item_name() {
		return dict_item_name;
	}
	public void setDict_item_name(String dict_item_name) {
		this.dict_item_name = dict_item_name;
	}
	public Boolean getIs_enable() {
		return is_enable;
	}
	public void setIs_enable(Boolean is_enable) {
		this.is_enable = is_enable;
	}
}