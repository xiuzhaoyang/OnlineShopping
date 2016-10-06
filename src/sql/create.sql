IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'member'))
BEGIN
    DROP TABLE dbo.member;
END

create table dbo.member( ID BIGINT primary key NOT NULL IDENTITY (1,1), 
						firstName varchar(25),
						lastName varchar(25),
						age BIGINT,
						member_number BIGINT,
						title varchar(25)
					);

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'users'))
BEGIN
    DROP TABLE users;
END

 create table dbo.users(
      username varchar(50) not null primary key,
      password varchar(500) not null,
      enabled bit not null);

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'authorities'))
BEGIN
    DROP TABLE authorities;
END

create table dbo.authorities (
      username varchar(50) not null,
      authority varchar(50) not null,
      constraint fk_authorities_users foreign key(username) references users(username));
      create unique index ix_auth_username on authorities (username,authority);	
