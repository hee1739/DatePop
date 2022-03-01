package com.syhcds.prj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import com.syhcds.prj.dto.CateDTO;
import com.syhcds.prj.dto.StoreDTO;

@Component("storeDAO")
public class StoreDAOImpl implements StoreDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<StoreDTO> StoreList() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void Storeinsert(StoreDTO storedto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<StoreDTO> selectListStore() {
		List<StoreDTO> storeDTO = sqlSession.selectList("mapper.store.selectAll");
		return storeDTO;
	}

	@Override
	public List<CateDTO> selectListCate() {
		
		return sqlSession.selectList("mapper.store.selectListCate");
	}

}
