USE family_map;

# for storing user information
CREATE TABLE users (
	person_id 	INT PRIMARY KEY, 
    user_name 	VARCHAR(255), 
    password 	VARCHAR(255),
    email 		VARCHAR(255)	DEFAULT 'phony@user.com', 
    first_name  VARCHAR(127)	DEFAULT 'Phony',
    last_name  	VARCHAR(127)	DEFAULT 'User', 
    gender		CHAR);
    
    
# for storing information about phonies
CREATE TABLE persons (
	person_id 	INT PRIMARY KEY, 
    user_name 	VARCHAR(255), 
    first_name  VARCHAR(127)	DEFAULT 'Phony',
    last_name  	VARCHAR(127)	DEFAULT 'User', 
    father_id	INT				DEFAULT null, 
    mother_id 	INT				DEFAULT null, 
    spouse_id	INT 			DEFAULT -1, 
    gender		CHAR			DEFAULT 'm');
    

# for storing information about important events
CREATE TABLE events (
	event_id 	INT PRIMARY KEY, 
    person_id 	VARCHAR(255),
    latitude	FLOAT, 
    longitude 	FLOAT,
    country		VARCHAR(255),
    city		VARCHAR(255),
    type		VARCHAR(255), 
    year		INT);

    
# for storing session information for users
CREATE TABLE auth_tokens (
	person_id 	INT PRIMARY KEY, 
    auth_token	VARCHAR(255));
    

    
