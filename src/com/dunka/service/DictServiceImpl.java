package com.dunka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dunka.bean.SysDict;
import com.dunka.mapper.DictMapper;

@Service
public class DictServiceImpl implements DictService {

	@Autowired
	private DictMapper dictMapper;
	@Override
	public List<String> selectTagNames(List<String> idList) {
		// TODO Auto-generated method stub
		return dictMapper.selectTagNames(idList);
	}
	@Override
	public List<SysDict> selectDictByTagList(String idList) {
		// TODO Auto-generated method stub
		return dictMapper.selectDictByTagList(idList);
	}

	
}
