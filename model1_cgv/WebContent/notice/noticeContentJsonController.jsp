<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model1_cgv.vo.CgvNoticeVO"  %>
<%@ page import="com.model1_cgv.dao.CgvNoticeDAO"  %>
<%@ page import="com.google.gson.*"  %>
<%
	String nid=request.getParameter("nid");

	CgvNoticeDAO dao = new CgvNoticeDAO();
	CgvNoticeVO vo = dao.select(nid);
	
	Gson gson = new Gson();
	JsonObject jobject = new JsonObject();
	jobject.addProperty("nid", vo.getNid());
	jobject.addProperty("ntitle", vo.getNtitle());
	jobject.addProperty("ncontent", vo.getNcontent());
	jobject.addProperty("nhits", vo.getNhits());
	jobject.addProperty("ndate", vo.getNdate());
	

	out.write(gson.toJson(jobject));
%>