package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
 * @Time   2019年3月10日
 * @Todo   后台游戏管理相关Controller
 */
@Controller
@RequestMapping("/admin/items")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private DictService dictService;
	
	@RequestMapping("")
	public String select(Model model,ItemInfoVo vo) {
//		查询所有游戏项目
//	    List<ItemInfo> itemList = itemService.selectAll();
//		根据Vo返回项目
		List<ItemInfo> itemList = itemService.selectItemByVo(vo);
		
		//动态加载标签和平台
		List<SysDict> tagIdsList = dictService.selectDictByTagList("01");
		List<SysDict> platformList = dictService.selectDictByTagList("02");
		
	    System.out.println(itemList);
	    System.out.println(tagIdsList.get(0));
	    System.out.println(platformList.get(0));
	    
	    model.addAttribute("itemInfoVo", vo);
	    model.addAttribute("itemList", itemList);
	    model.addAttribute("tagIdsList", tagIdsList);
	    model.addAttribute("platformList", platformList);
	    
	    return "admin/item_list";
		
	}
	
	//根据词典id查询对应的dict_tag_name
	@RequestMapping("/AdminTags")
	@ResponseBody
	public List<String> tagNames(@RequestBody List<String> idList){
		return dictService.selectTagNames(idList);
	}
}
