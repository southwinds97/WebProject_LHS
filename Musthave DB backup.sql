--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-23-2024   
--------------------------------------------------------
REM INSERTING into MUSTHAVE.COMMENTS
SET DEFINE OFF;
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (13,302,'southwinds','이형석','TEST',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (14,302,'southwinds','이형석','test2',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (15,302,'southwinds','이형석','tes345',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (24,302,'southwinds','이형석','좋아요 ',to_date('24/07/21','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (26,320,'southwinds','이형석','ㅁㄴㅇㄼㅈㄷ',to_date('24/07/23','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (27,320,'nakja','낙자쌤','12341234',to_date('24/07/23','RR/MM/DD'));
REM INSERTING into MUSTHAVE.LIKES
SET DEFINE OFF;
Insert into MUSTHAVE.LIKES (IDX,POSTNUM,ID,LIKEDATE) values (13,302,'southwinds',to_date('24/07/21','RR/MM/DD'));
Insert into MUSTHAVE.LIKES (IDX,POSTNUM,ID,LIKEDATE) values (14,302,'nakja',to_date('24/07/21','RR/MM/DD'));
REM INSERTING into MUSTHAVE.MEMBER
SET DEFINE OFF;
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('southwinds','12345','이형석',to_date('24/07/15','RR/MM/DD'),'southwinds970521@gmail.com','010-8892-1843');
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('nakja','1234','낙자쌤',to_date('24/07/04','RR/MM/DD'),null,null);
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('musthave','1234','머스트해브',to_date('24/07/03','RR/MM/DD'),null,null);
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('admin','1234','관리자',to_date('24/07/17','RR/MM/DD'),null,null);
REM INSERTING into MUSTHAVE.MVCBOARD
SET DEFINE OFF;
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (315,'관리자','test3','test3',to_date('24/07/18','RR/MM/DD'),'비밀번호 오류 2.png','20240718_131453818.png',0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (302,'이형석','1234567','1234567',to_date('24/07/18','RR/MM/DD'),'수정페이지 오류 1.png','20240718_105343796.png',0,396,'southwinds','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (321,'관리자','12345','12345',to_date('24/07/23','RR/MM/DD'),'캡처.PNG','20240723_154424579.PNG',0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (318,'이형석','123','123',to_date('24/07/18','RR/MM/DD'),'비밀번호 페이지 오류 3.png','20240718_131842392.png',0,0,'southwinds','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (304,'관리자','테스트2','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (305,'관리자','테스트3','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (306,'관리자','테스트4','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (307,'관리자','테스트5','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (308,'관리자','테스트6','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (309,'이형석','테스트1','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (303,'관리자','테스트1','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','자료실');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (310,'이형석','테스트2','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (311,'이형석','테스트3','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (312,'이형석','테스트4','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (313,'이형석','테스트5','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (314,'이형석','테스트6','내용입니다.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (320,'이형석','1234','1234',to_date('24/07/23','RR/MM/DD'),null,null,0,1,'southwinds','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (288,'관리자','테스트1','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (289,'관리자','테스트2','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (290,'관리자','테스트3','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (291,'관리자','테스트4','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (292,'관리자','테스트5','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,3,'admin','자유게시판');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (296,'관리자','테스트6','내용입니다.',to_date('24/07/17','RR/MM/DD'),null,null,0,1,'admin','자료실');
