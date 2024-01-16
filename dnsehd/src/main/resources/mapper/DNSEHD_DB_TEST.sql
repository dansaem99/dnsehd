CREATE DATABASE DNSEHD;
USE DNSEHD;

CREATE TABLE MEMBER (
    MEMBER_ID VARCHAR(20),
    MEMBER_NM VARCHAR(50),
    MEMBER_PW VARCHAR(100),
    SEX VARCHAR(10),
    DATE_BIRTH VARCHAR(20),
    HP VARCHAR(20),
    SMS_CONSENT CHAR(1),
    EMAIL VARCHAR(30),
    EMAIL_CONSENT CHAR(1),
    ZIPCODE VARCHAR(20),
    ROAD_ADDRESS VARCHAR(500),
    JIBUN_ADDRESS VARCHAR(500),
    OTHER_ADDRESS VARCHAR(500),
    ACTIVE_YN CHAR(1) DEFAULT 'y',
	INACTIVE_AT DATE DEFAULT NULL,
    JOIN_DT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (MEMBER_ID)
);

CREATE TABLE ADMIN (
    ADMIN_ID VARCHAR(20),
    ADMIN_PW VARCHAR(100),
    PRIMARY KEY (ADMIN_ID)
);

CREATE TABLE TEACHER (
    TEACHER_NO INT AUTO_INCREMENT,
    TEACHER_NM VARCHAR(20),
    TEACHER_BIRTH VARCHAR(20),
    TEACHER_HP VARCHAR(20),
    TEACHER_CAREER VARCHAR(1000),
    TEACHER_INTRO VARCHAR(200),
    ADMIN_ID VARCHAR(20),
    PRIMARY KEY (TEACHER_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE CLASS (
    CLASS_NO INT AUTO_INCREMENT,
    CLASS_NM VARCHAR(50),
    CLASS_CONTENT VARCHAR(1000),
    CLASS_PRICE INT,
    CLASS_TIME VARCHAR(20),
    CLASS_CATEGORY VARCHAR(20),
    CLASS_LIMIT INT,
    ADMIN_ID VARCHAR(20),
    TEACHER_NO INT,
    PRIMARY KEY (CLASS_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID),
    FOREIGN KEY (TEACHER_NO) REFERENCES TEACHER(TEACHER_NO)
);

ALTER TABLE TEACHER
ADD FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO);

CREATE TABLE RESERVATIONS (
    RESV_NO INT AUTO_INCREMENT,
    PAYMENT INT,
    RESV_DT DATE,
    RESERVATION_CANCEL CHAR(1),
    MEMBER_ID VARCHAR(20),
    RESERVATION_ALARM CHAR(1),
    CLASS_NO INT,
    PRIMARY KEY (RESV_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO)
);

CREATE TABLE ALARMS (
    ALARM_NO INT AUTO_INCREMENT,
    ALARM_CONTENT VARCHAR(100),
    ALARM_CHECK CHAR(1),
    MEMBER_ID VARCHAR(20),
    PRIMARY KEY (ALARM_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE NOTICE (
    NOTICE_NO INT AUTO_INCREMENT,
    NOTICE_TITLE VARCHAR(50),
    NOTICE_CONTENT VARCHAR(1000),
    NOTICE_DT DATE,
    ADMIN_ID VARCHAR(20),
    PRIMARY KEY (NOTICE_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE REVIEWS (
    REVIEW_NO INT AUTO_INCREMENT,
    REVIEW_TITLE VARCHAR(50),
    REVIEW_CONTENT VARCHAR(1000),
    REVIEW_DT DATE,
    MEMBER_ID VARCHAR(20),
    CLASS_NO INT,
    RESV_NO INT,
    PRIMARY KEY (REVIEW_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO),
    FOREIGN KEY (RESV_NO) REFERENCES RESERVATIONS(RESV_NO)
);

CREATE TABLE CLASS_IMAGES (
    CLASSIMG_NO INT AUTO_INCREMENT,
    CLASSIMG_NM VARCHAR(200),
    CLASS_NO INT,
    PRIMARY KEY (CLASSIMG_NO),
    FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO)
);

CREATE TABLE NOTICE_IMAGES (
    NOTICEIMG_NO INT AUTO_INCREMENT,
    NOTICEIMG_NM VARCHAR(200),
    NOTICE_NO INT,
    PRIMARY KEY (NOTICEIMG_NO),
    FOREIGN KEY (NOTICE_NO) REFERENCES NOTICE(NOTICE_NO)
);

CREATE TABLE REVIEW_IMAGES (
    REVIEWIMG_NO INT AUTO_INCREMENT,
    REVIEWIMG_NM VARCHAR(200),
    REVIEW_NO INT,
    PRIMARY KEY (REVIEWIMG_NO),
    FOREIGN KEY (REVIEW_NO) REFERENCES REVIEWS(REVIEW_NO)
);

CREATE TABLE SCHEDULE (
    SCHEDULE_NO INT AUTO_INCREMENT,
    ENROLL_DT DATE,
    MEMO VARCHAR(500),
    CLASS_AGV INT,
    CLASS_NO INT,
    MEMBER_ID VARCHAR(20),
    PRIMARY KEY (SCHEDULE_NO),
    FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE FAQS (
    FAQ_NO INT AUTO_INCREMENT PRIMARY KEY,
    FAQ_QUESTION VARCHAR(50) ,
    FAQ_ANSWER VARCHAR(1000),
    ADMIN_ID VARCHAR(20),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

INSERT INTO FAQS (FAQ_QUESTION, FAQ_ANSWER)
VALUES 
('수업 수강신청은 어떻게 하나요?', '수업 조회 페이지에서 원하는 수업의 이름을 클릭하시면 상세 페이지가 나옵니다. 수강 신청하기 버튼을 클릭하시면, 우측 상단의 사람 모양 아이콘 > 내가 예약한 수업에서 확인 가능합니다.'),
('강사님의 이력을 알 수 있나요?', '네 가능합니다. 강사 조회 페이지에서 강사님의 이름을 클릭하시면 상세 페이지가 나옵니다. 스크롤을 조금 내리면 강사 이력을 확인할 수 있습니다.'),
('수업 후기는 투명하게 관리되고 있는 것 맞나요?', '네 맞습니다. DNSEHD 서비스는 외부로부터 사례를 받아 가짜 후기를 작성하는 행위는 금지하고 있습니다. 실제 사용자들의 생생한 후기를 보실 수 있습니다.'),
('작성한 후기에 개인적인 이야기가 너무 많아서 삭제하고 싶은데 어떻게 하나요?', '우측 상단의 사람 모양 아이콘 > 내가 작성한 후기에서 삭제 가능합니다.'),
('탈퇴하면 개인정보는 언제까지 보관되나요?', '탈퇴한 날로부터 90일이 지나면 일괄 삭제됩니다.');

CREATE TABLE DIET (
    DIET_ID INT,
    DIET_DT DATE,
    BREAKFAST VARCHAR(50),
    LUNCH VARCHAR(50),
    DINNER VARCHAR(50),
    SNACK VARCHAR(50),
    DIET_FOODITEM VARCHAR(100),
    DIET_CALORIES INT,
    TOTAL_CALORIES INT,
    SCHEDULE_NO INT,
    PRIMARY KEY (DIET_ID),
    FOREIGN KEY (SCHEDULE_NO) REFERENCES SCHEDULE(SCHEDULE_NO)
);

CREATE TABLE EVENT (
	EVENT_NO INT AUTO_INCREMENT,
	EVENT_TITLE VARCHAR(100),
	EVENT_CONTENT VARCHAR(500),
	EVENT_START_DT DATE,
    EVENT_END_DT DATE,
	EVENT_COST INT,
	CLASS_NO INT,
	ADMIN_ID VARCHAR(20),
	PRIMARY KEY(EVENT_NO),
	FOREIGN KEY (CLASS_NO) REFERENCES CLASS(CLASS_NO),
	FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);
