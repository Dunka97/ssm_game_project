package com.dunka.service;

import java.util.List;

public interface DictService {

	//���ݴʵ�id��ѯ��Ӧ��dict_tag_name
	List<String> selectTagNames(List<String> idList);

}
