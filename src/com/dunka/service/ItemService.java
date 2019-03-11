package com.dunka.service;

import java.util.List;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.bean.SysDict;

public interface ItemService {

	//查询所有游戏项目
	List<ItemInfo> selectAll();
//	根据Vo返回项目
	List<ItemInfo> selectItemByVo(ItemInfoVo vo);
	

}
