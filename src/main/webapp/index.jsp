<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- <meta name="viewport" content="width=1004"> -->
    <meta name="format-detection" content="telephone=no" />
    <meta
      name="description"
      content="극지연구소는 극지연구 글로벌 선도기관을 비전으로 인류에게 닥칠 기후변화에 선제적으로 대응하고 극지를 활용한 미래가치 창출까지, 세계속에서 극지연구를 주도하는 최고의 연구기관이 되도록 최선의 노력을 다하겠습니다. "
    />
    <meta property="og:type" content="website" />
    <meta
      property="og:url"
      content="http://southwinds.dothome.co.kr/rwdkopri/"
    />
    <meta property="og:title" content="극지연구소" />
    <meta property="og:description" content="극지연구소 홈페이지 입니다." />
    <meta property="og:image" content="images/common/og_image.gif" />
    <title>극지연구소</title>
    <link rel="icon" href="images/common/favico.png" />
    <link rel="apple-touch-icon-precomposed" href="images/common/favico.ico" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/jquery-ui.min.css" />
    <link rel="stylesheet" href="css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/common.css?v=<?php echo time(); ?>" />
    <link rel="stylesheet" href="css/main.css?v=<?php echo time(); ?>" />
    <script src="js/jquery-3.7.1.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/swiper-bundle.min.js"></script>
    <script src="js/ui-common.js?v=<?php echo time(); ?>"></script>
  </head>

  <body>
    <div id="skip_navi"><a href="#container">본문바로가기</a></div>
    <div id="wrap">
      <header id="header">
        <div class="inner">
          <h1 class="logo">
            <a href="index.do">
              <img src="images/logo.png" alt="극지연구소" />
            </a>
          </h1>
          <nav class="gnb_wrap">
            <ul class="gnb">
              <li>
                <a href="#"> KOPRI </a>
                <div class="depth2_wrap">
                  <div class="inner">
                    <div class="gnb_title">
                      <h2>KOPRI</h2>
                      <p>세상의 끝에 서다.</p>
                    </div>
                    <ul class="depth2">
                      <li>
                        <a href="#">인사말</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">인사말</a>
                          </li>
                          <li>
                            <a href="#">역대 기관장</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">비전 및 미션</a>
                      </li>
                      <li><a href="#">연혁</a></li>
                      <li>
                        <a href="#">CI·글꼴</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">극지연구소</a>
                          </li>
                          <li>
                            <a href="#">아라온호</a>
                          </li>
                          <li>
                            <a href="#">장보고체</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">조직 및 연락처</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">조직도</a>
                          </li>
                          <li>
                            <a href="#">주요 연락처</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">관련단체 및 조직</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">관련단체 및 조직</a>
                          </li>
                          <li>
                            <a href="#">MOU 현황</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">찾아오시는길</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <a href="#"> 연구 </a>
                <div class="depth2_wrap">
                  <div class="inner">
                    <div class="gnb_title">
                      <h2>연구</h2>
                      <p>세상의 끝을 연구하다.</p>
                    </div>
                    <ul class="depth2">
                      <li>
                        <a href="#">연구분야</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">연구분야</a>
                          </li>
                          <li>
                            <a href="#">기술공학분야</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">연구사업</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">주요연구사업</a>
                          </li>
                          <li>
                            <a href="#">정부수탁사업</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">시기별 극지연구</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">2000~2010의 극지연구</a>
                          </li>
                          <li>
                            <a href="#">1970~1990의 극지연구</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">연구데이터</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">연구부문</a>
                          </li>
                          <li>
                            <a href="#">학술·문헌 부문</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">정책</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">정책지원</a>
                          </li>
                          <li>
                            <a href="#">극지정책 아카이브</a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <a href="#"> 인프라 </a>
                <div class="depth2_wrap">
                  <div class="inner">
                    <div class="gnb_title">
                      <h2>인프라</h2>
                      <p>세상의 끝에서 시작하다.</p>
                    </div>
                    <ul class="depth2">
                      <li>
                        <a href="#">남극세종과학기지</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">기지소개</a>
                          </li>
                          <li>
                            <a href="#">월동연구대</a>
                          </li>
                          <li>
                            <a href="#">눈나라 얼음나라(웹진)</a>
                          </li>
                          <li>
                            <a href="#" class="a_target">기지체험(VR)</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">북극다산과학기지</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">기지소개</a>
                          </li>
                          <li>
                            <a href="#">기지촌소개</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">쇄빙연구선 아라온호</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">쇄빙연구선 소개</a>
                          </li>
                          <li>
                            <a href="#">운항일정</a>
                          </li>
                          <li>
                            <a href="#">아라온호 위치</a>
                          </li>
                          <li>
                            <a href="#" class="a_target">쇄빙연구선 체험(VR)</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">남극장보고과학기지</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">기지소개</a>
                          </li>
                          <li>
                            <a href="#">월동연구대</a>
                          </li>
                          <li>
                            <a href="#">눈나라 얼음나라(웹진)</a>
                          </li>
                          <li>
                            <a href="#" class="a_target">기지체험(VR)</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">극지로 가는길</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">극지로 가는길</a>
                          </li>
                          <li>
                            <a href="#">남극활동 허가 신청</a>
                          </li>
                          <li>
                            <a href="#">기지방문신청</a>
                          </li>
                          <li>
                            <a href="#">극지안전훈련</a>
                          </li>
                          <li>
                            <a href="#">건강검진</a>
                          </li>
                          <li>
                            <a href="#">화물발송</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">인프라 공동활용 신청</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">인프라공동활용<br />(쇄빙연구선)</a>
                          </li>
                          <li>
                            <a href="#"
                              >인프라공동활용(남·북극 과학기지 방문)</a
                            >
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#" class="a_target">환경관리</a>
                        <ul class="depth3">
                          <li>
                            <a href="#" class="a_target">남극특별보호구역</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">해외협력센터</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <a href="#"> 소통·참여 </a>
                <div class="depth2_wrap">
                  <div class="inner">
                    <div class="gnb_title">
                      <h2>소통·참여</h2>
                      <p>세상의 끝에서 미래를 열다.</p>
                    </div>
                    <ul class="depth2">
                      <li>
                        <a href="#">공지사항</a>
                      </li>
                      <li><a href="#">언론보도</a></li>
                      <li>
                        <a href="#">인재채용</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">채용개요</a>
                          </li>
                          <li>
                            <a href="#">채용공고</a>
                          </li>
                          <li>
                            <a href="#" class="a_target">채용사이트</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">견학 교육</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">견학신청</a>
                          </li>
                          <li><a href="#">UST</a></li>
                          <li>
                            <a href="#">북극연구체험단</a>
                          </li>
                          <li>
                            <a href="#">남극연구체험단</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">고객참여</a>
                        <ul class="depth3">
                          <li>
                            <a href="List.do?board_type=<%= URLEncoder.encode("QA", "UTF-8") %>">Q&amp;A</a>
                          </li>
                          <li>
                            <a href="#">취재지원</a>
                          </li>
                          <li>
                            <a href="List.do?board_type=<%= URLEncoder.encode("자유게시판", "UTF-8") %>">
                            	KOPRI 청렴게시판
                            </a>
                          </li>
                          <li>
                            <a href="#">전재규 젊은 과학자상</a>
                          </li>
                          <li>
                            <a href="#">신고센터</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">자료실</a>
                        <ul class="depth3">
                          <li>
                            <a href="#" class="a_target">극지사진·영상자료</a>
                          </li>
                          <li>
                            <a href="#">기관 발간물</a>
                          </li>
                          <li>
                            <a href="#">정기 발간물</a>
                          </li>
                          <li>
                            <a href="List.do?board_type=<%= URLEncoder.encode("자료실", "UTF-8") %>">극지사진콘테스트 수상작</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#" class="a_target">극지연구소 메타버스</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <a href="#"> 정보공개 </a>
                <div class="depth2_wrap">
                  <div class="inner">
                    <div class="gnb_title">
                      <h2>정보공개</h2>
                      <p>극지연구소 정보공개</p>
                    </div>
                    <ul class="depth2">
                      <li>
                        <a href="#">정보공개제도안내</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">정보공개제도란?</a>
                          </li>
                          <li>
                            <a href="#">정보공개처리절차/방법</a>
                          </li>
                          <li>
                            <a href="#">비공개정보</a>
                          </li>
                          <li>
                            <a href="#">불복구절차방법</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="#">사전정보공표</a>
                      </li>
                      <li>
                        <a href="#">연구시설 및 장비 공동 활용</a>
                        <ul class="depth3">
                          <li>
                            <a href="#">공동활용 안내</a>
                          </li>
                          <li>
                            <a href="#">공동활용 연구시설 및 장비현황</a>
                          </li>
                        </ul>
                      </li>
                      <li class="depth3_margin">
                        <a href="#">사업실명제</a>
                      </li>
                      <li class="depth3_margin">
                        <a href="#">입찰공고</a>
                      </li>
                      <li class="depth3_margin">
                        <a href="#">경영공시</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </nav>
          <% if (session.getAttribute("UserId") == null) { %>
          <a href="login.do" class="login"></a>
          <% } else if (session.getAttribute("UserId") != null) { %>
          <a href="ProFil.do" class="profil"></a>
          <% } %>
          <div class="side_wrap">
            <ul class="home_lang">
              <li class="home"><a href="index.do">HOME</a></li>
              <li class="lang_wrap">
                <button class="lang_btn" type="button">ENGLISH</button>
                <ul class="lang">
                  <li><a href="#">ENGLISH</a></li>
                  <li><a href="#">KOREAN</a></li>
                </ul>
              </li>
            </ul>
            <ul class="site_map">
              <li>
                <a href="#" class="search"><span class="blind">검색</span></a>
              </li>
              <li>
                <a href="#" class="pc_site">
                  <span class="blind">사이트맵</span>
                  <div class="site_icon"><i></i> <i></i> <i></i></div>
                </a>
              </li>
              <li>
                <a href="#" class="m_site"
                  ><span class="blind">사이트맵</span>
                  <div class="site_icon"><i></i> <i></i> <i></i></div>
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
                  <input type="search" placeholder="검색어를 입력하세요" />
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
                      <li>
                        <a href="#">관련단체 및 조직</a>
                      </li>
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
                      <li>
                        <a href="#">기술공학분야</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">연구사업</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">주요연구사업</a>
                      </li>
                      <li>
                        <a href="#">정부수탁사업</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">시기별 극지연구</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">2000~2010의 극지연구</a>
                      </li>
                      <li>
                        <a href="#">1970~1990의 극지연구</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">연구데이터</a>
                    <ul class="m_depth3">
                      <li><a href="#">연구부문</a></li>
                      <li>
                        <a href="#">학술·문헌 부문</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">정책</a>
                    <ul class="m_depth3">
                      <li><a href="#">정책지원</a></li>
                      <li>
                        <a href="#">극지정책 아카이브</a>
                      </li>
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
                      <li>
                        <a href="#">눈나라 얼음나라(웹진)</a>
                      </li>
                      <li>
                        <a href="#">기지체험(VR)</a>
                      </li>
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
                      <li>
                        <a href="#">쇄빙연구선 소개</a>
                      </li>
                      <li><a href="#">운항일정</a></li>
                      <li>
                        <a href="#">아라온호 위치</a>
                      </li>
                      <li>
                        <a href="#">쇄빙연구선 체험(VR)</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">남극장보고과학기지</a>
                    <ul class="m_depth3">
                      <li><a href="#">기지소개</a></li>
                      <li><a href="#">월동연구대</a></li>
                      <li>
                        <a href="#">눈나라 얼음나라(웹진)</a>
                      </li>
                      <li>
                        <a href="#">기지체험(VR)</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">극지로 가는길</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">극지로 가는길</a>
                      </li>
                      <li>
                        <a href="#">남극활동 허가 신청</a>
                      </li>
                      <li>
                        <a href="#">기지방문신청</a>
                      </li>
                      <li>
                        <a href="#">극지안전훈련</a>
                      </li>
                      <li><a href="#">건강검진</a></li>
                      <li><a href="#">화물발송</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">인프라 공동활용 신청</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">인프라공동활용(쇄빙연구선)</a>
                      </li>
                      <li>
                        <a href="#">인프라공동활용(남·북극 과학기지 방문)</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">환경관리</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">남극특별보호구역</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">해외협력센터</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">소통·참여</a>
                <ul class="m_depth2">
                  <li>
                    <a href="#">공지사항</a>
                  </li>
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
                      <li>
                        <a href="#">북극연구체험단</a>
                      </li>
                      <li>
                        <a href="#">남극연구체험단</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">고객참여</a>
                    <ul class="m_depth3">
                      <li><a href="List.do?board_type=<%= URLEncoder.encode("QA", "UTF-8") %>">Q&amp;A</a></li>
                      <li><a href="#">취재지원</a></li>
                      <li>
                        <a href="List.do?board_type=<%= URLEncoder.encode("자유게시판", "UTF-8") %>">
                        	KOPRI 청렴게시판
                        </a>
                      </li>
                      <li>
                        <a href="#">전재규 젊은 과학자상</a>
                      </li>
                      <li><a href="#">신고센터</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">자료실</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">극지사진·영상자료</a>
                      </li>
                      <li><a href="#">기관 발간물</a></li>
                      <li><a href="#">정기 발간물</a></li>
                      <li>
                        <a href="List.do?board_type=<%= URLEncoder.encode("자료실", "UTF-8") %>">극지사진콘테스트 수상작</a>
                      </li>
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
                      <li>
                        <a href="#">정보공개제도란?</a>
                      </li>
                      <li>
                        <a href="#">정보공개처리절차/방법</a>
                      </li>
                      <li><a href="#">비공개정보</a></li>
                      <li>
                        <a href="#">불복구절차방법</a>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#">사전정보공표</a></li>
                  <li>
                    <a href="#">연구시설 및 장비 공동 활용</a>
                    <ul class="m_depth3">
                      <li>
                        <a href="#">공동활용 안내</a>
                      </li>
                      <li>
                        <a href="#">공동활용 연구시설 및 장비현황</a>
                      </li>
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
      <main id="container">
        <section class="main_slider">
          <h3 class="blind">메인 슬라이더</h3>
          <div class="swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <a href="#" class="slide1">
                  <div class="slide_info">
                    <strong
                      >[보도자료] "극지가 미래다" 극지연구소 20주년, 기념식
                      거행</strong
                    >
                    <p>
                      □ 극지연구소(소장 신형철)는 오는 16일 (화) 극지연구소가
                      설립 20주년을 맞이한다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="#" class="slide2">
                  <div class="slide_info">
                    <strong
                      >[보도자료] 누가 남극 얼음 벽에 구멍을 냈을까</strong
                    >
                    <p>
                      극지연구소(소장 신형철)는 남극의 빙하가 사라지는 것을 막는
                      얼음벽이 무너지는 원인을 규명했다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="#" class="slide3">
                  <div class="slide_info">
                    <strong>[보도자료] '운명의 날' 빙하의 과거를 캐다</strong>
                    <p>
                      극지연구소(소장 신형철)는 남극에서도 기지의 도움을 받을 수
                      없는 고립된 지역에서 최초로 빙하시추에 성공했다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="#" class="slide4">
                  <div class="slide_info">
                    <strong
                      >[보도자료] 극지연구소, 극지환경재현실용화센터 입주 기업
                      모집</strong
                    >
                    <p>
                      □ 극지연구소 (소장 신형철)는 인천 송도에 위치한
                      극지환경재현실용화센터에 입주할 기업을 모집한다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="#" class="slide5">
                  <div class="slide_info">
                    <strong
                      >[보도자료] 극지연구소-국립수산과학원 MOU 체결</strong
                    >
                    <p>
                      □ 극지연구소 (소장 신형철)는 국립수산과학원 (원장
                      최용석)과 지난 2일 인천 송도에 위치한 극지연구소에서
                      업무협약을 체결했다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="#" class="slide6">
                  <div class="slide_info">
                    <strong
                      >[보도자료] 극지연구소, 2024년도 청소년 북극연구체험단
                      모집</strong
                    >
                    <p>
                      극지연구소 (소장 신형철)가 청소년 북극연구체험단 21C
                      다산주니어를 모집한다고 밝혔다.
                    </p>
                    <span>자세히보기 </span>
                  </div>
                </a>
              </div>
            </div>
            <div class="page_nav">
              <div class="swiper-pagination"></div>
              <button type="button" class="autoplay_btn">
                <span class="blind">일시정지</span>
              </button>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
          </div>
          <div class="wave_wrap">
            <div class="wave"></div>
            <div class="wave"></div>
            <div class="wave"></div>
          </div>
        </section>
        <section class="quick_menu">
          <div class="inner">
            <div class="tit_wrap">
              <h3>Quick menu</h3>
              <strong><span>KOPRI</span> 살펴보기<em></em></strong>
            </div>
            <ul class="menu">
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>연구</strong> <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>인프라 공동활용</strong>
                    <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>극지 가상체험</strong>
                    <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>언론보도</strong> <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>채용</strong> <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_png"></div>
                  <div class="menu_info">
                    <strong>연구소 소개(Brochure)</strong>
                    <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>극지미디어</strong>
                    <span></span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="menu_info">
                    <strong>극지정책아카이브</strong>
                    <span></span>
                  </div>
                </a>
              </li>
            </ul>
          </div>
          <div class="scrolldown">
            <strong><em></em>scroll</strong> <span></span>
          </div>
          <div class="oj oj1"><span></span> <span></span></div>
          <div class="oj oj2"><span></span> <span></span></div>
        </section>
        <section class="sns_channel">
          <div class="inner">
            <div class="tit_wrap">
              <h3>KOPRI SNS Channel</h3>
              <strong><span>KOPRI</span> SNS<em></em></strong>
            </div>
            <ul class="youtube">
              <li>
                <a href="#">
                  <div class="sns_img"></div>
                  <div class="sns_info">
                    <div class="txt_wrap">
                      <strong>다이어트 유형 (극지 동물 ver.) #shorts</strong>
                      <p>05월 25일</p>
                      <div class="youtube_link">
                        <span></span>
                        <strong>KOPRI YOUTUBE</strong>
                      </div>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="sns_img"></div>
                  <div class="sns_info">
                    <div class="txt_wrap">
                      <strong>직장인 퇴근 유형 (펭귄 ver.) #shorts</strong>
                      <p>05월 17일</p>
                      <div class="youtube_link">
                        <span></span>
                        <strong>KOPRI YOUTUBE</strong>
                      </div>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <div class="sns_img"></div>
                  <div class="sns_info">
                    <div class="txt_wrap">
                      <strong
                        >여름방학에 북극 갈래? 북극연구체험단 모집 21C
                        다산주니어s</strong
                      >
                      <p>04월 13일</p>
                      <div class="youtube_link">
                        <span></span>
                        <strong>KOPRI YOUTUBE</strong>
                      </div>
                    </div>
                  </div>
                </a>
              </li>
            </ul>
            <div class="sns_link">
              <ul>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 페이스북</p>
                  </a>
                </li>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 네이버블로그</p>
                  </a>
                </li>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 네이버TV</p>
                  </a>
                </li>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 네이버포스트</p>
                  </a>
                </li>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 인스타그램</p>
                  </a>
                </li>
                <li>
                  <a href="#"
                    ><span></span>
                    <p>KOPRI 유튜브</p>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </section>
        <section class="main_infra">
          <div class="inner">
            <div class="tit_wrap">
              <h3>INFRASTRUCTURE</h3>
              <strong><span>KOPRI</span> 주요인프라<em></em></strong>
            </div>
            <div class="infrabtn_wrap">
              <ul class="infra_btn">
                <li><a href="#">남극세종기지</a></li>
                <li><a href="#">북극다산과학기지</a></li>
                <li><a href="#">쇄빙연구선 아라온</a></li>
                <li><a href="#">남극장보고과학기지</a></li>
              </ul>
            </div>
            <div class="swiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide slide1">
                  <div class="txt_wrap">
                    <p>'24.04.19 AM 12:14</p>
                    <strong>남극세종과학기지</strong>
                    <p>세상의 끝에 우뚝 서다.</p>
                  </div>
                  <ul class="infra_icon no1">
                    <li>
                      <a href="#">
                        <span></span>
                        <p>건물현황</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>주요장비</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>주변기지</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>월동연구대</p>
                        <em></em>
                      </a>
                    </li>
                  </ul>
                  <div class="infra_btn">
                    <a href="#"><strong>CCTV</strong><span></span></a>
                    <a href="#"><strong>자세히보기</strong><span></span></a>
                  </div>
                </div>
                <div class="swiper-slide slide2">
                  <div class="txt_wrap">
                    <p>'24.04.19 AM 4:14</p>
                    <strong>북극다산과학기지</strong>
                    <p>국내 최초, 세계 12번째의 북극 과학기지</p>
                  </div>
                  <ul class="infra_icon no2">
                    <li>
                      <a href="#">
                        <span></span>
                        <p>기지소개</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>기지촌소개</p>
                        <em></em>
                      </a>
                    </li>
                  </ul>
                  <div class="infra_btn">
                    <a href="#"><strong>CCTV</strong><span></span></a>
                    <a href="#"><strong>자세히보기</strong><span></span></a>
                  </div>
                </div>
                <div class="swiper-slide slide3">
                  <div class="txt_wrap">
                    <strong>쇄빙연구선 아라온</strong>
                    <p>연구와 보급지원 항해로 남·북극을 누비다</p>
                  </div>
                  <ul class="infra_icon no3">
                    <li>
                      <a href="#">
                        <span></span>
                        <p>제원</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>연구장비</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>운항일정</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>승선자 안내서</p>
                        <em></em>
                      </a>
                    </li>
                  </ul>
                  <div class="infra_btn">
                    <a href="#"><strong>CCTV</strong><span></span></a>
                    <a href="#"><strong>자세히보기</strong><span></span></a>
                  </div>
                </div>
                <div class="swiper-slide slide4">
                  <div class="txt_wrap">
                    <p>'24.04.19 PM 4:14</p>
                    <strong>남극장보고과학기지</strong>
                    <p>세상의 끝에 우뚝 서다.</p>
                  </div>
                  <ul class="infra_icon no4">
                    <li>
                      <a href="#">
                        <span></span>
                        <p>건물현황</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>주요장비</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>주변기지</p>
                        <em></em>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <span></span>
                        <p>월동연구대</p>
                        <em></em>
                      </a>
                    </li>
                  </ul>
                  <div class="infra_btn">
                    <a href="#"><strong>CCTV</strong><span></span></a>
                    <a href="#"><strong>자세히보기</strong><span></span></a>
                  </div>
                </div>
              </div>
              <div class="infra_nav">
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination pagination_bullet"></div>
                <button type="button" class="autoplay_btn">
                  <span class="blind">일시정지</span>
                </button>
                <div class="swiper-button-next"></div>
              </div>
            </div>
            <div class="infra_link">
              <ul>
                <li>
                  <a href="#"
                    ><span></span><strong>극지안전교육</strong><em></em
                  ></a>
                </li>
                <li>
                  <a href="#"
                    ><span></span><strong>찾아오시는 길</strong><em></em
                  ></a>
                </li>
                <li>
                  <a href="#"><span></span><strong>Q&amp;A</strong><em></em></a>
                </li>
                <li>
                  <a href="#"
                    ><span></span><strong>직원검색</strong><em></em
                  ></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="infra_con_wrap">
            <div class="infra_con1"></div>
            <div class="infra_con2"></div>
          </div>
        </section>
      </main>
      <footer id="footer">
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
                <span
                  >우) 21990 인천광역시 연수구 송도미래로 26(송도동 213-3)</span
                >
                <a href="#"><span>Tel: 032)770-8400</span></a>
                <span>Fax: 032)770-8709</span>
              </div>
              <p>
                COPYRIGHT (C) KOREA POLAR RESEARCH INSTITUTE ALL RIGHT RESERVED
              </p>
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
                <img src="./images/flogo.png" alt="푸터로고" />
                <img
                  src="./images/web_mark.png"
                  alt="푸터웹마크로고"
                  class="web_mark"
                />
              </div>
            </div>
          </div>
        </div>
        <a href="#" class="top_btn"><span></span>TOP</a>
      </footer>
    </div>
  </body>
</html>
