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
	

}
