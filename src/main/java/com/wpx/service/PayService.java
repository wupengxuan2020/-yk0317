package com.wpx.service;

import com.github.pagehelper.PageInfo;
import com.wpx.domain.Pay;

public interface PayService {


	PageInfo<Pay> selects(Integer page, Integer pageSize, Pay pay);

	int insert(Pay pay);

	int update(Integer id);

}
