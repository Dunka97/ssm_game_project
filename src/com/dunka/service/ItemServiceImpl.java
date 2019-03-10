package com.dunka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dunka.bean.ItemInfo;
import com.dunka.mapper.ItemMapper;

/**
 * 
 * @author Dunka
 * @Time   2019年3月10日
 * @Todo	游戏Service实现类
 */
@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	@Override
	public List<ItemInfo> selectAll() {
		return itemMapper.selectAll();
	}

}
