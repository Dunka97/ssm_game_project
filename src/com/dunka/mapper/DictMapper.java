package com.dunka.mapper;

import java.util.List;

public interface DictMapper {

	//���ݴʵ�id��ѯ��Ӧ��dict_tag_name
	List<String> selectTagNames(List<String> idList);

}
