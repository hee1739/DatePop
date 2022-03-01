package com.syhcds.prj.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UserDTO;

public interface UserService {
	
	public List<UserDTO> listmembers() throws DataAccessException;
	public void insertmembers(UserDTO userdto) throws DataAccessException;
	public boolean logincheck(UserDTO userdto, HttpSession session);
	public UserDTO viewUser(UserDTO userdto);
	public void logout(HttpSession session);
	public List<StoreDTO> listPopShop()throws DataAccessException;
}
