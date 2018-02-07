USE master;

drop database TestDB;
GO

create DATABASE TestDB;
GO

USE TestDB;
GO

CREATE TABLE [Users]
(
  username VARCHAR(50) PRIMARY KEY  NOT NULL,
  password VARCHAR(50)              NOT NULL,
  fullname NVARCHAR(50)             NOT NULL,
  photo    VARCHAR(50)              NOT NULL,
  email    VARCHAR(50)              NOT NULL,
  [level]  TINYINT                  NOT NULL
);

INSERT INTO Users VALUES ('aptech01', '12345', 'aptech', 'aptech.jpg', 'aptech@gmail.com', 1);
INSERT INTO Users VALUES ('dieuly', '123', N'Lý Quan Diệu', 'dieuly.jpg', 'DieuLy@gmail.com', 2);
INSERT INTO Users VALUES ('obama', '123', 'Donal Trump', 'trump.jpg', 'Trump@gmail.com', 2);
INSERT INTO Users VALUES ('trump', '123', 'Obama', 'obama.jpg', 'Obama@gmail.com', 1);


create TABLE [dbo].[Manufacturers](
	[manufacturer_id] [int] NOT NULL primary key,
	[manufacturer_name] [nvarchar](30) NULL
)

create TABLE [dbo].[Products](
	[product_id] [char](10) NOT NULL primary key,
	[product_name] [nvarchar](50) NULL,
	[product_image] [nvarchar](50) NULL,
	[product_price] [int] NULL,
	[product_detail] [nvarchar](500) NULL,
	[manufacturer_id] [int] NULL,
	FOREIGN KEY ([manufacturer_id]) REFERENCES [Manufacturers]([manufacturer_id])
)


insert into Manufacturers values(1,'honda');
insert into Manufacturers values(2,'yamaha');
insert into Manufacturers values(3,'piaggio');
insert into Manufacturers values(4,'toyota');

insert into Products values('P1','honda civic 2017', 'civic2017.jpg',45000,'update',1);
insert into Products values('P2','toyota innova 2017', 'innova.jpg',43000,'update',4);
insert into Products values('P3','vespa primavera 2017', 'vespaprimavera.jpg',5000,'update',3);
insert into Products values('P4','honda CR-V', 'hondacrv.jpg',47000,'update',1);
insert into Products values('P5','toyota vios 2016', 'vios2016.jpg',30000,'update',4);
insert into Products values('P6','Vespa GTS 500', 'vespagts500.jpg',4000,'update',3);
