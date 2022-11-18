package com.model1_cgv.dao;

import java.util.ArrayList;

import com.model1_cgv.vo.CgvNoticeVO;

public class CgvNoticeDAO extends DBConn{
	/**
	 * insert : 공지사항 등록
	 */
	public int insert(CgvNoticeVO vo) {
		int result = 0;
		String sql = "insert into cgv_notice "
				+ " values('n_'||sequ_cgv_notice.nextval,?,?,'','',0,sysdate)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			
			result = pstmt.executeUpdate();
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * select : 전체 공지사항 리스트
	 */
	public ArrayList<CgvNoticeVO> select(){
		ArrayList<CgvNoticeVO> list = new ArrayList<CgvNoticeVO>();
		String sql = "select rownum rno, nid, ntitle, nhits,to_char(ndate,'yyyy-mm-dd') ndate " + 
				" from (select nid, ntitle, nhits,ndate from cgv_notice " + 
				"            order by ndate desc)";
		
		try {
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvNoticeVO vo = new CgvNoticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNhits(rs.getInt(4));
				vo.setNdate(rs.getString(5));
				
				list.add(vo);
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
