package com.syhcds.prj.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UserDTO;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UserDTO> selectAllMember() throws DataAccessException {
		List<UserDTO> membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		System.out.println(membersList.toString());
		return membersList;
	}
	
	@Override
	public void insertMember(UserDTO userdto) throws DataAccessException{
		sqlSession.insert("mapper.member.insertMeber", userdto);
	}
	
	@Override
	public boolean loginCheck(UserDTO userdto) {
		System.out.println(userdto);
		String name = sqlSession.selectOne("mapper.member.loginCheck", userdto);
		return (name == null) ? false : true;
	}
	
	@Override
	public UserDTO viewUser(UserDTO userdto){
		return sqlSession.selectOne("mapper.member.viewUser", userdto);
	}
	
	@Override
	public void logout(HttpSession session){
	}

	@Override
	public List<StoreDTO> selectPopShopList() {
		return sqlSession.selectList("mapper.store.selectAll");
	}
}
