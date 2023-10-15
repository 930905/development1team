package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

public interface FreeBoardService {
	
	public List<FreeBoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
}
