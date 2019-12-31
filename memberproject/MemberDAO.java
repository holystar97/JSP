package com.javatea.member_project2.dao;

import com.javatea.member_project2.domain.MemberVO;

public interface MemberDAO {

	
	/**
	 * 회원정보생성 
	 * 
	 * @param member 회원정보 객체
	 * @return 저장 성공여부
	 * @throws Exception 예외처리
	 * 
	 * */
	
	boolean insertMember(MemberVO member) throws Exception;
	
	
	/**
	 * 개별 회원정보 조회
	 * 
	 * @param memberId 회원 아이디
	 * @return 회원정보 객체
	 * @throws Exception 예외처리
	 * */
	
	
	MemberVO getMember(String memberId) throws Exception;
	
	
	
	
	
	
}
