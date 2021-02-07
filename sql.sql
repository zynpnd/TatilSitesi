USE [TravelDb]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 11.01.2021 18:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11.01.2021 18:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
	[Fiyat] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizdas]    Script Date: 11.01.2021 18:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizdas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FotoUrl] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkimizdas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisims]    Script Date: 11.01.2021 18:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Iletisims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 11.01.2021 18:23:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Kullanici], [Sifre]) VALUES (1, N'admin', N'123')
INSERT [dbo].[Admins] ([ID], [Kullanici], [Sifre]) VALUES (2, N'zynp', N'123456')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (10, N'Ege''nin İncileri Turu', CAST(N'2020-08-15T00:00:00.000' AS DateTime), N'Akşam saatlerinde belirtilen duraklarda kıymetli misafirlerimizi alarak yolculuğumuz başlıyoruz. 
1. Gün Sabah İzmir’e varıyoruz. Kahvaltı sonrası Konak Meydanı’ndan yürüyerek yapacağımız şehir turumuza başlıyoruz. Tarihi Vilayet Konağı, Ayşe Hatun Camisi''nin, İzmir''in sembolü saat kulesini görüp Kemeraltı’ nın arka sokaklarında lezzet noktalarını keşfedip, Hisarönü’ ne doğru yürümeye devam ediyoruz. Birçok çeşit yiyeceğin en tazesinin satıldığı tarihi Havra Sokağı ’da uğramadan olmaz. Tarihi Sinagog, Salepçioğlu ve Hisar Camileri’ nin ve hanların mimari güzelliklerini de görme olanağı bulacağımız turumuz, Kızlarağası Hanı’nın üst katında tamamlanacak. Son olarak Agora’nın gezilmesinin ardından otelimize hareket ediyoruz. Akşam yemeği ve konaklama İzmir’deki otelimizde olacaktır.
2. Gün Sabah otelimizde alacağımız kahvaltı sonrasında Çeşme''ye hareket ediyoruz. Gezimize ilk olarak muhteşem manzaraya sahip Çeşme Kalesi ile başlıyoruz. Denize sıfır olarak inşa edilen ancak zaman içerisinde deniz doldurulduğu için şu anda önünde bir yol bulunan Çeşme Kalesi''nin yaklaşık 505 yıllık tarihini dinliyoruz. Daha sonra Kanuni Sultan Süleyman tarafından 1528 yılında yaptırılan kervansarayı görüyoruz. Sonrasında Çeşme Meydanı''nda serbest zamanımızın ardından Dalyan’a geçiyoruz. Liman’da kısa bir yürüyüş yaptıktan sonra Veli Usta’da sakızlı dondurmanın tadına bakmanızı tavsiye ediyoruz. Ardından Alaçatı''ya hareket. Alaçatı''nın en güzel yerel ürünlerini görebileceğiniz ve hediyeliklerini alabileceğiniz Alaçatı Pazarı''nı ve Alaçatı''nın Rum mimarisi ile Osmanlı mimarisinin birleştiği sokakları görüp serbest zaman sonrasında otelimize geri dönüyoruz. Akşam yemeği ve konaklama otelimizde olacaktır.
3. Gün Kahvaltı sonrası Urla’ya hareket ediyoruz. İlk durağımız yolumuz üzerindeki Uzunkuyu Köyü Köstem Zeytinyağı Müzesi''nde zeytin ve zeytinyağı''nın imalatı hakkında bilgi alıyoruz. İzmir''li ortopedist Doç.Dr. Levent Köstem''in büyük uğraşla ve heyecanla dünyanın en büyük zeytinyağı müzesini inşa etmiş. Müze gezimizi tamamladıktan sonra tarihi çok eski dönemlere kadar dayanan Urla merkezde antik yerleşim alanı Klazomenai Antik Kenti''ni ve kentteki dünyanın en eski zeytinyağı işliğini göreceğiz. Ardından merkezde festival için kurulan Malgaca Pazarı''nda üreticilerden tadımlar yapıyoruz. Özellikle katmerin tadına bakmanızı tavsiye ediyoruz. Öğleden sonra üzüm bağcılığı için Uzbaş Bağları'' na geçmeden önce dünyanın 52 ülkesinden getirilmiş ve 2000 dönüm arazi üzerinde kurulmuş olan Türkiye''nin en büyük arboretumunu geziyor ve sonrasında Uzbaş Bağları''na geçiyoruz. Tesiste fermantasyon ve üretim ile ilgili bilgi alıyoruz. (dileyen konuklarımız tesisten alışverişte yapabilirler)  Ardından Kemalpaşa’ya hareket ediyoruz. Akşam yemeği ve konaklama otelimizde olacaktır.kkk
4. Gün kahvaltı sonrası ilk durağımız Çinili Köy. Türkiye''de bir kadın tarafından kurulmuş olan ilk köy özelliğini barındıran köyümüzde Ümran Baradan Güzel Sanatlar Müzesi''ni geziyor, birbirinden değerli eserlerini gördükten sonra yolumuzu Nazarköy’e çeviriyoruz. Otobüsümüz köyün içine kadar giremeyeceğinden 500 metre yürümemiz gerekiyor. Eski ismi Kurudere iken nazar boncuğu imalatından dolayı Nazarköy olarak değiştirilmiştir. Köy içinde boncuk atölyelerini görüp UNESCO Somut Olmayan Kültürel Miras Listesi''ne alınan nazar boncuklarının, ustalarının ellerindeki iki demir parçası ile 1200 derecelik ateş başında cama nasıl şekil verdiklerine seyrederken şaşırıp kalacaksınız. (Dileyen konuklarımız boncuk alışverişi de yapabilirler) Sonra Torbalı’da öğle yemeği molası vereceğiz. Yemek sonrası Metropolis Ören Yerini ziyaret edeceğiz. Metropolis M.Ö. 3.yy’da Selluokos Krallığı zamanında Lyzimachos’un adamları tarafından kurulmuştur. Metropolis Ana Tanrıça kenti demektir. Şehre adını veren ana tanrıçaya ait ( yerel adıyla Metagallezya ) heykel Uyuzdere mevkiinde yapılan kazılarda bulunmuştur. Metropolis Helenistik dönemde ( M.Ö. 1-2.yy ) gelişmiş, şehir görkemli sur duvarlarıyla çevrilmiş, savaş tanrısı Ares adına bir tapınak yapılmış, stoa ve tiyatro gibi anıtsal kamu yapıları inşa edilmiştir. Helenistik dönemin sanat açısından önemli bir merkezi olduğu bilinen Metropolis son derece kaliteli ve özgün heykeltıraşlık eserleri yaratmıştır.  Bu güzel kenti gezdikten sonra Türkiye’nin ilk demiryolu olan İzmir-Aydın demiryolu (inşası 1866-1976) üzerinde bulunan Çamlık Buharlı Lokomotifler Açık Hava Müzesi’ni ziyaret edceğiz.  Hattın buradan da geçmesi nedeniyle, 1991 yılında müze olarak ziyaretçilere açılmıştır. 1887 ile 1952 yılları arası Alman, İngiliz, Fransız, Amerikan, İsveç ve Çekoslovak yapımı 30 tane buharlı lokomotif sergileniyor. Bunların arasında dünyada sadece iki tane bulunan ve odunla çalışan İngiliz yapımı bir lokomotif de yer alıyor. Gezi sonrası Aydın’a hareket ediyoruz. Akşam yemeği ve konaklama Aydın’daki otelimizde olacaktır..
5. Gün Kahvaltı sonrası yenilenmiş haliyle Aydın Arkeoloji Müzesi’ni ziyaret edeceğiz. Metropolis, Tralles ve diğer kentlerden çıkan eserleri gezerken geçmişe doğru bir zaman yolculuğuna çıkacaksınız. Ardından İl merkezine 1 km. uzaklıkta olan  Argoslular ve Tralleis’liler tarafından kurulmuş Tralles Antik Kenti’ne gidiyoruz. Menderes havzasının verimli toprakları üzerine kurulmuş olan bu kent M.Ö.334’te Büyük İskender (III. Aleksandros) tarafından alınmasından sonra Hellenistik krallıklar arasında sık sık el değiştirmiştir. Tralleis’te bu gün ayakta kalan tek yapı “Üç Gözler” olarak adlandırılan 2. asırda yapılmış olan, antik çağın eğitim, spor ve kültür açısından önde gelen yapılarından olan Gymnasiuma ait kalıntıdır. Sadece bu yapı bile sizleri büyülemeye yetecektir. Gezi sonrası öğle yemeği için Aydın’a geri dönüyoruz. Yemekten sonra güzergahımız Şarap Tanrısı Dionysos’ un kenti Nysa.  Seleukos yerleşmesi olarak  m.ö 3.yüzyılda  kurulan Nysa Antik Kenti,  zenginliğini bir eğitim kenti olmasının yanı sıra, asıl ününü ve zenginliğini üzerinde bulunduğu Büyük Menderes Ovası’nın verimli toprağı ile yakınındaki Pluto (Hades) - Persephone (Kore) Tapınağı’nın bulunduğu Akharaka’daki (bugün Salâvatlı) gizemli kültle ilgili tedavi merkezine borçludur. Sonraki durağımız ise Rodos''lu ustalar tarafından yapılan Arpaz Beyler Konağı''nı görüyoruz. Antik adıyla Harpasa bugünkü adıyla Esenköy , yakın tarihimizde önemli olayların geçtiği, ilginç mimari yapısıyla Arpaz Beyler Kalesi ve Kulesi yer alıyor. Bir külliye şeklinde olan bu yapı, Osmanlı padişahı II. Beyazıt tarafından Arpaz Tımarı Gedik Ahmet Paşa''nın oğluna verilmişti. Gedik Ahmet Paşa''nın sipahi yetiştirip, seferlere katıldığı biliniyor. Daha sonra Denizli’ye doğru yolculuğumuz devam ediyor. Akşam yemeği ve konaklama Denizli’deki otelimizde olacaktır
6. Gün Kahvaltı sonrası Tripolis Antik Kenti''ni ziyaret ediyoruz. Tripolis Lidya şehirleri arasında yer almasına karşın Frigya ve Karya bölgelerine ulaşımı sağlayan önemli sınır, ticaret ve tarım merkezlerinden biri görünümündedir. Menderes Nehri ile Çürüksu Çayı’nın bereketlendirdiği, Çürüksu Ovası’nın büyük bir bölümüne hakim kentlerden biri olup, kuruluş biçimiyle ve şehircilik anlayışı ile yörenin en zengin kentleri arasında yer almaktadır. Bu güzel kenti de gezdikten sonra ;Buldan’a gideceğiz. Buldan merkez tam anlamıyla bir dokuma ve tekstil cenneti. Merkezdeki eski cezaevi bir müze gibi düzenlenmiş ilk olarak burada tekstil hakkında bilgi alıp, bizler için çalıştırılan makineleri ve el tezgahlarını fotoğrafladıktan sonra serbest zaman veriyoruz.(Dileyen konuklarımız alışveriş yapabilirler) Daha sonra Çal ilçesi yakınlarındaki Belevi Nakışlı Cami''sini görüyoruz. İbadete açık olan cami restorasyon sonrası oldukça iyi durumda. Ardından bir cami ziyaretimiz daha olacak Çivril ilçesi yakınlarındaki Savranşah Nakışlı Cami''si kalem işlemeleriyle sizleri büyüleyecek. Caminin gösterişsiz ve çok sade dış yapısına karşılık, son cemaat yeri ve içerisi insanı hayrete düşürecek şekilde süslenmiştir. Duvarlar, ortadakiler geniş, yandakiler biraz dar , yüzeyesel sivri kemerlerle belirtilmiş ve kemerlerin içleri değişik kompozisyonlarla süslenmiştir. Bu süslemeler arasında stilize çiçek ve dallar, mihrabın doğusunda kandilli minareleriyle bir cami, sol tarafta ise dört ayaklı masa üzerinde kesilmiş bir karpuz ve hançer şeklinde üç bıçak görülmektedir. Gezimiz sonrası otelimize hareket.Akşam yemeği ve konaklama Çivril’de.
7. Gün Kahvaltı sonrası ilk durağımız Clandras Köprüsü. Kral yolu üzerine yapılmış olan köprü yanında akan şelalesiyle sıcak günlerde çevresini oldukça serinletmekte. Tarihi Kral yolunda da kısa bir yürüyüş yaptıktan sonra Ulubey yakınlarındaki kanyon’a hareket ediyoruz. Buradaki cam teras üzerinde muhteşem bir manzara göreceğiz. Ulubey ve Banaz Çayı boyunca uzanan bir ana kanyon ile buna bağlanan onlarca büyük yan kanyonlardan oluşmaktadır. Üstelik kanyon içinden akıp giden Ulubey Çayı burayı adeta saklı bir cennet konumuna getirmiştir. Kanyon gezimizden sonra buraya kadar gelmişken Uşak Müzesi''nde bulunan Karun Hazineleri''ni görmeden dönülmez dedik. Müze gezimiz sonrası turumuz bitiyor ve geri dönüyoruz.

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/16/YtFRON.jpg', N'900 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (11, N'Karadeniz Turu', CAST(N'2020-08-20T00:00:00.000' AS DateTime), N'Belirtilen duraklardan size değerli misafirlerimizi alarak Karadeniz yolculuğumuza başlıyoruz. 
1.Gün: SAMSUN ÇARŞAMBA OVASI - GÖĞCELİ CAMİ - ORDU BOZTEPE – MAVİ GÖL – GİRESUN
Değerli misafirlerimiz,Samsun’da sabah kahvaltımızı yaptıktan sonra İlk olarak Samsunda amazon köyünü görüyoruz, gerekli serbest zaman verdikten sonra Samsun’un Çarşamba ilçesine geçiyoruz Çarşamba ovasının içinde bulunan göğceli camii ziyaret ediyoruz Türkiyenin en eski ahşap camisidir. Selcuklu ve Abbasi veya gezici irşat ekibi tarafından 1195 yılında yapıldığı tahmin edilmektedir. Ahşaptan çatı tekniğinde yapılmıştır. Minaresi yıkılmıştır Halk arasında Göceli Camii olarak anlatılmaktadır. Halen Hasabahçe Gökçeli Mezarlığı içerisinde bulunmaktadır. Bir rivayete göre Karadeniz''den donanması ile gelerek bölgeye yerleşen ve halen ismi bilinmeyen bir İslam Hükümdarı bu camiyi yaptırmıştır. Çarşamba ovasından sonra Ordu’ya geçiyoruz. Boztepeye teleferikle çıkarak boztepeten orduyu seyrediyoruz. Sonrasında Karadenizin En yüksek noktalarından birinde olan Kuzalan şelalesi ve Mavi Gölü gezerek Kulakkaya yaylasına ulaşıyoruz konaklamamız ve akşam yemeğimiz otelimizde.
2.Gün: TRABZON -AYASOFYA CAMİİ –TELKARİ ATÖLYESİ- MAÇKA-ALTINDERE MİLLİ PARKI – SÜMELA MANASTIRI – ÇAY FABRİKASI VE SÜRMENE BIÇAK SANAYİ – HAMSİKÖY
Değerli misafirlerimiz, sabah otelimizde alacağımız kahvaltı sonrasında, rehberimizden aldığımız bilgiler eşliğinde Trabzon''a doğru yola çıkıyoruz. Karadeniz''in en gelişmiş kenti olan Trabzon''a varıyoruz. 13.yy da I. Manuel Komnenos zamanında yapılmış, 1572 yılında camiye çevrilmiş, 1964 tarihinde müzeye çevrilmiş Pontus Devletinin önemli eserlerinden biri olan Ayasofya Müzesini dışarıdan gördükten sonra Trabzon merkezde küçük bir gezinti yapıyoruz bu gezintiden sonra soğuksu mahallesine çıkarak 370 m yükseklikte olan Trabzon Cumhurbaşkanı Köşkünün önünde resim çektirdikten sonra Trabzon''a has olan Telkari Sanatının örneklerini görebileceğimiz ve satın alabileceğimiz Telkari Atölyesi ve Mağazası gezintisinin ardından, sürmene ye hareket burada çay fabrikası gezisi sonrasında Sürmene’nin meşhur bıçaklarını görüyor alışveriş imkanı tanıdıktan sonra Altındere Milli Parkı''na hareket ediyoruz. Altındere Milli Parkı içine girdiğinizde adeta yeşilin 1001 tonunu göreceksiniz. Gözleri renkli olmayan konuklarımız üzülmesin, yeşili seyrederken gözleriniz yeşil tonunu alacak. Yeşilliklerin içinde bulunan Karadağ''ın eteklerine kaya oyularak inşa edilmiş olan Sümela Manastırı''nın mimari harikasını gördüğünüzde şaşkınlığınızı gizleyemeyeceksiniz. 1250 mt yükseklikte bulunan Sümela Manastırını gezerken rehberimizin anlatımlarından sonra bir kez daha büyüleneceksiniz. Gerekli molaların ardından Hamsi köye ulaşıyor gezi sonrasında isteyen misafirlerimiz burada meşhur Hamsi köy sütlacının tadına bakabilirler ardından otelimize ulaşıyoruz. Akşam yemeği ve konaklama otelimizde. (Sümela Manastırı''nda yapılan restorasyon çalışmaları nedeniyle manastır, 22 Eylül 2015 tarihinden itibaren geçici süreyle ziyarete kapatılmıştır. Restorasyon süresi belli olmadığından, tur tarihinde manastırın kapalı olması durumunda Sümela Manastırı''nın Altındere Milli Parkı içerisinden panoramik fotoğrafı alınacaktır.)
3.Gün: RİZE BEZİ - AYDER YAYLASI -ZİLKALE-CAT VADİSİ-ŞENYUVA KÖPRÜSÜ
Değerli misafirlerimiz, sabah otelimizde alacağımız kahvaltı sonrasın da Rize de M.Ö. yıllara dayanan kenevir hammaddesi olan genel olarak çarşaf, peçete, sofra örtüsü şeklinde dokunarak bizlere sunulan Meşhur Rize bezi atölyelerini ve alışveriş yerini gezdikten sonra Rize’den Fırtına vadisine geçerek Ayder yaylasına çıkıyoruz. Yayla gezimizden sonra misafirlerimizle DÜNYADA EŞİ BENZERİ OLMAYAN ÇAT VADİSİNİ görmek için minibüslerle yola çıkıyoruz. Çamlıhemşin’den bineceğimiz minibüslerle SEVDALUK dizisinin çekimlerinin de yapıldığı Şenyuva Köyü’nü görerek Fırtına Vadisi’nin vahşi doğasında yükselen Zilkale''ye gidiyoruz. Zilkale’nin Kartal Yuvasını andıran görüntüsüne hayran kalacaksınız. Zilkale’de geçireceğimiz zaman sonrası Şenyuva Köyü’ne dönerek sizlere çay molası veriyoruz. Harika manzaraya karşı çaylarınızı yudumladıktan sonra Karadeniz Bölgesi’nin en büyük taş köprülerinden biri olan Şenyuva Köprüsü’ne kısa bir yürüyüş ile geçiyoruz. Köprüde size vereceğimiz zaman sonrası minibüslerimize binerek Çamlıhemşin’e geri dönüyoruz sonrasında Rize Merkeze Hareket Akşam yemeği ve konaklama otelimizde
4.Gün: UZUNGÖL – PERŞEMBE YAYLASI – NİKSAR – TOKAT
Değerli misafirlerimiz, Otelimizde kahvaltıdan sonra şarah vadisini takip ederek deniz seviyesinden 1040m yükseklikte bulunan etrafı zümrüt yeşili ladin ormanlarıyla çevrili Uzungöl''e hareket ediyoruz. Uzungöl gezimizin ardından yolumuza devam ediyoruz. Ordunun Fatsa ilçesinden geçerek Karadeniz’in zirve Yaylalarından Perşembe yaylasına ulaşıyoruz. Perşembe Yaylası''nda, doğanın muhteşem manzaraları eşliğinde oya gibi işlenmiş menderesleri görüyor, tüm platoya hakim Karga Tepesi’nden muhteşem manzarayı görüntülüyoruz. Ve yolumuza devam ediyoruz. Sonraki durağımız Tokat’ın Niksar İlçesi burada bizleri Anadolunun ilk medresesi olarak bilinen Yağbasan Medresesi karşılıyor sonrasında, Danışmend gazi Türbesini ziyaret ediyoruz Niksar Kalesi panaromik gördükten sonra Tokat Merkeze hareket Akşam yemeği ve Geceleme Otelimizde
5.Gün: TOKAT-TAŞHAN-GÖKMEDRESE-ULUCAMİİ-AMASYA-FERHAT İLE ŞİRİN 
Değerli misafirlerimiz, sabah otelimizde alacağımız açık büfe kahvaltı sonrasın da. Tokat şehir merkezinde bulunan Taşhan, Gökmedrese, ulu camii, saat kulesi, Ali paşa camini geziyoruz sonrasında Pazar da bulunan Ülkemizin en önemli doğal değerlerinden kireç taşı oluşumlu ve dışarıdaki hava kalitesinden 4 kat daha fazla oksijene sahip olan Ballıca Mağarasını geziyoruz. Tamamen steril ve polensiz ortamda cüce yarasaların yaşadığı bu mağara; Suların getirdiği minerallere göre oluşan değişik renklerdeki sarkıt ve dikitlerin farklılığını görünce anlayacaksınız. Sonrasında Pazar ilçesine hareket edip Mahperi Hatun Kervansarayı ''nı gördükten sonra Amasya ya geçiyoruz. Gezimize 1865 yılında yaptırılan tipik bir Osmanlı konağı olan Hazeranlar Konağı ile başlıyoruz. Sonrasında Yeşilırmak kenarına yapılan nehrin üzerine doğru duran Yalı Boyu Evlerinin Cumbalarını izliyoruz. Ardından Sultan II. Bayezid adına 1485 yılında yapılan içinde camii, medrese, imaret, türbe, şadırvan ve çeşme bulunan Sultan II. Bayezid Külliyesini geziyoruz. Buradan Burma Minareli Camii ve Şehzadeler Parkını geziyoruz. Öğlen yemeği ve Namaz Molasından sonra İçinde İlhanlılar Döneminden kalma 6 adet mumyanın en fazla ilgi çektiği Amasya Müzesini ziyaret ediyoruz. Müze gezimiz sonrasında Helenistik Döneme ait olduğuna inanılan ve mitolojiye göre Ferhat’ın, Şirin’e kavuşmak adına dağları kazarak oluşturduğu ve bu adı taşıyan Ferhat ile Şirin Su Kanallarını ziyaret ediyoruz. En son olarak da Amasya’yı tepeden görebileceğimiz ve fotoğraflarımızı çekebileceğimiz Amasya Kalesi ve Kaya Mezarlarını panoramik olarak da görebileceğimiz Çakallar Tepesini ziyaret ediyoruz. Fotoğraflarımızı aldıktan sonra Amasya gezimizi tamamlayarak gezimizi bitiriyoruz.

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/16/YtFrm0.jpg', N'1000 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (12, N'İstanbul Turu', CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'İstanbul... Büyüleyici... Baş döndürücü… Göz kamaştırıcı… Üç büyük medeniyete başkentlik yapmış… Çok kolay aşık olacağınız ve çok zor ayrılacağınız bir şehir…

İstanbul… Şarkılara, şiirlere, romanlara konu olmuş bir kültür ve tarih mozaiği… Dünyada eşi benzeri bulunmayan ve Avrupa ile Asya kıtaları üzerinde tarihi ve kültürel dokusuyla göz kamaştıran camiler, saraylar, parklar ve köşkler şehri İstanbul’u keşfetmek çok heyecanlı ve eğlenceli olacaktır. İstanbul, muhteşem doğal güzellikleri, gökyüzüne uzanan minareleri, altın yaldızlı kubbeleri, sarayları, köşkleri, müzeleri, park ve bahçeleri, anıtları, kuleleri, kültürü ve çok daha fazlasıyla ziyaretçilerini büyülemektedir. Asya ve Avrupa kıtalarını birleştiren özelliğiyle de dünyada eşsizdir. Ve özellikle Boğaziçi-İstanbul Boğazı sizleri derinlemesine etkileyecektir. Roma, Bizans ve Osmanlı İmparatorluğu’nun tarihi eserlerine İstanbul’un eşsiz doğal güzellikleri de eklenince ortaya muhteşem bir tablo çıkmaktadır.


Belirlenen duraklardan misafirlerimizi aldıktan sonra İstanbul için hareket ediyoruz. Sabah ilk olarak Eminönü’ne geçiyoruz. Sabah kahvaltımızı Eminiönü börekçide aldıktan sonra Mısır çarşısına geçiyoruz.
Mısır Çarşısı, Eminönü`nde Yeni Camii`nin arkasında ve Çiçek Pazarı`nın yanındadır. İstanbul`un en eski kapalı çarşılarından olan Mısır Çarşısı, aslında Yeni Cami’nin yapılışı sırasında bu camiye gelir getirmek amacıyla inşa ettirilmiştir. Sultan III. Murat’ın annesi olan Safiye Sultan tarafından 10 Muharrem 1006 (1597) tarihinde başlatılan inşaat uzun bir duraklamadan sonra Sultan IV. Mehmet’in annesi Hatice Turhan Sultan tarafından tamamlattırılmıştır.
MISIR ÇARŞISI''NDA NELER VAR
Porselen ,Şekerleme, Seramik ,Tekstil ,Altın ve Gümüş ,Baharat Bitki Çayı, Esans ,Gıda ,Kurutulmuş Meyve ,Kuruyemiş ,Paşmina ve Lokum gibi ürünlere çarşıda ulaşabilirsiniz.
Mısır çarşısında verilen serbest zamanın ardından Boğazda tekne turumuzu yapmak için Eminönü sahiline geçip oradan sadece tur misafirlerimizin katılabileceği tekneye geçiyoruz.
Tekne turumuz 1 saat boyunca müzik eşliğinde gerçekleştikten sonra Karaköy iskelesinde iniyoruz. Oradan Önce Galata kulesine ardından taksim ve istiklal caddesine geçiyoruz. Burada tur programımıza göre serbest zaman verilecektir. Minimum 2 saat …
Galata Kulesi
Günümüzdeki isminin kökenininse Yunancada “Süt” anlamına gelen “Gala” kelimesinden türetildiği konusunda yaygın bir inanış hâkim.
Kulenin bir zamanlar gözlem amacıyla kullanılan terası, günümüzde de varlığını korumaya devam ediyor. Bu sayede ziyaretçiler, panoramik İstanbul manzarasının tadını doyasıya çıkarma fırsatı yakalıyor.
Tabii manzarayı keyif alarak seyretmek ve sakin bir atmosferde bol bol fotoğraf çekebilmek için zamanlamaya dikkat etmeniz gerekiyor.
Verilen serbest zamanın ardından aracımıza geçip Üsküdar merkeze doğru hareket ediyoruz.
İlk olarak Lamartine  dediği gibi ‘’Dünyaya son kere bakacaksın deseler, bu bakışı İstanbul’un Çamlıca’sından isterdim.’’ Sözünden esinlenerek Çamlıca tepesine çıkıp İstanbul’u buradan daha iyi şekilde görebiliyoruz.

Çamlıca Tepesi, İstanbul Anadolu Yakası Üsküdar ilçesi sınırlarında yer alan ve kenti 360 derecelik açı ile panoramik olarak izleyebileceğiniz, tepelik ve yeşil bir tepe. İstanbul Boğazı’nın eşsiz manzarasına, Marmara Denizi ve İstanbul’a hâkim olan Çamlıca Tepesi, temiz havası ve doğal güzellikleri ile kentin en turistik bölgelerinden biri.
İstanbul’un en yüksek tepesi ve İstanbul’da şehir manzarasının tadının çıkarılacağı güzel yerlerden biri olan Çamlıca Tepesi, Osmanlı döneminde de popüler bir ziyaret noktasıydı. Birçok divan şiiri, şarkı ve edebi esere konu olan Çamlıca, ağaçlık oluşu sayesinde temiz havanın hâkim olduğu İstanbul’un ender bölgelerinden.
Buradaki verdiğimiz fotoğraf molamızın ardından Üsküdar merkeze inip akşam yemeğimizi alıyoruz.
Akşam yemeği ve şehir merkezi gezisi ardından İstanbul’un en gözde kulelerinden olan Kız kulesine doğru hareket ediyoruz.
Burası turumuzun son uğrak yeri olup manzaraya karşı çay kahve içmek isteyenler için 3 tane kafe mevcut olup buralarda zaman geçirebilirsiniz. İsteğe bağlı misafirlerimiz tekne ile kız kulesine çıkıp oradan da fotoğraf alabilirler.

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/16/YFnjLG.jpg', N'750 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (13, N'Ankara Turu', CAST(N'2020-11-18T00:00:00.000' AS DateTime), N'Ankara, Türkiye''nin başkenti ve en kalabalık ikinci ilidir.
Şehirler dışındaki il topraklarının büyük kısmı tahıl tarlalarıyla kaplı platolardan oluşur. 
İlin çeşitli yerlerindeki doğal güzellikler korumaya alınmış, dinlenme ve eğlence amaçlı kullanıma sunulmuştur. İlin adını taşıyan tavşanı, keçisi, atı ve kedisi dünya çapında bilinir, armudu, çiğdemi, yerel yemeklerden Ankara tavası ve Kızılcahamam ve Beypazarı''nın maden suyu ise ülke çapında tanınır...

Belirtilen noktalardan hareketimizin ardından güzel bir gece yolculuğuna başlıyoruz. 
1.Gün ANKARA, Anadolu Medeniyetleri Müzesi, Ankara Kalesi

 Önce, ANADOLU’ da iz bırakmış birçok medeniyetin izlerini görebileceğimiz, Dünyanın sayılı müzeleri arasında gösterilen ANADOLU MEDENİYETLERİ MÜZESİ’ ni ziyaret ediyoruz. Daha sonra hanları, hamamları, konakları, sepetçileri, bakırcıları ve ilginç müzeleri ile başka bir Ankara’ yı içinde barındıran ANKARA KALESİ’ ni geziyoruz. Burada geçireceğimiz keyifli dakikalardan sonra,  otelimize yerleşiyoruz. Akşam yemeği ve konaklama otelimizde. 

1.Gün ANKARA, Anıtkabir, Kurtuluş Savaşı Müzesi, 1.Meclis Binası, 2.Meclis Binası, Atatürk Orman Çiftliği, Atatürk Evi
Otelde alacağımız sabah kahvaltısından sonra, Yüce Atamızın ebedi istirahatgâhı, Türk mimarlarının üstün bir eseri olan  ANITKABİR’ e hareket ediyoruz. Her iki yanı, gücü temsil eden Aslan heykelleriyle donatılmış olan, Aslanlı yoldan başlayarak, hüzünlü bir yürüyüşle, ANITKABİR’ e ulaşıyoruz. Atamızın huzurunda, saygı duruşumuzu gerçekleştirip, burada bulunmanın hazzını yaşıyoruz. Aynı zamanda, KURTULUŞ SAVAŞI MÜZESİ gezimizi de tamamladıktan sonra, 1. MECLİS BİNASI’ nı, 2. MECLİS BİNASI’ nı geziyoruz. Ardından, Atatürk` ün 5 Mayıs 1925 yılında, Ankara`da modern bir çiftlik kurulması için verdiği talimat ile kurduğu ATATÜRK ORMAN ÇİFTLİĞİ’ ne geçiyoruz. Selanik ’te ki Atatürk Evi’ nin aynı plan ve ölçüler içerisinde bir örneği olan ATATÜRK EVİ’ ni geziyoruz. Yeşillikler içerisinde, bu güzel yerde gezintilerimizi yaparak,   dönüş yolculuğumuza başlıyoruz. 

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/12/Yp6IPf.jpg', N'300 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (18, N'Kapadokya Turu', CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'Kapadokya, 60 milyon yıl önce Erciyes, Hasandağı ve Güllüdağ’ın püskürttüğü lav ve küllerin oluşturduğu yumuşak tabakaların milyonlarca yıl boyunca yağmur ve rüzgar tarafından aşındırılmasıyla ortaya çıkan bölgedir. Kapadokya bölgesi, doğa ve tarihin bütünleştiği bir yerdir. Coğrafi olaylar Peribacaları’nı oluştururken, tarihi süreçte, insanlar da bu peribacalarının içlerine evler, kiliseler ve manastırlar oymuş bunları fresklerle süsleyerek binlerce yıllık medeniyetlerin izlerini günümüze taşımıştır. İnsan yerleşimlerinin Paleolitik döneme kadar uzandığı Kapadokya’nın yazılı tarihi Hititlerle başlar. Tarih boyunca ticaret kolonilerini barındıran ve ülkeler arasında ticari ve sosyal bir köprü kuran Kapadokya, İpek Yolu’nun da önemli kavşaklarından biridir. Kapadokya, Pers dilinde Güzel Atlar Ülkesi anlamına geliyor. Bu güzel ülke, dünyada daha önce gördüğünüz hiç bir yere benzemeyen bir coğrafyaya sahip. Bu nedenledir ki her yıl dünyanın dört bir tarafından yüz binlerce ziyaretçi alıyor.

Belirtilen duraklardan siz kıymetli misafirlerimizi alarak Güzel Atlar Ülkesi anlamına gelen Kapadokya yolculuğumuza başlıyoruz. Aksaray’da bulunan Ağaçlı Dinlenme Tesislerinde mola vererek yolumuza devam ediyoruz.

İlk durağımız birçok güvercin yuvasının bulunduğu muhteşem Uçhisar manzaralı Güvercinlik Vadisi. Güvercinlik Vadisi turumuzun ilk durağı ve en güzel noktalarından biridir. Burada nazar boncuklu ağaların önünde fotoğraf için mola veriyoruz.

Daha sonra bölgenin en büyük peri bacası ve en yüksek notkası olan Uçhisar Kalesi''nin alt bölgesine geçip panoromik olarak fotoğraflamak için serbest zaman  veriyoruz . 
Turumuzu sütte kavrulmuş kabak çekirdeği tatmak ve alış veriş yapabileceğiniz bir mağazada serbest zaman vererek devam ediyoruz.
Daha sonra Göreme Vadisini ve Göreme Kasabasını panoramik olarak görebileceğimiz bir nokta olan Göreme Panorama ile devam ediyor. Burada yaklaşık 30 dk. mola veriyoruz. Manzara eşliğinde çayınızı yudumlayabileceğiniz en güzel noktalardan birisidir.

Bu güzel moladan sonra Avanos’a Çanak Çömlek Atölyesine geçiyoruz. Ustamız bize çanak çömlek yapımının tarihi ile ilgili detaylı bilgileri verdikten sonra siz değerli misafirlerimizin arasından birini seçerek usta çırağı yapacaktır. Misafirimiz bize hünerlerini gösterecektir.

Daha sonra öğle yemeği için restoranımıza geçiyoruz.
Restoranımız Kayadan oyma mağaradan yapılmış olup bölgenin en ünlü  tesisidir. Muhteşem atmosferi eşliğinde yemeğimizi alıyoruz. 
Yemekten sonra turumuza Paşabağ Vadisi ile devam ediyoruz. Burada oluşumunu tamamlamış mantar şeklindeki peri bacalarını göreceksiniz. Yanardağlardan püsküren lavların milyonlarca yıl boyunca akarsuların ve rüzgârın aşındırması ile şekillenen mantar şeklindeki peri bacaları arasında keyifli bir yürüyüş yapabilmek ve bolca fotoğraf çekebilmek için size serbest zaman vereceğiz.
Daha sonra, peribacalarının şekillerinin bazı canlılara benzetilmesi nedeniyle Hayal Vadisi olarak da adlandırılan Devrent Vadisi''ne gidiyoruz. Burada da birbirinden güzel peribacalarını görmeniz mümkün.
Ürgüp’te bulunan meşhur Asmalı Konak dizisinin çekildiği Asmalı Konağı görmeye gidiyoruz. 
Turumuzun son noktasını da gezdikten sonra dönüş yolculuğumuza başlıyoruz

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/17/YF5T4n.jpg', N'150 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (22, N'Eskişehir Turu', CAST(N'2021-03-18T00:00:00.000' AS DateTime), N'Eskişehir, Türkiye''nin İç Anadolu Bölgesinde bulunan aynı adlı ilin merkezidir. Ortasından Porsuk Çayı geçen şehir, içerisinde Osmangazi Üniversitesi ve Anadolu Üniversitesi''nin bulunması nedeniyle bir öğrenci kenti görünümündedir.Met helvası, Nuga helva, Haşhaşlı çörek, Kalabak suyu, Çibörek ve Lületaşı ile meşhurdur. İşlenebilir lületaşı, Türkiye''de yalnız Eskişehir''de çıkarıldığı için Eskişehir taşı olarak bilinir. Türkiye''de Eskişehir ve Sivrihisar dolaylarında yetişen bir çoban köpeği olan akbaş da şehre ait önemli değerlerdendir. 


Belirlenen duraklardan misafirlerimizi aldıktan sonra Eskişehir için hareket ediyoruz. Yaklaşık 1,5 saat sonra Özkan dinlenme tesisinde 20 dakikalık ihtiyaç molamızı verdikten sonra tekrar harekete geçiyoruz.
 
Eskişehir’e ulaştıktan sonra turumuza ilk olarak Sazova Bilim Kültür merkezinden başlıyoruz. Burada nostaljik trenden, Korsan Gemisi’nden Masal Şatosu’na kadar Su altı dünyasından Bilim deney Merkezine, Minyatürken Nasreddin Hoca’ya bir yolculuk için serbest bırakıyoruz. Dileyen Misafirlerimiz tren ile Sazova Parkı çevresinde turlayabilir.
 
Sazova Parkında gezimizin ilk etabını bitirdikten sonra Odun Pazarına geçiyoruz. Tarihi Odun Pazarı evlerini gördükten sonra Kurşunlu Küllüye ’sini geziyoruz hemen ardından Atlıhan’da meşhur Eskişehir Lületaşının satıldığı muhteşem Handa çay molası veriyoruz ve buradan dünyanın pek çok ülkesinde ‘Madam tussuad müzesinin Türkiye’deki ilk örneği olan Yılmaz Büyükerşen Balmumu Heykeller Müzesi’nde başta Mustafa Kemal Atatürk olmak üzere Türkiye’nin ve dünyanın ünlü simalarından toplam 160’ın üzerinde heykel göreceğiz.
 
Tülomsaş Fabrikasını bahçesinde sergilenen bej renkli ilk yerli otomobilimiz olan Devrim arabasını ziyaret ediyoruz. Devrim arabamızın hazin hikayesini rehberimizden dinledikten sonra fotoğraf molası veriyor ve turumuza devam ediyoruz.
Daha sonra Köprübaşı Mevkiine gidiyoruz. Öğle yemeği ve Porsuk çayında tekne gezintisi için serbest zaman veriyoruz. Öğle yemeğinde Eskişehir''in meşhur çiböreğini ve Balaban Köftesini tadabilirsiniz. Dileyen misafirlerimiz Porsuk Çayında gondola ve tekneye (esbot) binebilirler.  
Turumuzun son bölümünde özellikle Üniversite öğrencilerinin yoğunlukta gezdiği Porsuk Çayı etrafında turumuzu tamamlayıp şehrin merkezinde olan AVM’de serbest zaman verip turumuzu burada sonlandırıyoruz.

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/17/YF5pyS.jpg', N'150 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (28, N'Eğirdir Turu', CAST(N'2021-04-26T00:00:00.000' AS DateTime), N'Eğirdir Gölü, günün değişik zamanlarında farklı renkler alan, gün batımında seyrine doyum olmayan, etrafı elma ve şeftali bahçeleriyle çevrili, berrak plajlarıyla ünlü, Türkiye’nin dördüncü büyük doğa harikası gölüdür. 
Göller bölgesinin başkenti ve incisi Eğirdir’in zengin coğrafyasında kuş gözlemciliği, endemik bitki gözlemciliği, foto safari, doğa yürüyüşü, oryantiring, dağcılık, jeep safari, yamaç paraşütçülüğü, su sporları, yayla, kamp-karavan ve av turizmi yapılabilmektedir.
Eğirdir Gölü, günün değişik zamanlarında farklı renkler alan, gün batımında seyrine doyum olmayan, etrafı elma ve şeftali bahçeleriyle çevrili, berrak plajlarıyla ünlü, Türkiye’nin dördüncü büyük doğa harikası gölüdür. Eğirdir Gölü içine uzanan iki ada vardır; bunlar Can Ada ve Yeşilada’dır.


Siz kıymetli misafirlerimiz ile keyifli yolculuğumuza başlıyoruz. İlk durağımız Eğirdir Gölünü kuşbakışı olarak görebileceğimiz Akpınar Tepesi’ne varıyoruz. Burada manzara eşliğinde köy kahvaltımızı alıyoruz. Kahvaltımızın ardından bu mekânı fotoğrafladıktan sonra Eğirdir’e iniyoruz.
Eğirdir Gölü üzerinde bulunan Yeşil Ada’ya varıyoruz. Yeşil Ada etrafında yürüyüş turu atıyoruz. Yürüyüş esnasında Eski Eğirdir Evleri, Dünya''nın ilk ruhban okulu olan Ayastafenos Kilisesi, Muslihiddin Dede Türbesi''ni panaromik olarak görecek ve Yeşil Ada''nın olağanüstü güzelliğine şahit olacaksınız. Daha sonra Dündar Bey Medresesi, Hızırbey Camisi ve Kemerli Minare, Kale ve civarlarını geziyoruz.  Isparta’nın meşhur gül ürünlerinden alış veriş için serbest zaman veriyoruz.  
Alış veriş yaptıktan sonra Yazılı Kanyon’a geçiyoruz. Yazılı ismini kanyon içindeki kayaların üzerinde bulunan, Epiktetosa ait HÜR İNSAN şiirinden almaktadır. Kanyonda bulunan tesisimizde öğle yemeğimizi alıyoruz. Yemekten sonra yemyeşil çam ağaçların gölgesinde fazla zorlu olmayan bir patikadan gürül gürül akan muhteşem su sesi eşliğinde Yazılı Kanyon''da  yürüyüş yapıyoruz. 
Daha sonra Kovada Gölü Milli Parkı gezimizi yapıyoruz. Eğirdir Gölü’nün güneye devamı olan Kovada Gölü, aradaki dar bölgenin alüvyonlarla dolması sonucu ayrı bir göl halini almıştır. Jeolojik olarak karstik tektonik bir polye olan göl, Eğirdir ve Beyşehir Göllerinde olduğu gibi turkuaz mavisi sularıyla bilinir.  Kovada Gölü’nün çevresi zengin bitki örtüsüne sahiptir ve yüzlerce çeşit hayvan barındırmaktadır. Bu özelliklerinden dolayı “Milli Park” niteliğini almıştır. Göl çevresinde yürüyüş turu atıyoruz. Biraz daha vakit geçirdikten sonra turumuzu bitiyoruz. 


 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/17/YF5zNt.jpg', N'200 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (32, N'Yedigöller Turu', CAST(N'2020-12-20T00:00:00.000' AS DateTime), N'Siz değerli misafirlerimizi belirlenen duraklardan alarak gece yolculuğumuza başlıyoruz.
1.Gün: Yedigöller Milli Parkı (İncegöl, Sazlıgöl Nazlıgöl, Küçükgöl, Deringöl, Büyükgöl, Seringöl)
Sabah saatlerinde Bolu’ya ulaşıyoruz. Öncelikle Yedigöller’e giriş yapmadan yol üzerindeki tesislerde kahvaltı molası veriyoruz. Sonrasında Yedigöller’e geçiyoruz.
Yedigöller’e daha varmadan bizi nasıl bir güzelliğin beklediğinin sinyallerini yolculuk sırasında alıyoruz. Yedigöller, her mevsim de bir başka güzel. Yedigöller bizleri adeta büyülüyor. Cennet burası olsa gerek dedirtiyor gelenlere. Yedigöller yüzeysel ve yer altı akışıyla birbirine bağlı, kuzeyden güneye doğru sıralanmış 7 adet gölden oluşmuştur. Sessiz ve sakin tabiatı, güzel manzaraları, farklı arazi şekilleri, şelaleleri, yürüyüş yolları, çeşitli cins ve türde bitki ve ağaçlarla süslü çevresiyle, mükemmel bir piknik, dinlenme, sakinlik, ferahlık, fotoğraf çekme, spor yapma, kamp çadır kurma yeridir.
Yedigöller’e ulaşmamızla birlikte Milli Park girişinde aracımızdan iniyoruz. İlk olarak İncegöl, Sazlıgöl, Küçükgöl’ü ardından da Nazlıgöl ve çevresini dolaşarak kısa fotoğraf molalarıyla kuş sesleri arasında keyifli bir gezinti yaparak ilerliyoruz. Bir sonraki durağımız Şelalelerinde bulunduğu 7 çeşmeli Aşıklar Çeşmesi. Daha sonra Deringöl''ü, Büyükgöl’ü, Seringöl''ü ve çevresini dolaşıyoruz. Tüm stres ve sıkıntılarınızı atıp adeta doğayla bütünleştiğiniz bu saatler hiç bitmesin isteyeceksiniz.
Tüm göller ve çevresinde rehberimizin eşliğinde yürüyüş yaptıktan sonra sizlere serbest zaman vereceğiz. Belirlediğimiz saatte keyifli anılarımız ve depoladığımız enerji ile otelimize hareket ediyoruz. Akşam yemeği ve konaklama otelimizde. 
2.Gün: Abant Milli Parkı - Gölcük Milli Parkı
Otelimizde alacağımız sabah kahvaltısının ardından Abant Gölü’ne doğru yola çıkıyoruz. Baharda açan nilüfer çiçekleriyle, dört mevsim farklı görüntüye sahip manzarasıyla, çam ve köknar ağaçlarıyla çevrili göl kenarında yapılan fayton turlarıyla ünlü Abant Milli Parkı’na varıyoruz. Aracımızdan indikten sonra öncelikle rehberimizle birlikte Abant Tabiat Müzesi’ni geziyoruz. Sonrasında göl kenarına varıyoruz. Siz değerli misafirlerimize burada belirli bir süre serbest zaman veriyoruz. Serbest zaman süresince göl kenarında hizmet veren faytonlara ya da ata binebilirsiniz. Daha sonra bir başka cennet köşesi Gölcük Milli Parkı’na hareket ediyoruz. Göl etrafında rehberimizin eşliğinde yorucu olmayan yürüyüş yapıyoruz. Daha sonra bol bol fotoğraf çekip gölün tadını çıkarmanız için serbest zaman veriyoruz. Serbest ardından tüm güzellikleri geride bırakarak turumuzu bitiriyoruz.


 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/17/YF512c.webp', N'220 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (34, N'Çanakkale-Bursa Turu', CAST(N'2021-06-02T00:00:00.000' AS DateTime), N'Belirtilen noktalardan hareketimizin ardından güzel bir gece yolculuğuna başlıyoruz. 
2. Gün: Cumalıkızık/Yeşil Camii/Yeşil Türbe/Osmangazi Türbesi/Orhangazi Türbesi/Ulucamii/Tophane

Keyifli bir yolculuğun ardından sabahın erken saatlerinde siz değerli misafirlerimiz için Cumalıkızık Köyü''nde muhteşem bir köy kahvaltısı hazırlanacak. Doyasıya bir kahvaltı ve üzerine güzel bir çay keyfinin ardından Yeşil camii ve Yeşil Türbe ile gezimize başlıyoruz. Yeşil türbe gezimizin ardından 15.yüzyıldan günümüze kadar hizmet vermiş Tarihi Kapalı Çarşı(Uzun Çarşı) da biraz dolaşıyor ardından Ulu Camii''yi ziyaret ediyoruz. Ulu Camii ziyaretimizin ardından Osmangazi ve Orhangazi''ninde türbelerinin bulunduğu Tophaneye çıkıyor ve şehrin panaromik fotoğrafını çekiyoruz. Vereceğimiz serbest zamanın ardından Bandırmaya doğru hareket ediyoruz. 
Bursa Çanakkale Turu ilk gününde Akşam yemeği ve konaklama için Otelimizde istirahate geçiyoruz.

3. Gün: Gelibolu/Anzak Koyu/Conk Bayırı/Kilitbahir/57.Alay Şehitliği/Kahraman Seyit Onbaşı Tabyası

Otelimizde alacağımız kahvaltının ardından Çanakkale''den feribot ile Eceabat''a geçiyoruz. Eceabat''a vardıktan sonra Gelibolu Yarım Adasında 1914 yılında başlayan 253.000 askerimizin Şehit olduğu Çanakkale Savaşının izlerini birer birer Profesyonel Tur Rehberimiz eşliğinde görmeye başlıyoruz.
Ana Tanıtım Merkezinde genel bir bilgi alarak turumuza başlıyor,buradan sırasıyla Bigalı köyü,Atatürk evi,Anzac koyu ve Mehmetçiğe saygı anıtını ziyaret ediyoruz. Ardından tamamı şehit düşen 57.Alay Şehitliğini ve Conk bayırını ziyaret ediyor,atalarımızın bu güzel vatanı nasıl kazandıklarına adeta şahitlik ediyoruz.Öğle yemeğimizi aldıktan sonra Seddülbahir savaş alanı,Büyük Şehitler Abidesi,Kahraman Ezineli Yahya Çavuş,Şahindere hastane şehitliğini sırasıyla ziyaret ediyoruz. Bu ziyaretlerimizin ardından 276 kiloluk Top Mermisini tüm kemiklerinden sesler gelmesine rağmen kaldırıp topun namlusuna süren ve savaşın gidişatını değiştiren Kahraman Seyit Onbaşı Tabyasını ziyaret ediyoruz. Ardından bölgenin en büyük tabyası olan Namazgah Tabyasını-Kilitbahir''i ziyaret ediyor ve dönüş yoluna geçmek için aracımızda buluşuyoruz.Araç içi ikramlar eşliğinde  turumuzu bitiriyoruz.

 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://i.imgyukle.com/2020/12/17/YF5KAR.jpg', N'600 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (35, N'Erciyes Kayak Turu', CAST(N'2020-12-19T00:00:00.000' AS DateTime), N'Erciyes Dağı; bulutları delen zirvesi, tepesinden eksik olmayan karı ve insana ilahi duygular sunan azameti ile Kayseri’nin sembolüdür. İç Anadolu Bölgesi’nin birinci, Türkiye’nin 5. büyük dağı unvanına sahip olan Erciyes Dağı, hem kış turizmi, hem dağ tırmanışı, hem de yayla turizmi bakımından yılın her döneminde önemini korumakta ve ziyaretçi akınına uğramaktadır. Kayseri denince ilk akla gelen doğa harikası, her mevsim bembeyaz zirvesiyle bulutlara uzanan Erciyes Dağı’dır. 30 milyon yıl önceki patlamaları sayesinde Kapadokya’nın oluşmasını sağlayan Erciyes (3917m) sönmüş bir volkan. Erimeyen kar nedeniyle olsa gerek, Hititler ona Beyaz Dağ anlamına gelen bir isim takmışlar. Harkasos toz karı, zorlu tırmanış rotaları, zengin florası, faunası ve yayları ile kayak meraklıların, sporcuların, doğa aşıklarının ve macera tutkunlarının her mevsim akınına uğrayan Erciyes  Dağı sunduğu konforlu konaklama imkanları sayesinde de güzel bir Erciyes tatili vaat ediyor. Türkiye’de dağcılık ve buzul tırmanışları için profesyonel sporcular tarafından en çok tercih edilen dağlardan Erciyes, yüksek kar kalitesine sahip dünyada sayılı yerlerden biri olma özelliği ile de kayak merkezi olarak ön plana çıkıyor. Kayseri’nin simgesi olan Erciyes, Türkiye’nin son yıllarda önem kazanan kış sporları merkezinden birisidir. Erciyes Dağı’nda kış sporları yanında dağcılık ve yürüyüş turizmi imkanları bulunmaktadır. Ayrıca yaz aktivitesini artıran trekking turları düzenlenmektedir. Kayseri Niğde arasında olan göller bölgesinden Kapuzbaşı Şelalelerine kadar trekking parkuru yürüyüş severlerinin en güzel rotalarından birisidir.

Belirlenen duraklardan misafirlerimizi aldıktan sonra Kayseri’ye doğru hareket ediyoruz. Saat 08.30 gibi yirmi dakikalık ihtiyaç molamızı veriyoruz.
 
Molamızın ardından sabah kahvaltımızı araç içi alıp Erciyes’e varıyoruz.
 
İlk olarak kayak takımı kiralayacağımız tesiste kayak takımlarımızı kiralayıp piste çıkıyoruz.
 
İlk defa kayak yapacak misafirlerimize temel eğitim verildikten sonra öğle yemeği için fişlerinizi verip serbest zaman veriyoruz.
 
Serbest zamanımızın sonunda Kayak takımı kiraladığımız tesiste emanetlerini verip Kayseri yolu üzerinde nezih bir dinlenme tesisinde akşam yemeği için serbest zaman veriyoruz. Dileyen misafirlerimiz yörenin meşhur Pastırmasından veya mantısını tadabilir. Bu tesiste yöresel ürünler almak isteyen misafirlerimiz alışverişlerini bitirdikten sonra turu sonlandırıyoruz.


 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://pekgezgin.com/wp-content/uploads/2018/09/Erciyes-Kayak-Merkezi-Hakkinda-Bilgi.jpg', N'150 TL')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage], [Fiyat]) VALUES (38, N'Fethiye - Kaş - Olympos Turu ', CAST(N'2021-07-04T00:00:00.000' AS DateTime), N'Belirtilen noktalardan hareketimizin ardından güzel bir gece yolculuğuna başlıyoruz. 
1.Gün Lacivert Koy - Kleopatra Plajı - Sedir Adası - Azmak Çayı
Acentenin konforlu otobüsleri ve otobüs içi ikramlar eşliğinde Susurluk’ta verilen ilk molanın ardından Aydın, Çine, Muğla üzerinden Gökova’nın eşsiz panoramasına sahip Sakar Geçidi’ni aşıyoruz. Sonrasında evleriyle mimarlık ödülüne sahip olan, AKYAKA Beldesine varıyoruz. Buradan GÖKOVA TEKNE TURU için teknemize biniyoruz. Jacques Cousteau''nun ‘Dünya''nın cenneti’ dediği Gökova''nın el değmemiş koylarını gezmeye başlıyoruz. Gelibolu Adası, Cleopatra Plajı, Sedir Adası, İncekum, Lacivert Koy vb. yüzeceğimiz koylar arasında (1.MAVİ YOLCULUK). Bu güzel turun sonunda Akyaka beldesine geri dönüyoruz. Burada verilen serbest zamanda dileyen misafirlerimiz muhteşem flora ve fauna’ya sahip Azmak Çayı''ını fotoğraflayabilir. Akyaka’dan ayrılıp otelimize yerleşme. Akşam yemeği otelimizde.
2.Gün Göcek Körfezi - Göcek Adası - Yassıca Adası - Tavşan Adası - Zeytin Adası - Tavşan Adası
Sabah otelde alınan kahvaltı sonrası (arzu eden misafirlerimiz sabahın erken saatlerinde otelden alınarak, özel araçlarla muhteşem Ölüdeniz manzaralı Babadağ''a çıkarak, buradan Yamaç Paraşütü yapabilirler. Dünyanın en güzel parkurlarından olan bu adrenalini yüksek sporu yaparken, gökyüzünden Ölüdeniz’e tekrar aşık olacaksınız. 12 ADALAR TEKNE TURU’na katılmak için bizi bekleyen teknemize biniyoruz. Tekne turumuzda Fethiye-Göcek koylarının birbirinden güzel adalarını görüp, akdenizin kokusunu içimize çekerek, Yassıcalar Adası, Göcek Adası, Kızılada, Akvaryum Koyu, Domuz Adası, Tersane Adası, Zeytinli Ada vb koy ve adalarda yüzme molaları veriyoruz. (2. MAVİ YOLCULUK). Bu güzel mavi yolculuğun ardından Fethiye-Kargı mevkiindeki Yöresel Ürünler Pazarı''na gidiyoruz. Fethiye yörük kültürünün tanıtıldığı, Fethiye ve çevresinden çıkan birçok bitki, yağ ve balın sunulduğu bu noktada tadım ve tanıtımların ardından arzu eden misafirlerimiz alışveriş yapabilirler.  Gün sonunda otelimize dönüyoruz. Akşam yemeğimiz otelimizde. 
3.Gün Saklıkent Kanyonu - Kekova - Batık Şehir Tekne Turu - Esmeralda Koyu - Tersane koyu – Üçağız
Sabah otelde alınan kahvaltı ardından otobüsümüzle Türkiye''nin en etkileyici kanyonlarından biri olan Saklıkent''e gidiyoruz. Burada dileyen misafirlerimiz gökyüzünde olmanın zevkini Zıpline ile yaşayabilirler. Dileyen misafirlerimiz bu heyecan verici aktivitelerin tadını çıkarırken dileyen misafirlerimiz de Saklıkent Kanyonu''na giriş yapabilirler.Kanyon içinde kayaların altından çıkan buz gibi sularda serinleyip bu keyifli anları fotoğraflayarak otobüsümüze dönüyoruz.  Sonrasında Akdeniz’in incisi olan KAŞ’ a ulaşıyoruz. Burada verilen serbest zaman sonrası KEKOVA’nın giriş kapısı aynı zamanda kendisine has kıyı köy dokusuyla bizleri karşılayacak olan ÜÇAĞIZ''a ulaşıyoruz. Buradan bineceğimiz teknemizle KEKOVA TEKNE TURU’na başlıyoruz. Yüzme molalarımız Tersane koyu, Kumlu İskele vb. koylarda olacak. Ardından M.S  ll.yy ‘da  bir  depremle  denizin  içine  batmış  olan  Batık Kent, Kekova Adası, kara ulaşımı bulunmayan Simena Köyü ve Kalesini  tekneden görüyor ve rehberimizden bilgiler alarak turumuzu tamamlıyoruz. (3.MAVİ YOLCULUK) . Üçağız’dan alacağımız dağ kekikleri kokusu içinde otobüsümüzle Noel Baba’nın yaşamış olduğu yer DEMRE üzerinden yol alarak Finike, Bey Dağları, Kemer istikametiyle akşamüstü saatlerinde Antalya bölgesindeki  otelimize yerleşiyoruz. Akşam yemeğimiz otelde.

4.Gün Phaselis - Kaleiçi - Yivli - Minare
Sabah otelimizde alınan kahvaltı sonrası, otobüsümüze binerek rotamızı Antalya’nın batısına doğru çeviriyoruz. Sol yanımıza lacivert denizi, sağ yanımız Bey Dağlarını ve çam ormanlarını alarak, eşsiz kumsalı ve bakir doğası ile görenleri kendisine âşık eden Adrasan’a gidiyoruz. Bu doğa harikası yerde verilen yüzme molasının ardından tekrar yolumuza devam ederek, çam ormanları içerisinde bulunan ve alabalık ızgarasıyla meşhur, aynı zamanda bir sayfiye merkezi olan Ulupınar Botanik Bahçesi ulaşıyoruz. Burada yenen leziz yemek sonrası, tekrar yolumuza devam ederek Markiz Dağı eteklerinde bulunan ve bir vadi içerisine yapılmış eskinin korsan kenti, şimdinin dünyaca ünlü ağaç evleriyle meşhur Olympos’a ulaşıyoruz. Olympos’ta kilise, hamam, agora gibi antik kente ait eserleri gördükten sonra Olympos’un eşsiz denizine girmek için serbest zamanımız olacak. Burada verilen yüzme molası ardından tekrar otobüsümüze binip dileyen konuklarımız için teleferik ile Tahtalı Dağı seyir terasına çıkılıyor. Devamında Antalya’da bulunan otelimize ulaşıyoruz. Akşam yemeğimiz otelimizde
5.Gün Kemer
Sabah otelde alınan kahvaltının ardından, otobüsümüze binerek ülkemizin en önemli turizm merkezlerinden birisi olan, gerekse tarihi gerekse muhteşem doğası ve koyları ile adını duyurmuş Kemer’e hareket ediyoruz. Burada bizi bekleyen teknemize binerek masmavi koyların keyfini sürmeye başlıyoruz. Ay ışığı koyu, Cennet koyu ve yüzme molası vereceğimiz yerler arasında. Bu güzel  gezi ve tekne turunun ardından otobüsümüze binip, Antalya’ya doğru hareket ediyoruz. Antalya şehir merkezini, Kaleiçi evlerini, Antalya’nın simgesi olan Yivli Minare’yi, Saat Kulesini fotoğrafladıktan sonra otelimize doğru yol alıyoruz.
6.Gün Düden Şelalesi - Aspendos Tiyatrosu

Sabah kahvaltı sonrası, Türkiye’nin sayılı şelalelerinden DÜDEN ŞELALESİ’ne ulaşıyoruz. Burada verilen serbest zamanda çekilen fotoğrafların ardından, turumuza dünyada günümüze ulaşan en iyi Roma Tiyatrosu olan ASPENDOS TİYATROSU ile devam ediyoruz.  Aspendos gezisi sonrası bir Milli Park ve tabiat harikası olan Köprülü Kanyona ulaşıyoruz. Burada insanın yaşamı boyunca mutlaka yapması gereken, adrenalini yüksek, 7’den 77’ye herkesin katılabileceği RAFTİNG heyecanını Köprüçay''ın buz gibi sularında beraber yaşıyoruz .Macera dolu  bu aktivitenin sonrasında İstanbul’a ulaşıyoruz ve siz değerli misafirlerimize bir başka acente organizasyonunda buluşmak dileğiyle veda ediyoruz.


 Turlarımız ile ilgili detaylı bilgiyi için lütfen bizimle iletişime geçiniz..............', N'https://image.elitema.com.tr/db_images/191/4/97/125291.jpg', N'500 TL')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimizdas] ON 

INSERT [dbo].[Hakkimizdas] ([ID], [FotoUrl], [Aciklama]) VALUES (1, N'https://i.imgyukle.com/2020/12/12/YsyHdo.jpg', N'“Arkamızda gülen yüzler bırakıyoruz” sloganı ile cennet ülkemizin eşsiz güzelliklerini gezdiren hem kültür hem tatil konusunda kendini kanıtlamış ve büyüyen bir seyahat acentesidir.
Siz kıymetli misafirlerimize daha kaliteli hizmet verebilmek için yeni fikirlerle karşınıza çıkıyoruz. Sürekli gelişmeyi kendine felsefe edinen ve yenilikçi turizm acentesi olarak Tatil & Seyahat , müşterilerine en iyi olan sunmak isteyen çalışanları ve ekibi ile kaliteli hizmet vermeyi hedeflemiştir. Müşteri memnuniyetini %100 hedefleyerek, en kaliteli hizmeti, en uygun fiyatı ve en iyi hizmeti  sunan Tatil & Seyahat , size özel tatili planlamak için her zaman yanınızdadır............')
SET IDENTITY_INSERT [dbo].[Hakkimizdas] OFF
GO
SET IDENTITY_INSERT [dbo].[Iletisims] ON 

INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (1, N'zeynepnida', N'zeynep@gmail.com', N'Karadeniz Turu', N'6 kişi için tur hakkında bilgi alabilir miyim?')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (2, NULL, N'deneme@gmail.com', N'deneme', N'deneme')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (3, NULL, N'deneme@gmail.com', N'deneme', N'deneme')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (4, NULL, N'deneme@gmail.com', N'deneme', N'deneme')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (5, N'deneme', N'deneme@gmail.com', N'deneme', N'deneme')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (6, N'ayşe', N'ayse@gmail.com', N'Fethiye-Kaş-Olympos Turu', N'Fethiye-Kaş-Olympos turu için  bilgi alabilir miyim?')
INSERT [dbo].[Iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (7, N'adimn', N'ayse@gmail.com', N'Fethiye-Kaş-Olympos Turu', N'asd')
SET IDENTITY_INSERT [dbo].[Iletisims] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (2, N'Ali', N'alidemir@gmail.com', N'Yaz tatilinde gittim. Mükemmel bir tur', 11)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (3, N'Deneme', N'deneme@gmail.com', N'Bir karadeniz gezisi yapmayı çok istiyorum. Özellikle uzun göl ve sümela manastırını çok merak ediyorum...........', 11)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (17, N'deneme', N'deneme@gmail.com', N'bir deneme yorumudur.', 18)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (20, N'ayşe', N'ayse@gmail.com', N'Erciyes turuna gitmeyi çok istiyorum', 35)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (21, N'a', N'a@gmail.com', N'deneme', 22)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (23, N'admin', N'ayse@gmail.com', N'asd', 12)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (25, N'admin', N'ayse@gmail.com', N'Muhteşem bir tur', 32)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
