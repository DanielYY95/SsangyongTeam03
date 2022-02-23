CREATE TABLE Interview (
   IV_ID   varchar2(10) PRIMARY KEY,
   IV_KIND   varchar2(10),
   IV_DATE   date,
   IV_PHOTO   varchar2(300),
   IV_TITLE   varchar2(100),
   IV_CONTENT   LONG
);

CREATE TABLE Members (
   M_ID   varchar2(20) PRIMARY KEY,
   M_PASS   varchar2(20),
   M_NAME   varchar2(20),
   M_AUTH   varchar2(20),
   M_PRO_TYPE   varchar2(20),
   M_PHONE   number,
   M_BIRTH   date,
   M_NICK   varchar2(20),
   M_GENDER   varchar2(10),
   M_PROFILE   varchar2(300),
   M_INTRODUCE   varchar2(100),
   M_JOIN_DATE   DATE,
   MA_ID REFERENCES Member_agree(MA_ID)
);

CREATE TABLE Member_Agree (
   MA_ID   varchar2(10) PRIMARY KEY,
   MA_TYPE   varchar2(10),
   MA_PERSNAL   varchar2(10),
   MA_LOC   varchar2(10),
   MA_MAIL   varchar2(10)
);

CREATE TABLE Follow (
   F_ID   varchar2(20) PRIMARY KEY,
   F_RECEIVER   varchar2(20),
   F_SENDER   varchar2(20)
);

---### 공모전
CREATE TABLE Contest (
   CT_ID   varchar2(20) PRIMARY KEY,
   CT_TITLE   varchar2(100),
   CT_PREVIEW_PHOTO   varchar2(300),
   CT_POPUP_CONTENT   long,
   CT_REG_DATE   date,
   CT_CLOSE_DATE   date
);
--- ### 만남의 광장
CREATE TABLE Meet_Post (
   MP_ID   varchar2(20) PRIMARY KEY,
   MP_TITLE   varchar2(100),
   MP_CONTENT   long,
   MP_VIEW   number,
   MP_DATE   date,
   MP_USER   REFERENCES MEMBERS(M_ID)
);

CREATE TABLE Meet_Comment (
   MC_ID   varchar2(20) PRIMARY KEY,
   MC_CONTENT   varchar2(200),
   MC_DATE   date,
   MC_USER   varchar2(20),
   MP_ID   REFERENCES Meet_Post(MP_ID)
);

CREATE TABLE Meet_Like (
   ML_ID   varchar2(20) PRIMARY KEY,
   ML_USER   varchar2(20),
   MP_ID REFERENCES Meet_Post(MP_ID)
);

--- ### 스카웃 후기
CREATE TABLE Scout_Post (
   SP_ID   varchar2(20) PRIMARY KEY,
   SP_TITLE   varchar2(100),
   SP_CONTENT  varchar2(4000),
   SP_VIEW   number,
   SP_DATE   date,
   SP_USER   REFERENCES MEMBERS(M_ID)
);

CREATE TABLE Scout_Comment (
   SC_ID   varchar2(20) PRIMARY KEY,
   SC_CONTENT   varchar2(200),
   SC_DATE   date,
   SC_USER   varchar2(20),
   SP_ID   REFERENCES Scout_Post(SP_ID)
);

CREATE TABLE Scout_Like (
   SL_ID   varchar2(20) PRIMARY KEY,
   SL_USER varchar2(20),
   SP_ID   REFERENCES Scout_Post(SP_ID)
);

--- ### 노하우
CREATE TABLE Knowhow_Post (
   KP_ID   varchar2(20) PRIMARY KEY,
   KP_TITLE   varchar2(100),
   KP_CONTENT   LONG,
   KP_VIEW   number,
   KP_DATE   date,
   KP_USER varchar2(20) REFERENCES MEMBERS(M_ID)
);

CREATE TABLE Knowhow_Like (
   KL_ID   varchar2(20) PRIMARY KEY,
   KL_USER varchar2(20),
   KP_ID varchar2(20)  REFERENCES Knowhow_Post(KP_ID)
);

CREATE TABLE Knowhow_Comment (
   KC_ID   varchar2(20) PRIMARY KEY,
   KC_USER   varchar2(20),
   KC_CONTENT   varchar2(200),
   KC_DATE   date,
   KP_ID varchar2(20) REFERENCES Knowhow_Post(KP_ID)
);

--- ### 동네 사진
CREATE TABLE Local_Pics (
   LP_ID   varchar2(20) PRIMARY KEY,
   LP_TITLE   varchar2(100),
   LP_CONTENT   LONG,
   LP_PHOTO   varchar(300),
   LP_CATEGORY  varchar2(50),
   LP_HASH   varchar2(300),
   LP_PLACE varchar2(200),
   LP_VIEW   number,
   LP_DATE   date,
   LP_USER varchar2(20) REFERENCES MEMBERS(M_ID)
);

CREATE TABLE Local_Comment (
   LC_ID   varchar2(20) PRIMARY KEY,
   LC_CONTENT   varchar2(200),
   LC_DATE   date,
   LC_USER   varchar2(20),
   LP_ID varchar2(20)  REFERENCES LOCAL_Pics(LP_ID)
);


CREATE TABLE Local_Like (
   LL_ID   varchar2(20) PRIMARY KEY,
   LL_USER   varchar2(20),
   LP_ID varchar2(20)  REFERENCES Local_pics(LP_ID)
);

--- ### 전문가 사진
CREATE TABLE Pro_Pics (
   PP_ID   varchar2(20) PRIMARY KEY,
   PP_TITLE   varchar2(100),
   PP_CONTENT   long,
   PP_PHOTO   varchar2(300),
   PP_CATEGORY   varchar2(50),
   PP_HASH   varchar2(300),
   PP_PLACE   varchar2(200),
   PP_VIEW   number,
   PP_DATE   date,
   PP_USER varchar2(20) REFERENCES members(M_ID)
);

CREATE TABLE Pro_Comment (
   PC_ID   varchar2(20) PRIMARY KEY,
   PC_CONTENT   varchar2(200),
   PC_DATE   date,
   PC_USER   varchar2(20),
   PP_ID varchar2(20) REFERENCES pro_pics(PP_ID)
);

CREATE TABLE Pro_Like (
   PL_ID   varchar2(20) PRIMARY KEY,
   PL_USER   varchar2(20),
   PP_ID varchar2(20) REFERENCES pro_pics(PP_ID)
);

  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00001','테스트1','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00002','테스트2','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00003','테스트3','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00004','테스트4','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00005','테스트5','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00006','테스트6','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00007','테스트7','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00008','테스트8','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00009','테스트9','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00010','테스트10','테스트입니다',0,sysdate,'himan');
  INSERT INTO SCOUT_POST (sp_id,SP_TITLE,SP_CONTENT,SP_VIEW,SP_DATE,SP_USER) values('sp00011','테스트11','테스트입니다',0,sysdate,'himan');


select * from (
	select rownum num, sc.* from(
		select * from scout_post order by sp_date desc
	) sc
)
where num between 1 and 10;