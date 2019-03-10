package com.dunka.mapper;

import java.util.List;

public interface DictMapper {

	//根据词典id查询对应的dict_tag_name
	List<String> selectTagNames(List<String> idList);

}
