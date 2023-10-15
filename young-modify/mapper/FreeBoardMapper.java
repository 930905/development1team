package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

public interface FreeBoardMapper {

//	SELECT * from tbl_board WHERE bno > 0;
//	@Select("SELECT * from tbl_board WHERE bno > 0") // 마이바티스 애노테이션 활용 DB정보 SELECT 구문
	public List<FreeBoardVO> getList();
	
	// Page294 : Criteria 타입을 파라미터로 사용하는 getListWithPaging() 메서드를 선언해 줍니다.
	public List<FreeBoardVO> getListWithPaging(Criteria cri);
	
	// read(select) 처리를 위한 read() 추상 메서드 정의
	public FreeBoardVO read(Long bno);
	
	public int update(FreeBoardVO freeboard);
	
	// 전체 데이터의 개수를 반환해주는 getTotalCount() 메서드 정의
	public int getTotalCount(Criteria cri);
	

	public void updateReplyCnt(@Param("bno")Long bno, @Param("amount") int amount);
	
}
