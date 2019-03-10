package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dunka.bean.ItemInfo;
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
	
	@RequestMapping("")
	public String select(Model model) {
//		��ѯ������Ϸ��Ŀ
	    List<ItemInfo> itemList = itemService.selectAll();
	    System.out.println(itemList);
	    model.addAttribute("itemList", itemList);
	    
	    return "admin/item_list";
		
	}
}
