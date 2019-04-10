CREATE TABLE BOOKS (
  book_code INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  book_name varchar(50),
  company varchar(50),
  author varchar(50),
  book_year date,
  number_publications int,
  book_price double,
  category_id int,
  FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id)
);
CREATE TABLE STUDENTS (
  student_code int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_name varchar(50),
  birth_day date,
  address varchar(255),
  email varchar(255),
  phone_number int
);
CREATE TABLE CATEGORY(
  category_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name varchar(255)
);
CREATE TABLE BORROWODER(
  borrowoder_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_code int,
  book_code int,
  loan_date date,
  return_date date,
  status varchar(255),
  FOREIGN KEY (student_code) REFERENCES STUDENTS(student_code),
  FOREIGN KEY (book_code) REFERENCES BOOKS (book_code)
);



INSERT INTO STUDENTS(student_code,student_name)
 VALUE (1,'may');
INSERT INTO STUDENTS(student_code,student_name)
  VALUE (2,'nui');
INSERT INTO STUDENTS(student_code,student_name)
  VALUE (3,'cay');
INSERT INTO STUDENTS(student_code,student_name)
  VALUE (4,'co');
INSERT INTO STUDENTS(student_code,student_name)
  VALUE (5,'song');


INSERT INTO CATEGORY(category_id, category_name)
VALUE (1,'hai huoc');
INSERT INTO CATEGORY(category_id, category_name)
  VALUE (2,'kinh di');
INSERT INTO CATEGORY(category_id, category_name)
  VALUE (3,'hanh dong');
INSERT INTO CATEGORY(category_id, category_name)
  VALUE (4,'lang mang');
INSERT INTO CATEGORY(category_id, category_name)
  VALUE (5,'co trang');

INSERT INTO BOOKS (book_code,book_name,category_id)
  VALUE (1,'de men',1);
INSERT INTO BOOKS (book_code,book_name,category_id)
  VALUE (2,'lao hac',2);
INSERT INTO BOOKS (book_code,book_name,category_id)
  VALUE (3,'Chi pheo',3);
INSERT INTO BOOKS (book_code,book_name,category_id)
  VALUE (4,'Chi Dau',4);
INSERT INTO BOOKS (book_code,book_name,category_id)
  VALUE (5,'Truyen Kieu',5);

 INSERT INTO BORROWODER (borrowoder_id, student_code, book_code, loan_date, return_date, status)
  VALUES (7,3,2,'2002/02/02','2002/02/12',' da tra');
 INSERT INTO BORROWODER (borrowoder_id, student_code, book_code, loan_date, return_date, status)
  VALUES (8,2,4,'2002/02/02','2002/02/12',' chua tra');
 INSERT INTO BORROWODER (borrowoder_id, student_code, book_code, loan_date, return_date, status)
  VALUES (9,1,3,'2002/02/02','2002/02/12',' da tra');
 INSERT INTO BORROWODER (borrowoder_id, student_code, book_code, loan_date, return_date, status)
  VALUES (10,4,3,'2002/02/02','2002/02/12',' chua tra');
 INSERT INTO BORROWODER (borrowoder_id, student_code, book_code, loan_date, return_date, status)
  VALUES (11,2,3,'2002/02/02','2002/02/12',' da tra');


select * from BOOKS;
select * from BORROWODER;
