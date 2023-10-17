package org.zerock.domain;

import lombok.Data;

@Data
public class MemberVO {
	// 멤버 아이디 필드 선언
	public String memberid;
	// 멤버 이름 필드 선언
	public String name;
	// 멤버 이메일 필드 선언
	public String email;
	// 멤버 비밀번호 필드 선언
	public String password;
}
