<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<iframe src="http://localhost:9000/model1_cgv/header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="content">
	<h1>게시판-상세보기</h1>
	<table class="boardContent">	
		<tr>				
			<th>등록일자</th>
			<td>22-11-17</td>
			<th>조회수</th>
			<td>156</td>
		</tr>		
		<tr>				
			<th>제목</th>
			<td colspan="3">영화게시판 이용안내</td>
		</tr>
		<tr>				
			<th>내용</th>
			<td colspan="3">
			영화 게시판에 등록된 글에 대한 안내 사항입니다.

			1) 영화 게시판에 올라온 글 가운데 좋은 글은 선별하여 배트 테이스트 메인 페이지에 등록합니다.
			2) 메인 페이지에 등록된 글은 “편집자”란 이름으로 등록되며, 본문 최상단에 작성자 아이디를 노출합니다.
			3) 메인 페이지에 글을 등록 시 내용은 수정하지 않겠지만, 명백한 오타와 같은 것들은 수정할 수 있습니다. 또한 내용에 어울리는 이미지를 추가 첨부할 수 있습니다. 이점 양해 바랍니다.
			4) 만약 자신의 글이 메인 페이지에 노출된 것이 싫다면 관리자에게 쪽지를 보내 주시기 바랍니다. 삭제 요청 쪽지를 확인하는 즉시 게시물을 삭제하도록 하겠습니다.
			<br><br><br><br></td>
		</tr>
		<tr>
			<td colspan="4">
				<a href="board_update.jsp"><button type="button" class="btn_style">수정하기</button></a>
				<a href="board_delete.jsp"><button type="button" class="btn_style">삭제하기</button></a>
				<a href="board_list.jsp">
					<button type="button" class="btn_style">리스트</button>
				</a>
			</td>
		</tr>			
	</table>	
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>