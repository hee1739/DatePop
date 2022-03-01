package com.syhcds.prj.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.CateDTO;
import com.syhcds.prj.dto.StoreDTO;

public interface StoreService {

	public int addNewStore(Map prodMap);
	public List<StoreDTO> listStore() throws DataAccessException;
	public List<CateDTO> listCate()throws DataAccessException;

}
