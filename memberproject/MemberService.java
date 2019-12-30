package com.javatea.member_project2.service;

import com.javatea.member_project2.domain.MemberVO;

public interface MemberService {

	
	/**
	 * 회원가입
	 * @param member 회원정보
	 * 
	 * */
	
	boolean insertMember(MemberVO member) throws Exception;
	
	// 오버라이드 조건 : 추상 함수도 같이 예외 throw를 맞추어주어야한다 
	// connection을 조정한다 
	
	
	
	
	
}
