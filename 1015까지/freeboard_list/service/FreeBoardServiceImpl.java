package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.FreeBoardVO;
import org.zerock.mapper.FreeBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class FreeBoardServiceImpl implements FreeBoardService{
	
	private FreeBoardMapper fMapper;

	@Override
	public List<FreeBoardVO> getList() {
		log.info("getList....목록 정보를 보여줍니다.");

		return fMapper.getList();
	}



}
