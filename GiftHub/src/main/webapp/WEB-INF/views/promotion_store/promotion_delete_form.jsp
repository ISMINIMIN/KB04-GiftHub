<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>커뮤니티</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<style>
/* 목록이동 버튼 스타일 */
.list-button {
    background-color: #ffc107; /* 배경색을 노란색으로 설정 */
    color: white; /* 텍스트 색상을 하얀색으로 설정 */
    padding: 10px 190px; /* 내부 여백 설정 (상하 10px, 좌우 20px) */
    border: none; /* 테두리 없음 */
    border-radius: 5px; /* 버튼 모서리를 둥글게 만듭니다. */
    cursor: pointer; /* 커서 모양을 포인터로 변경하여 클릭 가능한 버튼임을 나타냅니다. */
}
</style>
<body>
    <c:import url="../top.jsp" />

	<div class="container-xxl py-5 bg-primary hero-header">
		<div class="container my-5 py-5 px-lg-5">
			<div class="row g-5 py-5">
				<div class="col-12 text-center">
					<h1 class="text-white animated slideInDown">커뮤니티</h1>
				</div>
			</div>
		</div>
	</div>
    
<script>
	$(function(){
		$('#imageInput').change(function(){
			var file = this.files[0];
			var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
		    if (!file.type.match(reg)) {
		        alert("확장자는 이미지 확장자만 가능합니다.");
		        return;
		    }
			document.querySelector('#image_container').innerHTML="";
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("style", "width:50%;height:auto;");
				img.setAttribute("class","rectangular");
				document.querySelector('#image_container').appendChild(img);
			};
			reader.readAsDataURL(this.files[0]);
		})
	})
</script>
	
        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <p class="section-title text-secondary justify-content-center"><span></span>커뮤니티<span></span></p>
                    <h4 class="text-center mb-5" style="color: #6C6969">삭제하시겠습니까?</h4>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                     		<form action="/promotion_store/promotion_delete" method="get">
                     		<input type="hidden" name="promotionNo" value="${param.promotionNo }">
                            <table class="text-center table" style="border: 1px solid #CFCBCB; border-collapse: collapse;">
                            <colgroup>
									<col style="width:20%; border-right: 1px solid #CFCBCB;background-color:#F4F2F2;">
									<col style="width:*">
							</colgroup>
            					<tr>
                					<th>게시물 번호</th>
                					<td>${param.promotionNo}</td>
            					</tr>
            					<tr>
                					<th>게시물 종류</th>
                					<td>${param.promotionType}</td>
            					</tr>
            					<tr>
                					<th>게시물 제목</th>
                					<td>${param.promotionTitle}</td>
            					</tr>
            					<tr>
                					<th>게시물 내용</th>
                					<td>${param.promotionContent}</td>
            					</tr>
            					<tr>
                					<th>게시물 이미지</th>
                					<td>
                					<img src="/resources/promotion_img/${param.promotionImage}" width="300" height="200">
                					</td>
            					</tr>
						    </table>
						
						    <!-- Moved the submit button inside the form -->
						    <div class="col-12 text-center" >
							    <button class="btn btn-primary " type="submit">삭제하기</button>
        						<a class="btn btn-primary" href="/promotion_store/promotion_list">삭제 취소</a>
        					</div>
        					</form>
        					
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
        

         <!-- Footer Start -->
        <c:import url="../footer.jsp" />


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
   

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/lib/wow/wow.min.js"></script>
    <script src="/lib/easing/easing.min.js"></script>
    <script src="/lib/waypoints/waypoints.min.js"></script>
    <script src="/lib/counterup/counterup.min.js"></script>
    <script src="/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="/js/main.js"></script>
</body>

</html>