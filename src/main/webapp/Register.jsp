<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <meta name="viewport" content="width=1004"> -->
  <meta name="format-detection" content="telephone=no">
  <meta name="description"
    content="극지연구소는 극지연구 글로벌 선도기관을 비전으로 인류에게 닥칠 기후변화에 선제적으로 대응하고 극지를 활용한 미래가치 창출까지, 세계속에서 극지연구를 주도하는 최고의 연구기관이 되도록 최선의 노력을 다하겠습니다. ">
  <meta property="og:type" content="website">
  <meta property="og:url" content="http://southwinds.dothome.co.kr/rwdkopri/">
  <meta property="og:title" content="극지연구소">
  <meta property="og:description" content="극지연구소 홈페이지 입니다.">
  <meta property="og:image" content="images/common/og_image.gif">
  <title>회원가입 | 극지연구소</title>
  <link rel="icon" href="images/common/favico.png">
  <link rel="apple-touch-icon-precomposed" href="images/common/favico.ico">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/jquery-ui.min.css">
  <link rel="stylesheet" href="css/swiper-bundle.min.css">
  <link rel="stylesheet" href="css/common.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="css/main.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="css/sub.css?v=<?php echo time(); ?>">
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/jquery-ui.min.js"></script>
  <script src="js/swiper-bundle.min.js"></script>
  <script src="js/ui-common.js?v=<?php echo time(); ?>"></script>
</head>
<script>
   function validateForm(form) {
     if (!form.user_id.value) {
       alert("아이디를 입력하세요.");
       form.user_id.focus();
       return false;
     }
     if (form.user_pw.value == "") {
       alert("패스워드를 입력하세요.");
       form.user_pw.focus();
       return false;
     }
     if (form.user_pw.value != form.password_confirm.value) {
       alert("패스워드가 일치하지 않습니다.");
       form.password_confirm.focus();
       return false;
     }

       if (form.name.value == "") {
           alert("이름을 입력하세요.");
           form.name.focus();
           return false;
       }

       if (form.email.value == "") {
           alert("이메일을 입력하세요.");
           form.email.focus();
           return false;
       }

       if (form.phone_number.value == "") {
           alert("전화번호를 입력하세요.");
           form.phone_number.focus();
           return false;
       }

       if (!form.check1.checked) {
           alert("약관에 동의해주세요.");
           return false;
       }
   }
   function checkIdDuplication() {
    var userId = document.forms['registerFrm']['user_id'].value;

    // XMLHttpRequest 객체를 생성합니다.
    var xhr = new XMLHttpRequest();

    // 요청을 초기화합니다.
    xhr.open('POST', './chkId.do', true);

    // 요청 헤더를 설정합니다.
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // 요청을 전송합니다.
    xhr.send('user_id=' + encodeURIComponent(userId));

    // 요청의 상태가 변경되면 실행될 함수를 설정합니다.
    xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status == 200) {
        // 응답을 로그에 출력합니다.
        console.log(xhr.responseText);

        try {
            // 응답을 JSON으로 파싱합니다.
            var response = JSON.parse(xhr.responseText);

            // 결과에 따라 메시지를 표시합니다.
            if (response.success) {
                alert(response.message);
                document.getElementsByName('idchk')[0].value = '1';
            } else {
                alert(response.message);
            }
        } catch (e) {
            alert("서버에서 예상치 못한 응답이 반환되었습니다.");
        }
    }
};
}
 </script>
<body>
  <div id="skip_navi"> <a href="#container">본문바로가기</a> </div>
  <div id="wrap">
    <header id="header">
      <div class="inner">
        <h1 class="logo"> <a href="index.do"> <img src="images/logo.png" alt="극지연구소"> </a> </h1>
        <nav class="gnb_wrap">
          <ul class="gnb">
            <li> <a href="#"> KOPRI </a>
              <div class="depth2_wrap">
                <div class="inner">
                  <div class="gnb_title">
                    <h2>KOPRI</h2>
                    <p>세상의 끝에 서다.</p>
                  </div>
                  <ul class="depth2">
                    <li> <a href="#">인사말</a>
                      <ul class="depth3">
                        <li><a href="#">인사말</a></li>
                        <li><a href="#">역대 기관장</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">비전 및 미션</a> </li>
                    <li> <a href="#">연혁</a> </li>
                    <li> <a href="#">CI·글꼴</a>
                      <ul class="depth3">
                        <li><a href="#">극지연구소</a></li>
                        <li><a href="#">아라온호</a></li>
                        <li><a href="#">장보고체</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">조직 및 연락처</a>
                      <ul class="depth3">
                        <li><a href="#">조직도</a></li>
                        <li><a href="#">주요 연락처</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">관련단체 및 조직</a>
                      <ul class="depth3">
                        <li><a href="#">관련단체 및 조직</a></li>
                        <li><a href="#">MOU 현황</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">찾아오시는길</a> </li>
                  </ul>
                </div>
              </div>
            </li>
            <li> <a href="#"> 연구 </a>
              <div class="depth2_wrap">
                <div class="inner">
                  <div class="gnb_title">
                    <h2>연구</h2>
                    <p>세상의 끝을 연구하다.</p>
                  </div>
                  <ul class="depth2">
                    <li> <a href="#">연구분야</a>
                      <ul class="depth3">
                        <li><a href="#">연구분야</a></li>
                        <li><a href="#">기술공학분야</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">연구사업</a>
                      <ul class="depth3">
                        <li><a href="#">주요연구사업</a></li>
                        <li><a href="#">정부수탁사업</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">시기별 극지연구</a>
                      <ul class="depth3">
                        <li><a href="#">2000~2010의 극지연구</a></li>
                        <li><a href="#">1970~1990의 극지연구</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">연구데이터</a>
                      <ul class="depth3">
                        <li><a href="#">연구부문</a></li>
                        <li><a href="#">학술·문헌 부문</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">정책</a>
                      <ul class="depth3">
                        <li><a href="#">정책지원</a></li>
                        <li><a href="#">극지정책 아카이브</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </li>
            <li> <a href="#"> 인프라 </a>
              <div class="depth2_wrap">
                <div class="inner">
                  <div class="gnb_title">
                    <h2>인프라</h2>
                    <p>세상의 끝에서 시작하다.</p>
                  </div>
                  <ul class="depth2">
                    <li> <a href="#">남극세종과학기지</a>
                      <ul class="depth3">
                        <li><a href="#">기지소개</a></li>
                        <li><a href="#">월동연구대</a></li>
                        <li><a href="#">눈나라 얼음나라(웹진)</a></li>
                        <li><a href="#" class="a_target">기지체험(VR)</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">북극다산과학기지</a>
                      <ul class="depth3">
                        <li><a href="#">기지소개</a></li>
                        <li><a href="#">기지촌소개</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">쇄빙연구선 아라온호</a>
                      <ul class="depth3">
                        <li><a href="#">쇄빙연구선 소개</a></li>
                        <li><a href="#">운항일정</a></li>
                        <li><a href="#">아라온호 위치</a></li>
                        <li><a href="#" class="a_target">쇄빙연구선 체험(VR)</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">남극장보고과학기지</a>
                      <ul class="depth3">
                        <li><a href="#">기지소개</a></li>
                        <li><a href="#">월동연구대</a></li>
                        <li><a href="#">눈나라 얼음나라(웹진)</a></li>
                        <li><a href="#" class="a_target">기지체험(VR)</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">극지로 가는길</a>
                      <ul class="depth3">
                        <li><a href="#">극지로 가는길</a></li>
                        <li><a href="#">남극활동 허가 신청</a></li>
                        <li><a href="#">기지방문신청</a></li>
                        <li><a href="#">극지안전훈련</a></li>
                        <li><a href="#">건강검진</a></li>
                        <li><a href="#">화물발송</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">인프라 공동활용 신청</a>
                      <ul class="depth3">
                        <li><a href="#">인프라공동활용<br>(쇄빙연구선)</a></li>
                        <li><a href="#">인프라공동활용(남·북극 과학기지 방문)</a></li>
                      </ul>
                    </li>
                    <li> <a href="#" class="a_target">환경관리</a>
                      <ul class="depth3">
                        <li><a href="#" class="a_target">남극특별보호구역</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">해외협력센터</a> </li>
                  </ul>
                </div>
              </div>
            </li>
            <li> <a href="#"> 소통·참여 </a>
              <div class="depth2_wrap">
                <div class="inner">
                  <div class="gnb_title">
                    <h2>소통·참여</h2>
                    <p>세상의 끝에서 미래를 열다.</p>
                  </div>
                  <ul class="depth2">
                    <li> <a href="#">공지사항</a> </li>
                    <li> <a href="#">언론보도</a> </li>
                    <li> <a href="#">인재채용</a>
                      <ul class="depth3">
                        <li><a href="#">채용개요</a></li>
                        <li><a href="#">채용공고</a></li>
                        <li><a href="#" class="a_target">채용사이트</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">견학 교육</a>
                      <ul class="depth3">
                        <li><a href="#">견학신청</a></li>
                        <li><a href="#">UST</a></li>
                        <li><a href="#">북극연구체험단</a></li>
                        <li><a href="#">남극연구체험단</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">고객참여</a>
                      <ul class="depth3">
                        <li><a href="List.do?board_type=<%= URLEncoder.encode("QA", "UTF-8") %>">Q&amp;A</a></li>
                        <li><a href="#">취재지원</a></li>
                        <li><a href="List.do?board_type=<%= URLEncoder.encode("자유게시판", "UTF-8") %>">
                        	KOPRI 청렴게시판
                        </a>
                        </li>
                        <li><a href="#">전재규 젊은 과학자상</a></li>
                        <li><a href="#">신고센터</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">자료실</a>
                      <ul class="depth3">
                        <li><a href="#" class="a_target">극지사진·영상자료</a></li>
                        <li><a href="#">기관 발간물</a></li>
                        <li><a href="#">정기 발간물</a></li>
                        <li><a href="#">극지사진콘테스트 수상작</a></li>
                      </ul>
                    </li>
                    <li> <a href="#" class="a_target">극지연구소 메타버스</a> </li>
                  </ul>
                </div>
              </div>
            </li>
            <li> <a href="#"> 정보공개 </a>
              <div class="depth2_wrap">
                <div class="inner">
                  <div class="gnb_title">
                    <h2>정보공개</h2>
                    <p>극지연구소 정보공개</p>
                  </div>
                  <ul class="depth2">
                    <li> <a href="#">정보공개제도안내</a>
                      <ul class="depth3">
                        <li><a href="#">정보공개제도란?</a></li>
                        <li><a href="#">정보공개처리절차/방법</a></li>
                        <li><a href="#">비공개정보</a></li>
                        <li><a href="#">불복구절차방법</a></li>
                      </ul>
                    </li>
                    <li> <a href="#">사전정보공표</a> </li>
                    <li> <a href="#">연구시설 및 장비 공동 활용</a>
                      <ul class="depth3">
                        <li><a href="#">공동활용 안내</a></li>
                        <li><a href="#">공동활용 연구시설 및 장비현황</a></li>
                      </ul>
                    </li>
                    <li class="depth3_margin"> <a href="#">사업실명제</a> </li>
                    <li class="depth3_margin"> <a href="#">입찰공고</a> </li>
                    <li class="depth3_margin"> <a href="#">경영공시</a> </li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </nav>
        <a href="login.jsp" class="login"></a>
        <div class="side_wrap">
          <ul class="home_lang">
            <li class="home"> <a href="index.do">HOME</a> </li>
            <li class="lang_wrap">
               <button class="lang_btn" type="button">ENGLISH</button> 
                <ul class="lang"> 
                  <li><a href="#">ENGLISH</a></li>
                  <li><a href="#">KOREAN</a></li>
                </ul>  
            </li>
          </ul>
          <ul class="site_map">
            <li> <a href="#" class="search"><span class="blind">검색</span></a> </li>
            <li>
              <a href="#" class="pc_site">
                <span class="blind">사이트맵</span>
                <div class="site_icon"> <i></i> <i></i> <i></i>
                </div>
              </a>
            </li>
            <li>
              <a href="#" class="m_site"><span class="blind">사이트맵</span>
                <div class="site_icon">
                  <i></i> <i></i> <i></i>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="search_wrap">
        <div class="inner">
          <h2>통합검색</h2>
          <div class="input_box">
            <form>
              <fieldset>
                <legend>검색</legend> 
                <input type="search" placeholder="검색어를 입력하세요"> 
                <button type="submit" class="search_btn">
                  <span class="blind">검색</span>
                </button>
              </fieldset>
            </form>
          </div>
          <a href="#" class="close_btn">닫기 <i></i> </a>
        </div>
      </div>
      <aside class="m_gnb_wrap">
        <div class="scroll">
          <div class="global">
            <a href="#">HOME</a>
            <a href="#" target="_blank" title="새창열기">ENGLISH</a>
          </div>
          <ul class="m_depth1">
            <li class="active">
              <a href="#">KOPRI</a>
              <ul class="m_depth2">
                <li>
                  <a href="#">인사말</a>
                  <ul class="m_depth3">
                    <li><a href="#">인사말</a></li>
                    <li><a href="#">역대 기관장</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">비전 및 미션</a>
                </li>
                <li>
                  <a href="#">연혁</a>
                </li>
                <li>
                  <a href="#">CI·글꼴</a>
                  <ul class="m_depth3">
                    <li><a href="#">극지연구소</a></li>
                    <li><a href="#">아라온호</a></li>
                    <li><a href="#">장보고체</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">조직 및 연락처</a>
                  <ul class="m_depth3">
                    <li><a href="#">조직도</a></li>
                    <li><a href="#">주요 연락처</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">관련단체 및 조직</a>
                  <ul class="m_depth3">
                    <li><a href="#">관련단체 및 조직</a></li>
                    <li><a href="#">MOU 현황</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">찾아오시는길</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="#">연구</a>
              <ul class="m_depth2">
                <li>
                  <a href="#">연구분야</a>
                  <ul class="m_depth3">
                    <li><a href="#">연구분야</a></li>
                    <li><a href="#">기술공학분야</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">연구사업</a>
                  <ul class="m_depth3">
                    <li><a href="#">주요연구사업</a></li>
                    <li><a href="#">정부수탁사업</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">시기별 극지연구</a>
                  <ul class="m_depth3">
                    <li><a href="#">2000~2010의 극지연구</a></li>
                    <li><a href="#">1970~1990의 극지연구</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">연구데이터</a>
                  <ul class="m_depth3">
                    <li><a href="#">연구부문</a></li>
                    <li><a href="#">학술·문헌 부문</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">정책</a>
                  <ul class="m_depth3">
                    <li><a href="#">정책지원</a></li>
                    <li><a href="#">극지정책 아카이브</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="#">인프라</a>
              <ul class="m_depth2">
                <li>
                  <a href="#">남극세종과학기지</a>
                  <ul class="m_depth3">
                    <li><a href="#">기지소개</a></li>
                    <li><a href="#">월동연구대</a></li>
                    <li><a href="#">눈나라 얼음나라(웹진)</a></li>
                    <li><a href="#">기지체험(VR)</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">북극다산과학기지</a>
                  <ul class="m_depth3">
                    <li><a href="#">기지소개</a></li>
                    <li><a href="#">기지촌소개</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">쇄빙연구선 아라온호</a>
                  <ul class="m_depth3">
                    <li><a href="#">쇄빙연구선 소개</a></li>
                    <li><a href="#">운항일정</a></li>
                    <li><a href="#">아라온호 위치</a></li>
                    <li><a href="#">쇄빙연구선 체험(VR)</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">남극장보고과학기지</a>
                  <ul class="m_depth3">
                    <li><a href="#">기지소개</a></li>
                    <li><a href="#">월동연구대</a></li>
                    <li><a href="#">눈나라 얼음나라(웹진)</a></li>
                    <li><a href="#">기지체험(VR)</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">극지로 가는길</a>
                  <ul class="m_depth3">
                    <li><a href="#">극지로 가는길</a></li>
                    <li><a href="#">남극활동 허가 신청</a></li>
                    <li><a href="#">기지방문신청</a></li>
                    <li><a href="#">극지안전훈련</a></li>
                    <li><a href="#">건강검진</a></li>
                    <li><a href="#">화물발송</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">인프라 공동활용 신청</a>
                  <ul class="m_depth3">
                    <li><a href="#">인프라공동활용(쇄빙연구선)</a></li>
                    <li><a href="#">인프라공동활용(남·북극 과학기지 방문)</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">환경관리</a>
                  <ul class="m_depth3">
                    <li><a href="#">남극특별보호구역</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">해외협력센터</a>
              </ul>
            </li>
            <li>
              <a href="#">소통·참여</a>
              <ul class="m_depth2">
                <li><a href="#">공지사항</a></li>
                <li><a href="#">언론보도</a></li>
                <li>
                  <a href="#">인재채용</a>
                  <ul class="m_depth3">
                    <li><a href="#">채용개요</a></li>
                    <li><a href="#">채용공고</a></li>
                    <li><a href="#">채용사이트</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">견학 교육</a>
                  <ul class="m_depth3">
                    <li><a href="#">견학신청</a></li>
                    <li><a href="#">UST</a></li>
                    <li><a href="#">북극연구체험단</a></li>
                    <li><a href="#">남극연구체험단</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">고객참여</a>
                  <ul class="m_depth3">
                    <li><a href="List.do?board_type=<%= URLEncoder.encode("QA", "UTF-8") %>">Q&amp;A</a></li>
                    <li><a href="#">취재지원</a></li>
                    <li><a href="List.do?board_type=<%= URLEncoder.encode("자유게시판", "UTF-8") %>"></li>
                    <li><a href="#">전재규 젊은 과학자상</a></li>
                    <li><a href="#">신고센터</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">자료실</a>
                  <ul class="m_depth3">
                    <li><a href="#">극지사진·영상자료</a></li>
                    <li><a href="#">기관 발간물</a></li>
                    <li><a href="#">정기 발간물</a></li>
                    <li><a href="#">극지사진콘테스트 수상작</a></li>
                  </ul>
                </li>
                <li><a href="#">극지연구소 메타버스</a></li>
              </ul>
            </li>
            <li>
              <a href="#">정보공개</a>
              <ul class="m_depth2">
                <li>
                  <a href="#">정보공개제도안내</a>
                  <ul class="m_depth3">
                    <li><a href="#">정보공개제도란?</a></li>
                    <li><a href="#">정보공개처리절차/방법</a></li>
                    <li><a href="#">비공개정보</a></li>
                    <li><a href="#">불복구절차방법</a></li>
                  </ul>
                </li>
                <li><a href="#">사전정보공표</a></li>
                <li>
                  <a href="#">연구시설 및 장비 공동 활용</a>
                  <ul class="m_depth3">
                    <li><a href="#">공동활용 안내</a></li>
                    <li><a href="#">공동활용 연구시설 및 장비현황</a></li>
                  </ul>
                </li>
                <li><a href="#">사업실명제</a></li>
                <li><a href="#">입찰공고</a></li>
                <li><a href="#">경영공시</a></li>
              </ul>
            </li>
          </ul>
          <a href="#" class="m_close_btn"><span class="blind">닫기</span></a>
        </div>
      </aside>
    </header>
    <main id="container" class="login_page sub_container">
      <div class="contents">
        <div class="inner">
          <div class="login_area">
            <h2>회원가입</h2>
            <form name="registerFrm" method="post" action="Register.do" 
			onsubmit="return validateForm(this);">
              <fieldset>
                <legend>회원가입</legend>
                <div class="row input_register1" >
                  <input type="text" name="user_id" placeholder="ID(6~12자의 영문소문자와 숫자만 사용할 수 있습니다.)"  style="width: 80%"/>
                  <input type="button" value="중복 확인" onclick="checkIdDuplication()">
                  <input type="hidden" name="idchk" value="0">
                </div>
                <div class="row input_register2">
                    <input type="text" name="user_pw" placeholder="비밀번호" />
                </div>
                <div class="row input_register2">
                    <input type="text" name="password_confirm" placeholder="비밀번호 확인" />
                </div>
                <div class="row input_register2">
                    <input type="text" name="name" placeholder="이름" />
                </div>
                <div class="row input_register2">
                    <input type="text" name="email" placeholder="이메일" />
                </div>
                <div class="row input_register3">
                    <input type="text" name="phone_number" placeholder="전화번호" />
                </div>
                <div class="row row3">
                    <div class="checkbox_wrap">
                      <input id="check1" type="checkbox" class="blind" />
                      <label for="check1">동의</label>
                    </div>
                <input type="submit" value="회원가입" class="login_btn" />
              </fieldset>
            </form>
          </div>

        </div>
      </div>
    </main>
    <footer id="footer" class="sub_footer">
      <div class="footer_top">
        <div class="inner">
          <ul class="footer_link">
            <li><a href="#">직원검색</a></li>
            <li><a href="#">사이트맵</a></li>
            <li><a href="#">이메일집단수신거부</a></li>
            <li><a href="#">개인정보처리방침</a></li>
          </ul>
          <div class="familysite_wrap">
            <button type="button" class="site_btn">Family Site</button>
            <ul class="familysite">
                <li><a href="#">KIOST</a></li>
                <li><a href="#">해양수산과학기술진흥원</a></li>
                <li><a href="#">CRE 연구윤리정보센터</a></li>
                <li><a href="#">NRF 한국연구재단</a></li>
                <li><a href="#">극지e야기</a></li>
                <li><a href="#">해양수산부</a></li>
                <li><a href="#">안전신문고</a></li>
                <li><a href="#">소극행정 신고센터</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="footer_bottom">
        <div class="inner">
          <div class="bottom_left">
            <div class="address">
              <span>우) 21990 인천광역시 연수구 송도미래로 26(송도동 213-3)</span>
              <a href="#"><span>Tel: 032)770-8400</span></a>
              <span>Fax: 032)770-8709</span>
            </div>
            <p>COPYRIGHT (C) KOREA POLAR RESEARCH INSTITUTE ALL RIGHT RESERVED</p>
          </div>
          <div class="bottom_right">
            <div class="sns_logo">
              <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
              </ul>
            </div>
            <div class="flogo">
              <img src="./images/flogo.png" alt="푸터로고">
              <img src="./images/web_mark.png" alt="푸터웹마크로고" class="web_mark">
            </div>
          </div>
        </div>
      </div>
      <a href="#" class="top_btn"><span></span>TOP</a>
    </footer>
  </div>
</body>

</html>