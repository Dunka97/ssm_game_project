package com.dunka.service;

import java.util.List;

public interface DictService {

	//根据词典id查询对应的dict_tag_name
	List<String> selectTagNames(List<String> idList);

}
