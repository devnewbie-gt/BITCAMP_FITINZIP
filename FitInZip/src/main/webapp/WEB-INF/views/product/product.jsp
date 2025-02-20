<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FITINZIP | 용품</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../resources/product/css/product.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>

<script>
	$(function(){
		$(".addcart-btn").on("click", function(){
			//alert("장바구니 담기 ajax 실행");
			
			if (${empty sessionScope.member.getId()} ) {
				alert("로그인 후 이용가능합니다.");
				location.href="/loginMain";
				return;
			} 
			
			let formData = new FormData(this.form);
			let options = {
					method: "POST",
					body : new URLSearchParams(formData)
			}
			
			fetch("/insertCart", options) 
				.then(async function (response) {
					let result = await response.json();
					alert("장바구니에 추가되었습니다.");
				})
				.catch(err => {
					//alert("오류 발생: " + err);
					var cart = confirm("이미 들어있는 상품입니다. 장바구니로 이동하시겠습니까?");
					 if(cart) {
						 location.href="/cart";
					 } else {
						 location.href="/product";
					 } 
					
				}); 
			
		})
	})
	

	
</script>
</head>
<body>
	<!-- navbar -->
	<jsp:include page="../nav.jsp"></jsp:include>

	<div class="product-list">
	<p class="product-title">홈트용품</p>
		<div class="container" style="max-width: 1600px;">
			<div class="row row-cols-3" >
			
				<c:forEach var="productList" items="${productList }">
					<div class="col product-col" >
						<button class="product-img-btn" >
							<img id="modalBtn" style="width: 380px; height: 450px;" src="${productList.proImg }">
						</button>
					
			  	<form action="/insertCart" class="product-form" method="post"> 
						<p class="product-name">${productList.proName }</p>
						<p class="product-price">${productList.proPrice }원</p>
						
						<c:if test="${productList.proPrice ne '2400' }">
							<p class="product-info-ne2400">${productList.proInfo }</p>
						</c:if>
						
						<c:if test="${productList.proPrice eq '2400' }">
							<p class="product-info-eq2400">
								다양한 중량선택 가능<br>튼튼한 쇠파이프 내장<br>강력한 웨이트 트레이닝 가능
							</p>
						</c:if>
							<c:if test="${productList.proName eq '덤벨 1kg~10kg'}">
								<!-- 
								<select class="dumbbell-option" id="dumbbell">
									<option value="none">[필수]옵션을 선택하세요</option>
									<option value="1kg">1kg</option>
									<option value="2kg">2kg(+2,400원)</option>
									<option value="3kg">3kg(+4,800원)</option>
									<option value="4kg">4kg(+7,200원)</option>
									<option value="5kg">5kg(+9,600원)</option>
									<option value="6kg">6kg(+12,000원)</option>
									<option value="7kg">7kg(+14,400원)</option>
									<option value="8kg">8kg(+16,800원)</option>
									<option value="9kg">9kg(+19,200원)</option>
									<option value="10kg">10kg(+21,600원)</option>
								</select>
								
								<div class="addcart-btn-div dumbbell-cart-btn">
									<button class="addcart-btn" type="button">장바구니 담기</button>
								</div>
								-->
								<div class="addcart-btn-div foreach-cart-btn">
									<button class="addcart-btn" type="button">장바구니 담기</button>
								</div>
							</c:if>
						
							<c:if test="${productList.proName eq '워크아웃 밴드'}">
								<!--
								<select class="rubberband-option" id="rubberband">
									<option class="option-default-text" value="none">[필수]옵션을 선택하세요</option>
									<option value="레드 ">레드 - 1.3cm &nbsp; MAX: 20KG</option>
									<option value="블랙 ">블랙 - 2.1cm &nbsp; MAX: 39KG</option>
									<option value="퍼플 ">퍼플 - 3.2cm &nbsp; MAX: 45KG</option>
									<option value="그린 ">그린 - 4.5cm &nbsp; MAX: 75KG</option>
									<option value="블루 ">블루 - 6.4cm &nbsp; MAX: 100KG</option>
								</select>
								
								<div class="addcart-btn-div rubberband-cart-btn">
									<button class="addcart-btn" type="button">장바구니 담기</button>
								</div>
								-->
								<div class="addcart-btn-div foreach-cart-btn">
									<button class="addcart-btn" type="button">장바구니 담기</button>
								</div>
							</c:if>
							
							<c:if test="${productList.proName ne '덤벨 1kg~10kg' && productList.proName ne '워크아웃 밴드' }">
								<div class="addcart-btn-div foreach-cart-btn">
									<button class="addcart-btn" type="button">장바구니 담기</button>
								</div>
							</c:if>
						
					<input type="hidden" name="proNum" value="${productList.proNum}">
				</form>	 
					</div>	
					<!-- memId 보내야 mapper에 들어감 
					<input type="hidden" name="memId" value="${'세션에 저장된 아이디 불러오기'}">
					-->
				</c:forEach>
			</div>
			
		</div>
	</div>


	<!-- Footer -->
  	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>


















