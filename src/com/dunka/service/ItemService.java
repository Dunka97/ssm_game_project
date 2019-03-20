package com.dunka.service;

import java.util.List;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.bean.SysDict;

public interface ItemService {

	//��ѯ������Ϸ��Ŀ
	List<ItemInfo> selectAll();
//	����Vo������Ŀ
	List<ItemInfo> selectItemByVo(ItemInfoVo vo);
//�����Ϸ
	void save(ItemInfo itemInfo);
	
	//根据ID 返回ItemInfo
	ItemInfo selectItemInfoById(String id);
	//更新游戏信息
	void update(ItemInfo itemInfo);
	//逻辑删除
	void deleteByLogic(String id, Boolean enable);
	//对标志位排序
	List<ItemInfo> selectItemSortByFlag(String name, Integer num);

	

}
