----use master
--drop database QLTC

--drop table CTHOADON
--drop table HOADON
--drop table THUCUNG
--drop table GIONG
--drop table LOAI
--drop table TAIKHOAN

CREATE DATABASE QLTC
GO
USE QLTC
GO

CREATE TABLE TAIKHOAN(	
	TENDN NVARCHAR(30)NOT NULL,
	MATKHAU NVARCHAR(30) NOT NULL,
	HOTEN NVARCHAR(50),
	EMAIL VARCHAR(30),
	SODT CHAR(15),
	DIACHI NVARCHAR(50),
	QUYEN BIT,
	CONSTRAINT PK_TAIKHOAN PRIMARY KEY (TENDN)
)

CREATE TABLE LOAI( 
	MALOAI VARCHAR(20) NOT NULL,
	TENLOAI NVARCHAR(50),
	CONSTRAINT PK_LOAI PRIMARY KEY (MALOAI)
)

CREATE TABLE GIONG(
	MALOAI VARCHAR(20) NOT NULL,
	MAGIONG VARCHAR(20),
	TENGIONG NVARCHAR(50),
	MOTA NVARCHAR(500)
	CONSTRAINT PK_GIONG PRIMARY KEY (MAGIONG)
)

CREATE TABLE THUCUNG
(
	MATC INT IDENTITY(1,1),
	MALOAI VARCHAR(20),
	MAGIONG VARCHAR (20),
	DONGIA INT,
	TONKHO INT,
	DUONGDAN VARCHAR(50),
	CONSTRAINT PK_THUCUNG PRIMARY KEY (MATC)
)

CREATE TABLE HOADON(
	MAHD INT IDENTITY(1,1),
	NGAYLAP DATE,
	TENDN NVARCHAR(30),
	TONGTIEN INT,
	CONSTRAINT PK_HOADON PRIMARY KEY (MAHD)
)

CREATE TABLE CTHOADON(
	MAHD INT,
	MATC INT,
	SOLUONG INT,
	THANHTIEN INT,
	CONSTRAINT PK_CTHOADON PRIMARY KEY (MAHD,MATC)
)



--------------------------------------TẠO RÀNG BUỘC KHÓA NGOẠI--------------------------------------
ALTER TABLE HOADON ADD CONSTRAINT FK_HOADON_TAIKHOAN FOREIGN KEY (TENDN) REFERENCES TAIKHOAN(TENDN)

ALTER TABLE CTHOADON ADD CONSTRAINT FK_CTHOADON_HOADON FOREIGN KEY (MAHD) REFERENCES HOADON (MAHD)
ALTER TABLE CTHOADON ADD CONSTRAINT FK_CTHOADON_THUCUNG FOREIGN KEY (MATC) REFERENCES THUCUNG(MATC)

ALTER TABLE THUCUNG ADD CONSTRAINT FK_THUCUNG_GIONG FOREIGN KEY (MAGIONG) REFERENCES GIONG (MAGIONG)
ALTER TABLE THUCUNG ADD CONSTRAINT FK_THUCUNG_LOAI FOREIGN KEY (MALOAI) REFERENCES LOAI (MALOAI)

ALTER TABLE GIONG ADD CONSTRAINT FK_GIONG_MALOAI FOREIGN KEY (MALOAI) REFERENCES LOAI(MALOAI)

------Ràng buộc toàn vẹn
alter table HOADON
add constraint df_ngaylap default(getdate()) for ngaylap
alter table HOADON
add constraint chk_tongtien check(TONGTIEN>=0)

alter table THUCUNG
add constraint chk_dongia check(DONGIA>=0)
alter table THUCUNG
add constraint chk_soluong check(TONKHO>=0)

alter table CTHOADON
add constraint chk_thanhtien check(THANHTIEN>=0)

------------------------------------------ DỮ LIỆU MẪU------------------------------------

INSERT INTO LOAI VALUES
('DOG', N'Chó'),
('CAT', N'Mèo'),
('BIRD', N'Chim'),
('FISH', N'Cá'),
('HAMSTER', N'Hamster')

INSERT INTO GIONG VALUES
('DOG','HUSKY', N'Chó Husky', N'Chó Husky là một giống chó tuyết có nguồn gốc từ Sibir, Nga.
Husky có vẻ đẹp quyến rũ, thân hình dũng mãnh, sức khỏe dẻo dai phi thường.
Là giống chó hiền lành, rất tình cảm, hay tò mò, ưa vận động, rất thích người và đặc biệt thân thiện với trẻ em. 
Ở Việt Nam, chó Husky rất được yêu thích và được săn đón bởi đông đảo những người yêu chó.'),

('DOG', 'CORGI', N'Chó Corgi', N'Chó Corgi là một giống chó nhỏ, chân ngắn nhưng thân dài, đuôi cụt và một đôi tai lớn.
Corgi có vẻ ngoài đáng yêu, cặp mông hình trái tim tạo nên nét quyến rũ và đã tạo nên cơn sốt ngắm mông Corgi.  
Là giống chó rất thông minh, biết vâng lời, có bản năng bảo vệ, rất tận tâm với chủ và thân thiện với trẻ em. 
Chúng rất điềm tĩnh, trung thành và đáng yêu, song rất cảnh giác trước người lạ.'),

('DOG', 'GOLDEN', N'Chó Golden Retriever', N'Chó Golden Retriever là một giống chó săn thượng hạng đến từ Scotland.
Golden có bộ lông vàng mượt khá sang trọng, khuôn mặt thường xuyên cười vui vẻ, tuy nhiên, lúc buồn lại tỏ vẻ đáng thương rõ ràng.
Là giống chó rất thông minh, dễ huấn luyện, luôn biết cách làm hài lòng chủ nhân và thích vui chơi cùng mọi người.
Golden rất điềm tĩnh, hiền lành và tình cảm, lại rất nhanh nhẹn và năng động.'),

('DOG', 'PITBULL', N'Chó Pit Bull', N'Chó Bull hay còn gọi với tên tiếng Anh là American Pit Bull Terrier hay Pit Bull hoặc Dog
Pit Bull Terrier American là một giống chó có nguồn gốc từ Mỹ. Đây là một giống chó có
kích cỡ trung bình đến lớn có nguồn gốc từ dòng chó chọi'),

('DOG', 'PUG', N'Chó Pug', N'Pug, hay thường được gọi là chó mặt xệ, là giống chó thuộc nhóm chó cảnh có nguồn gốc từ Trung Quốc,
chúng có một khuôn mặt nhăn, mõm ngắn, và đuôi xoăn. Giống chó này có bộ lông mịn, bóng, có nhiều màu sắc nhưng phổ biến nhất là màu đen và nâu vàng.
Cơ thể của Pug nhỏ gọn hình vuông với các cơ bắp rất phát triển.'),

('CAT', 'BRITISHSH', N'Mèo Anh lông ngắn', N'Mèo Anh lông ngắn là một giống mèo cảnh có nguồn gốc từ Anh.
Chúng sở hữu một thân hình vô cùng mập mạp đáng yêu, nổi bật với khuôn mặt tròn và bộ lông màu xám xanh cổ điển và một cái đuôi to.
Tính cách của chúng tuy khá lười biếng tuy nhiên lại phù hợp với những người bận rộn không có quá nhiều thời gian và không đòi hỏi chủ nhân của chúng phải chải chuốt vệ sinh thường xuyên.'),

('CAT', 'BRITISHLH', N'Mèo Nga lông dài', N'Mèo Nga lông dài thực chất có nguồn gốc là giống mèo Angora Turkish, có xuất xứ từ Thổ Nhĩ Kỳ.
Mèo Nga sở hữu bộ lông dài trắng muốt như tuyết tuyệt đẹp, tuy nhiên không xù, thân hình nhỏ gọn, thanh thoát và quý phái.
Tính tình thông minh, linh hoạt, quấn chủ và hiền lành, mèo Nga được xem như loại mèo toàn diện nhất.'),

('CAT', 'EXOTIC', N'Mèo Exotic', N'Mèo lông ngắn Ba Tư hay còn gọi là mèo Exotic hay còn gọi là mèo Ba Tư mặt tịt là giống mèo có nguồn gốc tại Mỹ,
được phát triển trên cơ sở phiên bản của giống mèo Ba Tư. Chúng là giống khá nổi tiếng, đáng yêu và được nhiều người hâm hộ, đặc biệt là nữ giới'),

('CAT', 'AICAP', N'Mèo Ai Cập', N'Mèo Sphinx hay còn gọi là mèo không lông Sphinx hay còn được biết đến là mèo Canada hoặc mèo Mexico không lông là
một giống mèo được phát triển vào thập niên 1960 với đặc điểm là thân thể trần trụi, không có sợi lông nào. Giống mèo này được coi là một trong những
giống mèo xấu nhất thế giới nhưng lại có giá rất đắt.'),


('BIRD', 'HOAMI', N'Chim họa mi', N'Có tên khoa học là Garrulux Canorus, chim Họa Mi thường sinh sống ở các khu rừng, vườn cây,
 công viên,… Loài chim cảnh Việt Nam này khá nhỏ bé, chỉ ngang hoặc bé hơn chim Sơn Ca nhưng bù lại chúng là một trong các loại chim hót hay nhất. Bởi vậy mà người ta thường ví các ca sĩ có giọng hát cao là những chú chim họa mi.'),

('BIRD', 'VANGANH', N'Chim vàng anh', N'Chim Vàng Anh luôn nổi bật với màu lông vàng rực. Chim mái và chim trống sẽ có ánh màu khác nhau đôi chút. Chim Vàng Anh cũng thuộc các loại chim sâu ở Việt Nam nên thường được nuôi để diệt sâu và trang trí.'),

('BIRD', 'SONCA', N'Chim sơn ca', N'Sơn ca hay Sơn ca phương Đông là một loài chim thuộc Họ Sơn ca. Loài này sinh sống ở Nam Á và Đông Nam Á.
 Giống như các loài sơn ca khác, nó được tìm thấy trong khu vực đồng cỏ thưa - thường gần các thuỷ vực - nơi nó ăn hạt và côn trùng.'),

('BIRD', 'CHAOMAO', N'Chim chào mào', N'Chào mào là một loài chim thuộc bộ Sẻ phân bố ở châu Á. Nó là một thành viên của họ Chào mào.
Nó là một loài động vật ăn quả thường trú được tìm thấy chủ yếu ở châu Á nhiệt đới. Nó đã được đưa bởi con người vào nhiều khu vực nhiệt đới
trên thế giới, nơi các quần thể đã tự hình thành. Nó ăn trái cây và côn trùng nhỏ.'),

('HAMSTER', 'HAMSTER', N'Chuột Hamster', N'Chuột Hamster không phải thuộc loài họ chuột thông thường (họ Chuột) như chuột cống, 
chuột nhắt, chuột đồng... mang nhiều mầm bệnh. Mà chúng thuộc họ Cricetidae, sinh sống ngoài tự nhiên, thường đào hang và có hai túi má để dự trữ thức ăn. '),

('FISH', 'BADUOI', N'Cá ba đuôi', N'Là loài cá cảnh đẹp thuộc họ cá Chép. Loại cá này dễ thích nghi với điều kiện sống trong bể nuôi từ kích cỡ nhỏ đến to, hòn non bộ, bể cạn, bể kính…Điểm đặc biệt của cá 3 đuôi là loại cá cảnh nước ngọt dễ nuôi.'),

('FISH', 'KOI', N'Cá chép Nhật(Koi)', N'Cá Koi là loài cá chép lai tạo, có quan hệ họ hàng gần với cá vàng và được nuôi để làm cảnh. Cá Koi được cho là loại cá kiểng đẹp dễ nuôi mang lại may mắn, thể hiện triển vọng tương lai và cơ hội về tài chính. Hồ cá Koi sinh trưởng càng nhiều thì may mắn tiền tài càng sinh sôi.'),

('FISH', 'BAYMAU', N'Cá bảy màu', N'Cá bảy màu là một trong những loại cá cảnh nước ngọt phổ biến nhất thế giới. Nó là một thành viên nhỏ của họ
Cá khổng tước và giống như các thành viên khác của họ cá này, chúng là dạng cá đẻ trứng thai.'),

('FISH', 'DUOIKIEM', N'Cá Đuôi kiếm', N'Cá đuôi kiếm là loại cá cảnh với thân hình nhỏ và bầu bĩnh con trống là những con có kỳ trên lưng (vây lưng) dài rất đẹp, 
Cá đuôi kiếm mái thì hầu như quanh năm suốt tháng bụng to tròn vì chúng mang thai và đẻ một cách liên tục')

INSERT INTO THUCUNG VALUES
('DOG', 'HUSKY', 5000000, 100, 'husky1.jpg'),
('DOG', 'CORGI', 7000000, 100, 'corgi1.jpg'),
('DOG', 'GOLDEN', 9000000, 100, 'golden1.jpg'),
('DOG', 'PITBULL', 15000000, 100, 'cho-pitbull.jpg'),
('DOG', 'PUG', 3500000, 100, 'cho-pug.jpg'),
('CAT', 'BRITISHSH', 10000000, 100, 'britishsh1.jpg'),
('CAT', 'BRITISHLH', 4000000, 100, 'britishlh1.jpg'),
('CAT', 'EXOTIC', 7000000, 100, 'meo-exotic.jpg'),
('CAT', 'AICAP', 50000000, 100, 'meo-ai-cap.jpg'),
('HAMSTER', 'HAMSTER', 400000, 100, 'hamster1.jpg'),
('BIRD', 'HOAMI', 400000, 100, 'chimhoami1.jpg'),
('BIRD', 'VANGANH', 400000, 100, 'chimvanganh1.jpg'),
('BIRD', 'CHAOMAO', 500000, 100, 'chim-chao-mao.png'),
('BIRD', 'SONCA', 300000, 100, 'chim-son-ca.jpg'),
('FISH', 'KOI', 400000, 100, 'cakoi1.jpg'),
('FISH', 'BADUOI', 400000, 100, 'cabaduoi1.jpg'),
('FISH', 'BAYMAU', 200000, 100, 'ca-bay-mau.png'),
('FISH', 'DUOIKIEM', 500000, 100, 'ca-duoi-kiem.jpg')

SET DATEFORMAT DMY;
Insert into TAIKHOAN Values
(N'phattai',N'123',N'Đinh Phát Tài','phattai@gmail.com','0123456789',N'Long An',1),
(N'tamlndd',N'123',N'Lê Nguyễn Đại Đức Tấm','tamlndd@gmail.com','0987654321',N'Long An',0),
(N'novt',N'123',N'Võ Thị Nơ','novt@gmail.com','0987123465',N'TP. HCM',0)


SELECT *FROM CTHOADON

SELECT *FROM GIONG

SELECT *FROM HOADON

SELECT *FROM THUCUNG

SELECT *FROM TAIKHOAN