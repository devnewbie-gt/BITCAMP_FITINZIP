<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 클래스</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="../resources/mypage/css/mypage.css" rel="stylesheet"></link>
<link href="../resources/mypage/css/cls.css" rel="stylesheet"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script type="text/javascript">
	$(function(){
		var startIndex = 1;	//인덱스 초기값
		var searchStep = 3; //3개씩 로딩 
		
		//페이지 로딩시 첫 실행
		heartView(startIndex);
		
		//더보기 버튼 클릭시
		$('#searchMoreNotify').click(function(){
			startIndex += searchStep;
			heartView(startIndex);
		})
		
		
		function heartView(index){
			let _endIndex = index+searchStep-1;
			$.ajax("/clsHeartData",{
				type: "get",
				dataType : "json",
				data : {startIndex:index, endIndex:_endIndex},
				success : function(returnValue){
					var dispHtml1 = '';
					var clsCode1 = '';
					
					console.log("count : " + returnValue[0].count);
					
					var btn = new Array(returnValue.length);
					console.log(btn);
					for(var i=0; i<btn.length; i++){
						btn[i] = "btn"+i;
						console.log(btn[i]);
						dispHtml1 = text(returnValue[i], btn[i]);
					}
					$('#content').append(dispHtml1);
					
					if( _endIndex > returnValue.length || returnValue[0].count < 4){
						$('#searchMoreNotify').remove();
					}
					
					var dispHtml = '';
					
					function text(value, btn){
						var starthour = new Date(value.startTime).getHours() +"";
						var startminute = new Date(value.startTime).getMinutes()+"";
						
						var endhour = new Date(value.endTime).getHours()+"";
						var endminute = new Date(value.endTime).getMinutes()+"";
						
						if(starthour.length == 1){
							starthour = "0"+starthour;
						}
						
						if(startminute.length == 1){
							startminute = "0"+startminute;
						}
						
						if(endhour.length == 1){
							endhour = "0"+endhour;
						}
						
						if(endminute.length == 1){
							endminute = "0"+endminute;
						}
						
						dispHtml += '<tr><td class="type_diff"><div class="list_img">';
						dispHtml += '<img src="';
						dispHtml +=  value.thumbnailFileName;
						dispHtml += '" alt="클래스썸네일" onerror="this.src=\'../resources/mypage/imgs/error.PNG\'">';
						dispHtml += '</div> <a href="/play/play_apply/293" target="_blank">';
						dispHtml += '<div class="list_txt full"><dl class="prod_infor"><dt>';
						dispHtml += '<div class="play_tch"><span>';
						dispHtml += value.commonName + " · " + value.name;
						dispHtml += '</span></div>';
						dispHtml +=  value.clsName;
						dispHtml += '</dt><dd class="mt5"><div>';
						dispHtml += new Date(value.startDate).getFullYear() + "년 " + (new Date(value.startDate).getMonth() + 1) + "월 " + new Date(value.startDate).getDate()+ "일";
						dispHtml += "~";
						dispHtml += new Date(value.endDate).getFullYear() + "년 " + (new Date(value.endDate).getMonth() + 1) + "월 " + new Date(value.endDate).getDate()+ "일";
						dispHtml += '</div>';
						dispHtml += value.yoil + "요일  ";
						dispHtml += starthour + ":" + startminute;
						dispHtml += "~";
						dispHtml += endhour + ":" + endminute;
						dispHtml += '</dd></dl></div></a></td><td class="black"><a style="cursor: pointer" id="';
						dispHtml += btn;
						dispHtml +='" onclick="noHeart('+'\'';
						dispHtml += value.clsCode;
						dispHtml += '\'';
						dispHtml += ')"><span class="awsome" style="color:#FF0066">';
						dispHtml += '<i class="fas fa-heart fa-2x"></i></span></a></td></tr>';
						
						
						return dispHtml;
					}
				},
				error : function(){
					alert("실패!");
				}
				
			})
		}
		
	})
</script>
<script type="text/javascript">
	function noHeart(clsCode1){
		alert("해당 클래스 찜하기를 취소합니다.");
		$.ajax("/noHeart",{
			type: "get",
			dataType: "json",
			data : {clsCode : clsCode1},
			success : function(returnValue){
				location.href="/clsHeart";
			},
			error : function () {
				alert("실패");
			}
		})
		
	}
</script>
</head>
<body>
	<!-- Navigation -->
    <jsp:include page="../nav.jsp"></jsp:include>
    
    <!-- Content  -->
    <div style="min-height: 858px; margin: 0 auto; width: 1200px">
    	<!-- 마이페이지 메뉴  -->
		<jsp:include page="mypageMenu.jsp"></jsp:include>
		
		<!-- 찜하기 내역 -->
		<jsp:include page="clstwo.jsp"></jsp:include>
	</div>
	
	<!-- Footer -->
    <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>