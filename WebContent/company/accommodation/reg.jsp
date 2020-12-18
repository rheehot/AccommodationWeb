<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(기업)업체등록</title>
    <link rel="stylesheet" href="/css/reset.css" type="text/css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/company/accommodation/reg.css ">
    <link rel="preconnect" href="https//fonts.gstatic.com">
    <link href="https//fonts.googleapis.com/css2?family=Noto+Sans+KRwght@300;400&display=swap" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <!-- <Script src="/js/company/accommodation/regAccommodation.js"></Script> -->
</head>

<body>
    <header class="sec-header-page">
        <section class="header-sec">
            <div class="header-logo">
                <h1><a class="teum-logo" href="/index">틈</a></h1>
            </div>
            <div>
                <ul class="main-menu">
                    <li class="header-search"><input type="text"><a href=""><i class="fas fa-search"></i></a></li>
                    <li><a href="">제안하기</a></li>
                    <li><a href="">예약내역</a></li>
                    <li class="sub-page">
                        <a href="">더보기</a>
                        <div class="mega-menu">
                            <ul>
                                <li><a href="/notice/list">공지사항</a></li>
                                <li><a href="/event/list">이벤트</a></li>
                                <li><a href="">1:1 문의</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="sub-page">
                        <a href="" class="character"><i class="fas fa-sort-down"></i></a>
                        <div class="mega-menu">
                            <ul>
                                <li><a href="">내정보</a></li>
                                <li><a href="">제안내역</a></li>
                                <li><a href="">찜한 숙소</a></li>
                                <li><a href="">로그아웃</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </header>
    
    
    <main>
        <div>
            <h1><img src="/images/company/reg.png"></h1>
            <div class="content-box">

                <form action="reg" method="post" enctype="multipart/form-data">
                    <div>
                        <em style="color: red;">*</em>업체명<br>
                        <input type="text" class="text-box acc-name" name="acc-name" placeholder="틈 호텔" required>
                        <div>

                        </div>
                    </div>
                    <div><em style="color: red;">*</em>전화번호<br> 
                        <input type="tel" class="text-box phone" name="phone" placeholder="010-1111-2222 또는 02-1111-2222" required>
                    </div>
                    <div>
                        <em style="color: red;">*</em>위치<br>
                        <select name="big-location">
                            <option value="서울">서울</option>
                            <option value="제주">제주</option>
                            <option value="부산">부산</option>
                            <option value="강원">강원</option>
                            <option value="경기">경기</option>
                            <option value="인천">인천</option>
                            <option value="경상">경상</option>
                            <option value="전라">전라</option>
                            <option value="충청">충청</option>
                        </select>
                    
                        <select name="small-location">
                            <!-- 서울 -->
		                    <option value="강남구">강남구</option>
		                    <option value="강동구">강동구</option>
		                    <option value="강북구">강북구</option>
		                    <option value="강서구">강서구</option>
		                    <option value="관악구">관악구</option>
		                    <option value="광진구">광진구</option>
		                    <option value="구로구">구로구</option>
		                    <option value="금천구">금천구</option>
		                    <option value="노원구">노원구</option>
		                    <option value="도봉구">도봉구</option>
		                    <option value="동대문구">동대문구</option>
		                    <option value="동작구">동작구</option>
		                    <option value="마포구">마포구</option>
		                    <option value="서대문구">서대문구</option>
		                    <option value="서초구">서초구</option>
		                    <option value="성동구">성동구</option>
		                    <option value="성북구">성북구</option>
		                    <option value="송파구">송파구</option>
		                    <option value="양천구">양천구</option>
		                    <option value="영등포구">영등포구</option>
		                    <option value="용산구">용산구</option>
		                    <option value="은평구">은평구</option>
		                    <option value="종로구">종로구</option>
		                    <option value="중구">중구</option>
		                    <option value="중랑구">중랑구</option>
		                    <!-- 부산 -->
		                    <option value="해운대">해운대</option>
		                    <option value="마린시티">마린시티</option>
		                    <option value="벡스코">벡스코</option>
		                    <option value="센텀시티">센텀시티</option>
		                    <option value="송정">송정</option>
		                    <option value="기장">기장</option>
		                    <option value="광안리">광안리</option>
		                    <option value="경성대">경성대</option>
		                    <option value="부산역">부산역</option>
		                    <option value="자갈치">자갈치</option>
		                    <option value="남포동">남포동</option>
		                    <option value="영도">영도</option>
		                    <option value="송도">송도</option>
		                    <option value="다대포">다대포</option>
		                    <option value="서면">서면</option>
		                    <option value="연산">연산</option>
		                    <option value="범일">범일</option>
		                    <option value="동래">동래</option>
		                    <option value="온천">온천</option>
		                    <option value="금정구">금정구</option>
		                    <option value="사상">사상</option>
		                    <option value="강서">강서</option>
		                    <option value="김해공항">김해공항</option>
		                    <!-- 제주 -->
		                    <option value="제주시">제주시</option>
		                    <option value="제주국제공항">제주국제공항</option>
		                    <option value="서귀포시">서귀포시</option>
		                    <option value="애월">애월</option>
		                    <option value="한림">한림</option>
		                    <option value="협재">협재</option>
		                    <option value="중문">중문</option>
		                    <option value="표선">표선</option>
		                    <option value="성산">성산</option>
		                    <option value="함덕">함덕</option>
		                    <option value="김녕">김녕</option>
		                    <option value="세화">세화</option>
		                    
		                    <!-- 경기 -->
		                    <option value="가평">가평</option>
		                    <option value="청평">청평</option>
		                    <option value="양평">양평</option>
		                    <option value="수원">수원</option>
		                    <option value="화성">화성</option>
		                    <option value="고양">고양</option>
		                    <option value="파주">파주</option>
		                    <option value="김포">김포</option>
		                    <option value="의정부">의정부</option>
		                    <option value="포천">포천</option>
		                    <option value="동두천">동두천</option>
		                    <option value="용인">용인</option>
		                    <option value="동탄">동탄</option>
		                    <option value="오산">오산</option>
		                    <option value="평택">평택</option>
		                    <option value="남양주">남양주</option>
		                    <option value="구리">구리</option>
		                    <option value="성남">성남</option>
		                    <option value="분당">분당</option>
		                    <option value="이천">이천</option>
		                    <option value="광주">광주</option>
		                    <option value="여주">여주</option>
		                    <option value="하남">하남</option>
		                    <option value="부천">부천</option>
		                    <option value="광명">광명</option>
		                    <option value="시흥">시흥</option>
		                    <option value="안산">안산</option>
		                    <option value="안양">안양</option>
		                    <option value="의왕">의왕</option>
		                    <option value="군포">군포</option>
		                    <!-- 인천 -->
		                    <option value="송도">송도</option>
		                    <option value="소래포구">소래포구</option>
		                    <option value="인천국제공항">인천국제공항</option>
		                    <option value="강화">강화</option>
		                    <option value="을왕리">을왕리</option>
		                    <option value="영종">영종</option>
		                    <option value="구읍뱃터">구읍뱃터</option>
		                    <option value="월미도">월미도</option>
		                    <option value="주안">주안</option>
		                    <option value="간석">간석</option>
		                    <option value="인천시청">인천시청</option>
		                    <option value="청라">청라</option>
		                    <option value="계양">계양</option>
		                    <option value="부평">부평</option>
		                    <!-- 강원 -->
		                    <option value="속초">속초</option>
		                    <option value="양양">양양</option>
		                    <option value="고성">고성</option>
		                    <option value="춘천">춘천</option>
		                    <option value="인제">인제</option>
		                    <option value="철원">철원</option>
		                    <option value="강릉">강릉</option>
		                    <option value="평창">평창</option>
		                    <option value="정선">정선</option>
		                    <option value="영월">영월</option>
		                    <option value="동해">동해</option>
		                    <option value="삼척">삼척</option>
		                    <option value="태백">태백</option>
		                    <option value="홍천">홍천</option>
		                    <option value="횡성">횡성</option>
		                    <option value="원주">원주</option>
		                    <!-- 경상 -->
		                    <option value="대구">대구</option>
		                    <option value="구미">구미</option>
		                    <option value="안동">안동</option>
		                    <option value="문경">문경</option>
		                    <option value="경주">경주</option>
		                    <option value="울산">울산</option>
		                    <option value="양산">양산</option>
		                    <option value="거제">거제</option>
		                    <option value="통영">통영</option>
		                    <option value="포항">포항</option>
		                    <option value="영덕">영덕</option>
		                    <option value="울진">울진</option>
		                    <option value="청송">청송</option>
		                    <option value="창원">창원</option>
		                    <option value="마산">마산</option>
		                    <option value="진해">진해</option>
		                    <option value="김해">김해</option>
		                    <option value="남해">남해</option>
		                    <option value="사천">사천</option>
		                    <option value="하동">하동</option>
		                    <option value="진주">진주</option>
		                    <!-- 전라 -->
		                    <option value="전주">전주</option>
		                    <option value="광주">광주</option>
		                    <option value="나주">나주</option>
		                    <option value="여수">여수</option>
		                    <option value="순천">순천</option>
		                    <option value="광양">광양</option>
		                    <option value="구례">구례</option>
		                    <option value="목포">목포</option>
		                    <option value="남원">남원</option>
		                    <option value="무주">무주</option>
		                    <option value="완주">완주</option>
		                    <option value="익산">익산</option>
		                    <option value="군산">군산</option>
		                    <option value="부안">부안</option>
		                    <option value="고창">고창</option>
		                    <!-- 충청 -->
		                    <option value="대전">대전</option>
		                    <option value="세종">세종</option>
		                    <option value="천안">천안</option>
		                    <option value="아산">아산</option>
		                    <option value="도고">도고</option>
		                    <option value="안면도">안면도</option>
		                    <option value="태안">태안</option>
		                    <option value="서산">서산</option>
		                    <option value="덕산">덕산</option>
		                    <option value="보령">보령</option>
		                    <option value="대천">대천</option>
		                    <option value="부여">부여</option>
		                    <option value="공주">공주</option>
		                    <option value="금산">금산</option>
		                    <option value="청주">청주</option>
		                    <option value="음성">음성</option>
		                    <option value="진천">진천</option>
		                    <option value="충주">충주</option>
		                    <option value="제천">제천</option>
		                    <option value="단양">단양</option>
                        </select>
                    </div>
                    <div>
                        <em style="color: red;">*</em>상세주소<br>
                        <input type="text" class="text-box address" name="detail-address" placeholder="서울특별시 종로구 인사동길 12 대일빌딩 15층" required>
                    </div>
                    <div>
                        <em style="color: red;">*</em>숙소유형  
                        <select name="acc-type">
                            <option value="호텔">호텔</option>
                            <option value="모텔">모텔</option>
                            <option value="게스트하우스">게스트하우스</option>
                            <option value="리조트">리조트</option>
                            <option value="펜션">펜션</option>
                        </select>
                        
                    </div>
                    <div>
                        <em style="color: red;">*</em>숙소사진1 추가  
                        <input type="file" accept="image acc_image" name="acc-file" required>
                    </div>
                    <div>
                        <em style="color: red;">*</em>숙소사진2 추가  
                        <input type="file" accept="image acc_image" name="acc-file" required>
                    </div>
                    <!-- <div>
                    	<em style="color: red;">*</em>사업자 등록증  
                        <input type="file" accept="image company-reg" name="company-reg" required>
                    </div> -->
                    <div>
                        <input type="button" class="button add-button" value="방 추가">
                        <input type="button" class="button del-button" value="방 삭제">
                    </div>
                        
                    <div class="box">
                        <section class="add-room">
                            <div>
                            	<em style="color: red;">*</em>방 이름<br>
                                <input type="text"  class="text-box room-name" name="room-name"  placeholder="스위트룸" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>방 갯수<br>
                                <input type="text" class="text-box room-count" name="room-count" placeholder="5" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>최대 인원 수<br>
                                <input type="text" class="text-box max-headcounter" name="max-headcount" placeholder="2" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>침대 갯수<br>
                                <input type="text" class="text-box bed-count" name="bed-count" placeholder="2" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>가격<br>
                                <input type="text" class="text-box price" name="price" placeholder="100000 (돈의 단위는 적지 마세요.)" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>방사진1 추가<br>
                                <input type="file" accept="image text-box" class="text-box" name="room-file" required>
                            </div>
                            <div>
                            	<em style="color: red;">*</em>방사진2 추가<br>
                                <input type="file" accept="image text-box" class="text-box" name="room-file" required>
                            </div>
                        </section>  
                    </div>
                        
                    <section>
                        <div>
                            <input type="submit" class="btn submit-btn" value="등록하기">
                        </div>
                    </section>
                </form>
            </div>
        </div>
    </main>
    
    <section class="sec_footer">
        <footer>
            <div>
                <ul>
                    <li>
                        <a href="">회사소개</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">이용약관</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">개인정보처리방침</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">사업자정보확인</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">여기어때 마케팅센터</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="">액티비티 호스트센터</a>
                        <span>|</span>
                    </li>
                    <li><a href="">콘텐츠산업진흥법에의한 표시</a></li>
                </ul>

                <p><b>고객행복센터 1577-8282</b> 오전 0900 ~ 오후1800</p>

                <address>
                    <span>(주)TEUM</span>
                    주소  서울특별시 종로구 인사동길 12 대일빌딩 15층
                    <br>대표이사  신중언 | 사업자등록번호 777-11-45678
                    <br>통신판매번호  2020-서울강남-12345 | 관광사업자 등록번호  제 1324-55호
                    <br>전화번호  010-1111-2222
                    <br>전자우편주소  teum@teum.co.kr
                    <br>Copyright TEUM COMPANY Corp. All rights reserved.
                </address>
            </div>
        </footer>
    </section>
    </body>
</html>