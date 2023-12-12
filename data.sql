-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: laptop
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartID` int NOT NULL AUTO_INCREMENT,
  `productID` int DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL,
  `categoryName` varchar(1000) DEFAULT NULL,
  `icon` varchar(1000) DEFAULT NULL,
  `providerID` int DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Aspire','aspire.jpg',1),(2,'Nitro','nitro.jpg',1),(3,'Triton','triton.jpg',1),(4,'TUF','tuf.jpg',2),(5,'ROG','rog.jpg',2),(6,'Victus','victus.jpg',3),(7,'Omen','omen.jpg',3),(8,'Inspiron','inspiron.jpg',4),(9,'Vostro','vostro.png',4),(10,'Katana','katana.png',5),(11,'Cyborg','cyborg.jpg',5);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL,
  `categoryID` int DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Laptop Gaming Acer Aspire 7 A715-42G-R05G',13990000,'ACER ASPIRE 7 A715-42G-R05G sở hữu cấu hình mạnh với bộ vi xử lý AMD Ryzen \nvà card đồ họa rời NVIDIA GeForce GTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.\n– Bộ vi xử lý AMD Ryzen™ 5 5500U.\n– Card đồ họa rời NVIDIA GeForce® GTX 1650 4GB.\n– Màn hình 15.6″ FHD IPS đẹp mắt với tần số quét 144Hz chuẩn chiến game.\n– Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến, cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.','Aspire/a1.jpg',100),(2,1,'Laptop Gaming Acer Aspire 7 A715-43G-R8GA',16290000,'ACER ASPIRE 7 A715-43G-R8GA sở hữu cấu hình mạnh với bộ vi xử lý AMD Ryzen và card đồ họa rời NVIDIA GeForce GTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.\n– Bộ vi xử lý AMD Ryzen™ 5 5620U.\n– Card đồ họa rời NVIDIA GeForce® RTX 3050 4GB.\n– Màn hình 15.6″ FHD IPS đẹp mắt với tần số quét 144Hz chuẩn chiến game.\n– Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến, cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.','Aspire/a2.jpg',100),(3,1,'Laptop Gaming Acer Aspire 5 A515-58GM-59LJ',16990000,'Laptop Acer Gaming Aspire 5 A515-58GM-59LJ là dòng Laptop chơi game phổ thông mới nhất và có mức giá dễ tiếp cận nhất được Acer ra mắt trong năm 2023. Thiết kế gọn gàng, \nmỏng nhẹ nhưng Laptop Acer Gaming Aspire 5 A515-58GM-59LJ sở hữu hiệu năng mạnh mẽ và ổn định với bộ vi xử lý Intel® Core™ i5 Chip H thế hệ 13 mới nhất cùng Card đồ họa rời NVIDIA® GeForce RTX™ 2050 4GB.\nCấu hình mạnh giúp thiết bị phù hợp cho các tựa game Online/Esport phổ biến đồng thời sở hữu khả năng xử lý đa nhiệm và sở hữu thời lượng pin cực tốt, giúp người dùng thoải mái làm việc, học tập và chơi game thư giãn.','Aspire/a3.jpg',100),(4,1,'Laptop Gaming Acer Aspire 7 A715-76G-59MW',16990000,'ACER ASPIRE 7 A715-76G-59MW sở hữu cấu hình mạnh với bộ vi xử lý Intel Core i và card đồ họa rời NVIDIA GeForce GTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.\n– Bộ vi xử lý Intel Core i5 12450H.\n– Card đồ họa rời NVIDIA GeForce® GTX 2050 4GB.\n– Màn hình 15.6″ FHD IPS đẹp mắt với tần số quét 144Hz chuẩn chiến game.\n– Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến, cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.','Aspire/a4.jpg',100),(5,1,'Laptop Gaming Acer Aspire 7 A715-76G-5806',19940000,'ACER ASPIRE 7 A715-76G-5806 sở hữu cấu hình mạnh với bộ vi xử lý Intel Core i và card đồ họa rời NVIDIA GeForce RTX kết hợp cùng hai quạt tản nhiệt đem lại khả năng làm mát tối đa.\n– Bộ vi xử lý Intel Core i5 12450H.\n– Card đồ họa rời NVIDIA GeForce® RTX 3050 4GB.\n– Màn hình 15.6″ FHD IPS đẹp mắt với tần số quét 144Hz chuẩn chiến game.\n– Công nghệ tản nhiệt hàng đầu phân khúc với 2 quạt tản nhiệt và hệ thống ống đồng cải tiến, cùng phần mềm tối ưu hóa hệ thống Acer Care Center tiện dụng.','Aspire/a5.jpg',100),(6,2,'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV',18990000,'Acer Nitro 5 AN515-57-54MV tích hợp những \"vũ khí\" mới nhất. Bao gồm CPU i5 11400H, VGA RTX 3050 cho hiệu năng xử lý mạnh mẽ. Laptop Gaming Acer Nitro 5 AN515-57-54MV sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn \nhình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước. Acer Nitro 5 AN515-57-54MV có hệ thống tản nhiệt gồm 2 quạt tản nhiệt thế hệ mới kết hợp công nghệ Acer CoolBoost™ giúp tăng 10% tốc độ quạt. Giảm nhiệt độ CPU/GPU thêm 9%. Phần mềm Nitro Sense chủ động theo dõi nhiệt độ, điều chỉnh tốc độ quạt. \nSo với phiên bản trước khả năng tản nhiệt tốt hơn 25%. Thiết kế tản nhiệt mới với 4 khe hút gió/thoát nhiệt thông minh.','Nitro/a1.jpg',100),(7,2,'Laptop Gaming Acer Nitro 5 AN515-45-R6EV',15990000,'Acer Nitro 5 AN515-45-R6EV tích hợp những vũ khí mới nhất. Bao gồm CPU R5 5600H, VGA GTX 1650 cho hiệu năng xử lý mạnh mẽ. \nLaptop Gaming Acer Nitro 5 AN515-45-R6EV sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.\nAcer Nitro 5 AN515-45-R6EV có hệ thống tản nhiệt gồm 2 quạt tản nhiệt thế hệ mới kết hợp công nghệ Acer CoolBoost™ giúp tăng 10% tốc độ quạt. Giảm nhiệt độ CPU/GPU thêm 9%. Phần mềm Nitro Sense chủ động theo dõi nhiệt độ, điều chỉnh tốc độ quạt. So với phiên\nbản trước khả năng tản nhiệt tốt hơn 25%. Thiết kế tản nhiệt mới với 4 khe hút gió/thoát nhiệt thông minh.','Nitro/a2.jpg',100),(8,2,'Laptop Gaming Acer Nitro 5 Tiger AN515-58-50EE',18990000,'Acer Nitro 5 Tiger AN515-58-50EE tích hợp những \"vũ khí\" mới nhất. Bao gồm CPU i5 12500H, VGA RTX 3050 cho hiệu năng xử lý mạnh mẽ. \nLaptop Gaming Acer Nitro 5 Tiger AN515-58-50EE sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.\nAcer Nitro 5 Tiger AN515-58-50EE có hệ thống tản nhiệt gồm 2 quạt tản nhiệt thế hệ mới kết hợp công nghệ Acer CoolBoost™ giúp tăng 10% tốc độ quạt. Giảm nhiệt độ CPU/GPU thêm 9%. Phần mềm Nitro Sense chủ động theo dõi nhiệt độ, điều chỉnh tốc độ quạt. So với phiên bản trước khả năng tản nhiệt tốt hơn 25%. \nThiết kế tản nhiệt mới với 4 khe hút gió/thoát nhiệt thông minh.','Nitro/a3.jpg',100),(9,3,'Laptop Gaming Acer Predator Triton 500 SE PT516-52S-91XH',103990000,'Acer Predator Triton 500 SE PT516-52s-91XH là một máy tính xách tay \"phiên bản đặc biệt\". Được thiết kế cho những game thủ muốn có một cỗ máy dư chiến các trò chơi AAA hay làm việc cả ngày. CPU 12900H + RTX 3080Ti + SSD 2TB + Ram 32GB.\nDù dư sức mạnh chiến game nhưng Laptop Gaming Acer Predator Triton 500 SE PT516-52s-91XH chỉ mỏng 19,9 mm (0,78 in). Thời lượng pin lên tới 12 giờ nhờ công nghệ NVIDIA Advanced Optimus. Game thủ có thể dễ dàng cho nó vào ba lô. Vẻ ngoài bóng bẩy, gọn gàng của máy nhưng nó thậm chí có thể mạnh gấp đôi so với các mẫu laptop khác.\nAcer Predator Triton 500 SE PT516-52s-91XH sử dụng thiết kế làm mát Vortex Flow được trang bị tới 3 quạt tản nhiệt. Quạt AeroBlade™️ 3D thế hệ thứ 5. Khả năng tản nhiệt của Acer Predator Triton 500 SE PT516-52s-91XH có hiệu năng tốt hơn 45% so với hệ thống tản nhiệt thông thường. Khả năng hút gió mạnh hơn vào thân máy, \ntạo ra luồng khí xoáy, nâng cao hiệu quả tản nhiệt khi giảm được 16% lượng nhiệt, 7% độ ồn so với phiên bản cũ.\nNút Turbo được thiết kế tiện lợi đặt ngay trên bàn phím cho phép tăng thêm tốc độ quạt ngay lập tức. Giúp nhiệt độ hệ thống giữ ở mức ổn định đồng thời \"giữ nhiệt\" cho những \ntrận combat đầy hào hứng.','Triton/a1.jpg',100),(10,3,'Laptop Acer Predator Triton 500 PT515 51 78AR',49990000,'Laptop Triton 500 PT515-51-78AR người bạn đồng hành cùng bạn đến mọi nơi. Với trang bị i7 9750H và RTX 2060, chiếc laptop này sẽ cùng bạn chiến mọi tựa game, tăng khả năng sáng tạo của bạn và cùng bạn đạt được nhiều thành công mới.\nVới card màn hình RTX 2060 mới nhất, Triton 500 PT515-51-78AR sẽ cho bạn sức mạnh tuyệt vời và hoàn hảo để chiến tốt mọi game hiện nay.\nĐể làm người giỏi nhất, bạn phải có trang bị tốt nhất. Triton 500 PT515-51-78AR sẽ giúp bạn với hiệu năng tuyệt vời từ CPU i7 9750H.\nSở hữu công nghệ AeroBlade™ 3D thế hệ 4th giúp giữ cho máy ở nhiệt độ mát nhất có thể. Tản nhiệt ở chế độ cao nhưng không gây quá ôn ào cho bạn hoặc người khác.\nTriton 500 PT515-51-78AR sử dụng MaxxAudio® suite để khuếch đại âm thanh và giúp bạn có một cảm giác trải nghiệm âm thanh tốt nhất, với Waves Nx™3 sẽ giúp bạn trải nghiệm cảm giác âm thanh 3D đây \nchính là âm thanh của tương lai.','Triton/a2.jpg',100),(11,4,'Laptop Gaming Asus TUF F15 FX506LHB-HN188W',14990000,'Asus TUF F15 FX506LHB-HN188W sẽ thay đổi cách bạn nhìn vào laptop chơi game. \nđược trang bị phần cứng ấn tượng, thiết kế gọn nhưng mạnh mẽ. Trang bị bộ vi xử lý Intel, hỗ trợ ram tối đa 32GB, VGA RTX 20 series, màn hình \nIPS 144Hz với bàn phím có đèn nền RGB. Có bàn phím chuyên dụng chơi game với các phím RGB-backlit. Cụm phím WASD nổi bật và công nghệ Overstroke để thao tác nhanh và chính xác. \nVới màn hình NanoEdge IPS cấp độ tiên tiến, và độ bền được chứng nhận kiểm tra MIL-STD-810G. Laptop Gaming Asus TUF F15 FX506LHB-HN188W mang đến trải nghiệm chơi game phong \nphú mọi lúc mọi nơi!. The Ultimate Force (Lực Lượng Quân Đội Tinh Nhuệ ). Laptop Gaming Asus TUF F15 FX506LHB-HN188W vượt qua hàng loạt các thử nghiệm MIL-STD-810G nghiêm ngặt. Các bài test trong các điều kiện khác nhau bao gồm phơi nhiễm bức xạ mặt trời,\nđộ cao và nhiệt độ cực cao. Laptop Gaming Asus TUF F15 FX506LHB-HN188W được chứng nhận để chịu đựng việc sử dụng hàng ngày. Dù là bạn cố tình hoặc vô tình va chạm hay rơi rớt. \nĐộ bền của chiếc laptop này đã được đẩy tới giới hạn để đảm bảo tốt nhất cho game thủ nóng tính hay cho laptop \"ăn hành\" mỗi khi thua game. \nsở hữu hành trình phím 1.8 mm với 20 triệu lần nhấn, đủ cho nhiều năm làm việc và chơi game. Bàn phím có tính năng RGB-backlighting và được điều khiển thông qua TUF Aura Core\nđể bạn có thể thể hiện phong cách độc đáo của riêng mình.','ROG/a1.jpg',100),(12,4,'Laptop Gaming Asus TUF F17 FX706HF-HN390W',16990000,'Asus TUF F17 FX706HF-HN390W sẽ thay đổi cách bạn nhìn vào laptop chơi game. được trang bị phần cứng ấn tượng, thiết kế gọn nhưng mạnh mẽ. Trang bị bộ vi xử lý Intel, hỗ trợ ram tối đa 32GB, VGA RTX 20 series, màn hình IPS 144Hz với bàn phím có đèn nền RGB. Có bàn phím chuyên dụng chơi game với các phím RGB-backlit. Cụm phím WASD nổi bật và công nghệ Overstroke để thao tác nhanh và chính xác. Với màn hình NanoEdge IPS cấp độ tiên tiến, và độ bền được chứng nhận kiểm tra MIL-STD-810G. Laptop Gaming Asus TUF F17 FX706HF-HN390W mang đến trải nghiệm chơi game phong phú mọi lúc mọi nơi!\nCông nghệ Overstroke và HyperStrike độc quyền đảm bảo việc đánh máy nhanh hơn, chính xác hơn. Lấy cảm hứng từ máy tính để bàn với nhóm phím WASD được thiết kế khác với những phím còn lại. Keycap được thiết kế để không gian phím rộng hơn giúp thao tác giữa các phím dễ và trơn tru hơn.\nCông nghệ HyperCool độc quyền của ASUS bao gồm hệ thống Anti-Dust Cooling. Bạn có thể tùy chỉnh 3 chế độ quạt khác nhau. Đặc biệt công nghệ Fan Overboost đảm bảo nhiệt độ ổn định trong khi chơi game nặng.\nLaptop Gaming Asus TUF F17 FX706HF-HN390W với thiết kế 2 quạt tản nhiệt độc lập để làm mát CPU và GPU riêng biệt. Quạt làm mát cũng được cải thiện bởi nắp hình thang tản nhiệt hơn lên đến 25% với quạt \nthông thường.','TUF/a1.jpg',100),(13,5,'Laptop Gaming Asus ROG Strix G15 G513IH-HN015W',17490000,'Asus ROG Strix G15 G513IH-HN015W với CPU manh mẽ R7 4800H và GPU GeForce RTX™ 3050Ti. Mọi hoạt động từ chơi game tới thao tác đa nhiệm đều nhanh và mượt mà. Chơi game với màn hình siêu nhanh FHD 144Hz. Công nghệ Adaptive-Sync cho tựa game siêu mượt. Hệ thống tản nhiệt cao cấp giữ cho máy luôn mát mẻ dưới những thử thách cam go. Với bất kỳ game nào, bạn đều có thể có được những màn chơi hoàn hảo.\nLaptop Gaming Asus ROG Strix G15 G513IH-HN015W với hiệu suất đáng nể không có tựa games nào có thể làm khó ROG Strix G15. Máy cũng hỗ trợ 2 khe RAM DDR4 3200MHz, max upto 64GB và 2 khe SSD M.2 PCIe.\nAsus ROG Strix G15 G513IH-HN015W với khả năng làm mát đột phá với keo tản nhiệt kim loại lỏng trên CPU. Hệ thống sẽ hoạt động mát hơn keo tản nhiệt gốm truyền thống. Hệ thống tản nhiệt lên đến 6 ống đồng và 4 khe tản nhiệt có kích thước lớn. Nhờ đó, ROG Strix series có thể hoạt động mạnh - mát - êm ái. Độ ồn không quá 45dB ở chế độ turbo, yên tĩnh hơn so với các sản phẩm đối thủ.','TUF/a1.jpg',100),(14,5,'Laptop Gaming ASUS ROG Zephyrus G14 GA401QC-K2199W',24490000,'ASUS ROG Zephyrus G14 GA401QC K2199W CPU Ryzen ™ 7nm . GPU GeForce RTX ™ 30 Series giúp cho trải nghiệm chơi game vượt trội. Thật là bất ngờ với hiệu năng ấn tượng của Zephyrus G14. Chiếc laptop 14 inch mạnh nhất.\nASUS ROG Zephyrus G14 GA401QC K2199W màn hình đạt chuẩn Pantone® Validated cho độ chính xác màu tuyệt vời, với công nghệ Adaptive-Sync cho trải nghiệm chơi game mượt mà.\nASUS ROG Zephyrus G14 GA401QC K2199W năm nay sẽ mát hơn bao giờ hết nhờ vào khả năng làm mát đột phá với keo tản nhiệt kim loại lỏng trên CPU. Dù chỉ là laptop 14 inch nhưng G14 vẫn có đến 2 quạt và 4 khe thoát nhiệt. Song song đó là dán lưới tản nhiệt ở dưới đáy máy cho hiệu suất tản nhiệt hoàn hảo.\n','ROG/a2.jpg',100),(15,6,'Laptop Gaming HP VICTUS 15-fa1139TX 8Y6W3PA',19990000,'Laptop Gaming HP VICTUS 15-fa1139TX 8Y6W3PA đưa các \ndự án sáng tạo của bạn lên một tầm cao mới với NVIDIA Studio. \nKhai phá khả năng tăng tốc của RTX và AI cho các ứng dụng sáng tạo hàng đầu, \ntrạng thái vững vàng, ổn định nhất nhờ trình điều khiển của NVIDIA Studio, \ncũng như nhanh chóng hiện thực hóa ý tưởng sáng tạo với bộ công cụ độc quyền.','Victus/a1.jpg',100),(16,6,'Laptop Gaming HP VICTUS 16-r0128TX 8C5N3PA',31990000,'Laptop Gaming HP VICTUS 16-r0128TX 8C5N3PA với sự trợ lực của AI, \nNVIDIA Max-Q là một bộ công nghệ nâng cao giúp tối ưu hóa hệ thống để mang lại hiệu quả cao nhất. \nNhờ có NVIDIA Max-Q, các máy tính xách tay chạy nhanh như chớp mà vẫn êm, mỏng và có thời lượng pin “khủng”.​','Victus/a2.jpg',100),(17,6,'Laptop Gaming HP VICTUS 16-r0130TX 8C5N5PA',27990000,'Laptop Gaming HP VICTUS 16-r0130TX 8C5N5PA với công nghệ DLSS 2 \ndo AI trợ lực tạo nên bước nhảy vọt về hiệu suất cho game cũng như ứng dụng sáng tạo \nvà tính năng dò tia xuyên suốt tái hiện thế giới ảo theo cách cực kỳ chân thực.​','Victus/a3.jpg',100),(18,6,'Laptop Gaming HP VICTUS 16-s0077AX 8C5N6PA',28490000,'Bạn có thể điều chỉnh rất nhiều yếu tố khi chơi game để thể hiện cá tính của mình, \nchẳng hạn như trang phục trong game, ngôi nhà kỹ thuật số hoàn hảo hằng mơ ước \nhay tạo hình nhân vật mất hàng giờ tỉ mẩn. Nhưng chỉ game mới có những lựa chọn này hay sao? \nChúng tôi không nghĩ vậy. Chính vì thế, chúng tôi trang bị cho \nLaptop Gaming HP VICTUS 16-s0077AX 8C5N6PA mới của mình bộ bàn phím RGB có thể tùy chỉnh. ','Victus/a4.jpg',100),(19,7,'Laptop Gaming HP Omen 16 n0087AX 7C0T7PA',31990000,'Laptop HP Omen 16 n0087AX 7C0T7PA sở hữu thời lượng pin khủng, \ngiải pháp âm thanh siêu đỉnh của Đan Mạch, màn hình hiển thị cực nhanh cùng bàn phím chơi game đa năng. \nTrải nghiệm âm thanh vô cùng ấn tượng với công nghệ do hãng Bang & Olufsen của Đan Mạch cung cấp. \nHòa mình vào những âm thanh tuyệt vời.','Omen/a1.jpg',100),(20,7,'Laptop Gaming HP Omen 16 n0086AX 7C0T5PA',39990000,'OMEN Gaming Hub hội tụ mọi thứ bạn cần để nâng cao trải nghiệm chơi game của mình. \nTừ việc chơi game giật thưởng, đến kiểm soát từng tùy chọn nhỏ về hiệu suất và ánh sáng \ntrên máy và nhiều tính năng khác nữa. Giờ đây, bạn có thể thoải mái điều khiển mọi trò chơi, mọi trải nghiệm và mọi khoảnh khắc.','Omen/a2.jpg',100),(21,7,'Laptop Gaming HP Omen 16 n0085AX 7C144PA',41990000,'Laptop HP Omen 16 n0085AX 7C144PA sẽ đáp ứng mọi nhu cầu chơi game của bạn. \nĐược trang bị CPU AMD R9 6900HX và VGA NVIDIA® GeForce RTX™ mạnh mẽ \ncùng hệ thống tản nhiệt đã được nâng cấp. Cùng với đó là độ phân giải cao, \nmàn hình nhanh và OMEN Gaming Hub đều có trên sản phẩm này.','Omen/a3.jpg',100),(22,7,'Laptop Gaming HP Omen 16-xf0071AX 8W945PA',62490000,'Trong bất kỳ nơi nào bạn có mặt, Laptop Gaming HP Omen 16-xf0071AX 8W945PA sẽ cung cấp \nsức mạnh và hiệu suất tương đương với máy tính để bàn. \nBạn sẽ có thể thỏa mãn mọi nhu cầu của các trò chơi đòi hỏi tài nguyên cao, không kể bạn đang ở đâu.\nVới bộ xử lý mạnh mẽ Intel Core Ryzen 7 thế hệ mới nhất, \ncard đồ họa RTX 4000 tối ưu và dung lượng bộ nhớ rộng rãi, \nLaptop Gaming HP Omen 16-xf0071AX 8W945PA mang lại trải nghiệm chơi game mượt mà và thú vị, \nđảm bảo rằng bạn sẽ không bao giờ phải lo lắng về việc liệu máy tính có đủ sức mạnh \nđể đáp ứng mọi yêu cầu của trò chơi hay không, bất kể bạn đang ở đâu trên thế giới.\n','Omen/a4.jpg',100),(23,7,'Laptop Gaming HP Omen 16-xf0070AX 8W946PA',68490000,'Trải nghiệm trên màn hình của bạn sẽ trở nên thực sự đặc biệt với chiếc màn hình rộng lớn 16.1\", \nLaptop Gaming HP Omen 16-xf0070AX 8W946PA cho phép bạn ngập tràn trong thế giới sống động của hình ảnh và video. \nVới viền mỏng 3 cạnh, không gian màn hình được tối ưu hóa để mang đến trải nghiệm hấp dẫn hơn bao giờ hết.\nĐộ phân giải cao đảm bảo rõ nét tối đa, \ncòn tính năng chống chói giúp bảo vệ mắt của bạn khỏi ánh sáng mặt trời và đèn chiếu sáng mạnh. \nCho dù bạn đang làm việc hay giải trí, màn hình 16.1\" siêu mượt mà này \nsẽ đảm bảo bạn có trải nghiệm tuyệt vời mà không bị mệt mỏi và không bị ánh sáng gây chói làm phiền.','Omen/a5.jpg',100),(24,8,'Laptop Dell Inspiron 15 3520 P112F007 71003262',19990000,'Tùy theo nhiều nhu cầu khác nhau mà có nhiều dòng sản phẩm laptop Dell khác nhau. Nếu bạn đang tìm một chiếc laptop phục vụ cho nhu cầu học tập và làm việc hằng ngày thì Dell Inspiron 15 3520 P112F007 71003262 sẽ là người bạn đồng hành cực tốt. cấu hình mạnh mẽ trên thiết kế đơn giản mang lại hiệu năng giải quyết mọi công việc mượt mà, nhanh chóng. ','Inspiron/a1.jpg',100),(25,8,'Laptop Dell Inspiron 15 3520 i3U082W11BLU',12490000,'Laptop Dell Inspiron 15 được hãng sản xuất vô cùng đơn giản nhưng lại vô cùng bền bỉ. Với những người đã sở hữu cho mình những con laptop từ Dell chắc hẳn không quá xa lạ về độ bền mà nó mang lại. Vỏ máy bao phủ bởi một lớp màu đen đơn giản nhưng không hề đơn điệu với phần logo Dell in chìm chính giữa bề mặt máy. Nếu công việc của bạn thường xuyên phải di chuyển thì đừng lo khi trọng lượng siêu nhẹ của máy sẽ dễ dàng đồng hành cùng bạn đi đến bất cứ đâu. ​','Inspiron/a2.jpg',100),(26,8,'Laptop Dell Inspiron 14 N5420 i5U085W11SLU',20990000,'Là một trong những cái tên quen thuộc trong làng laptop mỏng nhẹ, cao cấp, Dell lại cho ra mắt một sản phẩm mới thuộc phân khúc laptop văn phòng. Sở hữu ngoại hình thu hút và hiệu năng ổn định, Dell Inspiron 14 5420 i5U085W11SLU hứa hẹn trở thành cái tên hot mới cho người dùng trong thời gian tới.​','Inspiron/a3.jpg',100),(27,9,'Laptop Dell Vostro 3530 V5I5267W1 Gray',16990000,'Dell Vostro 3530 V5I3001W1 Gray là dòng laptop sinh viên sở hữu thiết kế mỏng nhẹ với nhiều tính năng nổi bật giúp bạn nâng cao thành tích học tập, tăng thêm trải nghiệm với các tựa game mình yêu thích. Đặc biệt, với trọng lượng chưa đến 2kg bạn hoàn toàn có thể cất gọn trong balo mang đi đến bất kỳ đâu.','Vostro/a1.jpg',100),(28,9,'Laptop Dell Vostro 3510 7T2YC2',17490000,'Laptop Dell Vostro 3510 7T2YC2 sở hữuu thiết kế trung tính, sang trọng phù hợp với sở thích và thị hiếu của học sinh sinh viên và người dùng văn phòng. Khoác lớp màu đen sang trọng vốn có trên những chiếc laptop văn phòng cùng cân nặng chỉ 1.69 kg, Dell Vostro 3510 7T2YC2 vô cùng phù hợp cho những công việc văn phòng đòi hỏi khả năng di động cao.','Vostro/a2.jpg',100),(29,9,'Laptop Dell Vostro 3430 71011900',17990000,'Dell Vostro 3430 71011900 sở hữu vóc dáng gọn nhẹ chỉ ~1.46 Kg màu xám titan hiện đại và độc đáo. Vỏ máy tính được làm bằng nhựa cao cấp cùng nắp lưng kim loại làm nên sự cứng cáp cho sản phẩm. Phần đế nâng tự động khi mở nắp máy tạo một độ nghiêng nhất định cho tư thế làm việc tốt hơn. Kích thước của laptop Dell Vostro 3430 khoảng 323 x 220 x 19 mm thể hiện sự nhỏ và gọn giúp người dùng có thể đặt lên bàn làm việc thoải mái hơn hoặc thậm chí mang đi bất kỳ đâu cũng dễ dàng hơn.','Vostro/a3.jpg',100),(30,10,'Laptop Gaming MSI Katana GF66 11UC 676VN',23000000,'Sử dụng vi xử lí Intel® Core™ i5 thế hệ 11 mới nhất, \nhiệu năng cao hơn tối đa tới 40% so với thế hệ trước. \nMạnh mẽ hơn bao giờ hết với vi xử lí 6 nhân, \nxung turbo hai nhân tối đa tới 4.5GHz giúp phát huy hiệu suất tối đa trong việc xử lí game, \nphần mềm công việc và tác vụ đa nhiệm.','Katana/a1.jpg',100),(31,10,'Laptop Gaming MSI Katana GF66 11UD-696VN',22990000,'Laptop MSI Gaming Katana GF66 11UD-696VN có ngoại hình vô cùng độc đáo, \ncó tông màu đen làm chủ đạo và vì là dòng máy gaming \nnên có trọng lượng nặng hơn so với máy bình thường kèm theo đó là một hiệu năng vượt bậc hơn hẳn.​','Katana/a2.jpg',100),(32,10,'Laptop Gaming MSI Katana 15 B13VGK 1211VN',38490000,'Bảo vệ danh dự và đánh bại kẻ thù, \nđánh thức sức mạnh bên trong bạn và kế thừa ý chí của Rồng. \nTrong tay bạn là \"thanh kiếm\" của Rồng, \nchứa đựng sức mạnh cổ xưa và được khắc bằng những chữ rune của gió. \nHạ gục bất kỳ kẻ thù nào cản đường bạn bằng thanh kiếm huyền thoại Laptop Gaming MSI Katana 15 B13VGK 1211VN.','Katana/a3.jpg',100),(33,11,'Laptop Gaming MSI Cyborg 15 A12UCX 281VN',16790000,'Phase tiếp theo của dòng laptop gaming mỏng nhẹ, \nLaptop Gaming MSI Cyborg 15 A12UCX 281VN \nthâm nhập vào thế giới trò chơi theo phong cách Cyberpunk: linh hoạt, thời trang, fiction. \nĐánh bại đối thủ của bạn bằng phần cứng mang tính đột phá. Kết hợp thiết kế bên ngoài được cơ khí hóa, \nLaptop Gaming MSI Cyborg 15 A12UCX 281VN được chế tạo để trở thành máy tính xách tay chơi game tiên phong, đột phá nhất.','Cyborg/a1.jpg',100),(34,11,'Laptop Gaming MSI Cyborg 15 A12UC 621VN',17990000,'Laptop Gaming MSI Cyborg 15 A12UC 621VN được thiết kế \nvới vài bộ phận trong mờ trên bàn phím và khung máy cho phép bạn nhìn xuyên bên trong. \nVới các chi tiết và ngôn ngữ giống như điều khiển học từ trên xuống dưới, Cyborg 15 mô phỏng lại những gì tương lai đòi hỏi.​','Cyborg/a2.jpg',100),(35,11,'Laptop Gaming MSI Cyborg 15 A12VF 267VN',25890000,'Laptop Gaming MSI Cyborg 15 A12VF 267VN trang bị GPU NVIDIA® GeForce RTX™ 40 Series \ncó tốc độ vượt trội dành cho các game thủ và người sáng tạo. \nChúng được hỗ trợ bởi kiến trúc NVIDIA Ada Lovelace cực kỳ hiệu quả, \nmang lại bước nhảy vọt về cả hiệu suất và đồ họa do AI hỗ trợ. \nTrải nghiệm thế giới ảo sống động như thật với tính năng dò tia và chơi game FPS cực cao với độ trễ thấp nhất.','Cyborg/a3.jpg',100),(36,4,'Laptop Gaming Asus TUF F15 FX507ZC4-HN229W',20490000,'Asus TUF F15 FX507ZC4-HN229W kết hợp bộ xử lý Intel® Core ™ thế hệ thứ 12 Hoặc AMD Ryzen™ 6000 Series. GPU Nvidia GeForce RTX ™ 30 Series với TGP tối đa 140W và MUX switch. Thiết kế khung máy nhỏ hơn 4,5%, nâng bàn di chuột lớn hơn 26%. Hỗ trợ màn hình QHD 165Hz hoặc FHD 300Hz với Adaptive-Sync và tỷ lệ màn hình so với thân máy là 80%. Tích hợp thêm cổng Thunderbolt ™ 4 và. USB Type-C, và pin lên đến 90Wh. Laptop Gaming Asus TUF F15 FX507ZC4-HN229W khung TUF Gaming đã được thiết kế lại cho năm 2022 và nhỏ hơn 4,5% so với các mẫu năm ngoái. Màn hình NanoEdge mới với viền mỏng chỉ 6.5mm. Logo TUF cũng đã được tạo hình lại, với cả phiên bản chạm nổi và điêu khắc bằng laser.','TUF/a3.jpg',100),(37,5,'Laptop Gaming Asus ROG Strix G16 G614JV-N4261W',45900000,'Làm chủ cuộc chơi với Asus ROG Strix G16 G614JV-N4261W siêu mạnh mẽ, được trang bị bộ vi xử lý lên đến Intel® Core™ i9-13980HX thế hệ 13 mới nhất cùng đồ họa lên đến NVIDIA® GeForce RTX™ 4090 mang đến hiệu năng vượt trội, thoải mái chiến các tựa game nặng hay các công việc sáng tạo đòi hỏi khả năng đồ họa cao cấp. Tự tin chiến game với sức mạnh gaming vượt trội trên Asus ROG Strix G16 G614JV-N4261W khi được trang bị bộ vi xử lý lên đến Intel® Core™ i9-13980HX thế hệ thứ 13 và GPU lên đến NVIDIA GeForce RTX 4090 có TGP tối đa 175W với Dynamic Boost thống trị đối thủ trong tất cả tựa game mới nhất.','ROG/a3.jpg',100),(38,3,'Laptop Acer Predator Triton 300 SE PT314-52s-747P',25900000,'Acer Predator Triton 300 SE là một chiếc laptop/máy tính xách tay thuộc phân khúc laptop gaming cao cấp, nổi tiếng với thiết kế vỏ nhôm nguyên khối, siêu bền bỉ, gọn nhẹ, cùng việc được trang bị vi xử lý và card đồ họa cao cấp từ Intel và NVIDIA cũng như hệ thống tản nhiệt tiên tiến. “Nhỏ nhưng có võ” là câu nói dành cho chiếc laptop Acer core i7 - Acer Predator này với cấu hình và hiệu năng mạnh mẽ, chiến Game không kém cạnh các mã máy gaming có thiết kế hầm hố hơn. Chiếc laptop Acer Triton 300 SE chắc chắn sẽ khiến những người dùng khó tính nhất cũng phải hài lòng. - Là chiếc laptop gaming DUY NHẤT trong tầm giá sở hữu chip Intel Core i7 gen 12 cùng card đồ họa rời RTX 3060 thỏa sức chiến game, đồ họa 3D chuyên nghiệp siêu mượt.','Triton/a3.jpg',100),(39,2,'Laptop Gaming Acer Nitro 16 Phoenix AN16-41-R50Z',25900000,'Acer Nitro 16 Phoenix AN16-41-R50Z mang đến cho bạn toàn bộ công nghệ mới nhất, vì vậy bạn có thể trò chuyện, duyệt web, stream, chỉnh sửa, ghi âm và chơi game mà không bỏ lỡ nhịp nào.Laptop Gaming Acer Nitro 16 Phoenix AN16-41-R50Z đẩy mạnh các giới hạn với bộ xử lý AMD Thế hệ thứ 7 với kiến trúc kết hợp hiệu suất mới. Đạt hiệu suất cao nhất với SSD M.2 PCIe THẾ HỆ THỨ 4 và RAM DDR5 lên đến 32GB.Được trang bị GPU NVIDIA® GeForce RTX™ 40 có tốc độ vượt trội dành cho các game thủ và người sáng tạo. Chúng được trang bị kiến trúc NVIDIA Ada Lovelace cực kỳ hiệu quả, mang lại bước nhảy vọt về cả hiệu suất và đồ họa do AI hỗ trợ.','Nitro/a4.jpg',100),(40,1,'Laptop Gaming Acer Nitro 16 Phoenix AN16-41-R50W',20900000,'Acer Nitro 16 Phoenix AN16-41-R50Z mang đến cho bạn toàn bộ công nghệ mới nhất, vì vậy bạn có thể trò chuyện, duyệt web, stream, chỉnh sửa, ghi âm và chơi game mà không bỏ lỡ nhịp nào.Laptop Gaming Acer Nitro 16 Phoenix AN16-41-R50Z đẩy mạnh các giới hạn với bộ xử lý AMD Thế hệ thứ 7 với kiến trúc kết hợp hiệu suất mới. Đạt hiệu suất cao nhất với SSD M.2 PCIe THẾ HỆ THỨ 4 và RAM DDR5 lên đến 32GB.Được trang bị GPU NVIDIA® GeForce RTX™ 40 có tốc độ vượt trội dành cho các game thủ và người sáng tạo. Chúng được trang bị kiến trúc NVIDIA Ada Lovelace cực kỳ hiệu quả, mang lại bước nhảy vọt về cả hiệu suất và đồ họa do AI hỗ trợ.','Nitro/a4.jpg',100),(123,1,'Acer ',10000000,'ÄfÄ','uploads/1702308672327.jpg',56),(1234,1,'Acer ',10000000,'fffrrr','uploads/1702310698337.jpg',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `providerID` int NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `icon` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`providerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Acer','acer.png'),(2,'Asus','asus.png'),(3,'HP','hp.png'),(4,'Dell','dell.png'),(5,'MSI','msi.png');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `productID` int NOT NULL,
  `userID` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`productID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `productID` int NOT NULL,
  `CPU` varchar(1000) DEFAULT NULL,
  `VGA` varchar(1000) DEFAULT NULL,
  `SSD` varchar(1000) DEFAULT NULL,
  `RAM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,'AMD Ryzen 5 5500U','Geforce GTX 1650 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(2,'AMD Ryzen 5 5625U','Geforce RTX 3050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(3,'Intel® Core™ i5-13420H','NVIDIA® GeForce RTX™ 2050 4GB GDDR6','512GB SSD PCIe Gen4, 16 Gb/s, NVMe (nâng cấp tối đa 2T SSD)','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(4,'Intel Core i5 12450H','Geforce GTX 2050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(5,'Intel Core i5 12450H','Geforce GTX 3050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 16GB (2x 8GB) 3200MHz; 2 slots, up to 32GB'),(6,'Intel Core i5 11400H','Geforce RTX 3050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(7,'AMD Ryzen 5 5600H','Geforce GTX 1650 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(8,'Intel Core i5 12450H','Geforce RTX 3050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(9,'Intel Core i9 12900H','Geforce RTX 3080Ti 16GB Mux Swicth','2TB (1TB x 2) PCIe NVMe SED SSD RAID','DDR5 32GB Onboard – non upgrade'),(10,'Intel Core i7 9750H','NVidia RTX 2060 6GB','SSD NVMe 1TB','DDR4 16GB (2x 8GB) 3200MHz; 2 slots, up to 32GB'),(11,'Intel Core i5 10300H','Geforce GTX 1650 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(12,'Intel Core i5 11400H','Geforce RTX 2050 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 16GB (2 x 8GB) 3200MHz; 2 slots, up to 32GB'),(13,'AMD Ryzen 7 4800H','Geforce GTX 1650 4GB','512GB SSD NVMe M.2 PCIe Gen 3 x 4','DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB'),(14,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `phone_number` varchar(1000) DEFAULT NULL,
  `is_admin` tinyint DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','admin','123456','0123456789',1),(10,'tan@gmail.com','tan','1234567',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12  9:05:26
