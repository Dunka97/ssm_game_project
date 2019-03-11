package com.dunka.mapper;

import java.util.List;

import com.dunka.bean.SysDict;

public interface DictMapper {

	//根据词典id查询对应的dict_tag_name
	List<String> selectTagNames(List<String> idList);

	//根据词典id返回对应的标签或者平台
	List<SysDict> selectDictByTagList(String idList);

}
