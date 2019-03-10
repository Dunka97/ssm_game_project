package com.dunka.service;

import java.util.List;

import com.dunka.mapper.DictMapper;

public class DictServiceImpl implements DictService {

	private DictMapper dictMapper;
	@Override
	public List<String> selectTagNames(List<String> idList) {
		// TODO Auto-generated method stub
		return dictMapper.selectTagNames(idList);
	}

}
