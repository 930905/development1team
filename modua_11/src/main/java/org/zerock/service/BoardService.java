package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {

	
	public BoardVO get(Long bno);
	
	public List<BoardVO> getList();
	
	// Page299 : 페이징 처리가 적용되는 getList() 메서드 선언
	public List<BoardVO> getList(Criteria cri);
	
	// Page323 : 전체 데이터스를 구해주는 getTotal() 메서드 선언
	public int getTotal(Criteria cri);
	
}


