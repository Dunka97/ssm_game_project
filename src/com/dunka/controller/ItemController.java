package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dunka.bean.ItemInfo;
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
	public String select(Model model) {
//		查询所有游戏项目
	    List<ItemInfo> itemList = itemService.selectAll();
	    System.out.println(itemList);
	    model.addAttribute("itemList", itemList);
	    
	    return "admin/item_list";
		
	}
	
	//根据词典id查询对应的dict_tag_name
	@RequestMapping("/AdminTags")
	@ResponseBody
	public List<String> tagNames(@RequestBody List<String> idList){
		return dictService.selectTagNames(idList);
	}
}
