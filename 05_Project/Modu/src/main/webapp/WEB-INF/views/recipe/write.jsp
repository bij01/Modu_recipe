<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<!-- 공통 부분 END -->
<link href="/css/recipe-write.css" rel="stylesheet">
<script src="/js/recipe-write.js"></script>

<title>모두의 식탁 - 레시피 등록</title>

</head>
<body>
	<script type="text/javascript" language="javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<div id="page" class="hfeed site">
		<!-- start page wrapper -->

		<%@ include file="/WEB-INF/views/common/menu.jsp"%>

		<div class="head-title py-4 m-0">
			<div class="container">
				<p class="page-title m-0 fs-2">RECIPE</p>
			</div>
			<!-- end container -->
		</div>
		<!-- end head-title -->

		<div id="main" class="d-flex justify-content-center my-3">
			<div
				class="main-container row d-flex justify-content-center m-0 py-4">

				<div class="col-md-10 main-box px-0">
					<div class="pt-4 form-bg top-round"></div>
					<div class="p-4 p-title form-bg h3 mb-0 text-center">#레시피 등록</div>
					<div class="cooking-information form-bg p-4">
						<div class="row">
							<div class="main-photo col-4 pointer">
								<input type="file" class="hidden-input main"
									onchange="imgUpload(this)" />
								<div class="text-center ratio-100" onclick="fileUpButton(this)">
									<img class="w-100 rounded-3 food_photo"
										src="/imgs/no-image.jpg">
								</div>
							</div>
							<div class="main-intro col-8">
								<div class="cooking-title pb-3">
									<label for="food" class="form-label mb-1 form-title">음식이름</label> 
									<input class="form-control" type="text" name="food" placeholder="예) 닭볶음탕">
									
								</div>
								<div class="cooking-title pb-3">
									<label for="title" class="form-label mb-1 form-title">레시피제목</label> 
									<input class="form-control" type="text" name="title" placeholder="예) 닭볶음탕 황금 레시피">
									<p class="warning-text m-1">*10글자 이상 작성해주세요</p>
								</div>
							</div>
						</div>
					</div>
					<!-- end cooking-information 레시피정보 -->
					<div class="cooking-introduce form-bg px-4">
						<label for="info" class="form-label mb-1 form-title">레시피
							소개</label>
						<textarea class="form-control" id="info" name="info" rows=5 placeholder="레시피에 대한 소개글을 써주세요"></textarea>
						<p class="warning-text m-1">*20글자 이상 작성해주세요</p>
					</div>
					<!-- end cooking-introduce 레시피소개 -->
					<div class="category p-4 form-bg">
						<div class="form-content row align-items-center">
							<label class="form-label mb-1 pe-3 form-title">카테고리</label> <select
								class="form-select mx-2" name="sort" id="sort" text="종류별">
								<option selected>종류별</option>
								<option value="밑반찬">밑반찬</option>
								<option value="메인반찬">메인반찬</option>
								<option value="국/탕/찌개">국/탕/찌개</option>
								<option value="디저트">디저트</option>
								<option value="면/만두">면/만두</option>
								<option value="밥/죽/떡">밥/죽/떡</option>
								<option value="샐러드">샐러드</option>
								<option value="스프">스프</option>
								<option value="기타">기타</option>
							</select> <select class="form-select me-2" name="ingredient"
								id="ingredient" text="재료별">
								<option selected>재료별</option>
								<option value="소고기">소고기</option>
								<option value="돼지고기">돼지고기</option>
								<option value="닭고기">닭고기</option>
								<option value="양고기">양고기</option>
								<option value="오리고기">오리고기</option>
								<option value="채소류">채소류</option>
								<option value="해물류">해물류</option>
								<option value="기타">기타</option>
							</select>
						</div>
					</div>
					<!-- end category 카테고리 -->
					<div class="recipe-info form-bg p-4">
						<div class="d-flex row align-items-center">
							<label class="form-label mb-1 pe-3 form-title">요리정보</label> <select
								class="form-select mx-2" name="serving" id="serving">
								<option selected>인원</option>
								<option value="1인분">1인분</option>
								<option value="2인분">2인분</option>
								<option value="3인분">3인분</option>
								<option value="4인분">4인분</option>
								<option value="5인분">5인분</option>
								<option value="6인분이상">6인분이상</option>
							</select>
							<!--                            <label class="form-label ms-2 mb-0 p-1">시간</label>-->
							<select class="form-select me-2" name="cookTime" id="cooktime"
								text="요리시간">
								<option selected>요리시간</option>
								<option value="5분이내">5분이내</option>
								<option value="10분이내">10분이내</option>
								<option value="15분이내">15분이내</option>
								<option value="20분이내">20분이내</option>
								<option value="30분이내">30분이내</option>
								<option value="60분이내">60분이내</option>
								<option value="90분이내">90분이내</option>
								<option value="2시간이내">2시간이내</option>
								<option value="2시간이상">2시간이상</option>
							</select>
							<!--                            <label class="form-label ms-2 mb-0 p-1">난이도</label>-->
							<select class="form-select" name="difficultyLevel"
								id="difficultyLevel" text="난이도">
								<option value="난이도">난이도</option>
								<option value="아무나">아무나</option>
								<option value="초급">초급</option>
								<option value="중급">중급</option>
								<option value="고급">고급</option>
								<option value="신의경지">신의경지</option>
							</select>
						</div>
					</div>
					<!-- end recipe-info 요리정보 -->
					<div class="ingredient form-bg py-4 px-2">
						<div class="d-flex ingredient-cover">
							<div id="main-ingredient" class="col-md-6">
								<div class="row d-flex justify-content-center">
									<label class="form-label mb-1 px-3 form-title">메인재료</label>
									<div class="main-items px-4">
										<div class="row d-flex align-items-center mb-2 item"
											id="main-1">
											<input type="text" name="ingredient-main"
												class="ingredient-1 form-control input1" placeholder="예) 닭">
											<input type="text" name="quantity-main"
												class="quantity-1 form-control input2 mx-2"
												placeholder="예) 1마리">
											<button class="minus main-1" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
										<div class="row d-flex align-items-center mb-2 item"
											id="main-2">
											<input type="text" class="ingredient-2 form-control input1"
												placeholder="예) 감자"> <input type="text"
												class="quantity-2 form-control input2 mx-2"
												placeholder="예) 1개">
											<button class="minus main-2" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
										<div class="row d-flex align-items-center mb-2 item"
											id="main-3">
											<input type="text" class="ingredient-3 form-control input1"
												placeholder="예) 당근"> <input type="text"
												class="quantity-3 form-control input2 mx-2"
												placeholder="예) 1개">
											<button class="minus main-3" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
									</div>
									<div>
										<button class="btn border mt-2 p-btn plus" id="main-add"
											onclick="addItem(this)">&nbsp&nbsp추가</button>
									</div>
								</div>
							</div>
							<div id="seasoning-ingredient" class="col-md-6">
								<div class="row d-flex justify-content-center">
									<label class="form-label mb-1 px-3 form-title">양념재료</label>
									<div class="sub-items px-4">
										<div class="row d-flex align-items-center mb-2 item"
											id="sub-1">
											<input type="text" name="ingredient-sub"
												class="ingredient-1 form-control input1" placeholder="예) 설탕">
											<input type="text" name="quantity-sub"
												class="quantity-1 form-control input2 mx-2"
												placeholder="예) 3T">
											<button class="minus sub-1" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
										<div class="row d-flex align-items-center mb-2 item"
											id="sub-2">
											<input type="text" class="ingredient-2 form-control input1"
												placeholder="예) 마늘"> <input type="text"
												class="quantity-2 form-control input2 mx-2"
												placeholder="예) 1T">
											<button class="minus sub-2" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
										<div class="row d-flex align-items-center mb-2 item"
											id="sub-3">
											<input type="text" class="ingredient-3 form-control input1"
												placeholder="예) 간장"> <input type="text"
												class="quantity-3 form-control input2 mx-2"
												placeholder="예) 3/4컵">
											<button class="minus sub-3" onclick="deleteItem(this)" tabindex="-1"></button>
										</div>
									</div>
									<div>
										<button class="btn border mt-2 p-btn plus" id="sub-add"
											onclick="addItem(this)">&nbsp&nbsp추가</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end ingredient 재료 -->
					<div class="cooking-step p-4 form-bg" id="cooking-step">
						<label class="form-label mb-1 form-title">요리순서</label>
						<div class="row" id="steps">
							<div id="step-1" class="pb-3 step">
								<div class="form-label fw-bold step-text mb-0 px-1" name="step">STEP 1</div>
								<div class="d-flex px-0">
									<div class="col-9 px-0">
										<textarea name="direction" id="step-1-text" class="form-control step-textarea" onkeyup="checkByte(this, '100')"
											placeholder="예) 닭이 잠길정도로 물을 넣고 손질한 닭을 끓여주세요" rows="5"></textarea>
									</div>
									<div class="step-photo-cover pointer">
										<input type="file" class="hidden-input step-1" onchange="imgUpload(this)" />
										<div id="step-1-photo" onclick="fileUpButton(this)">
											<img class="border step-photo" name="saveFile" src="/imgs/pic_none.gif">
										</div>
									</div>
									<div
										class="d-flex flex-column border justify-content-between addon ms-2">
										<div class="d-flex flex-column">
											<button class="step-1 border up-btn mb-1" tabindex="-1" onclick="stepUp(this)">▲</button>
											<button class="step-1 border down-btn" tabindex="-1" onclick="stepDown(this)">▼</button>
										</div>
										<div>
											<button class="step-1 border delete-btn" tabindex="-1" onclick="stepDelete(this)">X</button>
										</div>
									</div>
								</div>
								<p class="warning-text m-1">*10글자 이상 작성해주세요</p>
							</div>
						</div>
						<div>
							<button class="btn border mt-2 p-btn plus" onclick="addStep(this)">&nbsp;&nbsp; 추가</button>
						</div>
					</div>
					<!-- end cooking-step 요리순서 -->
					<div class="recipe-tag form-bg p-4">
						<div class="form-label mb-1 form-title recipe-tag-title">태그</div>
						<div class="recipe-tag-box d-flex flex-column justify-content-end">
							<input name="tag" id="tag" placeholder="예) 소고기, 미역국 (최대 5개, 5글자 이내)">
							<p class="warning-text noheight m-1">*태그를 1개 이상 등록해주세요</p>
							<ul class="tag-ul d-flex p-1">
							</ul>
						</div>
					</div>
					<!-- end recipe-tag 태그 -->
					
					<div class="open-range form-bg p-4 pt-0">
						<div class="form-label mb-1 form-title open-range-title">공개범위</div>
						<div class="open-range-box d-flex">
							<select class="form-select py-1">
								<option value="저장 및 공개" selected>저장 및 공개</option>
								<option value="비공개저장">비공개저장</option>
								<option value="임시저장">임시저장</option>
							</select>
						</div>
					</div>
					<!-- end open-range -->

					<div
						class="accessibility form-bg p-4 border-top d-flex justify-content-center" name="accessibility">
						<div class="mx-1">
							<button type="button" onclick="register(this)" class="btn gold-btn me-3">등록</button>
							<button type="reset" class="cancel btn btn-secondary">취소</button>
						</div>
					</div>
					<!-- end accessbility -->
				</div>
			</div>
			<!-- end main container-->
		</div>
		<!-- end main-->
		<%@ include file="/WEB-INF/views/common/bottom.jsp"%>
	</div>
	<!-- end #page hfeed site -->
</body>
</html>