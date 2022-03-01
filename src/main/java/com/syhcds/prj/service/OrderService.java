package com.syhcds.prj.service;

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.RequestBody;

import com.syhcds.prj.dto.OrderDTO;

public interface OrderService {
	public void inserOrder(OrderDTO orderDTO, @RequestBody int popcornPoint) throws DataAccessException;

}
