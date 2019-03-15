package com.dunka.mapper;

import java.util.List;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;

public interface ItemMapper {

	//查询所有游戏项目
	List<ItemInfo> selectAll();

	//	根据Vo返回项目
	List<ItemInfo> selectItemByVo(ItemInfoVo vo);

	//添加游戏
	void save(ItemInfo itemInfo);

}
