show user;

create table member(
memberid varchar2(50) not null,
name varchar2(50) not null,
email VARCHAR2(200) not null,
password VARCHAR2(50) not null
);

alter table member add constraint pk_member primary key(memberid);

select * from member;

INSERT INTO member(memberid, name, email, password) 
VALUES('aaa', '김하나', 'aaa@naver.com', 'a1234');
INSERT INTO member(memberid, name, email, password) 
VALUES('bbb', '김두리', 'bbb@naver.com', 'b1234');
INSERT INTO member(memberid, name, email, password) 
VALUES('ccc', '장나라', 'ccc@naver.com', 'c1234');
insert into member values('modua', '모두아', 'modua@gmail.com', '1234');

commit;