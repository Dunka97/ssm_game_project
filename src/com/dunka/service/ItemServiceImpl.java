package com.dunka.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.mapper.ItemMapper;
import com.mysql.fabric.xmlrpc.base.Array;

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

	@Override
	public List<ItemInfo> selectItemByVo(ItemInfoVo vo) {
		//最初没有经过标签和平台选择的
		List<ItemInfo> queryList = itemMapper.selectItemByVo(vo);
		if(vo == null)
		return queryList;
		//判断标签和平台字符串是否为空
		if(vo.getItem_tagids()!=null && vo.getItem_tagids()!=""||
				vo.getItem_platform()!=null &&vo.getItem_platform()!="") {
			//将满足条件的结果放入过滤的列表中并返回
			List<ItemInfo> filterList = new ArrayList<ItemInfo>();
			
			//获取查询条件的id 数组
			String[] voTagids = vo.getItem_tagids().split("#");
			String[] voPlatform = vo.getItem_platform().split("#");
			
			//遍历查询未筛选的列表
			for (ItemInfo itemInfo : queryList) {
				//如果这个标志位遍历完 证明满足所列举的所有条件 加入filterList
				boolean isContain = true;
				if(!vo.getItem_tagids().equals("")) {
					String[] itemInfoTagids = itemInfo.getItem_tagids().split("#");
					List<String> itemInfoTagList = Arrays.asList(itemInfoTagids);
					for (String voTag : voTagids) {
						//判断是否包含此标签
						isContain = itemInfoTagList.contains(voTag);
						if(!isContain) break;
					}
				}
				//处理平台
				if(!vo.getItem_platform().equals("") && isContain) {
					String[] itemInfoTagids = itemInfo.getItem_platform().split("#");
					List<String> itemInfoTagList = Arrays.asList(itemInfoTagids);
					for (String voTag : voPlatform) {
						//判断是否包含此标签
						isContain = itemInfoTagList.contains(voTag);
						if(!isContain) break;
					}
				}
				if(isContain) filterList.add(itemInfo);
			}
			
			return filterList;
		}else {
			return queryList;
		}
	}

}
