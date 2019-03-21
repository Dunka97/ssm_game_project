package com.dunka.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.mapper.ItemMapper;
import com.dunka.util.GameUtil;
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
		if(vo == null) {
			List<ItemInfo> queryListView = new ArrayList<ItemInfo>();
			for (ItemInfo itemInfo : queryList) {
				if(itemInfo.getIs_enable()!=null && itemInfo.getIs_enable()==true )
				queryListView.add(itemInfo);
			}
			return queryListView;
		}
		
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
	public void save(ItemInfo itemInfo,MultipartFile image) throws Exception {
		ItemInfo setItemInfo = setItemInfo(itemInfo, image);
		itemMapper.save(setItemInfo);
	}

	@Override
	public ItemInfo selectItemInfoById(String id) {
		return itemMapper.selectItemInfoById(id);
	}

	@Override
	public void update(ItemInfo itemInfo) {
		itemMapper.update(itemInfo);
	}

	@Override
	public void deleteByLogic(String id, Boolean enable) {
		itemMapper.deleteByLogic(id,enable);
	}

	@Override
	public List<ItemInfo> selectItemSortByFlag(String name, Integer num) {
		return itemMapper.selectItemSortByFlag(name,num);
	}
    
	//新增游戏、更新游戏的方法
		private ItemInfo setItemInfo(ItemInfo itemInfo,MultipartFile image) throws Exception {
			//处理日期格式转换
					String date = itemInfo.getItem_release_date();
					String newDate = GameUtil.dateCovert(date);
					itemInfo.setItem_release_date(newDate);
					
					//处理图片文件上传到服务器段
					//图片名
					String name = System.currentTimeMillis()+" ";
					//后缀 jpg png
					String extName = FilenameUtils.getExtension(image.getOriginalFilename());
					//保存文件路径
					String path = "E:\\GitRepositories\\ssm_game_project\\uploadImg\\";
					//文件名
					String filename = name + "." +extName;
					image.transferTo(new File(path + filename));
					//保存图片文件
					itemInfo.setItem_cap_image(filename);
					
					//处理标志位不能为空
					if(itemInfo.getIs_hot()==null)  
						itemInfo.setIs_hot(false);
					if(itemInfo.getIs_hot_sale()==null)  
						itemInfo.setIs_hot_sale(false);
					if(itemInfo.getIs_free()==null)  
						itemInfo.setIs_free(false);
					if(itemInfo.getIs_specials()==null) 
						itemInfo.setIs_specials(false);
					if(itemInfo.getIs_upcoming()==null)  
						itemInfo.setIs_upcoming(false);
					if(itemInfo.getIs_new()==null)  
						itemInfo.setIs_new(false);
					if(itemInfo.getIs_enable()==null) 
						itemInfo.setIs_enable(false);
					
					return itemInfo;
		}
}
