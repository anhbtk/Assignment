create database Web_banson



create table Categories(
	idCategory int not null primary key,
	title nvarchar(70)not null,
	[description] nvarchar(500),
);

create table Product(
	idProduct int not null identity(1,1) primary key,
	title nvarchar(200)not null,
	[description] nvarchar(50),
	idCategory int,
	price int,
	imagin nvarchar(max),
	foreign key (idCategory) references Categories(idCategory)
);

create table [User](
	idUser int not null primary key,
	username varchar(20),
	[password] varchar(20),
	email varchar(50),
	phone_number int,
	address nvarchar(100),
);

-- not run

create table [Order](
	idOrder int not null primary key ,
	[user] int,
	cart_id int ,
	shipping_address nvarchar(100),
	order_description nvarchar(45),
	order_total int,
	is_complete bit,
);

create table Variation(
	idVariation int not null primary key,
	product int,
	title nvarchar(50),
	price int,
	sale_price int,
	inventory int,
	active bit,
	
);
create table CartItem(
	idCartItem int not null primary key,
	cart int,
	item int,
	quantity int,
	
);
create table Cart(
	idCart int not null primary key,
	[user] int,
	created_at datetime,
	updated_at datetime,
);

insert into Categories
values 
(0001,N'Son Romand - Glasting Water Tint',N'Son tint lì Romand Glasting Water Tint là son tint lì của thương hiệu Romand có chất son tint bóng tự như một lớp màng nước lướt nhẹ trên môi, chứa nhiều dưỡng chất giúp nuôi dưỡng đôi môi, son lên môi nhẹ và mướt mịn, dễ tán đều cùng với bảng màu rực rỡ đa dạng mang đến cho bạn đôi môi căng mọng tràn đầy sức sống, tự tin cả ngày dài. on có thiết kế bên ngoài với nắp son trong suốt được trang trí bởi dòng chữ Romand. Thân son hình trụ tròn, cầm khá chắc tay và có màu trùng với màu son bên trong'),
(0002,N'Son Romand - Zero Velvet Tint',N'Son kem lì Romand Zero Velvet Tint là son kem lì của thương hiệu Romand với kết cấu velvet xốp mềm cùng bảng màu đa dạng, dễ dùng cho đôi môi lên màu chuẩn, mịn mượt, nổi bật dù bạn ở bất cứ đâu. Romand Zero Velvet Tint có thân hình trụ tròn, vỏ nhám lì dễ dàng phân biệt màu son bên trong, kích thước cầm vừa tay. Chất son mềm mịn như bông, không hề bóng hay dễ bị lem khi lên môi. Độ bám nhiều giờ đồng hồ, son lên màu môi chuẩn chỉ với một lần tô.'),
(0003,N'Son Romand - Glasting Water Gloss',N'Với sự thành công của Romand Glasting Water Tint, Romand Glasting Water Gloss vừa ra mắt đã ngay lập tức được giới làm đẹp tích cực săn lùng. Thân son trong suốt, nhìn thấy màu son và rất nhiều những hạt nhũ lấp lánh vô cùng bắt mắt, mang lại cảm giác trong trẻo và lung linh, thật đúng như tên gọi Water Gloss. Chất son dạng gel cực mỏng, khi thoa lên môi cảm giác như thoa một lớp nước trên môi vậy, cảm giác nhẹ nhàng rất thích. Son không hề có cảm giác dính dính khi bặm môi.'),
(0004,N'Son Romand - Seethrough Matte Tint',N'Romand See-Through Matte Tint với phiên bản đặc biệt Hanbok Project với một diện mạo xinh xắn, trang nhã với chất son kem lì mịn mượt cùng với bảng màu trendy quyến rũ giúp da trở nên tươi sáng. Thiết kế lấy cảm hứng từ những tông màu pastel, nhẹ nhàng nhưng vẫn đầy sự cuốn hút, vì thế nhiều cô gái đã bị hạ gục ngay từ khi thấy bao bì xinh xắn này của dòng son Romand Se-Through Matte Tint. Kết cấu son có dạng mousse tint tạo cảm giác ẩm mịn, dễ tán đều, tệp ngay vào môi từ lần chạm đầu tiên tựa như không bôi gì.'),
(0005,N'Son Romand - Zero Matte Lipstick',N'Hạt phấn tạo màu nhỏ trong chất son của Zero Gram Lipstick khiến cho màu son lên chuẩn và tạo được độ mịn lì nhất có thể, chất son mỏng nhẹ và siêu nhẹ môi, mịn màng lướt trên môi không mang lại cảm giác bết dính khó chịu. thiết kế thân son dáng trụ vuông cầm siêu chắc tay, vỏ son xám đục và nude trong suốt bao bọc bên ngoài lõi son cực kì độc đáo và sang chảnh.'),
(0006,N'Son Romand - Juicy Lasting Tint',N'Son tint bóng - Hot trend mà nàng nào bỏ lỡ em này quả là một thiếu sót lớn. Em này đúng chuẩn son tint bóng nhẹ, tự nhiên lắm luôn các nàng nhé. Son apply lên môi tạo hiệu ứng đúng kiểu căng mọng tự nhiên ý, không bị dính dính môi đâu. Tuy là chất son tint nhiều dưỡng nhưng độ giữ màu của em ý vẫn đáng gờm lắm, ăn uống nhiều dầu mỡ thì lớp son vẫn giữ lại trên môi phớt hồng hồng nhẹ siêu tự nhiên.'),
(0007,N'Son Gilaa - Plumping Lip Serum',N'Điểm đặc biệt mới lạ trong BST Plumping Lip Serum chính là Serum dưỡng môi căng mọng không màu. Vừa có thể sử dụng là lớp dưỡng môi mềm mịn, vừa là lớp base hỗ trợ lớp son màu lên đều đẹp chuẩn sắc.'),
(0008,N'Son Gilaa - Long Wear Lip Cream',N'Thỏi Son Kem Li Cho Đôi Môi Nhiều Khuyết Điểm. Càng thoa sắc môi càng nét. Bảng màu siêu kinh điển phù hợp mọi tông da. Chứa nhiều thành phần dưỡng môi giải quyết đồng thời nhiều khuyết điểm(Shea Butter (Bơ Hạt Mỡ)Bảo vệ trước tác hại của tia UV từ ánh nắng mặt trời, hỗ trợ trị thâm môi; Macadamia (Hạt Mắc-ca)Duy trì độ ẩm mịn cho môi, chống khô và nứt nẻ môi.'),
(0009,N'Son Gilaa - Long Wear Lip Cream Rich Rosie',N'Đây là phiên bản nâng cấp của dòng son kem lì dành cho đôi môi nhiều khuyết điểm đình đám. Chất son được bổ sung thêm tinh chất Bisabolol làm sáng màu môi tự nhiên, kết hợp thành phần dưỡng ẩm cao giúp môi hạn chế được trình trạng khô, bong tróc.'),
(0010,N'Son Gilaa - Long Wear Lip Cream Mini Size',N'Thỏi Son Kem Li Cho Đôi Môi Nhiều Khuyết Điểm. Càng thoa sắc môi càng nét. Bảng màu siêu kinh điển phù hợp mọi tông da. Chứa nhiều thành phần dưỡng môi giải quyết đồng thời nhiều khuyết điểm(Shea Butter (Bơ Hạt Mỡ)Bảo vệ trước tác hại của tia UV từ ánh nắng mặt trời, hỗ trợ trị thâm môi; Macadamia (Hạt Mắc-ca)Duy trì độ ẩm mịn cho môi, chống khô và nứt nẻ môi.)');


select*from Categories
