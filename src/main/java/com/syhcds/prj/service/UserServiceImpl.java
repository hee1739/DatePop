package com.syhcds.prj.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.syhcds.prj.dao.UserDAO;
import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UserDTO;

@Service("userService")
@Transactional(propagation = Propagation.REQUIRED)
public class UserServiceImpl implements UserService{
	
	
	
	@Autowired
	private UserDAO userDAO;

	
	@Override
	public List<UserDTO> listmembers() throws DataAccessException {
		List<UserDTO> membersList = userDAO.selectAllMember();
		System.out.println(membersList.toString());
		return membersList;
	}
	
	@Override
	public void insertmembers(UserDTO userdto) throws DataAccessException {
		userDAO.insertMember(userdto);
		System.out.println(userdto.toString());
	   		
	}
	
	@Override
	public boolean logincheck(UserDTO userdto, HttpSession session) {
		boolean result = userDAO.loginCheck(userdto);
		System.out.println(result);
		
		if(result) {
			UserDTO userdto2 = viewUser(userdto);
			System.out.println(userdto2);
			session.setAttribute("userId", userdto2.getUserId());	
			session.setAttribute("userName", userdto2.getUserName());
		}
		return result;
	}
	
	@Override
	public UserDTO viewUser(UserDTO userdto) {
		return userDAO.viewUser(userdto);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public List<StoreDTO> listPopShop() throws DataAccessException {
		List<StoreDTO> list = userDAO.selectPopShopList();
		return list;
	}

	
}
