package com.syhcds.prj.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.CateDTO;
import com.syhcds.prj.dto.StoreDTO;

public interface StoreDAO {
	
	public List<StoreDTO> StoreList() throws DataAccessException;
	public void Storeinsert(StoreDTO storedto) throws DataAccessException;;
	public List<StoreDTO> selectListStore();
	public List<CateDTO> selectListCate();

}
