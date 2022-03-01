package com.syhcds.prj.dao;

import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.OrderDTO;

public interface OrderDAO {

	public void inserOrder(OrderDTO orderDTO) throws DataAccessException;;
}
