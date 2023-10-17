package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
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
	public List<FreeBoardVO> getList(Criteria cri) {
		log.info("get List with criteria : " + cri);
		return fMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count : 전체 데이터 수를 구해줍니다.");
		return fMapper.getTotalCount(cri);
	}

}
