
/* Drop Triggers */

DROP TRIGGER TRI_menu_mid;
DROP TRIGGER TRI_mp_menu_mid;
DELETE 
		  FROM member
		 WHERE BNO = 2


/* Drop Tables */

DROP TABLE menu CASCADE CONSTRAINTS;
select * from mp_file;
drop table MULTIMEDIA;


/* Drop Sequences */

DROP SEQUENCE SEQ_mp_menu_mid;
DROP SEQUENCE MP_reply6_SEQ;
DROP SEQUENCE SEQ_mp_cell;
DROP SEQUENCE SEQ_multimedia;
DROP SEQUENCE SEQ_insa;
DROP SEQUENCE SEQ_gongji;
DROP SEQUENCE MP_FILE_NO;
commit

select * from member;

/* Create Sequences */

CREATE SEQUENCE SEQ_menu_mid INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_mp_menu_mid INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE MP_QA_SEQ INCREMENT BY 1 START WITH 1;
SEQ_MP_FILE_NO.NEXTVAL,
CREATE SEQUENCE MP_FILE_NO INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCACHE;
CREATE SEQUENCE MP_qa_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE MP_REPLY2_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE news_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE INSA_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE jaryo_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ INCREMENT BY 1 START WITH 1;
SELECT * FROM USER_SEQUENCES;
SELECT * FROM mp_qa;
drop table mp_qa;
JARYO_SEQ

select * from member;
/* Create Tables */

CREATE TABLE menu
(
	mid number NOT NULL,
	code varchar2(10) NOT NULL UNIQUE,
	codename varchar2(50),
	sort_num number,
	comments varchar2(1000),
	reg_id varchar2(20),
	reg_dt date,
	PRIMARY KEY (mid)
);




/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_menu_mid BEFORE INSERT ON menu
FOR EACH ROW
BEGIN
	SELECT SEQ_menu_mid.nextval
	INTO :new.mid
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_mp_menu_mid BEFORE INSERT ON mp_menu
FOR EACH ROW
BEGIN
	SELECT SEQ_mp_menu_mid.nextval
	INTO :new.mid
	FROM dual;
END;

/

DROP TABLE member;

CREATE TABLE member(
BNO NUMBER NOT NULL,
mem_id VARCHAR(100) PRIMARY KEY,
mem_pw VARCHAR(100),
mem_name VARCHAR(100),
mem_birth VARCHAR(100),
mem_email VARCHAR(100),
mem_phone VARCHAR(100),
mem_gender VARCHAR(100),
mem_oaddress VARCHAR(100),
mem_address VARCHAR(100),
mem_detailaddress VARCHAR(100)
);


CREATE TABLE MP_BOARD(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

CREATE TABLE MP_QA(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);
COMMIT
SELECT * FROM TABLE;
DROP TABLE MP_BUY;
CREATE TABLE MP_BUY(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

CREATE TABLE MP_BUY(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

drop table news;
CREATE TABLE news(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(4000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

CREATE TABLE INSA(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

CREATE TABLE GONGJI(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

DROP TABLE MP_REPLY;
create table mp_reply2 (
    bno number not null,
    rno number not null,
    content varchar2(1000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    primary key(bno, rno)
);

CREATE TABLE jaryo(
    BNO NUMBER NOT NULL,
    TITLE VARCHAR2(100)     NOT NULL,
    CONTENT VARCHAR2(2000)  NOT NULL,
    WRITER VARCHAR2(100)    NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO)
);

select * from mp_file
CREATE TABLE MP_FILE
(
    FILE_NO NUMBER,                         --파일 번호
    BNO NUMBER NOT NULL,                    --게시판 번호
    ORG_FILE_NAME VARCHAR2(260) NOT NULL,   --원본 파일 이름
    STORED_FILE_NAME VARCHAR2(36) NOT NULL, --변경된 파일 이름
    FILE_SIZE NUMBER,                       --파일 크기
    REGDATE DATE DEFAULT SYSDATE NOT NULL,  --파일등록일
    DEL_GB VARCHAR2(1) DEFAULT 'N' NOT NULL,--삭제구분
    PRIMARY KEY(FILE_NO)                    --기본키 FILE_NO
);
COMMIT;


COMMIT

-- 댓글 

drop table mp_reply4;
alter table mp_reply6 add constraint mp_reply6_bno foreign key(bno)
references insa(bno);

create sequence mp_reply6_seq START WITH 1 MINVALUE 0;

commit

drop table mp_b;

insert into news(bno, title, content, writer)
select news_seq.nextval, title, content, writer from news;
commit

create table mp_reply4 (
    bno number not null,
    rno number not null,
    content varchar2(1000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    primary key(bno, rno)
);

alter table mp_reply4 add constraint mp_reply4_bno foreign key(bno)
references MP_cell(bno) on delete cascade;

create sequence mp_reply4_seq START WITH 1 MINVALUE 0;

commit

select constraint_name, table_name, r_constraint_name from user_constraints where constraint_name = '{SCOTT5.MP_REPLY6_BNO}'

