package com.javatea.member_project2.service;

import java.util.List;

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
	
	/**
	 * 개별 회원정보 조회
	 * @param memberId 회원 아이디
	 * @return 회원정보객체
	 * @throws Exception 예외처리
	 * 
	 * */
	
	
	MemberVO getMember(String memberId) throws Exception;
	
	/**
	 * 전체 회원정보 조회
	 * @return 전체 회원 정보 (리스트 형태)
	 * @throws Exception
	 *
	 * */
	
	List<MemberVO> getAllMembers() throws Exception;
	
	
}
