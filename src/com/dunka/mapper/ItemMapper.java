package com.dunka.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;

public interface ItemMapper {

	//��ѯ������Ϸ��Ŀ
	List<ItemInfo> selectAll();

	//	����Vo������Ŀ
	List<ItemInfo> selectItemByVo(ItemInfoVo vo);

	//�����Ϸ
	void save(ItemInfo itemInfo);

	//根据ID返回ItemInfo对象
	ItemInfo selectItemInfoById(String id);
	//更新游戏信息
	void update(ItemInfo itemInfo);

	//逻辑删除
	void deleteByLogic(@Param("id")String id, @Param("enable")Boolean enable);

}
