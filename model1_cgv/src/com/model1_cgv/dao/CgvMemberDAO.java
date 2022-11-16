package com.model1_cgv.dao;

import com.model1_cgv.vo.CgvMemberVO;

public class CgvMemberDAO extends DBConn{
	/**
	 * insert : ȸ������ 
	 */
	public int insert(CgvMemberVO vo) {
		int result = 0;
		String sql = "insert into cgv_member "
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getZonecode());
			pstmt.setString(7, vo.getAddr1());
			pstmt.setString(8, vo.getAddr2());
			pstmt.setString(9, vo.getHp());
			pstmt.setString(10, vo.getPnumber());
			pstmt.setString(11, vo.getHobbylist());
			pstmt.setString(12, vo.getIntro());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
