package com.dunka.service;

import java.util.List;

import com.dunka.bean.ItemInfo;

public interface ItemService {

	//查询所有游戏项目
	List<ItemInfo> selectAll();

}
