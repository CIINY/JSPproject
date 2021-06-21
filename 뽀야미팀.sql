CREATE TABLE project_member ( 
MID VARCHAR2(20)
MPW VARCHAR2(20)
MNAME VARCHAR2(50)
MADDRESS VARCHAR2(500)
MPHONE VARCHAR2(50)
MEMAIL VARCHAR2(100)
MRDATE DATE
MBIRTH DATE
PRIMARY KEY (MID)
);


CREATE TABLE product (
  id number NOT NULL,
  pname varchar(100) NOT NULL,
  pimage1 varchar(4000) NOT NULL,
  pdetail varchar(500) NOT NULL,
  prdate date NOT NULL,
  cid number NOT NULL,
  price number NOT NULL
 );

CREATE SEQUENCE seq_pid nocache;

INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(10, '������ ���� ���� ����', './picture/brace1.jpeg', '������ ���� �����, ������ ��� �Բ� ��︮�� ����', '2021-06-19', 1, 1300);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(11, '��������', './picture/brace2.jpeg', ' �ϳ��� ū ������ �޷��ִ� �̴�ü������� �ణ�� ������ �̷���� ��� �Բ� �ִ� ����', '2021-06-19', 1, 1900);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(12, 'Ŀ������', './picture/brace3.jpeg', 'Ŀ�ð� �Բ� ���� ���� ������', '2021-06-19', 1, 2500);
INSERT INTO product (pid,pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(13, '��â����', './picture/brace3.jpeg', '���� �����ϴ� ��â���� �̷���� �ɸ���� ��â����', '2021-06-19', 1, 4500);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(14, '������', './picture/hair1.jpeg', '��Ż�� �̷���� �������� ���������� ���É��� ��Ÿ���� ��', '2021-06-19', 2, 5700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(15, '����Ű �Ӹ���', './picture/hair2.jpeg', '�νε��� �ʼ���! ����Ű���� ������ �����', '2021-06-19', 2, 3700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(16, '��Ʈ ���', './picture/hair3.jpeg', '������ ���� ���� ��Ʈ�� ������������ �Ѳ� �����ų �� �ִ� ����', '2021-06-19', 2, 1200);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(17, '��ũ ���', './picture/hair4.jpeg', '������ ��ũ�� �̷�������ν� ���É��� ������ �� �ִ� ���', '2021-06-19', 2, 2500);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(18, '����� �����', './picture/neck1.jpeg', '��������� ��������� �� ��ǰ�������� ������ �� �ִ� �����', '2021-06-19', 3, 27700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(19, 'Ű�����', './picture/neck2.jpeg', 'Ű����� ����̷� ��ȣ������ ����Ű�� �ϴ� �����', '2021-06-19', 3, 20700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(20, '������ �����', './picture/neck3.jpeg', '�Ҵ�Ʈ�� ������ �ִ� ����̷� ������ ������ �� �ִ� �����', '2021-06-19', 3, 21700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(21, '�Ҵ�Ʈ �����', './picture/neck4.jpeg', '���� ������ ū �Ҵ�Ʈ����� ������ �����ִ� ����̷� ȭ������ ���� ��ų �� �ִ� �����', '2021-06-19', 3, 17700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(22, '�������', './picture/ring1.jpeg', '����������� �̷���� �����ν� ������������ �����ų�� �ִ� ����', '2021-06-19', 4, 14700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(23, '��Ʈ ����', './picture/ring2.jpeg', '��û���� ������ ������ �νΰ� �ǰ�ʹٸ� �� ������ ����!!', '2021-06-19', 4, 17700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(24, '������', './picture/ring3.jpeg', '�����ϰ� ���õ� ���� �α��ִ� ����', '2021-06-19', 4, 15000);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(25, '��������', './picture/ring4.jpeg', '������ ������� ��ǰ������ ������ ���� ����', '2021-06-19', 5, 14300);  

CREATE TABLE basket (
  mid varchar2(20) NOT NULL,
  pname varchar2(100) NOT NULL,
  totalprice varchar2(30) NOT NULL,
  pamount number(11) NOT NULL,
  ppicture varchar2(4000) NOT NULL
);

select * from basket;

select * from product;

select * from project_member;

CREATE TABLE BBS_FREE (
    freeID NUMBER,
    freeTITLE VARCHAR2(100),
    mID VARCHAR2(20),
    freeDATE VARCHAR2(50),
    freeCONTENT VARCHAR2(4000),   
    reAvailable NUMBER(1),    
    PRIMARY KEY (freeID)
);

CREATE TABLE  BBS_REVIEW (
    reID NUMBER,
    reTITLE VARCHAR2(100),
    mID VARCHAR2(20),
    reDATE VARCHAR2(50),
    reIMAGE VARCHAR2(4000),
    reCONTENT VARCHAR2(4000),   
    reAvailable NUMBER(1), 
    rImage VARCHAR2(4000),
    PRIMARY KEY (reID)
);

-- ��� ���̺�
CREATE TABLE REVIEW_COMMENT
(
  COMMENT_NUM NUMBER NOT NULL,
  COMMENT_REID NOT NULL,
  COMMENT_ID VARCHAR2(15),
  COMMENT_DATE DATE,
  COMMENT_CONTENT VARCHAR2(1000) NOT NULL,
  CONSTRAINT PK_comment PRIMARY KEY(COMMENT_NUM),
  CONSTRAINT FK_comment FOREIGN KEY(COMMENT_REID) REFERENCES BBS_REVIEW(REID)
);
 
-- BBS_REVIEW�� �Խ��� ���̺���,  COMMENT_NUM�� ��۹�ȣ�� ��Ÿ����.
 
-- ��� ������ 
create sequence COMMENT_SEQ; 

