CREATE TABLE user_table(	
	user_id CHAR(10),
	name CHAR(20),
	gender CHAR(10),
	age INT(5),
	mobile_number INT(20),
	city CHAR(30,
	state CHAR(30),
	gmail CHAR(50),
	pass_word CHAR(50),
	user_id,name PRIMARY KEY NOT NULL	
);

INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');
INSERT INTO user_table(user_id,name,gender,age,mobile_number,city,security_question,security_answer,state,gmail,pass_word) VALUES ('male',18,9449356644,'arsikere','fav food','fried rice','karnataka','rao19@gmail.com','xxyyzz');



CREATE TABLE BOOKS
(
	date_book date,
	status CHAR(30),
	user_id,pnr PRIMARY KEY NOT NULL,
	FOREIGN KEY(user_id) REFERENCES  (user_table) ,
	FOREIGN KEY(pnr) REFERENCES  (passenger) 

/*
FOREIGN KEY (item_code,item_name) REFERENCES items(item_code,item_name)

*/
);




INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();
INSERT INTO BOOKS(date_book,status) VALUES 
();




CREATE TABLE train_status
(	available_date date,
	booked_seats INT(1000),
	available_seats INT(1000),
	w_class_general	 INT(2000),
	w_class_3_tier INT(20),
	w_class_2_tier INT(20),
	w_class_1_tier INT(20),
	w_class_sleeper INT(20),
	class_general CHAR(20),
	class_3_tier INT(20),
	class_2_tier INT(20),
	class_1_tier INT(20),
	class_sleeper INT(20),
	FOREIGN KEY(train_id) REFERENCES  (train) ON DELETE SET CASCADE

);

	
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);
INSERT INTO train_status(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
(20/11/2017,1,23,2,3,4,5,6,'SLEEPER',2,3,4,5);


CREATE TABLE passenger
(	name CHAR(20),
	gender CHAR(10),
	age INT(5),
	mobile_number INT(20),
	pnr INT(20),
	reservation_status CHAR(50),
	seat_number INT(100),
 	pnr PRIMARY KEY NOT NULL
);



INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();
INSERT INTO passenger(available_date,booked_seats,available_seats,w_class_general,w_class_3_tier,w_class_2_tier,w_class_1_tier,w_class_sleeper,class_general,class_3_tier,class_2_tier,class_1_tier,class_sleeper) VALUES 
();

CREATE TABLE train
(	train_id INT PRIMARY KEY,
	train_name CHAR(20),
	train_type CHAR(5),
	available_class CHAR(5)	
);


INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (2,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (3,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (4,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (5,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (6,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (7,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (8,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');
INSERT INTO train(train_id,train_name,train_type,available_class)
VALUES (16536,'rani chennamma','class','ac');


CREATE TABLE route
(	arrival_time INT(10),
	departure_time INT(10),
	source_distance INT(5000),
	stop_number INT(50)

	
);

INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);
INSERT INTO route(arrival_time,departure_time,source_distance,stop_number)
VALUES (10:35,11:00,300,23);


CREATE TABLE station
(	station_id INT ,
	station_name CHAR(20),
	station_id PRIMARY KEY NOT NULL		
);

INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');
INSERT INTO station(station_id,station_name)
VALUES (12,'arsikere');




CREATE TABLE train_class
(		

);

