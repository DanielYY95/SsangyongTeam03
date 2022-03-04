SELECT * FROM pro_pics;
SELECT * FROM PRO_COMMENT pc;
SELECT * FROM PRO_LIKE pl;

-- 제약조건 추가

-- ### 게시물이 사라진다면 => on update cascade를 지원하고있지않음 ㅠ
---- 좋아요, 댓글 삭제

alter table pro_like add constraint pl_ppId_pk 
		foreign key(pp_id) REFERENCES pro_pics(pp_id) ON DELETE CASCADE; 
alter table pro_comment add constraint pc_ppId_fk 
		foreign key(pp_id) REFERENCES pro_pics(pp_id) ON DELETE CASCADE;  


-- ### 회원이 사라진다면
---- 좋아요, 댓글, 게시물 삭제

alter table pro_pics add constraint pp_user_pk 
		foreign key(pp_user) REFERENCES members(m_id) ON DELETE CASCADE; 
alter table pro_like add constraint pl_user_pk 
		foreign key(pl_user) REFERENCES members(m_id) ON DELETE CASCADE; 
alter table pro_comment add constraint pc_user_fk 
		foreign key(pc_user) REFERENCES members(m_id) ON DELETE CASCADE;  



SELECT * FROM KNOW_HOW_LIKE khl;

SELECT kh_id FROM KNOW_HOW kh;

SELECT * FROM KNOW_HOW_COMMENT khc;


SELECT * FROM KNOWHOW_POST kp ;

SELECT * FROM pro_pics;

SELECT * FROM LOCAL_PICS lp;

-- 전문가사진 좋아요 확인
SELECT * FROM PRO_LIKE pl;

select count(*) from PRO_LIKE
		where PP_ID = 'pp00150'
		AND PL_USER = 'asd456'; 
	
	

SELECT * FROM PRO_PICS pp;	

UPDATE PRO_PICS 
	SET PP_PHOTO = '/upload/1111.jpg'
	WHERE pp_id = 'pp00023';

UPDATE PRO_PICS 
	SET PP_PHOTO = '/upload/2222.png'
	WHERE PP_ID = 'pp00025';
	
SELECT * 
FROM PRO_PICS pp, 
	(SELECT PP_ID, count(*) AS PP_LIKECNT
	FROM PRO_LIKE pl 
	GROUP BY pp_id
	)pl
WHERE pp.PP_ID = pl.PP_ID;

	
DELETE FROM pro_like;

SELECT * FROM PRO_COMMENT pc;


select * from pro_pics pp 
where pp_id in 
	(select pp_id from pro_like
		where pl_user = 'asd456'
	);


ALTER local_pics ADD LP_DATE DATE 

CREATE SEQUENCE plId_seq
	START WITH 1
	MINVALUE 1;

SELECT * FROM MEMBERs;

SELECT * FROM PRO_COMMENT pc;

CREATE 



CREATE SEQUENCE pcId_seq
	START WITH 1
	MINVALUE 1;

DROP SEQUENCE spId_seq;
	
CREATE SEQUENCE spId_seq
	START WITH 12
	MINVALUE 1;	
	
SELECT * FROM SCOUT_POST sp;

-- 멤버 테스트
INSERT INTO members values('asd456', '1555', '테스트봇1', '사용자', 'n', '01012345678', '19950101', 'qwer1234@gmail.com','싱하', 'm', '','',sysdate,'');
INSERT INTO members values('himan', '7777', '테스트봇2', '사용자', 'n', '01026215678', '19700101', 'asd@naver.com','방가', 'm', '','',sysdate,'');


-- 잘 안 된다. ${path}/upload/김포함상공원.

SELECT * FROM pro_pics;

---- 에러 수정
--전문가사진과 동네사진은 content가 long타입일 필요가 없다. 그래서 일단은 varchar2(300)으로 변경
ALTER TABLE pro_pics MODIFY pp_content varchar2(300); -- 바꿨는데 왜 여전히 long이지...
ALTER TABLE LOCAL_PICS MODIFY lp_content varchar2(300);

-- 게시판 테이블에 좋아요 추가

ALTER TABLE PRO_PICS ADD PP_LIKECNT NUMBER DEFAULT 0; -- 기본값이라 숫자를 더 넣을 수 없는듯...

SELECT * FROM PRO_LIKE pl;

DELETE FROM PRO_COMMENT pc;
DELETE FROM PRO_LIKE pl;

DELETE FROM PRO_PICS pp;

alter TABLE PRO_PICS DROP COLUMN pp_likecnt

update PRO_PICS
	set PP_LIKECNT = 0
	where PP_ID = 'pp00145'; 

select * from PRO_PICS
order by PP_VIEW DESC;
		

-- 게시물 테스트
insert into PRO_PICS values(
	'pp00145', '울산 사랑', '밥 외로워서 밥을 많이 먹는다던 너에게 ', '/upload/roofie.jpg', 
	'도시', '#김포 #김포사람', '경기도 김포시', 0, sysdate, 'himan', 0
);

insert into PRO_PICS values(
	'pp00146', '부산 사랑', '봄날에는 사람의 눈빛이 제철이라고', '/upload/sea.png', 
	'도시', '#김포 #김포사람', '부산광역시', 0, sysdate, 'hyoeun123', 0
);
insert into PRO_PICS values(
	'pp00147', '목포 사랑', '밤이 앓는 몽유병이야', '/upload/chicage.png', 
	'도시', '#김포 #김포사람', '전라남도 목포시', 0, sysdate, 'asd456', 0
);
insert into PRO_PICS values(
	'pp00148', '광주 사랑', '마음에 꽂힌 꽃 한송이가 더 아파서 잠이 오지 않는다', '/upload/mountain.png', 
	'인물', '#김포 #김포사람', '광주광역시', 0, sysdate, 'himan', 0
);
insert into PRO_PICS values(
	'pp00149', '김천 사랑', '당신의 눈빛은 나를 잘 헐게 만든다', '/upload/attraction.png', 
	'도시', '#김포 #김포사람', '경상북도 김천시', 0, sysdate, 'hyoeun123', 0
);
insert into PRO_PICS values(
	'pp00150', '인천 사랑', '눈을 감고 입을 다물고, 행복해져라.', '/upload/sea.png', 
	'풍경', '#김포 #김포사람', '인천광역시 남동구', 0, sysdate, 'asd456', 0
);

insert into PRO_PICS values(
	'pp00151', '남해 사랑', '꽃보다 아름다워~.', '/upload/김포함상공원.jpg', 
	'자연', '#남해 #남해사람', '경상남도 남해군', 0, sysdate, 'asd456', 0
);

insert into PRO_PICS values(
	'pp00152', '서울 사랑', '여행 사람이 여행하는 곳은 사람의 마음뿐이다 ', '/upload/chicage.png', 
	'도시', '#마포 #마포사람', '서울시 강동구', 0, sysdate, 'himan', 0
);


UPDATE PRO_PICS 
  SET PP_PLACE = '부산광역시'
  WHERE PP_ID ='pp00146';

