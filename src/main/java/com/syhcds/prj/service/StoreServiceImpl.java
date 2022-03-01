package com.syhcds.prj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.syhcds.prj.dao.StoreDAO;
import com.syhcds.prj.dto.CateDTO;
import com.syhcds.prj.dto.StoreDTO;

@Service("storeService")
public class StoreServiceImpl implements StoreService{
	
	@Autowired
	private StoreDAO storeDAO;

	@Override
	public int addNewStore(Map prodMap) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<StoreDTO> listStore() throws DataAccessException {
		List<StoreDTO> storeList = storeDAO.selectListStore();
		return storeList;
	}

	@Override
	public List<CateDTO> listCate() throws DataAccessException {
		
		return storeDAO.selectListCate();
	}

}
