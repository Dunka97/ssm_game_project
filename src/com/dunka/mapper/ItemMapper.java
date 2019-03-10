package com.dunka.mapper;

import java.util.List;

import com.dunka.bean.ItemInfo;

public interface ItemMapper {

	//查询所有游戏项目
	List<ItemInfo> selectAll();

}
