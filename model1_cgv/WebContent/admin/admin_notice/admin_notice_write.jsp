<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 공지사항 작성하기</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
<script src="http://localhost:9000/model1_cgv/js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#btnNoticeWrite").click(()=>{
		
		if($("#ntitle").val() == ""){
			alert("제목을 입력해주세요");
			$("#ntitle").focus();
			return false;
		}else{
			//서버전송
			boardWriteForm.submit();
		}
	});
});
</script>
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
		<h1>관리자 페이지 - 공지사항 작성하기</h1>
		<form name="boardWriteForm" action="adminNoticeWriteController.jsp" method="post">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent"></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list.jsp"><button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mycgv/admin/admin.jsp"><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-------------------->
	<!-- footer Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>