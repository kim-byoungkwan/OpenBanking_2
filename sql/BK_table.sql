CREATE TABLE BK_Bank_customer(
    CUS_NUMBER VARCHAR2(30),
    CUS_NAME VARCHAR2(30),
    CUS_PHONE_NUM VARCHAR2(30),
    CUS_ID VARCHAR2(30),
    CUS_PW VARCHAR2(30),
    CUS_EMAIL_ADDRESS VARCHAR2(30),
    CUS_OCCUPATION VARCHAR2(30),
    JOIN_PATH VARCHAR2(30),
    ACCOUNT_NUMBER VARCHAR2(30)
    );

CREATE TABLE ACCOUNT(
    PHONE_NUMBER VARCHAR2(50) NOT NULL,
    ACCOUNT_NUMBER VARCHAR2(50) PRIMARY KEY,
    ACCOUNT_PASSWORD VARCHAR2(30) NOT NULL,
    BANK_CODE VARCHAR2(10) NOT NULL,
    BANK_REG_DATE VARCHAR2(50) DEFAULT TO_CHAR(SYSDATE,'YYYY-MM-DD HH:MI:SS'),
    BALANCE NUMBER(20) NOT NULL,
    BANK_ALIAS VARCHAR2(50) NOT NULL,
    TRANSFER_LIMIT NUMBER(10) NOT NULL
);

CREATE TABLE TRANSACTION_HISTORY(
    TRAN_NUM NUMBER(10) PRIMARY KEY,
    WITHRAWAL_ACCOUNT_NUM VARCHAR2(30) NOT NULL,
    DEPOSIT_ACCOUNT_NUM VARCHAR2(30) NOT NULL,
    WITHRAWAL_NAME VARCHAR2(30) NOT NULL,
    DEPOSIT_NAME VARCHAR2(30) NOT NULL,
    WITHRAWAL_BANK_CODE VARCHAR2(20) NOT NULL,
    DEPOSIT_BANK_CODE VARCHAR2(10) NOT NULL,
    WITHRAWAL_PHONE_NUMBER VARCHAR2(30) NOT NULL,
    DEPOSIT_PHONE_NUMBER VARCHAR2(30) NOT NULL,
    TRAN_AMOUNT NUMBER(10) NOT NULL,
    TRAN_DATE VARCHAR2(50) DEFAULT TO_CHAR(SYSDATE,'YYYY-MM-DD HH:MI:SS')
);

CREATE TABLE BANK_CODE(
    BANK_CODE VARCHAR2(50) PRIMARY KEY,
    BANK_NAME VARCHAR2(50) NOT NULL
    );

CREATE TABLE BOARD(
    NO NUMBER(20) PRIMARY KEY,
    WRITER VARCHAR2(30) NOT NULL,
    USERID VARCHAR2(30) NOT NULL,
    TITLE VARCHAR2(30) NOT NULL,
    CONTENT VARCHAR2(30),
    WRITEDATE DATE DEFAULT SYSDATE,    
    BOARDTYPE VARCHAR2(30) NOT NULL
    );


CREATE SEQUENCE seqCus;

SELECT * FROM USER_SEQUENCES;
SELECT * FROM transaction_history;

