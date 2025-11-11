create database föy3 on primary
(
	NAME = föy3_data,
	FILENAME = 'C:\föy3\föy3data.mdf',
	SIZE = 8MB,
	MAXSIZE = unlimited,
	FILEGROWTH = 10%
)
log on
(
	NAME = föy3_log,
	FILENAME = 'C:\föy3\föy3log.ldf',
	SIZE = 8MB,
	MAXSIZE = unlimited,
	FILEGROWTH = 10%
)
