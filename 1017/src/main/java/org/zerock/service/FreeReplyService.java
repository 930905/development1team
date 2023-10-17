package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.FreeReplyPageDTO;
import org.zerock.domain.FreeReplyVO;

public interface FreeReplyService {

//	public int register(FreeReplyVO vo);
	
	public FreeReplyVO get(Long rno);
	
	public int modify(FreeReplyVO vo);
	
	public int remove(Long rno);
	
	public List<FreeReplyVO> getList(Criteria cri, Long bno);
	
	public FreeReplyPageDTO getListPage(Criteria cri, Long bno);
}
