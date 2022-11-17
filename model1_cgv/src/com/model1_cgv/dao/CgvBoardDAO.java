package com.model1_cgv.dao;

import java.util.ArrayList;

import com.model1_cgv.vo.CgvBoardVO;

public class CgvBoardDAO extends DBConn{
	/**
	 * insert : �Խñ� ���
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
	}//insert()-end
	
	/**
	 * select : �Խñ� ��ü ����Ʈ
	 */
	public ArrayList<CgvBoardVO> select(){
		ArrayList<CgvBoardVO> list = new ArrayList<CgvBoardVO>();
		String sql = "select rownum rno, bid, btitle, bhits, to_char(bdate, 'yyyy-mm-dd') bdate " + 
			" from (select bid, btitle, bhits, bdate from cgv_board " + 
			"            order by bdate desc)"; 
		
		try {
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvBoardVO vo = new CgvBoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBhits(rs.getInt(4));
				vo.setBdate(rs.getString(5));
				
				list.add(vo);
			}
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}//select()-end
	
}//CgvBoardDAO-END
