package com.javateam.jsp.test;

import com.javateam.jsp.vo.MemberDTO;

public class DTOTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MemberDTO dto=new MemberDTO();
		dto.setId("jsp123456");
		dto.setPw("12345678");
		dto.setName("김옥돌");
		dto.setGender("여");
		dto.setAddress("더조은");
		//멤버 필드 개별 확인
		//System.out.println("id: "+ dto.getId());

		//멤버 필드들 전체(일괄) 확인
//		System.out.println(dto.toString());
//		System.out.println(dto);
		
		
		MemberDTO dto2 = new MemberDTO("jsp123456","12345678","김옥돌","여","더조은");
		
		System.out.println(dto2);
		
		//두 객체 멤버 필드들의 내용을 비교
		
		//1) hashcode
		//System.out.println(dto.hashCode());
		//System.out.println(dto2.hashCode());
		//2) equals
		System.out.println(dto.equals(dto2));
	}

}
