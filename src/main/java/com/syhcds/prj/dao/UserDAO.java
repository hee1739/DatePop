package com.syhcds.prj.dao;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UserDTO;

public interface UserDAO {
	
	public List<UserDTO> selectAllMember() throws DataAccessException;
	public void insertMember(UserDTO userdto); 
	public boolean loginCheck(UserDTO userdto);
	public UserDTO viewUser(UserDTO userdto);
	public void logout(HttpSession session);
	public List<StoreDTO> selectPopShopList();
}
