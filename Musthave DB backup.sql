--------------------------------------------------------
--  ������ ������ - ȭ����-7��-23-2024   
--------------------------------------------------------
REM INSERTING into MUSTHAVE.COMMENTS
SET DEFINE OFF;
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (13,302,'southwinds','������','TEST',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (14,302,'southwinds','������','test2',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (15,302,'southwinds','������','tes345',to_date('24/07/19','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (24,302,'southwinds','������','���ƿ� ',to_date('24/07/21','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (26,320,'southwinds','������','������������',to_date('24/07/23','RR/MM/DD'));
Insert into MUSTHAVE.COMMENTS (IDX,POSTNUM,ID,NAME,CONTENT,COMMENTDATE) values (27,320,'nakja','���ڽ�','12341234',to_date('24/07/23','RR/MM/DD'));
REM INSERTING into MUSTHAVE.LIKES
SET DEFINE OFF;
Insert into MUSTHAVE.LIKES (IDX,POSTNUM,ID,LIKEDATE) values (13,302,'southwinds',to_date('24/07/21','RR/MM/DD'));
Insert into MUSTHAVE.LIKES (IDX,POSTNUM,ID,LIKEDATE) values (14,302,'nakja',to_date('24/07/21','RR/MM/DD'));
REM INSERTING into MUSTHAVE.MEMBER
SET DEFINE OFF;
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('southwinds','12345','������',to_date('24/07/15','RR/MM/DD'),'southwinds970521@gmail.com','010-8892-1843');
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('nakja','1234','���ڽ�',to_date('24/07/04','RR/MM/DD'),null,null);
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('musthave','1234','�ӽ�Ʈ�غ�',to_date('24/07/03','RR/MM/DD'),null,null);
Insert into MUSTHAVE.MEMBER (ID,PASS,NAME,REGIDATE,EMAIL,PHONENUM) values ('admin','1234','������',to_date('24/07/17','RR/MM/DD'),null,null);
REM INSERTING into MUSTHAVE.MVCBOARD
SET DEFINE OFF;
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (315,'������','test3','test3',to_date('24/07/18','RR/MM/DD'),'��й�ȣ ���� 2.png','20240718_131453818.png',0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (302,'������','1234567','1234567',to_date('24/07/18','RR/MM/DD'),'���������� ���� 1.png','20240718_105343796.png',0,396,'southwinds','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (321,'������','12345','12345',to_date('24/07/23','RR/MM/DD'),'ĸó.PNG','20240723_154424579.PNG',0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (318,'������','123','123',to_date('24/07/18','RR/MM/DD'),'��й�ȣ ������ ���� 3.png','20240718_131842392.png',0,0,'southwinds','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (304,'������','�׽�Ʈ2','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (305,'������','�׽�Ʈ3','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (306,'������','�׽�Ʈ4','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (307,'������','�׽�Ʈ5','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (308,'������','�׽�Ʈ6','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (309,'������','�׽�Ʈ1','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (303,'������','�׽�Ʈ1','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'admin','�ڷ��');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (310,'������','�׽�Ʈ2','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (311,'������','�׽�Ʈ3','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (312,'������','�׽�Ʈ4','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (313,'������','�׽�Ʈ5','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (314,'������','�׽�Ʈ6','�����Դϴ�.',to_date('24/07/18','RR/MM/DD'),null,null,0,0,'southwinds','QA');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (320,'������','1234','1234',to_date('24/07/23','RR/MM/DD'),null,null,0,1,'southwinds','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (288,'������','�׽�Ʈ1','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (289,'������','�׽�Ʈ2','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (290,'������','�׽�Ʈ3','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (291,'������','�׽�Ʈ4','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,0,'admin','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (292,'������','�׽�Ʈ5','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,3,'admin','�����Խ���');
Insert into MUSTHAVE.MVCBOARD (IDX,NAME,TITLE,CONTENT,POSTDATE,OFILE,SFILE,DOWNCOUNT,VISITCOUNT,ID,BOARD_TYPE) values (296,'������','�׽�Ʈ6','�����Դϴ�.',to_date('24/07/17','RR/MM/DD'),null,null,0,1,'admin','�ڷ��');
