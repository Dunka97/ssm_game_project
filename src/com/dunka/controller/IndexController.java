package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dunka.bean.ItemInfo;
import com.dunka.service.ItemService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("")
	public String list(Model model) {
		List<ItemInfo> itemList = itemService.selectItemByVo(null);
		model.addAttribute("itemList", itemList);
		return "index";
	}
	
	@RequestMapping("/sort")
	@ResponseBody
	public List<ItemInfo> sort(String name, Integer num){
		System.out.println(name+num);
		List<ItemInfo> itemList =  itemService.selectItemSortByFlag(name,num);
		System.out.println(itemList);
		return itemList;
	}
	
}
