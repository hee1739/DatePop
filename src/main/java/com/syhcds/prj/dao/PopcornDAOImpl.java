package com.syhcds.prj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.syhcds.prj.dto.PopcornDTO;
import com.syhcds.prj.dto.UserDTO;

@Repository("popcornDAO")
public class PopcornDAOImpl implements PopcornDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PopcornDTO> selectPopcorn(Long userIdx) throws DataAccessException{
		
		List<PopcornDTO> popcornlist = sqlSession.selectList("mapper.popcorn.selectPopcorn", userIdx);
		return popcornlist;
	}
	
	public void insertPopcorn(PopcornDTO popcronDTO) throws DataAccessException{
		
		sqlSession.insert("mapper.popcorn.insertPopcorn", popcronDTO);
		
	}
	
	public PopcornDTO selectPopcornOne(Long userIdx) throws DataAccessException{
		
		PopcornDTO result = sqlSession.selectOne("mapper.popcorn.selectPopcornOne", userIdx);				
		return result;
	}
}
