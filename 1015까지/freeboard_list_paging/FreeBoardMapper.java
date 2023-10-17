package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

@Mapper
public interface FreeBoardMapper {

//	SELECT * from tbl_board WHERE bno > 0;
//	@Select("SELECT * from tbl_board WHERE bno > 0") // 마이바티스 애노테이션 활용 DB정보 SELECT 구문
	public List<FreeBoardVO> getList();
	
	// insert만 처리되고 생성된 PK 값을 알 필요가 없는 경우에 활용하는 insert() 추상 메서드 선언
	public void insert(FreeBoardVO freeBoard);
	
	// 페이징 처리를 위한 Criteria
	public List<FreeBoardVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);
}
