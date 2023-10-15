package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

public interface FreeBoardService {
	
	public FreeBoardVO get(Long bno);
	
	public boolean modify(FreeBoardVO freeboard);
	
	// Page299 : 페이징 처리가 적용되는 getList() 메서드 선언
	public List<FreeBoardVO> getList(Criteria cri);
	
	// Page323 : 전체 데이터스를 구해주는 getTotal() 메서드 선언
	public int getTotal(Criteria cri);
	
}


