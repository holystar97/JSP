CREATE TABLE member_tbl (
id varchar2(20) PRIMARY KEY,
pw varchar2(20) NOT NULL,
name varchar2(100) NOT NULL,
gender CHAR NOT NULL,
email varchar2(50) NOT NULL UNIQUE,
phone varchar2(13) NOT NULL,
zip1 CHAR(5),
address1 varchar2(600),
birthday DATE
);

DROP TABLE member_tbl;



comment ON COLUMN member_tbl.id IS '아이디';

comment ON COLUMN member_tbl.pw IS '패쓰워드';

comment ON COLUMN member_tbl.name IS '이름';

comment ON COLUMN member_tbl.gender IS '성별';

comment ON COLUMN member_tbl.email IS '이메일';

comment ON COLUMN member_tbl.phone IS '연락처2(일반전화)';

comment ON COLUMN member_tbl.zip1 IS '도로명 주소 우편번호';

comment ON COLUMN member_tbl.address1 IS '도로명 주소';

comment ON COLUMN member_tbl.birthday IS '생년월일';
