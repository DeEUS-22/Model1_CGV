<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String login_result = request.getParameter("login");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
<script>
	let login_result = '<%= login_result%>';
	if(login_result == 'ok'){
		alert("로그인에 성공하셨습니다.");
	}
</script>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<iframe src="header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="content">
		<section>
			<h1>무비차트 | 상영예정작</h1>
			<div class="s1_article">
				<article>
					<img src="http://localhost:9000/model1_cgv/images/BlackPanther.jpg">
					<div>블랙팬서-와칸다 포··</div>
					<div>84%  | 예매율 33.2%</div>
				</article>
				<article>
					<img src="http://localhost:9000/model1_cgv/images/Ditto.jpg">
					<div>동감</div>
					<div>99%  | 예매율 18.5%</div>
				</article>
				<article>
					<img src="http://localhost:9000/model1_cgv/images/Decibel.jpg">
					<div>데시벨</div>
					<div>99%  | 예매율 16.3%</div>
				</article>
				<article>
					<img src="http://localhost:9000/model1_cgv/images/Owl.jpg">
					<div>올빼미</div>
					<div>99%  | 예매율 8.8%</div>
				</article>
				<article>
					<img src="http://localhost:9000/model1_cgv/images/The_fall.jpg">
					<div>폴-600미터</div>
					<div>99%  | 예매율 5.7%</div>
				</article>
			</div>
		</section>
		
		<section>
			<h1>특별관</h1>
			<div class="s2_article">
				<div>
					<img src="http://localhost:9000/model1_cgv/images/suit.png">
				</div>
				<ul>
					<li>
						<span>SUITE CINEMA</span>
						<span>#호텔 컨셉의 프리미엄관</span>	
					</li>
					<li>
						<span>CINE & LIVINGROOM</span>
						<span>#신개념 소셜 상영관</span>	
					</li>
					<li>
						<span>4DX</span>
						<span>#모션시트 #오감체험</span>	
					</li>
					<li>
						<span>CINE de CHEF</span>
						<span>#쉐프가 있는 영화관</span>	
					</li>
				</ul>
			</div>
		</section>
		
		<section>
			<ul>
				<li>
					<h3>영화관람권</h3>
					<button type="button" class="btn_style2">더보기</button>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/cgv_movie.jpg">
					<div>
						<label>CGV 영화관람권</label>
						<label>12,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/cgv_gold.jpg">
					<div>
						<label>CGV 골드클래스</label>
						<label>40,000원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/cgv_4DX.jpg">
					<div>
						<label>4DX관람권</label>
						<label>19,000원</label>
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<h3>기프트카드</h3>
					<button type="button" class="btn_style2">더보기</button>
				</li>
				<li >
					<img src="http://localhost:9000/model1_cgv/images/paconnie_a.jpg">
					<div>
						<label>PACONNIE A형</label>
						<label>금액충전형</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/paconnie_b.jpg">
					<div>
						<label>PACONNIE B형</label>
						<label>금액충전형</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/paconnie_c.jpg">
					<div>
						<label>PACONNIE C형</label>
						<label>금액충전형</label>
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<h3>음료</h3>
					<button type="button" class="btn_style2">더보기</button>
				</li>
				<li >
					<img src="http://localhost:9000/model1_cgv/images/coke.jpg">
					<div>
						<label>탄산음료(M)</label>
						<label>2,500원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/Americano.jpg">
					<div>
						<label>아메리카노(HOT)</label>
						<label>3,500원</label>
					</div>
				</li>
				<li>
					<img src="http://localhost:9000/model1_cgv/images/IcedAmericano.jpg">
					<div>
						<label>아메리카노(ICE)</label>
						<label>4,000원</label>
					</div>
				</li>
			</ul>
		</section>		
	</div>

<!-------------------->
<!-- footer Include -->
<!-------------------->
<iframe src="footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>

</body>
</html>