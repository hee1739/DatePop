package com.syhcds.prj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.syhcds.prj.dao.OrderDAO;
import com.syhcds.prj.dao.PopcornDAO;
import com.syhcds.prj.dao.UserDAO;
import com.syhcds.prj.dto.OrderDTO;
import com.syhcds.prj.dto.PopcornDTO;

@Service("orderService")
@Transactional(propagation = Propagation.REQUIRED)
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO orderDAO;
	@Autowired
	private PopcornDAO popcornDAO;
	
	
	public void inserOrder(OrderDTO orderDTO, @RequestBody int popcornPoint) throws DataAccessException{
		
		orderDAO.inserOrder(orderDTO);
		Long userIdx = orderDTO.getUserIdx();
		
		PopcornDTO popcornExists =  popcornDAO.selectPopcornOne(userIdx);
		Long popcorntotal = popcornExists.getPopcornTotal();
		
		double to = Double.parseDouble(orderDTO.getTotalPrice());
		int resultto =  (int)Math.round(to*0.01); 
		
		if(popcornPoint == 0) {
			PopcornDTO popcornDTO = new PopcornDTO();
			
			popcornDTO.setUserIdx(userIdx);
			popcornDTO.setPopcornContents("상품 구매로 인한 팝콘 적립");
			popcornDTO.setPopcornFlag(0);
			popcornDTO.setPopcornPoint(resultto);
			popcornDTO.setPopcornTotal(popcorntotal + popcornPoint);
			
			popcornDAO.insertPopcorn(popcornDTO);
			
		
		}else {
			PopcornDTO popcornDTO = new PopcornDTO();
			
			popcornDTO.setUserIdx(userIdx);
			popcornDTO.setPopcornContents("상품 구매로 인한 팝콘 사용");
			popcornDTO.setPopcornFlag(0);
			popcornDTO.setPopcornPoint(popcornPoint*-1);
			popcornDTO.setPopcornTotal(popcorntotal - popcornPoint);
			
			popcornDAO.insertPopcorn(popcornDTO);
		}
	}
}
