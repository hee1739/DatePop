package com.syhcds.prj.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

import com.syhcds.prj.dto.OrderDTO;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public void inserOrder(OrderDTO orderDTO) throws DataAccessException{
		sqlSession.insert("mapper.order.insertOrder", orderDTO);
	}
}
