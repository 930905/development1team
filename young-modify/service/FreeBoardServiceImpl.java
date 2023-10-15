package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;
import org.zerock.mapper.FreeBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service  // 계층 구조상 주로 비즈니스 영역을 담당하는 객체임을 표시하기 위해 사용함.
@AllArgsConstructor
public class FreeBoardServiceImpl implements FreeBoardService {


		// @Setter(onMethod_ = @Autowired)
		// Spring 4.3 이상에서는 단일 파라미터를 받는 생성자의 경우 자동 처리
		// (파라미터를 자동으로 주입할 수 있음. 즉, 위에 @Setter 구문 안써도 됨)
		private FreeBoardMapper freemapper;

		// 특정 글 상세조회 작업의 기능 구현
		@Override
		public FreeBoardVO get(Long bno) {
			log.info("get... 특정 글 내용을 조회 합니다!" + bno);
			return freemapper.read(bno);
		}

		@Override
		public boolean modify(FreeBoardVO board) {
			log.info("modify... 게시글을 수정 처리 합니다!" + board);
			// 정상적으로 수정이 이루어지면 1이라는 값이 반환되기 때문에
			// '==' 연산자를 이용해서 true/false를 처리할 수 있습니다.
			return freemapper.update(board) == 1;
		}

		// Page299 : 페이징 매개변수가 적용된 getList() 메서드 선언
		@Override
		public List<FreeBoardVO> getList(Criteria cri) {
			log.info("get List with criteria : " + cri);
			return freemapper.getListWithPaging(cri);
		}

		// 전체 데이터수를 구해주는 getTotal() 메서드 선언
		@Override
		public int getTotal(Criteria cri) {
			log.info("get total count : 전체 데이터 수를 구해줍니다!");
			return freemapper.getTotalCount(cri);
		}
}


