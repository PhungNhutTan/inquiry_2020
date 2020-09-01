-- 1 Record [1 Customer 1 Contact] Table
CREATE TABLE inquiry
	inquiry_id SERIAL,
	name VARCHAR(64) NOT NULL DEFAULT '' COMMENT 'Contact Customer',
	email VARBINARY(254) NOT NULL DEFAULT '' COMMENT 'Contact Customer's Email',
	body TEXT COMMENT 'Contact's Text',
	created_at DATETIME NOT NULL COMMENT 'Contact's Time',
	reply_at DATETIME COMMENT 'Replied's Time (NULL Permission)',
	reply_charge VARCHAR(64) COMMENT 'Customer',
	reply_subject VARCHAR(256) COMMENT 'Reply's Title',
	reply_body TEXT COMMENT 'Reply's Text',
	PRIMARY KEY(inquiry_id)
)CHARACTER SET 'utf8mb4', COMMENT = '1 Record [1 Customer 1 Contact] Table';


-- 1 Record [Management's screen 1 account] Table
CREATE TABLE admin_accounts
	login_id VARBINARY(128) NOT NULL COMMENT 'Login's ID',
	password VARBINARY(255) NOT NULL COMMENT 'Password(Hashed)',
	-- error_num INT UNSIGNED
	-- lock_datetime DATETIME
	PRIMARY KEY(login_id)
)CHARACTER SET 'utf8mb4', COMMENT = '1 Record [Management's screen 1 account] Table';