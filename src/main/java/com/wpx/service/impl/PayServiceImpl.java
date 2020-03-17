package com.wpx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wpx.dao.PayMapper;
import com.wpx.domain.Pay;
import com.wpx.service.PayService;
@Service
public class PayServiceImpl implements PayService {
	
	@Resource 
	private PayMapper payMapper;

	@Override
	public PageInfo<Pay> selects(Integer page,Integer pageSize,Pay pay) {
		PageHelper.startPage(page, pageSize);
		List<Pay> list = payMapper.selects(pay);
		return new PageInfo<Pay>(list);
	}

	@Override
	public int insert(Pay pay) {
		// TODO Auto-generated method stub
		return payMapper.inser(pay);
	}

	@Override
	public int update(Integer id) {
		// TODO Auto-generated method stub
		return payMapper.update(id);
	}
	
	
}
