package com.dunka.mapper;

import java.util.List;

import com.dunka.bean.SysDict;

public interface DictMapper {

	//���ݴʵ�id��ѯ��Ӧ��dict_tag_name
	List<String> selectTagNames(List<String> idList);

	//���ݴʵ�id���ض�Ӧ�ı�ǩ����ƽ̨
	List<SysDict> selectDictByTagList(String idList);

}
