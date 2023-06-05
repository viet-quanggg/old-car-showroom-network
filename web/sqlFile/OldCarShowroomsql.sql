set nocount on
USE master
GO

if exists (select * from sysdatabases where name='OldCarShowroom')
begin
  raiserror('Dropping existing OldCarShowroom database ....',0,1)
  DROP database OldCarShowroom
end
GO

CHECKPOINT
go

raiserror('Creating OldCarShowroom database....',0,1)
go
   CREATE DATABASE OldCarShowroom
GO

CHECKPOINT
GO

USE OldCarShowroom
GO

create table [User] 
(userId int identity (1,1) PRIMARY KEY,
userEmail varchar(25) NOT NULL, 
userPass varchar(16) NOT NULL,
userName nvarchar(25) NOT NULL,
userPhone int NOT NULL,
userAddress varchar(50) NOT NULL,
userRole int NOT NULL,
userImage nvarchar(255) 
);

create table Car 
(carId int identity (1,1) PRIMARY KEY,
ownerId int,
carShowroom varchar(30) NOT NULL,
carPrice float NOT NULL,
carName varchar(30) NOT NULL,
carBrand varchar(30) NOT NULL, 
carYear int NOT NULL,
carDescription nvarchar(255) NOT NULL, 
carImage nvarchar(255),
carCondition bit NOT NULL,
foreign key (ownerId) references [User] (userId)
);

create table  [Order]
(orderId int identity (1,1) PRIMARY KEY,
orderTotal float NOT NULL,
orderStatus bit NOT NULL, 
orderDate Date NOT NULL,
userId int NOT NULL
foreign key (userId) references [User] (userId)

);
create table [OrderDetail]
(orderId int NOT NULL,
carId int NOT NULL,
carPrice float NOT NULL
foreign key (orderId) references [Order] (orderId),
foreign key (carId) references Car (carId),
primary key (orderId, carId)
)
create table [Post]
(postId int identity (1,1) PRIMARY KEY,
userId int NOT NULL,
carId int NOT NULL,
postDate Date NOT NULL,
foreign key (userId) references [User] (userId),
foreign key (carId) references Car (carId)
)
create table [Blog]
(
blogId int identity (1,1) PRIMARY KEY,
blogTitle nvarchar(150) NOT NULL,
blogDetail nvarchar(3000) Not NUll, 
blogImage nvarchar(255),
userId int NOT NULL,
blogDate Date NOT NULL,
foreign key (userId) references [User] (userId),
)
create table [Voucher]
(voucherId int identity(1,1) PRIMARY KEY,
discountRate float NOT NULL
)
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'admin@gmail.com',123,N'Admin',132465,N'SaiGon',2,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'staff1@gmail.com',123,N'Staff1',242425,N'SaiGon',1,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'staff2@gmail.com',123,N'Staff2',31313,N'SaiGon',1,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'john@gmail.com',123,N'John Wick',75743,N'SaiGon',0,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'trump@gmail.com',123,N'Trump',5267457,N'SaiGon',0,'D:\CN5\FolderUser')
insert [dbo].[User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[userRole],[userImage])
				values(N'trong@gmail.com',123,N'Nguyen Phu Trong',3635,N'SAigon',0,'D:\CN5\FolderUser')
SET IDENTITY_INSERT [dbo].[Car] OFF
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Toyota','Camry',200000000,2019,N'Ok lắm','D:\CN5\FolderImage\C1',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Toyota','Vios',428000000,2020,N'Ok lắm','D:\CN5\FolderImage\C2',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Mazda','CX-5',700000000,2021,N'Ok lắm','D:\CN5\FolderImage\C3',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Mazda','Mazda 3',468000000,2016,N'Ok lắm','D:\CN5\FolderImage\C4',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','KIA','Soluto',338000000,2021,N'Ok lắm','D:\CN5\FolderImage\C5',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','KIA','Seltos',646000000,2020,N'Ok lắm','D:\CN5\FolderImage\C6',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Mitsubishi','Attrage',418000000,2022,N'Ok lắm','D:\CN5\FolderImage\C7',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Mitsubishi','Pajero Sport',1220000000,2021,N'Ok lắm','D:\CN5\FolderImage\C8',0)
insert [dbo].[Car]([carShowroom],[carBrand],[carName],[carPrice],[carYear],[carDescription],[carImage],[carCondition])
values(N'FPTU','Honda','Civic',1600000000,2020,N'Ok lắm','D:\CN5\FolderImage\C9',0)
SET IDENTITY_INSERT [dbo].[Blog] OFF
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