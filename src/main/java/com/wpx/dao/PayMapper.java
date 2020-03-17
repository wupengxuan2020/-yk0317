package com.wpx.dao;

import java.util.List;

import com.wpx.domain.Pay;

public interface PayMapper {
	
	List<Pay> selects(Pay pay);

	int inser(Pay pay);

	int update(Integer id);
	
}
