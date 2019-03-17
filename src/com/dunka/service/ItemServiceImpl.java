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
 * @Time   2019��3��10��
 * @Todo	��ϷServiceʵ����
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
		//���û�о�����ǩ��ƽ̨ѡ���
		List<ItemInfo> queryList = itemMapper.selectItemByVo(vo);
		if(vo == null)
		return queryList;
		//�жϱ�ǩ��ƽ̨�ַ����Ƿ�Ϊ��
		if(vo.getItem_tagids()!=null && vo.getItem_tagids()!=""||
				vo.getItem_platform()!=null &&vo.getItem_platform()!="") {
			//�����������Ľ��������˵��б��в�����
			List<ItemInfo> filterList = new ArrayList<ItemInfo>();
			
			//��ȡ��ѯ������id ����
			String[] voTagids = vo.getItem_tagids().split("#");
			String[] voPlatform = vo.getItem_platform().split("#");
			
			//������ѯδɸѡ���б�
			for (ItemInfo itemInfo : queryList) {
				//��������־λ������ ֤���������оٵ��������� ����filterList
				boolean isContain = true;
				if(!vo.getItem_tagids().equals("")) {
					String[] itemInfoTagids = itemInfo.getItem_tagids().split("#");
					List<String> itemInfoTagList = Arrays.asList(itemInfoTagids);
					for (String voTag : voTagids) {
						//�ж��Ƿ�����˱�ǩ
						isContain = itemInfoTagList.contains(voTag);
						if(!isContain) break;
					}
				}
				//����ƽ̨
				if(!vo.getItem_platform().equals("") && isContain) {
					String[] itemInfoPlatform = itemInfo.getItem_platform().split("#");
					List<String> itemInfoPlatformList = Arrays.asList(itemInfoPlatform);
					for (String voTag : voPlatform) {
						//�ж��Ƿ�����˱�ǩ
						isContain = itemInfoPlatformList.contains(voTag);
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

	@Override
	public void save(ItemInfo itemInfo) {
		itemMapper.save(itemInfo);
	}

	@Override
	public ItemInfo selectItemInfoById(String id) {
		return itemMapper.selectItemInfoById(id);
	}

	@Override
	public void update(ItemInfo itemInfo) {
		itemMapper.update(itemInfo);
	}
    
}
