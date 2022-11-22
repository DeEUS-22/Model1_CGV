<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model1_cgv.vo.CgvNoticeVO"  %>
<%@ page import="com.model1_cgv.dao.CgvNoticeDAO"  %>
<%@ page import="java.util.ArrayList"  %>
<%@ page import="com.google.gson.*"  %>
<%
	String rpage = request.getParameter("rpage");	

	//DB에서 공지사항 전체 리스트 가져오기
	CgvNoticeDAO dao = new CgvNoticeDAO();

	ArrayList<CgvNoticeVO> list = dao.select();
		
	//gson 라이브러리를 이용하여 자바 list 객체를 JSON 객체로 변환
	JsonObject jobject = new JsonObject(); //CgvNoticeVO
	JsonArray jarray = new JsonArray();  //ArrayList
	Gson gson = new Gson();
	
	for(CgvNoticeVO vo : list){
		JsonObject jo = new JsonObject();
		jo.addProperty("rno", vo.getRno());
		jo.addProperty("nid", vo.getNid());
		jo.addProperty("ntitle", vo.getNtitle());
		jo.addProperty("ndate", vo.getNdate());
		jo.addProperty("nhits", vo.getNhits());
		
		jarray.add(jo);
	}
	
	jobject.add("list", jarray); 
	out.write(gson.toJson(jobject));
%>