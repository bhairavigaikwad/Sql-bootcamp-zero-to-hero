
CREATE TABLE information
(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR (500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information 
RENAME TO new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people 

INSERT INTO new_info (title)
VALUES
('some new title') (cannot add since people 
col has not null constraint therefore drop 
not null constraint) 

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL

INSERT INTO new_info (title)
VALUES
('some new title') #works this time 

SELECT * FROM new_info

