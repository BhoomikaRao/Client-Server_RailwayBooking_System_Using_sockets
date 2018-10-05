CREATE TABLE user_table(	
	user_id CHAR(10),
	name CHAR(20),
	gender CHAR(10),
	age INT,
	mobile_number INT,
	pass_word CHAR(10),
	user_id,name PRIMARY KEY NOT NULL	
);


CREATE TABLE passenger
(	name CHAR(10),
	gender CHAR(6),
	age INT,
	mobile_number INT,
	pnr INT,
	reservation_status CHAR(10),
	seat_number INT,
 	pnr PRIMARY KEY NOT NULL
);


CREATE TABLE train
(	train_name CHAR(10),
	train_id CHAR(5) PRIMARY KEY NOT NULL
);

CREATE TABLE route
(	train_id INT
	arr_date DATE,
	dep_date DATE,
	


