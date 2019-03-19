package com.dunka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
