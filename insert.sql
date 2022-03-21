INSERT INTO SE1435_PRJ321.dbo.HE141449_userID (user_id,username,password,ngaysinh,gioitinh,email,sdt,diachi,[role]) VALUES
	 (8,N'admin',N'admin','2000-10-14',N'Male',N'thanhdang@gmail.com',N'0944808998',N'VN',N'2'),
	 (9,N'god',N'god','2000-10-14',N'Male',N'thanhdangthanhdang@gmail.com',N'0944808998',N'VN',N'3'),
	 (10,N'user',N'user','2000-03-14',N'Male',N'thanhdang321@gmail.con',N'0944808998',N'VN',N'1'),
	 (11,N'user1',N'user1','2000-10-14',N'Male',N'dangthanh1410@gmail.com',N'0944808998',N'VN',N'1');
	 
	 INSERT INTO SE1435_PRJ321.dbo.HE141449_Wallet (balance,username) VALUES
	 (4987900.0,N'user'),
	 (1234124.0,N'user1');
	 
	 INSERT INTO SE1435_PRJ321.dbo.HE141449_books (name,author,category,description,img,price) VALUES
	 (N'Doraemon',N'Thanh',N'Truyện',N'Gà',N'images/books/book3.jpg',5.0),
	 (N'Naruto',N'Thành',N'Truyện Tranh',N'Ðây là truyện Naruto',N'images/books/book3.jpg',18.5);
	 
	 INSERT INTO SE1435_PRJ321.dbo.HE141449_category (ma_the_loai,ten_the_loai,mo_ta) VALUES
	 (1,N'SmartPhone',N'Xiaomi, Apple, Samsung ...'),
	 (2,N'Tablet',N'LikeNew, 99%'),
	 (3,N'True Wireless',N''),
	 (4,N'Mouse',N'Cheapest'),
	 (5,N'SmartWatch',N''),
	 (6,N'KeyBoard',N'');
	 
	 INSERT INTO SE1435_PRJ321.dbo.HE141449_clothes (name,[size],gender,description,price,brand,img) VALUES
	 (N'Áo LV ',N'S',N'Male',N'Áo đẹp vcl',50.0,N'Lv',N'images/clothes/clothes.6.png'),
	 (N'Quần LV',N'L',N'Male',N'Quần đẹp vl ',500.0,N'LV',N'images/clothes/clothes2.png');
	 
	 INSERT INTO SE1435_PRJ321.dbo.HE141449_product (ma_san_pham,ma_the_loai,ten_san_pham,hinh_anh,gia_ban,hang_san_xuat,thong_tin,Sell_ID) VALUES
	 (3,3,N'Redmi Airdots 2',N'https://xiaomivietnam.com/wp-content/uploads/2020/10/Tai-nghe-True-Wireless-Xiaomi-Redmi-Airdots-2.jpg',280.0,N'Xiaomi',N'Redmi Airdots 2 with a compact, flexible design, possesses a range of modern technology, impressive sound quality at a very reasonable price.',3),
	 (4,1,N'Iphone 4s',N'https://winmobile.vn/images/thumbs/2015/12/iphone-4s-16g-trang-99-products-27.png',2500.0,N'Apple',N'Smartphone iPhone 4S is a quite compact device, beautiful camera, stable configuration, branded product deserves the optimal choice in the price range below 5 million you should not miss',3),
	 (6,3,N'Airpod pro',N'https://limota.vn/wp-content/uploads/2020/01/Apple-AirPods-Pro.png',140.0,N'Apple',N'AirPods Pro with a neat, beautiful and sophisticated design, the headset is designed in the form of In-ear instead of Earbuds like AirPods 2, allowing better noise resistance, difficult to drop when worn and quieter.',3),
	 (7,5,N'Haylou Solar ',N'https://mistore.com.vn/wp-content/uploads/2020/05/haylou-solar.jpg',250.0,N'Haylou-Xiaomi',N'After the success of Haylou LS01, Xiaomi has recently launched a SmartWatch product line called Haylou Solar so what is special about this product, here you are invited to follow the product details.',3),
	 (8,5,N'Apple Watch Series 3',N'https://www.viettablet.com/images/thumbnails/480/480/detailed/27/apple-watch-series-3-38mm-thumb-hong.jpg',180.0,N'Apple',N'The 38 mm Apple Watch S3 display is 1.5 inches in size, the touch dial is equipped with an Ion-X strengthened glass that resists scratches and displays well even in the sun.',3),
	 (11,6,N'Apple Magic KeyBoard 2',N'https://images-na.ssl-images-amazon.com/images/I/61jQOQBJ9ZL.jpg',4000.0,N'Apple',N'If you are a person who often writes on iPad and has difficulty typing, the Apple Magic Keyboard 2 keyboard is an indispensable product. Accessories Apple Magic Keyboard 2 possesses a compact',3);