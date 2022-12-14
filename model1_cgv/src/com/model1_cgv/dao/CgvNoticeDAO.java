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
	
	/**
	 * select : 공지사항 상세보기
	 */
	public CgvNoticeVO select(String nid) {
		CgvNoticeVO vo = new CgvNoticeVO();
		String sql = "select nid,ntitle,ncontent,nhits,ndate "
				+ " from cgv_notice where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setNid(rs.getString(1));
				vo.setNtitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNhits(rs.getInt(4));
				vo.setNdate(rs.getString(5));
			}
			
			//close();  //조회수 처리시 커넥션 종료를 막기위해 주석처리함!!!			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * updateHits : 조회수 업데이트 
	 */
	public void updateHits(String nid) {
		String sql = "update cgv_notice set nhits=nhits+1 "
				+ " where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * update : 공지사항 업데이트 
	 */
	public int update(CgvNoticeVO vo) {
		int result = 0;
		String sql = "update cgv_notice set ntitle=?,ncontent=? "
				+ " where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNid());
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	/**
	 * delete : 공지사항 삭제 
	 */
	public int delete(String nid) {
		int result = 0;
		String sql = "delete from cgv_notice where nid=?";
						
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);		
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
}
