-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- SE1435_PRJ321.dbo.Back_Up definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.Back_Up;

CREATE TABLE SE1435_PRJ321.dbo.Back_Up (
	ma_san_pham int NOT NULL,
	ma_the_loai int NOT NULL,
	ten_san_pham varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	hinh_anh varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gia_ban float NULL,
	hang_san_xuat varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	thong_tin varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sell_ID int NOT NULL,
	CONSTRAINT PK_Back_Up PRIMARY KEY (ma_san_pham)
);


-- SE1435_PRJ321.dbo.HE141449_History definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_History;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_History (
	id int IDENTITY(1,1) NOT NULL,
	user_id int NOT NULL,
	message nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	balance float NULL,
	CONSTRAINT HE141449_History_pk PRIMARY KEY (id)
);


-- SE1435_PRJ321.dbo.HE141449_Reported definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_Reported;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_Reported (
	ma_san_pham int NOT NULL,
	li_do nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_HE141449_Reported PRIMARY KEY (ma_san_pham)
);


-- SE1435_PRJ321.dbo.HE141449_Wallet definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_Wallet;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_Wallet (
	id int IDENTITY(0,1) NOT NULL,
	balance float NOT NULL,
	username nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
);


-- SE1435_PRJ321.dbo.HE141449_books definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_books;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_books (
	id int IDENTITY(0,1) NOT NULL,
	name nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	author nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	category nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	description nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	img varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	price float NOT NULL
);


-- SE1435_PRJ321.dbo.HE141449_category definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_category;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_category (
	ma_the_loai int NOT NULL,
	ten_the_loai varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mo_ta varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__HE141449__489AA0F3D57051CD PRIMARY KEY (ma_the_loai)
);


-- SE1435_PRJ321.dbo.HE141449_clothes definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_clothes;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_clothes (
	id int IDENTITY(0,1) NOT NULL,
	name nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[size] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	gender nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	description nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	price float NOT NULL,
	brand nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	img varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- SE1435_PRJ321.dbo.HE141449_product definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_product;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_product (
	ma_san_pham int NOT NULL,
	ma_the_loai int NOT NULL,
	ten_san_pham varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	hinh_anh varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gia_ban float NULL,
	hang_san_xuat varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	thong_tin varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sell_ID int NOT NULL,
	CONSTRAINT PK_HE141449_product PRIMARY KEY (ma_san_pham)
);


-- SE1435_PRJ321.dbo.HE141449_request definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_request;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_request (
	username varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	reason nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] nvarchar COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- SE1435_PRJ321.dbo.HE141449_userID definition

-- Drop table

-- DROP TABLE SE1435_PRJ321.dbo.HE141449_userID;

CREATE TABLE SE1435_PRJ321.dbo.HE141449_userID (
	user_id int NOT NULL,
	username varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	password varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	ngaysinh date DEFAULT NULL NULL,
	gioitinh varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	email varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	sdt varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	diachi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	[role] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	CONSTRAINT PK__HE141449__B9BE370F51E0B250 PRIMARY KEY (user_id)
);
