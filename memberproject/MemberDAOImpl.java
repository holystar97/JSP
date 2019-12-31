package com.javatea.member_project2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.javatea.member_project2.domain.MemberVO;
import com.javateam.member_project2.util.DbUtil;

public final class MemberDAOImpl implements MemberDAO { // 이거슨 상속 금지 ! 
	//싱글턴 (독신자 ) -> 보안 (캡슐화.은닉의 개념) -> 데이터 베이스는 중요하니까 은닉 필수/ spring 에서도 auto wireling 
	//MemberDAO dao=MemberDAOImpl.getInstance(); -> public static 내장함수 -> new 연산자 안쓰고 바로 쓸 수 있는것 
	private static MemberDAOImpl instance = null;
	
	private MemberDAOImpl() {} // 이 안에서만 쓸수 있도록 한다 
								// 상속을 안되게 할려면 final 로둔다. 상속이 되면 데이터가 유출이 될 수도 있기 때문에 , 오버라이드를 금지시킬 수도 있다 
	public static final MemberDAOImpl getInstance() {
		if(instance == null) {
			// 생성이 안되었다고 한다면 
			instance =new MemberDAOImpl();
		}
		return instance;
	}
	// 이와 같은 식으로 객체를 생성한다 -> new 대신에 ㅎㅎ (상속 금지 , 오버라이드 금지시키면서)  (private을 사용하는 것이 특징) 상속도 거의 안받고 캡슐화를 유지 

	@Override
	public boolean insertMember(MemberVO member) { //throws Exception {
		// TODO Auto-generated method stub
		//결과값 
		boolean flag=false;
		// SQL 구문 
		String sql ="INSERT INTO member_tbl VALUES "
				+ "(?,?,?,?,?,?,?,?,?)";
		// DB 연결 객체 생성 
		Connection con= DbUtil.connect(); // static 영역이여서 객체 생성없이 바로 들어갈 수 있다 
		// SQL 처리 객체 
		
		// Interface statement : 명령문  구문 > callablestatememt Procedure language sql PL sql을 사용할 떄는 stored procedures 
		//preparedstatement의 상속 whildcard를 쓸수있는 장점 ? 을쓸 수있는 장점 , 인자를 후처리 할 수있다는 장점 
		// con.preparedstatement 에서 whildcard 사용 
		// statemenet- preparedstatement- callavlestatement 
		PreparedStatement pstmt= null;
		// try catch를 쓸 때 초기화 안했다고 에러가 나기 때문에 초기화하는게 좋다 
		try {
			//sql 구문 예비 처리 (준비)
			pstmt=con.prepareStatement(sql);
			//sql 인자 처리 
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPassword());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberGender()+ "");
			pstmt.setString(5, member.getMemberEmail());
			pstmt.setString(6, member.getMemberPhone());
			pstmt.setString(7, member.getMemberZip());
			pstmt.setString(8, member.getMemberAddress());
			pstmt.setDate(9, member.getMemberBirth());
			// sql 실행 
			if(pstmt.executeUpdate()==1) {
				System.out.println("회원정보 저장에 성공하였습니다.");
				flag=true;
			} else {
				System.out.println("회원정보 저장에 실패하였습니다.");
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("insertMember SE: ");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("insertMember E:");
			e.printStackTrace();
		}finally {
			// 자원 반납해주는 부분이 필요하다 
			DbUtil.close(con, pstmt, null);
			// insert는 집어넣기 만 하는애여서 결과셋 이 필요가 없다 
			
		}
			
		return flag;

	}
	@Override
	public MemberVO getMember(String memberId) {//throws Exception {
		// TODO Auto-generated method stub
		// 결과값 -> return null 은 결과 값을 처리 안해주고 넘어가는거이고 null pointer exception이 날 확률이 줄어듬 - 데이터가 없다는 문제 
		MemberVO member=new MemberVO();
		// SQL
		String sql="SELECT * FROM member_tbl "
//				+"WHERE memberId='"+memberId+"'"
				+"WHERE ID=?";
		
		// DB 연결 객체 생성 
		Connection con= DbUtil.connect();
		
		//SQL 처리 객체
		
		PreparedStatement pstmt=null;
		
		//SQL 결과셋 객체
		
		ResultSet rs= null;
		
		try {
			//sql 구문 예비 처리 (준비)
			pstmt=con.prepareStatement(sql);
			//SQL 인자 처리 
			pstmt.setString(1, memberId);
			//SQL 실행 을 함과 동시에 결과 셋이 엇어지는것입니다.
			// insert update deltet는 update로 하고 
			// 나머지는 execute로 한다 
			rs=pstmt.executeQuery();
			
			// 결과셋 -> vo 
			if (rs.next()) {
//				member.setMemberId(rs.getString(1));
				member.setMemberId(rs.getString("ID"));
				member.setMemberPassword(rs.getString("PW"));
				member.setMemberName(rs.getString("NAME"));
				member.setMemberGender(rs.getString("GENDER").charAt(0));
				member.setMemberEmail(rs.getString("EMAIL"));
				member.setMemberPhone(rs.getString("PHONE"));
				member.setMemberZip(rs.getString("ZIP1"));
				member.setMemberAddress(rs.getString("ADDRESS1"));
				member.setMemberBirth(rs.getDate("BIRTHDAY"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("getMemeber SE:");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("getMember E: ");
			e.printStackTrace();
		}finally {
			//자원 반납 
			DbUtil.close(con, pstmt, rs);
		}
		
		
		return member;
		
		
	}

}
