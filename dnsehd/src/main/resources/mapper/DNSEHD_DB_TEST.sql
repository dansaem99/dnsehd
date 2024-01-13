CREATE DATABASE DNSEHD;
USE DNSEHD;

CREATE TABLE MEMBER (
    MEMBER_ID VARCHAR(20) NOT NULL,
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
    ADMIN_ID VARCHAR(20) NOT NULL,
    ADMIN_PW VARCHAR(100),
    PRIMARY KEY (ADMIN_ID)
);

CREATE TABLE SPORT (
    SPORT_NO INT NOT NULL,
    SPORT_NM VARCHAR(50),
    SPORT_CONTENT VARCHAR(1000),
    SPORT_PRICE INT,
    SPORT_TIME TIME,
    SPORT_CATEGORY VARCHAR(20),
    SPORT_LIMIT INT,
    ADMIN_ID VARCHAR(20),
    PRIMARY KEY (SPORT_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE RESERVATIONS (
    RESV_NO INT NOT NULL,
    PAYMENT INT,
    RESV_DATE DATE,
    RESERVATION_CANCEL CHAR(1),
    MEMBER_ID VARCHAR(20),
    RESERVATION_ALARM CHAR(1),
    SPORT_NO INT,
    PRIMARY KEY (RESV_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO)
);

CREATE TABLE ALARMS (
    ALARM_NO INT NOT NULL,
    ALARM_CONTENT VARCHAR(100),
    ALARM_CHECK CHAR(1),
    MEMBER_ID VARCHAR(20),
    PRIMARY KEY (ALARM_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE NOTICE (
    NOTICE_NO INT NOT NULL,
    NOTICE_TITLE VARCHAR(50),
    NOTICE_CONTENT VARCHAR(1000),
    NOTICE_DATE DATE,
    ADMIN_ID VARCHAR(20),
    PRIMARY KEY (NOTICE_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE REVIEWS (
    REVIEW_NO INT NOT NULL,
    REVIEW_TITLE VARCHAR(50),
    REVIEW_CONTENT VARCHAR(1000),
    REVIEW_DATE DATE,
    MEMBER_ID VARCHAR(20),
    SPORT_NO INT,
    RESV_NO INT,
    PRIMARY KEY (REVIEW_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO),
    FOREIGN KEY (RESV_NO) REFERENCES RESERVATIONS(RESV_NO)
);

CREATE TABLE TEACHER (
    TEACHER_NO INT NOT NULL,
    TEACHER_NM VARCHAR(20),
    TEACHER_BIRTH VARCHAR(20),
    TEACHER_HP VARCHAR(20),
    TEACHER_CAREER VARCHAR(1000),
    TEACHER_CLASS VARCHAR(1000),
    MEMBER_ID VARCHAR(20),
    SPORT_NO INT,
    PRIMARY KEY (TEACHER_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID),
    FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO)
);

CREATE TABLE SPORT_IMAGES (
    SPORTIMG_NO INT NOT NULL,
    SPORTIMG_NM VARCHAR(200),
    SPORT_NO INT,
    PRIMARY KEY (SPORTIMG_NO),
    FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO)
);

CREATE TABLE NOTICE_IMAGES (
    NOTICEIMG_NO INT NOT NULL,
    NOTICEIMG_NM VARCHAR(200),
    NOTICE_NO INT,
    PRIMARY KEY (NOTICEIMG_NO),
    FOREIGN KEY (NOTICE_NO) REFERENCES NOTICE(NOTICE_NO)
);

CREATE TABLE REVIEW_IMAGES (
    REVIEWIMG_NO INT NOT NULL,
    REVIEWIMG_NM VARCHAR(200),
    REVIEW_NO INT,
    PRIMARY KEY (REVIEWIMG_NO),
    FOREIGN KEY (REVIEW_NO) REFERENCES REVIEWS(REVIEW_NO)
);

CREATE TABLE SCHEDULE (
    SCHEDULE_NO INT NOT NULL,
    ENROLL_DT DATE,
    MEMO VARCHAR(500),
    SPORT_AGV INT,
    SPORT_NO INT,
    MEMBER_ID VARCHAR(20),
    PRIMARY KEY (SCHEDULE_NO),
    FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE FAQS (
    FAQ_NO INT NOT NULL AUTO_INCREMENT,
    FAQ_QUESTION VARCHAR(50) ,
    FAQ_ANSWER VARCHAR(1000),
    ADMIN_ID VARCHAR(20),
    PRIMARY KEY (FAQ_NO),
    FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE DIET (
    DIET_ID INT NOT NULL,
    DIET_DATE DATE,
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
	EVENT_NO INT NOT NULL,
	EVENT_TITLE VARCHAR(100),
	EVENT_CONTENT VARCHAR(500),
	EVENT_DT DATE,
	EVENT_COST INT,
	SPORT_NO INT,
	ADMIN_ID VARCHAR(20),
	PRIMARY KEY(EVENT_NO),
	FOREIGN KEY (SPORT_NO) REFERENCES SPORT(SPORT_NO),
	FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);
