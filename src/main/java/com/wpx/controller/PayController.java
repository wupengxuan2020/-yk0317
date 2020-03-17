package com.wpx.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.wpx.domain.Pay;
import com.wpx.service.PayService;

@Controller
public class PayController {
	
	@Resource 
	private PayService payService;
	
	@RequestMapping("selects")
	public String selects(Model model,Pay pay,@RequestParam(defaultValue="1") Integer page,@RequestParam(defaultValue="3") Integer pageSize){
		
		PageInfo<Pay> info = payService.selects(page, pageSize, pay);
		model.addAttribute("info", info);
		return "selects";
		
	}
	/**
	 * 
	 * @Title: add 
	 * @Description: 添加
	 * @param file
	 * @param pay
	 * @return
	 * @return: boolean
	 */
	@ResponseBody
	@PostMapping("add")
	public boolean add(MultipartFile file, Pay pay){
		
		if (null!=file && !file.isEmpty()) {
			
			String path="d:/pic/";
			
			String filename=file.getOriginalFilename();
			String newFilename=UUID.randomUUID()+filename.substring(filename.lastIndexOf("."));
			File f = new File(path,newFilename);
			
			try {
				file.transferTo(f);
				pay.setFktp(newFilename);
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
				
				
				
				return payService.insert(pay) >0;//增加文章
		
		
		
	}
	
	/**
	 * 
	 * @Title: update 
	 * @Description: 修改
	 * @param file
	 * @param pay
	 * @return
	 * @return: boolean
	 */
	@ResponseBody
	@PostMapping("update")
	public boolean update(MultipartFile file, Pay pay,Integer id){
		
		if (null!=file && !file.isEmpty()) {
			
			String path="d:/pic/";
			
			String filename=file.getOriginalFilename();
			String newFilename=UUID.randomUUID()+filename.substring(filename.lastIndexOf("."));
			File f = new File(path,newFilename);
			
			try {
				file.transferTo(f);
				pay.setFktp(newFilename);
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
				
				
				
				return payService.update(id) >0;//增加文章
		
		
		
	}

	
}
