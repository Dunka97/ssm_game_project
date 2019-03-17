package com.dunka.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dunka.bean.ItemInfo;
import com.dunka.bean.ItemInfoVo;
import com.dunka.bean.SysDict;
import com.dunka.service.DictService;
import com.dunka.service.ItemService;
import com.dunka.util.GameUtil;

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
	@Value("${dict.flag}")
	private String flag;
	
	@RequestMapping("")
	public String select(Model model,ItemInfoVo vo) {
//		��ѯ������Ϸ��Ŀ
//	    List<ItemInfo> itemList = itemService.selectAll();
//		����Vo������Ŀ
		List<ItemInfo> itemList = itemService.selectItemByVo(vo);
		
		System.out.println("Item_name:"+vo.getItem_name());
		
		//��̬���ر�ǩ��ƽ̨
		List<SysDict> tagIdsList = dictService.selectDictByTagList(tagName);
		List<SysDict> platformList = dictService.selectDictByTagList(plantformName);
		List<SysDict> flagList = dictService.selectDictByTagList(flag);
		
	    System.out.println(itemList);
//	    System.out.println(tagIdsList);
//	    System.out.println(platformList);
	    
	    model.addAttribute("itemInfoVo", vo);
	    model.addAttribute("itemList", itemList);
	    model.addAttribute("tagidsList", tagIdsList);
	    model.addAttribute("platformList", platformList);
	    model.addAttribute("flagList", flagList);
	    
	    return "admin/item_list";
		
	}
	
	//���ݴʵ�id��ѯ��Ӧ��dict_tag_name
	@RequestMapping("/AdminTags")
	@ResponseBody
	public List<String> tagNames(@RequestBody List<String> idList){
		return dictService.selectTagNames(idList);
	}
	
	//添加游戏
	@RequestMapping("/save")
	@ResponseBody
	public String save(ItemInfo itemInfo,MultipartFile image) throws ParseException, IllegalStateException, IOException {
		System.out.println(itemInfo);
		
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
		itemService.save(itemInfo);
		
		return "OK";
	}
	//打开修改编辑窗口并回显数据
	@RequestMapping("/edit")
	@ResponseBody
	public ItemInfo save(String id) {
		ItemInfo itemInfo =  itemService.selectItemInfoById(id);
		System.out.println(itemInfo);
		return itemInfo;
	}
	
	//修改游戏
	@RequestMapping("/update")
	@ResponseBody
	public String update(ItemInfo itemInfo,MultipartFile image) throws Exception {
		System.out.println(itemInfo);
		
		//处理日期格式转换
		String date = itemInfo.getItem_release_date();
		String newDate = GameUtil.dateCovert(date);
		itemInfo.setItem_release_date(newDate);
		
		if(image!=null && !image.getOriginalFilename().equals("")) {
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
		}
	
		itemService.update(itemInfo);
		
		return "OK";
	}
	//逻辑删除 下架游戏
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(String id,Boolean enable) {
		itemService.deleteByLogic(id,enable);
		return "OK";
	}
	
	
}
