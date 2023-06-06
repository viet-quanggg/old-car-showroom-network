use [master]
go
/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'OldCarShowroom2')
BEGIN
	ALTER DATABASE [OldCarShowroom2] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [OldCarShowroom2] SET ONLINE;
	DROP DATABASE [OldCarShowroom2];
END
GO

CREATE DATABASE [OldCarShowroom2]
GO

USE [OldCarShowroom2]
GO

/*******************************************************************************
	Drop tables if exists
*******************************************************************************/
DECLARE @sql nvarchar(MAX) 
SET @sql = N'' 

SELECT @sql = @sql + N'ALTER TABLE ' + QUOTENAME(KCU1.TABLE_SCHEMA) 
    + N'.' + QUOTENAME(KCU1.TABLE_NAME) 
    + N' DROP CONSTRAINT ' -- + QUOTENAME(rc.CONSTRAINT_SCHEMA)  + N'.'  -- not in MS-SQL
    + QUOTENAME(rc.CONSTRAINT_NAME) + N'; ' + CHAR(13) + CHAR(10) 
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 

INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU1 
    ON KCU1.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
    AND KCU1.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
    AND KCU1.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 

EXECUTE(@sql) 

GO
DECLARE @sql2 NVARCHAR(max)=''

SELECT @sql2 += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql2 
GO
create table  [Plan]
(planId int identity(1,1) PRIMARY KEY,
planName nvarchar(30) not null,
planTime int not null,
planLimit int,
planPrice money NOT NULL,
)


GO
create table [User] 
(userId int identity (1,1) PRIMARY KEY,
userEmail varchar(25) NOT NULL, 
userPass varchar(16) NOT NULL,
userName nvarchar(25) NOT NULL,
userPhone varchar(11) NOT NULL,
userAddress varchar(50) NOT NULL,
timeCreated Date NOT NULL,
userRole int NOT NULL,
userImage nvarchar(255),
planId int,
planStart Date,
foreign key (planId) references [Plan](planId)
);
GO

CREATE TABLE [Car] (
	carId int identity (1,1) PRIMARY KEY,
	ownerId int,
	carShowroom varchar(30) NOT NULL, /** car dang o showroom nao **/
	carPrice money NOT NULL,
	carName nvarchar(150) NOT NULL,
	carYear int NOT NULL,
	carDescription nvarchar(max) NOT NULL, 
	carCondition bit NOT NULL,
	createDate date not null,
	updateDate date not null,

	brandID int not null,
	colorID int not null,
	
) 
GO

CREATE TABLE Brand (
	id int identity(1, 1) not null,
	[name] nvarchar(150) not null unique,
	createDate date not null,
	updateDate date not null

	PRIMARY KEY (id)
)
GO

CREATE TABLE Color (
	id int identity(1, 1) not null,
	color nvarchar(100) not null,
	createDate date not null,

	PRIMARY KEY (id)
)
GO
create table [Post]
(postId int identity (1,1) PRIMARY KEY,
userId int NOT NULL,
carId int NOT NULL,
postTitle nvarchar(100) NOT NULL,
postDescript nvarchar(4000) NOT NULL,
postDate Date NOT NULL,
postStatus nvarchar(20) NOT NULL,
foreign key (userId) references [User] (userId),
foreign key (carId) references Car (carId)
)
go
create table  [Order]
(orderId int identity (1,1) PRIMARY KEY,
postId int not null,
orderStatus nvarchar(50) NOT NULL, 
orderDate Date NOT NULL,
userId int NOT NULL,
foreign key (userId) references [User] (userId),
foreign key(postId) references [Post] (postId)
);
GO

CREATE TABLE Car_Image (
	id int identity (1, 1) not null,
	[url] varchar(100) not null,
	createDate date not null,
	updateDate date not null,
	
	carID int not null,


	primary key (id)
)
GO




create table [Blog]
(
blogId int identity (1,1) PRIMARY KEY,
blogTitle nvarchar(150) NOT NULL,
blogDetail nvarchar(4000) Not NUll, 
blogImage nvarchar(255),
userId int NOT NULL,
blogDate Date NOT NULL,
foreign key (userId) references [User] (userId),
)
create table [Voucher]
(voucherId int identity(1,1) PRIMARY KEY,
discountRate float NOT NULL
)
ALTER TABLE Car 
ADD CONSTRAINT fk_car_brand FOREIGN KEY (brandID) REFERENCES Brand (id),
	CONSTRAINT fk_car_color FOREIGN KEY (colorID) REFERENCES Color (id)
GO

ALTER TABLE Car_Image
ADD CONSTRAINT fk_car_image FOREIGN KEY (carID) REFERENCES Car (CarID)
GO

INSERT INTO [dbo].[Brand] ([name], [createDate], [updateDate])
VALUES
		(N'Toyota', '2023/05/31', GETDATE()),   /*1*/
		(N'Mercedes', '2023/05/31', GETDATE()),	/*2*/
		(N'BMW', '2023/05/31', GETDATE()),		/*3*/
		(N'Huyndai', '2023/05/31', GETDATE()),	/*4*/
		(N'Honda', '2023/05/31', GETDATE()),	/*5*/
		(N'Mazda', '2023/05/31', GETDATE()),	/*6*/
		(N'Ford', '2023/05/31', GETDATE()),		/*7*/
		(N'Mitsubishi', '2023/05/31', GETDATE()),/*8*/
		(N'Vinfast', '2023/05/31', GETDATE()),	/*9*/
		(N'Audi', '2023/05/31', GETDATE()),		/*10*/		
		(N'Lexus', '2023/05/31', GETDATE()),	/*11*/
		(N'Nissan', '2023/05/31', GETDATE()),	/*12*/
		(N'Isuzu', '2023/05/31', GETDATE()),	/*13*/
		(N'Chervolet', '2023/05/31', GETDATE()),/*14*/
		(N'Kia', '2023/05/31', GETDATE()),/*15*/
		(N'Porsche', '2023/05/31', GETDATE()),/*16*/
		(N'Volvo', '2023/05/31', GETDATE()),/*17*/
		(N'Suzuki', '2023/05/31', GETDATE())/*18*/
GO

INSERT INTO [dbo].[Color]	([color], [createDate])
VALUES
		(N'White', GETDATE()),  /*1*/
		(N'Black', GETDATE()),	/*2*/
		(N'Grey', GETDATE()),	/*3*/
		(N'Blue', GETDATE()),	/*4*/
		(N'Orange', GETDATE()),/*5*/
		(N'Green', GETDATE()),	/*6*/
		(N'Red', GETDATE()),	/*7*/
		(N'Brown', GETDATE()),	/*8*/
		(N'Yellow', GETDATE()),	/*9*/		
		(N'Purple', GETDATE()),	/*10*/
		(N'Cream', GETDATE())	/*11*/
GO

INSERT INTO [dbo].[Car] ([ownerId], [carShowroom], [carPrice], [carName], [carYear], [carDescription], [carCondition], [createDate], [updateDate], [brandID], [colorID])
VALUES
		(-1, '', 665000000, N'Mazda 6 Premium 2.0', 2019, N'Bán Mazda 6 2.0 Premium Sx 2019 sedan hạng B option cao cấp ODO 4v Km biển Hà Nội tên cá nhân.Cam kết chất lượng xe đẹp không đâm đụng.Hỗ trợ bank thủ tục nhanh LH để biết thông tin về chiếc xe này.Cảm ơn đã đọc tin.', 0, GETDATE(), GETDATE(), 6, 4),
		(-1, '', 499000000, N'Mazda 3 1.5 AT', 2018, N'Phiên bản 1.5 FL tiết kiệm xăng nhất phân khúc C, xe đã đc trang bị, ghế da, khoá stat/stop, đèn nét, cân bằng điện tử, cửa nóc, màn hình', 0, GETDATE(), GETDATE(), 6, 1),
		(-1, '', 1200000000, N'Audi A6 1.8 TFSI', 2017, N'Có option: hệ thống giải trí hỗ trợ CD/MP3 và thẻ nhớ định dạng WMA/AAC. giao diện smartphone Apple CarPlay, hệ thống kết nối Android Auto cùng sạc điện thoại không dây và 02 màn hình giải trí cho ghế sau. Giao diện âm nhạc riêng của Audi, kết nối Bluetooth..', 0, GETDATE(), GETDATE(), 10, 2),
		(-1, '', 500000000, N'Honda CRV 2.4 AT', 2014, N' Với tầm giá loanh quanh 500tr thì làm con suv đi thì qá hợp lý cả nhà ơi. Xe trang bị đầy đủ các tiện ích của dòng. Cam kết xe cực chất lượng. Liên hệ ngay để xem xe', 0, GETDATE(), GETDATE(), 5, 1),
		(-1, '', 585000000, N'Kia Sedona 3.3L GATH', 2017, N'Xe được trang bị giàn âm thanh infinity , sấy sưởi ghế, giàn điều hòa 2 vùng độc lập, smart key, cruie control , 2 cửa nóc, cửa lùa 2 cánh bằng điện, cốp điện, khoang cốp cực rộng , gương kính chỉnh điện gập điện,màn hình cảm ứng , cảm biến trước sau. Nay mình đổi đời mới nên cần bán', 0, GETDATE(), GETDATE(), 16, 2),
		(-1, '', 2800000000, N'Porsche Panamera Turbo', 2009, N'Odo: 40.000km.Màu xanh và nội thất kem.Chế độ bô có tắt/mở. Dẫn động 4 bánh.(AWD)Mâm 20 với thắng gốm Ceramic.2 chế độ nâng hạ gầm.2 ghế cá nhân hàng sau với tùy chọn tiện nghiHệ thống sưởi, hệ thống làm mát.Hệ thống điều hoà 4 vùng lập.2 chế độ bật Sport/ Sport Plus.Loa Burmester', 0, GETDATE(), GETDATE(), 17, 4),
		(-1, '', 575000000, N'Mitsubishi Xpander Cross 1.5 AT', 2020, N' Xe zin nguyên bản chỉ mới bọc trần thôi ạ, chất xe từ trong ra ngoài cực kì đẹp, đảm bảo Anh Chị Em nhìn chỉ có mê thôi. Xe có giá nóc thể thao trông cao và mạnh mẽ hơn. Em chào bán với giá 575tr rất hợp lý trong thời điểm hiện tại.', 0, GETDATE(), GETDATE(), 8, 8),
		(-1, '', 1739000000, N'Volvo S90 Inscription T6', 2020, N'Mẫu xe sang mạnh nhất và nhiều tính năng an toàn nhất phân khúc so E Class, BMW 5 series, Audi...Động cơ 320HP và hệ dẫn động AWD mang đến khả năng vận hành vượt trội', 0, GETDATE(), GETDATE(), 18, 1),
		(-1, '', 1890000000, N'Lexus ES 250', 2019, N'Lexus ES250 sx 2019 mới lăn bánh 21.919km thì có mới quá ko ạh, quan trọng là em bán rẻ lắm', 0, GETDATE(), GETDATE(), 12, 3),
		(-1, '', 579000000, N'Nissan 2.5 SV 4WD PREMIUM', 2017, N'Xe không đâm đụng, Không ngập nước, Bán xe có bảo hành, Hỗ trợ mua xe trả góp, Bao test hãng', 0, GETDATE(), GETDATE(), 13, 1),
		(-1, '', 1198000000, N'Mercedes Benz C180 AMG', 2021, N'C180 AMG 1 chiếc xe cực kỳ linh hoạt chạy phố nhẹ nhàng, êm ái, mượt mà, gọn gàng. Kiểu dáng AMG thể thao đẹp mắt, trẻ trung', 0, GETDATE(), GETDATE(), 2, 1),
		(-1, '', 835000000, N'Ford Everest AT', 2019, N'Gia đình tôi lên đời xe dư dùng bán lại Xe Everest model 2020 nhập Thái Lan, máy dầu còn rất mới đi ~50.000km, 7 chổ số tự dộng , máy dầu, trang bị nút Star/Stop màn hình giải trí, Điều khiển giọng nói SYNC 3, Cruise Control,đồng hồ điện tử, Hệ thống chống ồn chủ động, Hệ thống Cân bằng điện tử, 7 túi khí,..v.v.. gầm cao 7 chỗ tiết kiệm nhiên liệu, xe đã đăng kiểm mới mua về chỉ việc chạy. giá có thương lượng', 0, GETDATE(), GETDATE(), 7, 8),
		(-1, '', 1299000000, N'Kia Carnival Premium 2.2D', 2022, N'Xe phiên bản 7 chổ, rộng rãi, thoáng mát, nhiều option nhất phân khúc MPV, là lựa chọn tuyệt vời cho mọi khách hàng.', 0, GETDATE(), GETDATE(), 16, 4),
		(-1, '', 860000000, N'Audi A4 2.0 TFSI', 2016, N'Audi A4 sx 2016 mua mới và bảo dưỡng chính hãng bao test', 0, GETDATE(), GETDATE(), 10, 2),
		(-1, '', 4900000000, N'Toyota Land Cruiser 5.7 V8', 2016, N'Trang bị: Loa JBL, DVD sau, phanh khoảng cách, cảnh báo lệch làn, điều hoà độc lập 4 vùng, vô-lăng tích hợp các phím chức năng, sấy và làm mát ghế....', 0, GETDATE(), GETDATE(), 1, 1),
		(-1, '', 550000000, N'VinFast Lux A 2.0', 2020, N'Bao test hãng', 0, GETDATE(), GETDATE(), 9, 2),
		(-1, '', 400000000, N'BMW 320i', 2011, N'1 chủ từ đầu zin', 0, GETDATE(), GETDATE(), 3, 2),
		(-1, '', 479000000, N'BMW 320i', 2013, N'mâm vosen, Xe 1 chủ đập thùng, ghế chỉnh điện nhớ vị trí ghế, Đèn Pha Chiếu sáng HID có Led ban ngày, điều hoà 2 vùng độc lập, màn hình giải trí 6,5inch, kết nối Bluetooth, usb', 0, GETDATE(), GETDATE(), 3, 2),
		(-1, '', 895000000, N'Toyota Camry 2.5Q', 2019, N'Camry 2.5Q 2019 chính chủ Trang bị 3 màn hình cam 360 full đồ chơi', 0, GETDATE(), GETDATE(), 1, 2),
		(-1, '', 595000000, N'Honda Civic', 2021, N'Bao bao bao bao bao', 0, GETDATE(), GETDATE(), 5, 2),
		(-1, '', 725000000, N'Mazda CX5 2.5 AT 2WD', 2019, N'BẢO DƯỠNG FULL HÃNG', 0, GETDATE(), GETDATE(), 6, 1),
		(-1, '', 1050000000, N'Ford Titanium 2x4', 2022, N'Xe lướt ', 0, GETDATE(), GETDATE(), 7, 2),
		(-1, '', 8000000000, N'Lexus 570', 2020, N' Hud kính , âm thanh vòm 19 loa Mark Levinson , cửa sổ trời , sấy và làm mát ghế , tủ lạnh', 0, GETDATE(), GETDATE(), 12, 2),
		(-1, '', 600000000, N'Kia Seltos Luxury 1.4 AT', 2021, N'Xe tên cá nhân chính chủ sử dụng từ mới, full lich sử bảo dưỡng hãng....hồ sơ xe cầm tay sang tên chính chủ trong ngày', 0, GETDATE(), GETDATE(), 16, 2),
		(-1, '', 568000000, N'Porsche Cayenne S', 2021, N'Bao bao bao bao bao', 0, GETDATE(), GETDATE(), 17, 2),
		(-1, '', 51000000, N'Toyota Innova 2.0E', 2019, N'thay cả giàn dày cộp, tình trạng xe chủ đi giữ gìn nội ngoại thất còn rất mới, bao check thoải mái, giá còn thương lượng khi thiện trí xem xe', 0, GETDATE(), GETDATE(), 1, 3),
		(-1, '', 1890000000, N'Mercedes Benz GLC 300 4Matic', 2021, N' cửa sổ trời, đèn multibeam, loa bum, led nội thất, cốp điện', 0, GETDATE(), GETDATE(), 2, 1),
		(-1, '', 1705000000, N'Audi A4', 2021, N'Audi A4 2021 mẫu xe được mệnh danh là công nghệ dẫn lối với hàng loạt tiện ích hiện đại được trang bị. Thay đổi lớn nhất phải kể đến đó là Audi A4 2021 sử dụng hệ thống MMI Radio với màn hình cảm ứng 10.1 inch thay thế cho màn hình kích thước 7 inch cũ cùng với đó là hệ thống âm thanh tiêu chuẩn Audi Sound System, giao diện Bluetooth', 0, GETDATE(), GETDATE(), 10, 1),
		(-1, '', 1020000000, N'Mercedes Benz C200', 2019, N'đèn full led, rèm điện, apple carplay, sạc k dây, điều hoà 2 vùng độc lập', 0, GETDATE(), GETDATE(), 2, 2),
		(-1, '', 1015000000, N'Kia Sedona 2.2Luxury', 2019, N'Bao bao bao bao bao', 0, GETDATE(), GETDATE(), 16, 2),
		(-1, '', 500000000, N'Mitsubishi Xpander 1.5 MT', 2021, N'Bao bao bao bao', 0, GETDATE(), GETDATE(), 8, 2),
		(-1, '', 300000000, N'Honda Accord 2.0 AT', 2011, N'màn hình 9" Android, camera lùi, Cảm biến quanh xe, ghế da.', 0, GETDATE(), GETDATE(), 5, 3),
		(-1, '', 500000000, N'Toyota Corolla altis 2.0V AT', 2017, N'Xe trang bị dán kính trải sand màn hình cảm biến lùi camera lùi dàn lốp mit mới ....', 0, GETDATE(), GETDATE(), 1, 2),
		(-1, '', 320000000, N'Kia Soluto 1.4 MT Deluxe', 2019, N'bao test hãng toàn quốc đã vào màn androi thay lốp đăng kiểm mới có hỗ trợ ngân hàng cho quý khách', 0, GETDATE(), GETDATE(), 16, 1),
		(-1, '', 300000000, N'Mitsubishi Attrage 1.2', 2018, N'Chạy bao đảk', 0, GETDATE(), GETDATE(), 8, 1),
		(-1, '', 800000000, N'Mitsubishi Pajero Sport 4x2 AT', 2020, N'1 Cầu số tự động , xe đẹp không lỗi nhỏ , 1 chủ chạy chuẩn 6 vạn km siêu mới , lốp theo xe cả dàn , nội thất mới , máy móc khung gầm nguyên bản , xe đẹp zin đét từ trong ra ngoài', 0, GETDATE(), GETDATE(), 8, 1),
		(-1, '', 750000000, N'Toyota Fortuner 2.7V 4x2 AT', 2021, N'ngọt hơn nước cất', 0, GETDATE(), GETDATE(), 1, 2),
		(-1, '', 3900000000, N'BMW i8 1.5L Hybrid', 2015, N'Widebody EVO của hãng Energy motorsport đến Từ Nhật Bản khoảng 230 triệu khiến ngoại thất giống 1 siêu xe thực thụ và hầm hố', 0, GETDATE(), GETDATE(), 3, 1),
		(-1, '', 489000000, N'Ford Ranger XLS 2.2L 4x2 MT', 2020, N'Xe được trang bị sẵn nhiều Options cần thiết: New Sync, phim cách nhiệt, cam hành trình, cam de,…', 0, GETDATE(), GETDATE(), 7, 2),
		(-1, '', 2550000000, N'Porsche Panamera 3.6 V6', 2014, N'dễ vào việc lắm', 0, GETDATE(), GETDATE(), 17, 11)
		


GO
INSERT INTO [dbo].[Plan] ( [planName],[planTime],[planLimit],[planPrice])
values
('Silver Package',1,3,15),
('Gold Package',3,10,30),
('Platinum Package',6, null,60)

INSERT INTO [dbo].[Car_Image]	([url],[createDate],[updateDate],[carID])
VALUES	
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda6Premium20/1.jpg', GETDATE(), GETDATE(), 1),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda6Premium20/2.jpg', GETDATE(), GETDATE(), 1),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda6Premium20/3.jpg', GETDATE(), GETDATE(), 1),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda6Premium20/4.jpg', GETDATE(), GETDATE(), 1),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda6Premium20/5.jpg', GETDATE(), GETDATE(), 1),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda315AT/1.jpg', GETDATE(), GETDATE(), 2),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda315AT/2.jpg', GETDATE(), GETDATE(), 2),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda315AT/3.jpg', GETDATE(), GETDATE(), 2),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda315AT/4.jpg', GETDATE(), GETDATE(), 2),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/Mazda315AT/5.jpg', GETDATE(), GETDATE(), 2),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA618TFSI/1.jpg', GETDATE(), GETDATE(), 3),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA618TFSI/2.jpg', GETDATE(), GETDATE(), 3),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA618TFSI/3.jpg', GETDATE(), GETDATE(), 3),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA618TFSI/4.jpg', GETDATE(), GETDATE(), 3),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA618TFSI/5.jpg', GETDATE(), GETDATE(), 3),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCRV24AT/1.jpg', GETDATE(), GETDATE(), 4),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCRV24AT/2.jpg', GETDATE(), GETDATE(), 4),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCRV24AT/3.jpg', GETDATE(), GETDATE(), 4),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCRV24AT/4.jpg', GETDATE(), GETDATE(), 4),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCRV24AT/5.jpg', GETDATE(), GETDATE(), 4),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona33LGATH/1.jpg', GETDATE(), GETDATE(), 5),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona33LGATH/2.jpg', GETDATE(), GETDATE(), 5),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona33LGATH/3.jpg', GETDATE(), GETDATE(), 5),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona33LGATH/4.jpg', GETDATE(), GETDATE(), 5),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona33LGATH/5.jpg', GETDATE(), GETDATE(), 5),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanameraTurbo/1.jpg', GETDATE(), GETDATE(), 6),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanameraTurbo/2.jpg', GETDATE(), GETDATE(), 6),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanameraTurbo/3.jpg', GETDATE(), GETDATE(), 6),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanameraTurbo/4.jpg', GETDATE(), GETDATE(), 6),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanameraTurbo/5.jpg', GETDATE(), GETDATE(), 6),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpanderCross15AT/1.jpg', GETDATE(), GETDATE(), 7),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpanderCross15AT/2.jpg', GETDATE(), GETDATE(), 7),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpanderCross15AT/3.jpg', GETDATE(), GETDATE(), 7),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpanderCross15AT/4.jpg', GETDATE(), GETDATE(), 7),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpanderCross15AT/5.jpg', GETDATE(), GETDATE(), 7),
		('/mironmahmud.com/ghurnek/assets/images/product/Volvo/VolvoS90InscriptionT6/1.jpg', GETDATE(), GETDATE(), 8),
		('/mironmahmud.com/ghurnek/assets/images/product/Volvo/VolvoS90InscriptionT6/2.jpg', GETDATE(), GETDATE(), 8),
		('/mironmahmud.com/ghurnek/assets/images/product/Volvo/VolvoS90InscriptionT6/3.jpg', GETDATE(), GETDATE(), 8),
		('/mironmahmud.com/ghurnek/assets/images/product/Volvo/VolvoS90InscriptionT6/4.jpg', GETDATE(), GETDATE(), 8),
		('/mironmahmud.com/ghurnek/assets/images/product/Volvo/VolvoS90InscriptionT6/5.jpg', GETDATE(), GETDATE(), 8),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/LexusES250/1.jpg', GETDATE(), GETDATE(), 9),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/LexusES250/2.jpg', GETDATE(), GETDATE(), 9),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/LexusES250/3.jpg', GETDATE(), GETDATE(), 9),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/LexusES250/4.jpg', GETDATE(), GETDATE(), 9),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/LexusES250/5.jpg', GETDATE(), GETDATE(), 9),
		('/mironmahmud.com/ghurnek/assets/images/product/Nissan/Nissan25SV4WDPREMIUM/1.jpg', GETDATE(), GETDATE(), 10),
		('/mironmahmud.com/ghurnek/assets/images/product/Nissan/Nissan25SV4WDPREMIUM/2.jpg', GETDATE(), GETDATE(), 10),
		('/mironmahmud.com/ghurnek/assets/images/product/Nissan/Nissan25SV4WDPREMIUM/3.jpg', GETDATE(), GETDATE(), 10),
		('/mironmahmud.com/ghurnek/assets/images/product/Nissan/Nissan25SV4WDPREMIUM/4.jpg', GETDATE(), GETDATE(), 10),
		('/mironmahmud.com/ghurnek/assets/images/product/Nissan/Nissan25SV4WDPREMIUM/5.jpg', GETDATE(), GETDATE(), 10),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC180AMG/1.jpg', GETDATE(), GETDATE(), 11),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC180AMG/2.jpg', GETDATE(), GETDATE(), 11),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC180AMG/3.jpg', GETDATE(), GETDATE(), 11),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC180AMG/4.jpg', GETDATE(), GETDATE(), 11),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC180AMG/5.jpg', GETDATE(), GETDATE(), 11),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordEverestAT/1.jpg', GETDATE(), GETDATE(), 12),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordEverestAT/2.jpg', GETDATE(), GETDATE(), 12),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordEverestAT/3.jpg', GETDATE(), GETDATE(), 12),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordEverestAT/4.jpg', GETDATE(), GETDATE(), 12),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordEverestAT/5.jpg', GETDATE(), GETDATE(), 12),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaCarnivalPremium22D/1.jpg', GETDATE(), GETDATE(), 13),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaCarnivalPremium22D/2.jpg', GETDATE(), GETDATE(), 13),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaCarnivalPremium22D/3.jpg', GETDATE(), GETDATE(), 13),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaCarnivalPremium22D/4.jpg', GETDATE(), GETDATE(), 13),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaCarnivalPremium22D/5.jpg', GETDATE(), GETDATE(), 13),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA420TFSI/1.jpg', GETDATE(), GETDATE(), 14),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA420TFSI/2.jpg', GETDATE(), GETDATE(), 14),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA420TFSI/3.jpg', GETDATE(), GETDATE(), 14),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA420TFSI/4.jpg', GETDATE(), GETDATE(), 14),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA420TFSI/5.jpg', GETDATE(), GETDATE(), 14),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaLandCruiser57V8/1.jpg', GETDATE(), GETDATE(), 15),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaLandCruiser57V8/2.jpg', GETDATE(), GETDATE(), 15),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaLandCruiser57V8/3.jpg', GETDATE(), GETDATE(), 15),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaLandCruiser57V8/4.jpg', GETDATE(), GETDATE(), 15),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaLandCruiser57V8/5.jpg', GETDATE(), GETDATE(), 15),
		('/mironmahmud.com/ghurnek/assets/images/product/Vinfast/VinFastLuxA20/1.jpg', GETDATE(), GETDATE(), 16),
		('/mironmahmud.com/ghurnek/assets/images/product/Vinfast/VinFastLuxA20/2.jpg', GETDATE(), GETDATE(), 16),
		('/mironmahmud.com/ghurnek/assets/images/product/Vinfast/VinFastLuxA20/3.jpg', GETDATE(), GETDATE(), 16),
		('/mironmahmud.com/ghurnek/assets/images/product/Vinfast/VinFastLuxA20/4.jpg', GETDATE(), GETDATE(), 16),
		('/mironmahmud.com/ghurnek/assets/images/product/Vinfast/VinFastLuxA20/5.jpg', GETDATE(), GETDATE(), 16),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2011/1.jpg', GETDATE(), GETDATE(), 17),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2011/2.jpg', GETDATE(), GETDATE(), 17),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2011/3.jpg', GETDATE(), GETDATE(), 17),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2011/4.jpg', GETDATE(), GETDATE(), 17),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2011/5.jpg', GETDATE(), GETDATE(), 17),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2013/1.jpg', GETDATE(), GETDATE(), 18),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2013/2.jpg', GETDATE(), GETDATE(), 18),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2013/3.jpg', GETDATE(), GETDATE(), 18),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2013/4.jpg', GETDATE(), GETDATE(), 18),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMW320i2013/5.jpg', GETDATE(), GETDATE(), 18),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCamry25Q/1.jpg', GETDATE(), GETDATE(), 19),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCamry25Q/2.jpg', GETDATE(), GETDATE(), 19),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCamry25Q/3.jpg', GETDATE(), GETDATE(), 19),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCamry25Q/4.jpg', GETDATE(), GETDATE(), 19),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCamry25Q/5.jpg', GETDATE(), GETDATE(), 19),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCivic/1.jpg', GETDATE(), GETDATE(), 20),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCivic/2.jpg', GETDATE(), GETDATE(), 20),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCivic/3.jpg', GETDATE(), GETDATE(), 20),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCivic/4.jpg', GETDATE(), GETDATE(), 20),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaCivic/5.jpg', GETDATE(), GETDATE(), 20),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/MazdaCX525AT2WD/1.jpg', GETDATE(), GETDATE(), 21),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/MazdaCX525AT2WD/2.jpg', GETDATE(), GETDATE(), 21),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/MazdaCX525AT2WD/3.jpg', GETDATE(), GETDATE(), 21),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/MazdaCX525AT2WD/4.jpg', GETDATE(), GETDATE(), 21),
		('/mironmahmud.com/ghurnek/assets/images/product/Mazda/MazdaCX525AT2WD/5.jpg', GETDATE(), GETDATE(), 21),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordTitanium2x4/1.jpg', GETDATE(), GETDATE(), 22),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordTitanium2x4/2.jpg', GETDATE(), GETDATE(), 22),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordTitanium2x4/3.jpg', GETDATE(), GETDATE(), 22),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordTitanium2x4/4.jpg', GETDATE(), GETDATE(), 22),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordTitanium2x4/5.jpg', GETDATE(), GETDATE(), 22),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/Lexus5702020/1.jpg', GETDATE(), GETDATE(), 23),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/Lexus5702020/2.jpg', GETDATE(), GETDATE(), 23),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/Lexus5702020/3.jpg', GETDATE(), GETDATE(), 23),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/Lexus5702020/4.jpg', GETDATE(), GETDATE(), 23),
		('/mironmahmud.com/ghurnek/assets/images/product/Lexus/Lexus5702020/5.jpg', GETDATE(), GETDATE(), 23),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSeltosLuxury14AT/1.jpg', GETDATE(), GETDATE(), 24),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSeltosLuxury14AT/2.jpg', GETDATE(), GETDATE(), 24),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSeltosLuxury14AT/3.jpg', GETDATE(), GETDATE(), 24),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSeltosLuxury14AT/4.jpg', GETDATE(), GETDATE(), 24),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSeltosLuxury14AT/5.jpg', GETDATE(), GETDATE(), 24),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorscheCayenneS/1.jpg', GETDATE(), GETDATE(), 25),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorscheCayenneS/2.jpg', GETDATE(), GETDATE(), 25),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorscheCayenneS/3.jpg', GETDATE(), GETDATE(), 25),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorscheCayenneS/4.jpg', GETDATE(), GETDATE(), 25),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorscheCayenneS/5.jpg', GETDATE(), GETDATE(), 25),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaInnova20E/1.jpg', GETDATE(), GETDATE(), 26),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaInnova20E/2.jpg', GETDATE(), GETDATE(), 26),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaInnova20E/3.jpg', GETDATE(), GETDATE(), 26),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaInnova20E/4.jpg', GETDATE(), GETDATE(), 26),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaInnova20E/5.jpg', GETDATE(), GETDATE(), 26),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzGLC3004Matic/1.jpg', GETDATE(), GETDATE(), 27),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzGLC3004Matic/2.jpg', GETDATE(), GETDATE(), 27),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzGLC3004Matic/3.jpg', GETDATE(), GETDATE(), 27),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzGLC3004Matic/4.jpg', GETDATE(), GETDATE(), 27),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzGLC3004Matic/5.jpg', GETDATE(), GETDATE(), 27),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA4/1.jpg', GETDATE(), GETDATE(), 28),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA4/2.jpg', GETDATE(), GETDATE(), 28),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA4/3.jpg', GETDATE(), GETDATE(), 28),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA4/4.jpg', GETDATE(), GETDATE(), 28),
		('/mironmahmud.com/ghurnek/assets/images/product/Audi/AudiA4/5.jpg', GETDATE(), GETDATE(), 28),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC200/1.jpg', GETDATE(), GETDATE(), 29),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC200/2.jpg', GETDATE(), GETDATE(), 29),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC200/3.jpg', GETDATE(), GETDATE(), 29),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC200/4.jpg', GETDATE(), GETDATE(), 29),
		('/mironmahmud.com/ghurnek/assets/images/product/Mercedes/MercedesBenzC200/5.jpg', GETDATE(), GETDATE(), 29),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona22Luxury/1.jpg', GETDATE(), GETDATE(), 30),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona22Luxury/2.jpg', GETDATE(), GETDATE(), 30),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona22Luxury/3.jpg', GETDATE(), GETDATE(), 30),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona22Luxury/4.jpg', GETDATE(), GETDATE(), 30),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSedona22Luxury/5.jpg', GETDATE(), GETDATE(), 30),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpander15MT/1.jpg', GETDATE(), GETDATE(), 31),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpander15MT/2.jpg', GETDATE(), GETDATE(), 31),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpander15MT/3.jpg', GETDATE(), GETDATE(), 31),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpander15MT/4.jpg', GETDATE(), GETDATE(), 31),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiXpander15MT/5.jpg', GETDATE(), GETDATE(), 31),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaAccord20AT/1.jpg', GETDATE(), GETDATE(), 32),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaAccord20AT/2.jpg', GETDATE(), GETDATE(), 32),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaAccord20AT/3.jpg', GETDATE(), GETDATE(), 32),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaAccord20AT/4.jpg', GETDATE(), GETDATE(), 32),
		('/mironmahmud.com/ghurnek/assets/images/product/Honda/HondaAccord20AT/5.jpg', GETDATE(), GETDATE(), 32),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCorollaaltis20VAT/1.jpg', GETDATE(), GETDATE(), 33),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCorollaaltis20VAT/2.jpg', GETDATE(), GETDATE(), 33),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCorollaaltis20VAT/3.jpg', GETDATE(), GETDATE(), 33),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCorollaaltis20VAT/4.jpg', GETDATE(), GETDATE(), 33),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaCorollaaltis20VAT/5.jpg', GETDATE(), GETDATE(), 33),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSoluto14MTDeluxe/1.jpg', GETDATE(), GETDATE(), 34),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSoluto14MTDeluxe/2.jpg', GETDATE(), GETDATE(), 34),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSoluto14MTDeluxe/3.jpg', GETDATE(), GETDATE(), 34),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSoluto14MTDeluxe/4.jpg', GETDATE(), GETDATE(), 34),
		('/mironmahmud.com/ghurnek/assets/images/product/Kia/KiaSoluto14MTDeluxe/5.jpg', GETDATE(), GETDATE(), 34),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiAttrage12/1.jpg', GETDATE(), GETDATE(), 35),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiAttrage12/2.jpg', GETDATE(), GETDATE(), 35),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiAttrage12/3.jpg', GETDATE(), GETDATE(), 35),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiAttrage12/4.jpg', GETDATE(), GETDATE(), 35),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiAttrage12/5.jpg', GETDATE(), GETDATE(), 35),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiPajeroSport4x2AT/5.jpg', GETDATE(), GETDATE(), 36),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiPajeroSport4x2AT/5.jpg', GETDATE(), GETDATE(), 36),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiPajeroSport4x2AT/5.jpg', GETDATE(), GETDATE(), 36),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiPajeroSport4x2AT/5.jpg', GETDATE(), GETDATE(), 36),
		('/mironmahmud.com/ghurnek/assets/images/product/Mitsubishi/MitsubishiPajeroSport4x2AT/5.jpg', GETDATE(), GETDATE(), 36),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaFortuner27V4AtA/1.jpg', GETDATE(), GETDATE(), 37),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaFortuner27V4AtA/2.jpg', GETDATE(), GETDATE(), 37),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaFortuner27V4AtA/3.jpg', GETDATE(), GETDATE(), 37),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaFortuner27V4AtA/4.jpg', GETDATE(), GETDATE(), 37),
		('/mironmahmud.com/ghurnek/assets/images/product/Toyota/ToyotaFortuner27V4AtA/5.jpg', GETDATE(), GETDATE(), 37),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMWi815Hybird/1.jpg', GETDATE(), GETDATE(), 38),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMWi815Hybird/2.jpg', GETDATE(), GETDATE(), 38),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMWi815Hybird/3.jpg', GETDATE(), GETDATE(), 38),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMWi815Hybird/4.jpg', GETDATE(), GETDATE(), 38),
		('/mironmahmud.com/ghurnek/assets/images/product/BMW/BMWi815Hybird/5.jpg', GETDATE(), GETDATE(), 38),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordRangerXLS22L4MT/1.jpg', GETDATE(), GETDATE(), 39),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordRangerXLS22L4MT/2.jpg', GETDATE(), GETDATE(), 39),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordRangerXLS22L4MT/3.jpg', GETDATE(), GETDATE(), 39),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordRangerXLS22L4MT/4.jpg', GETDATE(), GETDATE(), 39),
		('/mironmahmud.com/ghurnek/assets/images/product/Ford/FordRangerXLS22L4MT/5.jpg', GETDATE(), GETDATE(), 39),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanamera36V6/1.jpg', GETDATE(), GETDATE(), 40),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanamera36V6/2.jpg', GETDATE(), GETDATE(), 40),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanamera36V6/3.jpg', GETDATE(), GETDATE(), 40),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanamera36V6/4.jpg', GETDATE(), GETDATE(), 40),
		('/mironmahmud.com/ghurnek/assets/images/product/Porsche/PorschePanamera36V6/5.jpg', GETDATE(), GETDATE(), 40)


insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'admin@gmail.com',123,N'Admin',132465,N'SaiGon',CURRENT_TIMESTAMP,2,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'staff1@gmail.com',123,N'Staff1',242425,N'SaiGon',CURRENT_TIMESTAMP,1,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'staff2@gmail.com',123,N'Staff2',31313,N'SaiGon',CURRENT_TIMESTAMP,1,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'john@gmail.com',123,N'John Wick',75743,N'SaiGon',CURRENT_TIMESTAMP,0,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'trump@gmail.com',123,N'Trump',5267457,N'SaiGon',CURRENT_TIMESTAMP,0,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage])
				values(N'trong@gmail.com',123,N'Nguyen Phu Trong',3635,N'SAigon',CURRENT_TIMESTAMP,0,'D:\CN5\FolderUser')

INSERT[dbo].[Blog](blogTitle,blogDetail,blogImage,userId ,blogDate ) values('The Evolution of Cars - From the First Automobile to Modern-Day Vehicles',N'The history of cars can be traced back to the late 1800s when Karl Benz invented the first gasoline-powered automobile. This invention revolutionized transportation and paved the way for the development of modern-day vehicles. In the early days of cars, they were considered a luxury item and were only accessible to the wealthy. However, as technology advanced and production costs decreased, cars became more affordable and accessible to the average consumer.One major turning point in the history of cars was the introduction of the assembly line by Henry Ford in 1913. The assembly line allowed for mass production of cars, making them even more affordable and popular. Ford Model T, which was introduced in 1908, quickly became one of the most popular cars in the world and is often credited with democratizing the automobile.Over the years, cars have evolved significantly in terms of design, features, and safety. In the 1930s, chrome accents and streamlined shapes became popular, leading to the age of iconic classic cars like the Ford Thunderbird and the Chevrolet Bel Air. In the 1950s and 60s, muscle cars gained popularity, with models like the Ford Mustang and the Chevrolet Camaro becoming symbols of American automotive culture.In the 1970s, concerns about environmental pollution led to the development of smaller, more fuel-efficient cars. Japanese automakers like Toyota and Honda gained market share for their reliable and efficient models. The 1980s and 90s saw advances in safety features like airbags and anti-lock brakes, as well as the introduction of electronic systems like GPS navigation and automatic transmissions.In recent years, the automotive industry has seen a shift towards electric and hybrid cars as concerns about climate change and fuel efficiency rise. Companies like Tesla have led the charge in making electric cars mainstream and desirable, with sleek designs and impressive performance figures. Self-driving cars have also become a reality, with companies like Google and Uber testing autonomous vehicles on public roads.Looking to the future, its clear that cars will continue to evolve and adapt to changing consumer needs and technological advancements. Some experts predict that hydrogen fuel cell technology could be the next big thing in automotive innovation, offering an alternative to traditional fossil fuels. Whatever the future holds, one thing is for sure – the history of cars is a fascinating and ever-evolving story that has changed the world as we know it.',null,1,'2023/05/30');
INSERT [dbo].[Blog](blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Rise of Electric Cars: Environmental Benefits and Challenges', 'Electric cars are becoming increasingly popular as consumers seek eco-friendly alternatives to traditional gasoline-powered vehicles. These cars run on electricity stored in rechargeable batteries, rather than fossil fuels. As a result, electric cars produce zero emissions while driving, which is a significant benefit for the environment. In addition, electric cars are generally quieter and smoother than gasoline-powered cars, providing a more comfortable ride. However, there are also challenges associated with electric cars. One major issue is battery range, or how far an electric car can travel on a single charge. While some models have a range of over 300 miles, many electric cars still have a relatively limited range compared to gasoline-powered cars. Charging infrastructure is also a concern, as it is not yet as widespread as gas stations. However, governments and private companies are investing in the expansion of charging networks and the development of more efficient batteries, which should help address these issues.', null, 2, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Evolution of Car Design: From Classic to Modern', 'Car design has evolved significantly over the past century, reflecting changes in technology, fashion, and consumer preferences. In the early days of the automobile industry, cars were often boxy and utilitarian, with little attention paid to aesthetics. However, as cars became more prevalent and affordable, designers began to focus on style and comfort as well as function. Today cars feature sleek lines, aerodynamic shapes, and advanced safety features that make driving more enjoyable and convenient than ever before. Car manufacturers also focus on incorporating cutting-edge technologies into their designs, such as touchscreens, lane departure warning systems, and adaptive cruise control. As a result, modern cars are not only more stylish, but also safer and more convenient than their predecessors.', null, 3, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Importance of Regular Car Maintenance: Tips and Tricks', 'Regular car maintenance is crucial for keeping your vehicle in top condition and avoiding costly repairs down the road. One of the most important tasks is changing your oil regularly, which helps to keep your engine lubricated and running smoothly. Checking your tire pressure is also important, as underinflated tires can wear out quickly and decrease your gas mileage. Other regular maintenance tasks include replacing worn-out parts such as brake pads and spark plugs, checking your battery and coolant levels, and keeping your car clean inside and out. By following these tips and tricks, you can help ensure that your car stays in great shape for years to come.', null, 4, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Benefits of Hybrid Cars: Combining Gasoline and Electric Power', 'Hybrid cars offer numerous benefits over traditional gasoline-powered vehicles. These cars are equipped with both a gasoline engine and an electric motor, which work together to provide improved fuel efficiency. As a result, hybrid cars can save drivers money on fuel costs while also reducing emissions and improving air quality. Another benefit of hybrid cars is their quiet and smooth operation. Because the electric motor provides power at low speeds, hybrid cars are often quieter and smoother than conventional gasoline engines. In addition, some hybrid models offer advanced features such as regenerative braking, which captures energy that is normally lost during braking to recharge the battery.', null, 5, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Impact of Technology on Car Safety: From Airbags to Autopilot', 'Advances in technology have made driving safer than ever before. One of the most important safety features in modern cars is the airbag, which helps to protect drivers and passengers in the event of a collision. Other safety technologies include anti-lock brakes, traction control, and lane departure warning systems. More recently, autonomous driving technology has been developed to take human error out of the equation entirely. These self-driving cars use sensors and software to navigate roads and avoid obstacles without human intervention. While these technologies have the potential to save lives and reduce injuries, there are also concerns about their reliability and the need for driver education and training.', null, 1, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Future of Connected Cars', 'Connected cars, also known as smart cars, are rapidly becoming the norm in the automotive industry. These vehicles are equipped with advanced features like internet connectivity, GPS navigation, and real-time traffic updates. One of the main benefits of connected cars is improved safety. With features like automatic emergency braking and lane departure warnings, these cars can help prevent accidents on the road. Additionally, many connected cars come with built-in cameras and sensors, providing drivers with a 360-degree view of their surroundings. Another advantage of connected cars is increased convenience. With features like voice commands and smartphone integration, drivers can easily control various aspects of their car without taking their hands off the wheel. This can help reduce distractions and improve safety on the road. As more automakers invest in connected car technology, it is clear that these vehicles will continue to play an important role in the future of transportation. From improved safety to increased convenience, the benefits of connected cars are hard to ignore.', null, 1, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Rise of Hybrid Cars', 'Hybrid cars have become increasingly popular in recent years as consumers look for more environmentally friendly modes of transportation. These cars combine a traditional gasoline engine with an electric motor, providing improved fuel efficiency and reduced emissions. One of the main benefits of hybrid cars is their ability to switch between gasoline and electric power. This means that they can operate in all-electric mode at low speeds, reducing emissions and saving fuel. At higher speeds, the gasoline engine takes over to provide additional power. Another advantage of hybrid cars is reduced maintenance costs. With fewer moving parts than traditional gasoline engines, hybrid cars require less maintenance and have a longer lifespan. Additionally, many hybrid cars come with features like regenerative braking, which helps recharge the battery while driving and further improves fuel efficiency. As more automakers invest in the development of hybrid technology, it is clear that these vehicles will play an important role in the future of the automotive industry.', null, 1, CURRENT_TIMESTAMP);
INSERT [dbo].[Blog]( blogTitle,blogDetail,blogImage,userId ,blogDate ) VALUES ('The Benefits of Autonomous Cars', 'Autonomous cars, also known as self-driving cars, are becoming increasingly popular as they offer several benefits over traditional vehicles. One of the main advantages of autonomous cars is increased safety on the road. With advanced sensors and algorithms, these cars can detect objects and make split-second decisions to avoid accidents. Another benefit of autonomous cars is increased efficiency. These vehicles can communicate with each other to optimize routes and reduce congestion on the road. Additionally, they can operate at optimal speeds, which can help save fuel and reduce emissions. Finally, autonomous cars offer greater convenience to drivers. With self-driving technology, drivers can sit back and relax while the car takes care of the driving. This can help reduce stress and improve the overall driving experience. While there are still some concerns about the safety and reliability of autonomous cars, it is clear that these vehicles have the potential to revolutionize the way we travel on the road.', null, 1,CURRENT_TIMESTAMP);


GO                          