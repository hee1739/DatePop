package com.syhcds.prj.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.syhcds.prj.dto.PopcornDTO;

public interface PopcornDAO {
	public List<PopcornDTO> selectPopcorn(Long userIdx) throws DataAccessException;
	public void insertPopcorn(PopcornDTO popcornDTO) throws DataAccessException;
	public PopcornDTO selectPopcornOne(Long userIdx) throws DataAccessException;
}
