CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL,
	isActive BOOLEAN NOT NULL,
	message TEXT NOT NULL,
	gender ENUM( 'Male', 'Female' ) NOT NULL,
	createdOn DATETIME NOT NULL,
	balance DOUBLE NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO users (name, isActive, message, gender, createdOn, balance)
VALUE ('Sandeep Ganguly', 1, 'Hello from sandeep!', 'Male', NOW(), 75000.45);

INSERT INTO users(name, isActive, message, gender, createdOn, balance)
Values ("Mayur Kadam",0,"Hello World","Male",NOW(),22135.0);

UPDATE users SET balance = 22135.254 WHERE name = "Mayur Kadam";