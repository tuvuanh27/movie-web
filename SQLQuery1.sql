﻿use [movie-web]

create table Account(
	accountID char(10) primary key,
	email varchar(100),
	passwordAcc varchar(100),
	roleAcc bit, 
	username nvarchar(100),
	avartar varchar(100),
	createDate datetime,
	createBy nvarchar(100)
)

create table Film(
	filmID char(10) primary key,
	nameFilm nvarchar(100),
	nameEngFilm varchar(100),
	linkImgAvt varchar(500),
	linkImgDes varchar(500),
	linkBgImage varchar(500),
	linkFilm varchar(500),
	linkTrailer varchar(500),
	desText varchar(500),
	contentText varchar(2000),
	releaseFilm datetime,
	imdb float,
	quality nvarchar(100),
	star varchar(10),
	nation nvarchar(500),
	actor nvarchar(500),
	director nvarchar(500),
	genre nvarchar(500),
	createDate datetime,
	createBy nvarchar(100)
)

create table FilmStatus(
	filmID char(10) references Film(filmID),
	statusText nvarchar(500),
	releasedEpisodes int,
	totalEpisodes int
)

create table Feedback (
	filmID char(10) references Film(filmID),
	accountID char(10) references Account(accountID),
	cmt nvarchar(2000),
	sentDate datetime
)


-----------------------------------------------------------------
insert into Film
values ('F0001',
		'QUÁI VẬT SĂN ĐÊM',
		'Sputnik',
		'https://i.vdicdn.com/ff/2021/01/13/a94f8a133ee8cc74_427d15160d7ed194_335661610530615716068.jpg',
		null,
		null,
		'https://scontent.ficn4-1.fna.fbcdn.net/v/t66.36240-6/10000000_283745736593465_3925803616385416825_n.mp4?_nc_cat=102&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=F44yUlLYBqwAX-YRhsg&_nc_ht=scontent.ficn4-1.fna&oh=d7094c806f515eefbf477b99cad74f6f&oe=609214D7',
		'https://www.youtube.com/watch?v=Oj63U2RyVvE',
		'Một tai nạn tàu vũ trụ xảy ra, cướp đi sinh mạng người chỉ huy. Konstantin - người phi công còn lại may mắn sống sót nhưng trong cơ thể anh có loài quái vật ngoài hành tinh đang kí sinh. Chúng phát triển mạnh mẽ, khống chế thể xác lẫn tinh thần của vật chủ. Tatyana, một nữ khoa học, nhà vật lý học tài năng được giao nhiệm vụ tách con quái vật đó ra khỏi cơ thể Konstantin. Nhưng càng đi sâu nghiên cứu, cô lại từng bước vén lên bức màn bí mật, khám phá ra nhiều âm mưu đáng sợ đằng sau sự việc này.',
		'Quái vật săn đêm - Sputnik là bộ phim kinh dị thuộc thể loại khoa học viễn tưởng của Nga được phát hành năm 2020 do đạo diễn Egor Abramenko chịu trách nhiệm chỉ đạo, đây cũng là bộ phim đầu tay của ông. Tác phẩm có sự tham gia của diễn viên Oksana Akinshina trong vai một bác sĩ trẻ được quân đội tuyển dụng để đánh giá một phi hành gia sống sót sau một vụ tai nạn không gian bí ẩn và trở về Trái Đất với một sinh vật nguy hiểm sống bên trong anh ta. Bộ phim còn có sự tham gia của Pyotr Fyodorov và Fyodor Bondarchuk.

Sputik dự kiến sẽ có buổi ra mắt thế giới tại Liên hoan phim Tribeca vào tháng 4 năm 2020 trước khi bị hoãn lại vì dịch bệnh. Phim được phát hành theo yêu cầu tại Nga vào ngày 23 tháng 4 năm 2020 và nhận được nhiều đánh giá tích cực từ các nhà phê bình.',
		'8/4/2021',
		'6.6',
		'Bản đẹp',
		'3/10',
		'Nga',
		'Oksana Akinshina',
		'Egor Abramenko',
		'Kinh Dị,  Khoa Học,  Kịch Tính',
		'8/4/2021',
		'tungnaa'
)

go
insert into Film values ('F0002',
		'TRÙM CUỐI SIÊU ĐẲNG',
		'Boss Level',
		'https://www.venuscinema.vn/temp/-uploaded-phim_trum%20cuoi%20sieu%20dang_cr_500x700.jpg',
		null,
		null,
		'https://scontent.ficn4-1.fna.fbcdn.net/v/t66.36240-6/10000000_283745736593465_3925803616385416825_n.mp4?_nc_cat=102&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=F44yUlLYBqwAX-YRhsg&_nc_ht=scontent.ficn4-1.fna&oh=d7094c806f515eefbf477b99cad74f6f&oe=609214D7',
		'https://www.youtube.com/watch?v=vcTNydU1T-o',
		'Mắc kẹt trong một vòng lặp thời gian ngay đúng ngày anh ta bị giết chết, một cựu đặc vụ Roy Pulver (FrankRoy buộc lòng phải chạy đua với thời gian và truy bắt tên Colonel Ventor (Mel Gibson), đầu sỏ của dự án chính phủ này. Trong lúc đó, anh phải thoát khỏi cuộc vây bắt của những tên sát thủ tàn ác quyết tâm ngăn cản Roy tìm ra được sự thật. Liệu Roy Pulver có thể thoáđồng thời sống lại một lần nữa vào ngày mai?',
		'Đẳng cấp Boss - Boss Level (2020) là bộ phim hành động khoa học viễn tưởng của Mỹ do Joe Carnahan đạo diễn. Bộ phim có sự tham gia của Frank Grillo trong vai một người lính đã nghỉ hưu, cố gắng thoát khỏi vòng lặp thời gian không bao giờ kết thúc dẫn đến cái chết của anh ta. Bên cạnh đó, một số diễn viên khác gồm Mel Gibson, Naomi Watts và Dương Tử Quỳnh cũng góp mặt trong bộ phim.Tác phẩm thuộc thể loại hành động có yếu tố khoa viễn tưởng, khai thác chủ đề vòng lặp thời gian khá độc đáo. Mở đầu phim với cách triển khai khá lạ, nhân vật chính là Roy Pulver (Frank Grillo) vừa thức dậy thì đã có một sát thủ tới ám sát anh. Sau đó là tên súng máy ngồi trên trực thăng xả súng thẳng vào nhà Roy, anh ta đã chạy thoát ra ngoài. Anh đã cướp được một chiếc xe nhưng vẫn bị hai nữ sát thủ khác tấn công, anh lao nhanh về phía trước nhưng lại bị y thức dậy, bị truy sát, anh tìm mọi cách để trốn thoát nhưng không thành và chết. Sự việc đã tĩnh tâm suy nghĩ về nguyên nhân thực sự phía sau',
		'8/1/2021',
		'8.6',
		'Fullhd',
		'8/10',
		'Mỹ',
		'Frank Grillo',
		'Joe Carnahan',
		'Hành Động,  Kinh Dị,  Khoa Học,  Bí Ẩn',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0003',
		'Học viện quái vật: Du học sinh',
		'Cranston Academy: Monster Zone',
		'https://iphim.net/wp-content/uploads/2020/09/uploaded-phim_poster_hvqv_5_final_1__cr_500x700-250x350.jpg',
		null,
		null,
		'https://scontent-ssn1-1.xx.fbcdn.net/v/t66.36240-6/10000000_740199223320236_4493143621237622272_n.mp4?_nc_cat=109&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=5D_OH0lq5OEAX-LghgO&_nc_ht=scontent-ssn1-1.xx&oh=127452b69176686dbe9af72828f0784d&oe=60902BE5',
		'https://www.youtube.com/watch?v=XKod7ydEhd4',
		'Phim xoay quanh câu chuyện về Danny Dawkins, một thần đồng trẻ tuổi nhưng chưa từng một lần được công nhận. Khi bất ngờ được nhận học bổng vào Học viện Cranston, một trường nội trú bí mật danh giá dành cho các thiên tài, Danny coi đó như một nơi mà trí thông minh của mình sẽ được công nhận và là nơi cuối cùng cậu có cơ hội nhập học',
		'Phim xoay quanh câu chuyện về Danny Dawkins, một thần đồng trẻ tuổi nhưng chưa từng một lần được công nhận. Khi bất ngờ được nhận học bổng vào Học viện Cranston, một trường nội trú bí mật danh giá dành cho các thiên tài, Danny coi đó như một nơi mà trí thông minh của mình sẽ được công nhận và là nơi cuối cùng cậu có cơ hội nhập học. Tuy nhiên, cuộc sống trong một ngôi trường toàn thiên tài thật sự rất khắc nghiệt, nơi mà nếu bạn đạt 99% số điểm cũng coi như thất bại. Trong nhiệm vụ chứng minh trí thông minh của mình với các bạn trong trường, Danny đã vô tình mở ra một cánh cổng dẫn đến một chiều không gian khác ',
		'8/1/2020',
		'2.6',
		'Fullhd',
		'2/10',
		'Mỹ',
		'Leopoldo Aguilar',
		'Ruby Rose',
		'Hoạt Hình',
		'8/4/2021',
		'tungnaa'
)
insert into Film values ('F0004',
		'BỘ ĐÔI SẤM SÉT',
		'Thunder Force',
		'https://i.imgur.com/menYyYn.jpg',
		null,
		null,
		'https://scontent-ssn1-1.xx.fbcdn.net/v/t66.36240-6/10000000_286823176448763_1165967509747599807_n.mp4?_nc_cat=101&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=SKxeRDjZ2M8AX_aHgo3&_nc_ht=scontent-ssn1-1.xx&oh=7153550f681e33bc5d023b28d3d258b5&oe=6096D807',
		'https://www.youtube.com/watch?v=qnx6-YLXFwg',
		'Đôi bạn thân thời thơ ấu tái hợp trong vai trò bộ đôi siêu anh hùng chống tội phạm bất đắc dĩ khi một người phát minh ra công thức giúp người thường sở hữu siêu năng lực.',
		'Bộ Đôi Sấm Sét - Thunder Force (2021) lấy bối cảnh thế giới ngập tràn những tên khủng bố, siêu phản diện. Lúc này, một người phụ nữ đã phát triển công nghệ siêu năng lực cùng bạn thân của cô đã tạo thành tổ hợp siêu anh hùng chống tội phạm bất đắc dĩ. Nhiệm vụ đầu tiên của họ là chiến đấu với quái nhân Miscreants, cứu thành phố Chicago khỏi nanh vuốt của thế lực phản diện. Bộ phim do Ben Falcone đạo diễn, có sự góp mặt của các ngôi sao như: Jason Bateman, Bobby Cannavale, Pom Klementieff, Melissa McCarthy, Octavia Spencer.',
		'8/11/2020',
		'3.6',
		'Fullhd',
		'3/10',
		'Mỹ',
		'Ben Falcone',
		' Bobby Cannavale',
		'Phiêu Lưu, Hài Hước, Viễn Tưởng',
		'8/4/2021',
		'tungnaa'
)
insert into Film values ('F0005',
		'TRẢI NGHIỆM MA QUÁI: MỸ LATINH',
		'Haunted: Latin America',
		'https://i0.wp.com/image.motphim.net/poster/trai-nghiem-ma-quai-my-latinh-8844.jpg?1617780793',
		null,
		null,
		'https://scontent-frt3-2.xx.fbcdn.net/v/t66.36240-6/10000000_149897447044542_7571024020535224102_n.mp4?_nc_cat=101&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=AR8l6daNA3IAX_pNKk6&_nc_ht=scontent-frt3-2.xx&oh=9c27ac7d7b8d35b4c1848ef2c70c6e74&oe=6087F936',
		'https://www.youtube.com/watch?v=HPJ1-nBhCuY',
		'Những chuyện kinh hoàng có thật về các sự việc rùng rợn, không thể giải thích và huyền bí – tất cả được tái hiện sống động và kịch tính trong chương trình thực tế này',
		'Những chuyện kinh hoàng có thật về các sự việc rùng rợn, không thể giải thích và huyền bí – tất cả được tái hiện sống động và kịch tính trong chương trình thực tế này',
		'8/1/2020',
		'4.6',
		'Fullhd',
		'5/10',
		'Mỹ',
		'Becn Falcbone',
		' Eobby Cannale',
		' Kinh Dị',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0006',
		'MADAME CLAUDE',
		'MADAME CLAUDE',
		'https://i.vdicdn.com/ff/2021/04/02/7fd532e1ac70e0e3_0d309f738fb20cfe_338541617354030816068.jpg',
		null,
		null,
		'https://scontent.fhkg1-1.fna.fbcdn.net/v/t66.36240-6/10000000_207179120745132_2592564757521892029_n.mp4?_nc_cat=108&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=1kbsyPpPZ9wAX-1g1TJ&_nc_ht=scontent.fhkg1-1.fna&oh=0e89278172dd17705018903e0b34eeea&oe=60911BFE',
		'https://www.youtube.com/watch?v=OfWDTj5uLXQ',
		'Ở Paris những năm 1960, tầm ảnh hưởng của Madame Claude vượt ra ngoài thế giới "bướm đêm" – cho đến khi một cô gái trẻ giàu có đe dọa thay đổi tất cả.',
		'Ở Paris những năm 1960, tầm ảnh hưởng của Madame Claude vượt ra ngoài thế giới "bướm đêm" – cho đến khi một cô gái trẻ giàu có đe dọa thay đổi tất cả.',
		'8/1/2020',
		'4.6',
		'Fullhd',
		'5/10',
		' Pháp',
		'Madame Claude',
		' Eobby  Claude',
		'  Tình Cảm,  Hình Sự,  Kịch Tính',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0007',
		'SIÊU TRỘM',
		'Way Down / The Vault',
		'https://i.vdicdn.com/ff/2021/03/26/87773950d269313c_ff296f8198da69c1_412881616736843916068.jpg',
		null,
		null,
		'https://scontent-lax3-1.xx.fbcdn.net/v/t66.36240-6/10000000_270089864684811_5001892313282559797_n.mp4?_nc_cat=100&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=uAm33TVTinoAX9KcnfM&_nc_ht=scontent-lax3-1.xx&oh=8a758a39e9c2abcb69caab8530a5269d&oe=6081BD22',
		'https://www.youtube.com/watch?v=L41IJiageyg',
		'Ngân hàng Tây Ban Nha là một nơi bất khả xâm phạm, không một tên trộm nào có thể bước vào. Được xem như một nơi bí ẩn bậc nhất trên thế giới, ngân hàng này không có bản thiết kế, không dữ liệu lưu lại và không một ai biết đến cấu trúc sắp đặt bên trong chiếc két sắt hơn trăm năm tuổi',
		'Ngân hàng Tây Ban Nha là một nơi bất khả xâm phạm, không một tên trộm nào có thể bước vào. Được xem như một nơi bí ẩn bậc nhất trên thế giới, ngân hàng này không có bản thiết kế, không dữ liệu lưu lại và không một ai biết đến cấu trúc sắp đặt bên trong chiếc két sắt hơn trăm năm tuổi. Thử thách này đã khơi dậy sự tò mò của Thom (Freddie Highmore) – một kỹ sư thiên tài quyết định thử đột nhập vào sâu bên trong nơi này và lật mở bí ẩn của chiếc két sắt. Mục tiêu của phi vụ lần này là một báu vật đã thất lạc từ lâu được ký gửi tại ngân hàng Tây Ban Nha trong vòng 10 ngày tới. Được dẫn dắt bởi bậc thầy dàn dựng Walter (Liam Cunningham), Thom và các cộng sự có đúng mười ngày để chuẩn bị cho vụ trộm. Họ phải thực hiện phi vụ thế kỷ cùng lúc với trận chung kết World Cup kéo dài 105 phút, thu hút sự theo dõi của hàng vạn người hâm mộ đến trước Ngân hàng Tây Ban Nha.',
		'8/1/2020',
		'4.6',
		'Fullhd',
		'4/10',
		'Mỹ',
		'Madame ',
		'Claude',
		'Hành Động,  Phiêu Lưu,  Kinh Dị',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0008',
		'PALM SPRINGS: MỞ MẮT THẤY HÔM QUA',
		' Palm Springs',
		'https://i.vdicdn.com/ff/2021/03/25/27ab3154afe0353f_6fb5877cad21aae2_521671616653912616068.jpg',
		null,
		null,
		'https://scontent-lax3-1.xx.fbcdn.net/v/t66.36240-6/10000000_1092508161261519_3711152095548052722_n.mp4?_nc_cat=109&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=cy9E1xQlaSsAX-z7XEX&_nc_oc=AQm_FLdUWWr-YIxD024Qr5CxAEO8WPmV_CqcUjdjjnOL9xkL93lIm3IeJ-0FBGvXvAE&_nc_ht=scontent-lax3-1.xx&oh=9dc6d84a3e00b89c0fdba231ca7182b0&oe=6083D2AE',
		'https://www.youtube.com/watch?v=CpBLtXduh_k',
		'Mở Mắt Thấy Hôm Qua (tựa gốc: Palm Springs) – đúng như tên gọi, bộ phim là một vòng lặp bất tận của thời gian, với thật nhiều những rắc rối lặp đi lặp lại không có điểm dừng',
		'Mở Mắt Thấy Hôm Qua (tựa gốc: Palm Springs) – đúng như tên gọi, bộ phim là một vòng lặp bất tận của thời gian, với thật nhiều những rắc rối lặp đi lặp lại không có điểm dừng. Anh chàng Nyles (Andy Samberg) và nàng phù dâu bất đắc dĩ Sarah (Cristin Milioti) tình cờ gặp nhau tại đám cưới ở Palm Springs, mọi thứ trở nên phức tạp khi Nyles và Sarah “mắc kẹt” mãi ở ngày vui của người khác. Trong khi Sarah điên cuồng tìm cách thoát ra thì Nyles bình thản chấp nhận sống lại ngày hôm qua thêm một lần nữa. Họ sẽ làm gì để có thể thoát khỏi nơi này, thoát khỏi những vấn đề của chính mình khi giờ đây còn “vướng” phải nhau nữa?',
		'8/12/2020',
		'8.6',
		'Fullhd',
		'9/10',
		'Mỹ',
		'Cristin Milioti ',
		'Andy Samberg',
		'Tình Cảm,  Hài Hước,  Viễn Tưởng,  Bí Ẩn',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0009',
		'CHERRY',
		'CHERRY',
		'https://i.vdicdn.com/ff/2021/03/12/e16596b60ab99ee5_54ae360dba3f276a_294171615540175316068.jpg',
		null,
		null,
		'https://scontent-lax3-1.xx.fbcdn.net/v/t66.36240-6/10000000_473325440373898_3922154281358194443_n.mp4?_nc_cat=108&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=ZKeOOkLjoIAAX9ijGOQ&_nc_ht=scontent-lax3-1.xx&oh=f5e11c68dcb38e6aa37317ba45674435&oe=6072C961',
		'https://www.youtube.com/watch?v=H5bH6O0bErk',
		'Cherry được lấy cảm hứng từ cuốn tiểu thuyết tự truyện cùng tên của Nico Walker kể câu chuyện của Cherry (23 tuổi, gốc Ohio - Mỹ), một chàng trai đau khổ sau khi tin rằng anh đã đánh mất tình yêu của đời mình với Emily (Ciara Bravo) nên nhập ngũ và phục vụ ở chiến trường Iraq.',
		'Cherry được lấy cảm hứng từ cuốn tiểu thuyết tự truyện cùng tên của Nico Walker kể câu chuyện của Cherry (23 tuổi, gốc Ohio - Mỹ), một chàng trai đau khổ sau khi tin rằng anh đã đánh mất tình yêu của đời mình với Emily (Ciara Bravo) nên nhập ngũ và phục vụ ở chiến trường Iraq.
Cherry trở về nhà như một anh hùng nhưng cuộc đời anh nhanh chóng chuyển hướng khi các triệu chứng của PTSD (rối loạn căng thẳng sau chấn thương) làm mất khả năng nhận thức và anh sa vào nghiện ngập ma túy. Để có tiền thỏa mãn cơn nghiện, Cherry bắt đầu cướp ngân hàng. Bộ phim dõi theo cuộc đời của Cherry khi anh từ một sinh viên đại học thành một tên cướp ngân hàng. ',
		'8/2/2020',
		'8.6',
		'Fullhd',
		'5/10',
		'Mỹ',
		'Ciara Bravo',
		'Nico Walker',
		'Hình Sự,  Kịch Tính',
		'8/4/2021',
		'tungnaa'
)

insert into Film values ('F0010',
		'ĐÊM NƠI THIÊN ĐƯỜNG',
		'Night in Paradise',
		'https://i.imgur.com/F1qOJ73.jpg',
		null,
		null,
		'https://scontent-mrs2-2.xx.fbcdn.net/v/t66.36240-6/10000000_1296980724032693_6753926503337682891_n.mp4?_nc_cat=107&ccb=1-3&_nc_sid=985c63&efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ohc=ktt5Hqi5VZQAX-JXpNa&_nc_ht=scontent-mrs2-2.xx&oh=88a532a24629015f4c6e5a397491aea1&oe=6096DB84',
		'https://www.youtube.com/watch?v=_Sm6_FK51VA',
		'Trốn trên đảo Jeju sau một bi kịch thảm khốc, tay xã hội đen chịu bất công và bị truy đuổi tìm được sự kết nối với một người phụ nữ, và cô cũng có những mặt tối riêng.',
		'Trốn trên đảo Jeju sau một bi kịch thảm khốc, tay xã hội đen chịu bất công và bị truy đuổi tìm được sự kết nối với một người phụ nữ, và cô cũng có những mặt tối riêng.',
		'8/2/2021',
		'2.6',
		'Fullhd',
		'1/10',
		'Hàn Quốc',
		'Ciara',
		'Walker',
		'Hình Sự,  Kịch Tính',
		'8/4/2021',
		'tungnaa'
)