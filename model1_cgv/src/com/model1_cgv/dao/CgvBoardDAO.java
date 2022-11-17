package com.model1_cgv.dao;

import com.model1_cgv.vo.CgvBoardVO;

public class CgvBoardDAO extends DBConn{
	/**
	 * insert : 게시글 등록
	 */
	public int insert(CgvBoardVO vo) {
		int result = 0;
		String sql = "insert into cgv_board "
				+ " values('b_'||sequ_cgv_board.nextval, ?, ?, '', '', 0, sysdate)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}//insert-end
}
