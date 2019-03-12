package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.bean.SysDict;
import com.dunka.service.DictService;
import com.dunka.service.ItemService;

/**
 * 
 * @author Dunka
 * @Time   2019��3��10��
 * @Todo   ��̨��Ϸ�������Controller
 */
@Controller
@RequestMapping("/admin/items")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private DictService dictService;
	
	@Value("${dict.tagids}")
	private String tagName;
	@Value("${dict.platform}")
	private String plantformName;
	
	@RequestMapping("")
	public String select(Model model,ItemInfoVo vo) {
//		��ѯ������Ϸ��Ŀ
//	    List<ItemInfo> itemList = itemService.selectAll();
//		����Vo������Ŀ
		List<ItemInfo> itemList = itemService.selectItemByVo(vo);
		
		//��̬���ر�ǩ��ƽ̨
		List<SysDict> tagIdsList = dictService.selectDictByTagList(tagName);
		List<SysDict> platformList = dictService.selectDictByTagList(plantformName);
		
	    System.out.println(itemList);
//	    System.out.println(tagIdsList);
//	    System.out.println(platformList);
	    
	    model.addAttribute("itemInfoVo", vo);
	    model.addAttribute("itemList", itemList);
	    model.addAttribute("tagidsList", tagIdsList);
	    model.addAttribute("platformList", platformList);
	    
	    return "admin/item_list";
		
	}
	
	//���ݴʵ�id��ѯ��Ӧ��dict_tag_name
	@RequestMapping("/AdminTags")
	@ResponseBody
	public List<String> tagNames(@RequestBody List<String> idList){
		return dictService.selectTagNames(idList);
	}
}
