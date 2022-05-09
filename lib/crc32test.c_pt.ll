; ModuleID = '/llk/IR_all_yes/lib/crc32test.c_pt.bc'
source_filename = "../lib/crc32test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crc_test = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_crc32test__160_847_crc32test_init6 = internal global ptr @crc32test_init, section ".initcall6.init", align 4
@__exitcall_crc32_exit = internal global ptr @crc32_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author161 = internal constant [52 x i8] c"crc32test.author=Matt Domsch <Matt_Domsch@dell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description162 = internal constant [37 x i8] c"crc32test.description=CRC32 selftest\00", section ".modinfo", align 1
@__UNIQUE_ID_file163 = internal constant [29 x i8] c"crc32test.file=lib/crc32test\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [22 x i8] c"crc32test.license=GPL\00", section ".modinfo", align 1
@crc32_test.crc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test = internal unnamed_addr constant [100 x %struct.crc_test] [%struct.crc_test { i32 1733030173, i32 56, i32 1346, i32 183948390, i32 -659102527, i32 -152486548 }, %struct.crc_test { i32 902197958, i32 58, i32 426, i32 -959193158, i32 682292141, i32 266939082 }, %struct.crc_test { i32 1231921806, i32 57, i32 1455, i32 -650942961, i32 1566042143, i32 1390537656 }, %struct.crc_test { i32 162117902, i32 39, i32 504, i32 -1268785145, i32 -195048806, i32 127446938 }, %struct.crc_test { i32 -594025047, i32 37, i32 950, i32 -132500126, i32 -535663710, i32 418066770 }, %struct.crc_test { i32 1204128000, i32 10, i32 185, i32 -1906774833, i32 -206583917, i32 -804452153 }, %struct.crc_test { i32 690315752, i32 12, i32 1027, i32 -1564833105, i32 192510701, i32 -1951832388 }, %struct.crc_test { i32 1095776246, i32 3, i32 1654, i32 -1585622296, i32 2131746613, i32 299275426 }, %struct.crc_test { i32 879159047, i32 38, i32 66, i32 629348798, i32 1975813282, i32 1790124173 }, %struct.crc_test { i32 -1345247205, i32 35, i32 750, i32 1143532280, i32 113749264, i32 -1169816635 }, %struct.crc_test { i32 -746226920, i32 40, i32 1186, i32 1547896865, i32 -1335707701, i32 -435741585 }, %struct.crc_test { i32 495082127, i32 43, i32 1291, i32 -758882548, i32 -695847712, i32 396280586 }, %struct.crc_test { i32 1345577916, i32 11, i32 120, i32 -1544929005, i32 -1402129925, i32 151240376 }, %struct.crc_test { i32 -1796080802, i32 15, i32 930, i32 -67350351, i32 1023299821, i32 1786557690 }, %struct.crc_test { i32 -912196076, i32 9, i32 1139, i32 1605769364, i32 -2029582959, i32 -615294975 }, %struct.crc_test { i32 -2002766671, i32 28, i32 1453, i32 -1045340077, i32 1190747239, i32 -1832987241 }, %struct.crc_test { i32 -252239303, i32 32, i32 621, i32 -1493542669, i32 -121454115, i32 422199067 }, %struct.crc_test { i32 -870275613, i32 59, i32 1658, i32 2000689242, i32 814454682, i32 -860165094 }, %struct.crc_test { i32 -833053547, i32 43, i32 1601, i32 -799676025, i32 1084940891, i32 2125180493 }, %struct.crc_test { i32 2028849285, i32 53, i32 1470, i32 -1550012085, i32 56298783, i32 684140930 }, %struct.crc_test { i32 -1656708233, i32 59, i32 56, i32 524799186, i32 427801757, i32 -1009955560 }, %struct.crc_test { i32 1883049473, i32 60, i32 1777, i32 -2005705092, i32 -19563430, i32 -1129778969 }, %struct.crc_test { i32 2003563781, i32 15, i32 1458, i32 1556413441, i32 -215024745, i32 1899978931 }, %struct.crc_test { i32 1245608020, i32 39, i32 1208, i32 -1919796094, i32 213890210, i32 -338653227 }, %struct.crc_test { i32 546403037, i32 59, i32 854, i32 -1197564885, i32 -679050952, i32 1681943641 }, %struct.crc_test { i32 1000655963, i32 47, i32 515, i32 -451542615, i32 1529483314, i32 1948354830 }, %struct.crc_test { i32 -60624233, i32 0, i32 121, i32 1906893218, i32 1569220703, i32 -382437885 }, %struct.crc_test { i32 1680345995, i32 22, i32 1963, i32 262644492, i32 -633715361, i32 468684896 }, %struct.crc_test { i32 -1747094965, i32 51, i32 1965, i32 1468576500, i32 -684561102, i32 879886450 }, %struct.crc_test { i32 1631144786, i32 53, i32 1393, i32 -966449679, i32 -893485073, i32 1211174745 }, %struct.crc_test { i32 699726591, i32 36, i32 110, i32 -904694498, i32 -1724495648, i32 2017083923 }, %struct.crc_test { i32 700428764, i32 11, i32 580, i32 1131168759, i32 1117747801, i32 -1634796223 }, %struct.crc_test { i32 -2035379381, i32 53, i32 260, i32 123792531, i32 -1661480716, i32 -63097691 }, %struct.crc_test { i32 -993983922, i32 46, i32 1713, i32 1695982572, i32 422715292, i32 396700386 }, %struct.crc_test { i32 847751178, i32 38, i32 1174, i32 187006641, i32 1968094545, i32 -2006084774 }, %struct.crc_test { i32 -1529134530, i32 35, i32 1117, i32 -1690671396, i32 -2025939183, i32 -357650766 }, %struct.crc_test { i32 2047899871, i32 21, i32 330, i32 -1943763771, i32 1784841817, i32 -1903162805 }, %struct.crc_test { i32 1615379803, i32 6, i32 106, i32 -1988217511, i32 -1399234129, i32 -683253071 }, %struct.crc_test { i32 -654710240, i32 61, i32 631, i32 1626050651, i32 -315969639, i32 -764980550 }, %struct.crc_test { i32 -362888268, i32 42, i32 1278, i32 -2036767268, i32 1814004539, i32 -1960850078 }, %struct.crc_test { i32 771424349, i32 22, i32 837, i32 1782255998, i32 -262240991, i32 -180141314 }, %struct.crc_test { i32 1512131294, i32 32, i32 1462, i32 1182757054, i32 -886911789, i32 1536539016 }, %struct.crc_test { i32 -257188662, i32 50, i32 1301, i32 -316523021, i32 2134831133, i32 772896446 }, %struct.crc_test { i32 -1850456839, i32 46, i32 2040, i32 -2065061501, i32 1450603887, i32 1712457030 }, %struct.crc_test { i32 459091419, i32 46, i32 300, i32 -1167881140, i32 1061291131, i32 -229202484 }, %struct.crc_test { i32 -668675653, i32 58, i32 1973, i32 1653105979, i32 977190560, i32 1257364841 }, %struct.crc_test { i32 74455052, i32 52, i32 496, i32 -1654947626, i32 1038123413, i32 1458610250 }, %struct.crc_test { i32 -5621185, i32 54, i32 665, i32 -207082824, i32 1407238461, i32 1962325682 }, %struct.crc_test { i32 1678168043, i32 35, i32 1536, i32 -1457473304, i32 -454906636, i32 140071421 }, %struct.crc_test { i32 -1303729608, i32 62, i32 1185, i32 1702675240, i32 1350021827, i32 -967604245 }, %struct.crc_test { i32 1488104316, i32 57, i32 692, i32 974646910, i32 -1647626685, i32 480847227 }, %struct.crc_test { i32 1035491696, i32 6, i32 694, i32 -1792636071, i32 -1182716912, i32 -48665226 }, %struct.crc_test { i32 -2055720763, i32 3, i32 1424, i32 1324628437, i32 -264104419, i32 1593344825 }, %struct.crc_test { i32 -503522952, i32 62, i32 2008, i32 -1366456679, i32 -838197515, i32 741807321 }, %struct.crc_test { i32 -1182619800, i32 22, i32 1760, i32 1660605407, i32 1602881147, i32 1482122568 }, %struct.crc_test { i32 492313832, i32 30, i32 1419, i32 -252323245, i32 652451566, i32 -42182690 }, %struct.crc_test { i32 609644955, i32 37, i32 1283, i32 1117170788, i32 -720483308, i32 -704717479 }, %struct.crc_test { i32 -85534478, i32 0, i32 1373, i32 92266286, i32 707868954, i32 482587003 }, %struct.crc_test { i32 -878171933, i32 57, i32 718, i32 -470670511, i32 -1895790725, i32 655289715 }, %struct.crc_test { i32 332552530, i32 10, i32 1837, i32 1993651404, i32 1589018307, i32 -1846756591 }, %struct.crc_test { i32 54705727, i32 21, i32 1433, i32 -327820815, i32 -1655887834, i32 99454220 }, %struct.crc_test { i32 -358398752, i32 20, i32 1240, i32 1923402113, i32 543484422, i32 185183579 }, %struct.crc_test { i32 -1145757663, i32 59, i32 626, i32 78617084, i32 -1358680779, i32 -120253957 }, %struct.crc_test { i32 -1234991908, i32 29, i32 2044, i32 -681406186, i32 2016139265, i32 1524118220 }, %struct.crc_test { i32 1634468278, i32 34, i32 712, i32 1528671024, i32 2017257426, i32 303354262 }, %struct.crc_test { i32 -835986771, i32 22, i32 1578, i32 -1826277944, i32 1057133165, i32 1464279434 }, %struct.crc_test { i32 16680151, i32 5, i32 517, i32 -2062659414, i32 1966957724, i32 -561048354 }, %struct.crc_test { i32 -1094857908, i32 6, i32 1373, i32 -1096140894, i32 764190394, i32 895727545 }, %struct.crc_test { i32 -659447766, i32 16, i32 903, i32 1343738620, i32 1345667493, i32 118781392 }, %struct.crc_test { i32 999738066, i32 54, i32 839, i32 488862382, i32 -1838360309, i32 1422368096 }, %struct.crc_test { i32 -917758249, i32 5, i32 907, i32 -1633690846, i32 340431224, i32 1280569062 }, %struct.crc_test { i32 447563086, i32 37, i32 690, i32 -1007275684, i32 1551513011, i32 269711932 }, %struct.crc_test { i32 -1526806106, i32 0, i32 1750, i32 -1866575744, i32 -1542425083, i32 -1432523661 }, %struct.crc_test { i32 465465826, i32 31, i32 765, i32 1313885243, i32 676121329, i32 -1237507097 }, %struct.crc_test { i32 1107412964, i32 2, i32 695, i32 2015552505, i32 214504105, i32 2136205775 }, %struct.crc_test { i32 603839638, i32 3, i32 1575, i32 -1976020699, i32 125206136, i32 331468163 }, %struct.crc_test { i32 -668229028, i32 22, i32 1598, i32 -1729882998, i32 674443465, i32 1241471079 }, %struct.crc_test { i32 2020548658, i32 45, i32 1551, i32 -234790902, i32 -178143283, i32 -2073562607 }, %struct.crc_test { i32 -21082593, i32 42, i32 1266, i32 -1780147871, i32 -41886549, i32 1066828722 }, %struct.crc_test { i32 443419193, i32 8, i32 1650, i32 -1963539803, i32 2027783371, i32 1990457460 }, %struct.crc_test { i32 1442843320, i32 14, i32 229, i32 918211471, i32 586030967, i32 -2042925009 }, %struct.crc_test { i32 1192754700, i32 0, i32 1772, i32 -2076576958, i32 1552810970, i32 -596879105 }, %struct.crc_test { i32 -707406194, i32 60, i32 931, i32 1191178371, i32 394074937, i32 102943893 }, %struct.crc_test { i32 -1034037562, i32 36, i32 1728, i32 1558941364, i32 -1993667306, i32 -397015603 }, %struct.crc_test { i32 -374271232, i32 35, i32 1667, i32 128308634, i32 1818898952, i32 836394758 }, %struct.crc_test { i32 -1781716898, i32 1, i32 71, i32 2067415912, i32 33734782, i32 -1577916540 }, %struct.crc_test { i32 -651929051, i32 30, i32 934, i32 -751036351, i32 423018709, i32 -1334000106 }, %struct.crc_test { i32 271743451, i32 6, i32 923, i32 -905332576, i32 2010523794, i32 -1080804500 }, %struct.crc_test { i32 481964402, i32 39, i32 456, i32 -885558892, i32 -337214757, i32 738307868 }, %struct.crc_test { i32 -1889454279, i32 12, i32 479, i32 -1263485817, i32 1997585731, i32 266728813 }, %struct.crc_test { i32 476752141, i32 27, i32 1340, i32 1884656197, i32 -629631828, i32 -124503251 }, %struct.crc_test { i32 -1430365293, i32 61, i32 1813, i32 -843103494, i32 205232615, i32 -455568782 }, %struct.crc_test { i32 -245510088, i32 6, i32 1755, i32 1846561514, i32 -1923520526, i32 2083482555 }, %struct.crc_test { i32 1481495708, i32 32, i32 1980, i32 917950422, i32 -1387387982, i32 -1413531509 }, %struct.crc_test { i32 1569494278, i32 32, i32 1136, i32 1281505166, i32 836314688, i32 499785550 }, %struct.crc_test { i32 -1207101520, i32 50, i32 838, i32 581286792, i32 -1702967137, i32 1545014819 }, %struct.crc_test { i32 -621782738, i32 35, i32 1968, i32 1017855897, i32 -1692410471, i32 -1058417038 }, %struct.crc_test { i32 1200868485, i32 13, i32 1798, i32 -399637258, i32 -314722633, i32 -1047798650 }, %struct.crc_test { i32 -2098465202, i32 9, i32 1987, i32 1775603881, i32 -1627749223, i32 -1468728099 }, %struct.crc_test { i32 -1316355303, i32 38, i32 2011, i32 486116812, i32 -1884705430, i32 -1648313528 }], section ".init.rodata", align 4
@test_buf = internal constant [4096 x i8] c"[\85!\CB\09h}0\C7i\D70\92\DEY\E4\C9n\8B\DB\98k\AA`\A8\B5\BCl\A9\B1[,\EA\B4\92j?y\91\E4\E9pQ\8C\7F\95o\1AV\A1\\'\03g\9F:\E21\11)k\98\FC\C4S$\C5\8B\CEG\B2\B92\CB\C1\D0\03WN\D4\E9<\A1c\CF\12\0E\CA\E1\13\D1\93\A6\88\\a[\BB\F0\19F\B4\CF\9E\B6kL:\CF`\F9z\8D\07c\DB@\E9\0Bo\AD\97\F1\ED\D0\1E&\FD\BF\B7\C8\04\94\F8\8B\8C\F1\ABz\D4\DD\F3\E8\88\C3\ED\17\8A\9B@\0DSb\12\03_\1B52\1F\B4{\93x\0D\DB\CE\A4\C0G\D5\BFh\E8]t\8F\8Eu\1C\B2O\9A`\D1\BE\10\F4\\\A1S\09\A5\E0\09T\85\\\DC\07\E7!i{\8A\FD\90\F1\22\D0\B46(\E6\B8\0F9\DE\C8\F3\86`4\D2^\DF\FD\CF\0F\A9e\F0\D5M\96@\E3\DF?\95Z9\19\93\F4u\CE\22\00\1C\93\E2\03f\F4\93s\86\81\8E)DH\86a|H\A3C\D2\9C\8D\D4\95\DD\E1\22\89:@L\1B\8A\04\A8\09i\8B\EA\C6U\8EW\E6d5\F0\C7\16\9F]^\86@F\BB\E5E\88\FE\C9c\15\FB\F5\BDqa\EB{xp\071\03\9F\B2\C8\A7\ABG\FD\DF\A0xr\A4*\E4\B6\BA\C0\1E\86q\E6=\187p\E6\FF\E0\BC\0B\22\A0\1F\D3\ED\A2U9\AB\A8\13s|?\B2\D6\19\AC\FF\99\ED\E8\E6\A6\22\E3\9C\F10\DC\01\0AV\FA\E4\C9\99\DD\A8\D8\DA5Qs\B4@\86\85\DB\\\D5\85\80\14\9C\FD\98\A9\82\C57\FF2]\D0\0B\FA\DC\04^\09\D2\CA\17K\1A\8E\15\E1\CCNR\885\BDH\FE\15\A0\91\FD~l\0E]y\1B\81y\D2\094p=\81\EC\F6$\BB\FB\F1{\DFT\EA\80\9B\C7\99\9E\BD\16x\12S^\01\A7N\BDg\E1\9BL\0EaE\97\D2\F0\0F\FE\15\08\B7\11L\E7\FF\81S\FF\91%8~@\94\E5\E0\AD\E6\D9y\B6\92\C9\FC\DE\C3\1A#\BB\DD\C8Q\0C:r\FAso\B7\EEa9\03\01?\7F\94..\BA:\BB\B4\FAj\17\FE\EA\EF^f\97?2=\D7>\B1\F1l\14L\FD7\D38\80\FB\DE\A6$\1E\C8\CA\7F:\93\D8\8B\18\13\B2\E5\E4\93\05SO\84f\A7X\\{\86Rm\0D\CE\A40}\B6\18\9F\EB\FF\22\BBr)\B9D\0BH\1E\84q\81\E3ms&\92\B4M*)\B8\1Fr\ED\D0\E1dw\EA\8E\88\0F\EF?\B1;\AD\F9\C9\8B\D0\AC\C6\CC\A9@\CCv\F6;S\B5\88\CB\C87\F1\A2\BA#\15\99\09\CC\E7z;7\F7X\C8F\8C+/N\0E\A6\\\EA\85U\BA\02\0E\0EH\BC\E1\B1\015y\13=\1B\C0Sh\11\E7\95\0F\9D?LG{M\1C\AEP\9B\CB\DD\05\8D\9A\97\FD\8C\EF\0C\1Dgs\A8(6\D5\B6\923@u\0BQ\C3d\BA\1D\C2\CC\EE}T\0F'i\A7'c0)\D9\C8\84\D8\DF\9Fh\8D\04\CA\A6\C5\C7z\\\C8\D1\CBJ\EC\D0\D8 i\C5\17\CDx\C8u#0i\C9\D4\EA\\Ok\86?\8B\FE\EED\C9|\B7\DD>\E5\ECT\03>\AA\82\C6\DF\B28\0E]\B3\88\D9\D3i_\8Fp\8A~\11\D9\1E{8\F1B\1A\C05\F5\C76\85\F5\F7\B8~\C7\EF\18\F1c\D6z\C6\C9\0EMiO\84\EF&A\0C\EC\C7\E0~<g\01Lb\1A o\EEGM\C0\99\13\8D\91J&\D47(\90Xuf+\0A\DF\DA\EE\92%\90b9\9ED\98\AD\C1\88\ED\E4\B4\AF\F5\8C\9BHMV`\97\0FaY\9E\A6'\FE\C1\91\158\B8\0F\AEa}&\13Zs\FF\1C\A3a\04XHUD\11\FE\15\CA\C3\BD\CA\C5\B4@]\1B\7F9\B5\9C5\ECa\1522\B8N@\9F\17\1F\0AM\A9\91\EF\B7\B0\EB\C2\83\9Al\D2yCx^/\E5\DD\1A<E\AB)@:7[o\D7\FCHd<I\FB!\BE\C3\FF\07\FB\17\E9\C9\0CL\\\15\9E\8E\220\0A\DEH\7F\DB\0D\D1+\878\9E\CCZ\01\16\EEuI\0D0\014j\B6\9AZ*\EC\BBH\AC\D3w\83\D8\08\86OH\09)Ay\A1\03\12\C4\CD\90UGft\9A\CCO5\8C\D6\98\EF\EBE\B9\9A&/9\A5pm\FC\B4Q\EE\F4\9C\E78Y\AD\F4\BCF\FFF\8E`\9C\A3`\1D\F8&r\F5r\9Dh\80\04\F6\0B\A1\0A\D5\A7\82:>G\A8Z\DEYO{\07\B3\E9$\19=4\05\EC\F1\ABnd\8F\D3\E6A\86\80p\E3\8D`\9C4%\01\07M\19AN=\\~\A8\F5\CC\D5{\E2}=I\86}\07\B7\10\E35\B8\84mv\AB\17\C68\B4\D3(W\AD\D3\88Z\DA\EA\C8\94\CC7\19\AC\9C\9FK\00\15\C0\C8\CA\1F\15\AA\E0\DB\F9/W\1B$\C7ov)\FB\ED%\0D\C0\FE\BDZ\BF \08Q\05\ECq\A3\BF\EF^\99u\DB<_\9A\8C\BB\19\\\0E\93\19\F8j\BC\F2\12T/\CB(d\88\B3\92\0D\96\D1\A6\E4\1F\F1M\A4\AB\1C\EET\F2\AD)m27\B2\16w\\\DC.T\ECu&\C66\D9\17,\F1z\DCK\F1\E2\D9\95\BA\AC\87\C1\F3\8EX\08\D8\87`\C9\EEj\DE\A4\D2\FC\0D\E56\C4\\R\B3\07Te$\C1\B1\D1\B1S\131y\7F\05v\EB7Y\15+\D1?\AC\08\97\EB\91\98\DFl\09\0D\04\9F\DC;\0E`hG#\15\16\C6\0B5\F8w\A2xP\D4d\223\FF\FB\93qFP9\1B\9C\EAN\8D\0C7\E5\\Q:1\B2\85\84?A\EE\A2\C1\C6\13;T(\D2\187\CCF\9Fj\91=Z\15<\89\A3a\06}.x\BE}@\BA/\95\B1/\87;\8A\BEj\F4\C21t\EE\91\E0#\AA]\7F\DD\F0D\8C\0BY+\FCH:\DF\07\058l\C9\EB\18$h\8DX\98\D31\A3\E4pY\B1!\BE~e}\B8\04\AB\F6\E4\D7\DA\EC\09\8F\DAm$\07\CC)\17\05x\1A\C1\B1\CE\FC\AA-\E7\CC\85\84\84\03*\0C?\A9\F8\FD\84SY\\\F0\D4\09\F0\D2l2\03\B0\A0\8CR\EB#\91\88C\13F\F6\1E\B4\1B\F5\8E:\B5=\00\F6\E5\08=_9\D3!i\BC\03\22:\D2\\\84\F8\15\C4\80\0B\BC)<\F3\95\98\CD\8F5\BC\A5>\FC\D4\13\9E\DEO\CEq\9D\09\AD\F2\80ke\7F\03\00\14|\15\85@mp\EA\DC\B3c5OM\E0\D9\D5<XV#\80\E26\DDu\1D\94\11A\8E\E0\81\8E\CF\E0\E5\F6\DE\D1\E7\04\12y\92+q*y\8B|Dy\160N\F4\F6\9B\B7@\A3Z\A7i>\C1:\04\D0\88\A0;\DD\C6\9E~\1E\1E\8FD\F7sg\1E\1Ax\FAb\F4\A9\A8\C6[\B8\FA\06}^8\1C\9A9\E99\98\22\0B\A7\AC\0B\F3\BC\F1\EB\8C\81\E3H\8A\EDB\C28\CF>\DA\D2\89\8D\9CS\B5/A\01&\84\9C\A3V\F6I\C7\D4\9F\93\1B\96I^\AD\B3\84\1F<\A4\E0\9B\D1\90\BC8l\DD\95M\9D\B1qW-4\E8\B8B\C7\99\03\C7\070e\91U\D5\90p\977h\D4\11\F9\E8\CE\EC\DC4\D5\D3\B7\C4\B8\97\05\92\AD\F8\E26dA\C9\C5AwR\D7,\A5$/\D94\0BG5\A7(\8B\C5\CD\E9F\AC9\94<\10\C6)s\0E\0E]\E0q\03\8Ar\0E&\B0}\84\ED\95#IZE\83E`\11JF1\D4\D8\16T\98X\EDm\CC]\D6Pa\9F\9D\C5>\9D2G\DE\96\E1]\D8\F8\B4io\B9\15\90Wz\F6\AD\B0[\F5\A66\94\FD\84\CE\1C\0FK\D0\C2[kV\EFs\93\0B\C3\EE\D9\CF\D3\A4\22X\CDPne\F4\E9\B7q\AFK\B3\B6/\0F\0E;\C9\85\14\F5\17\E8z:\BF_^\F8\18H\A6r\AB\06\95\E9\C8\A7\F42D\04\0C\84\98s\E3\89\8D_~JB\8F\C5(\B1\82\EF\1C\971;M\E0\0E\10\10\97\93Ix/\0D\86\8B\A1S\A9\81 y\E7\07w\B6\AC^\D2\05\CD\E9\DB\8A\94\82\8A#\B9=\1C\A9}rJ\ED3\A3\DB!\A7\863E\A5\AAVE\B5\83)@Gy\04n\B9\95\D0\81w-H\1E\FE\C3\C2\1E\E5\F2\BE\FD;\94\9F\C4\C4&\9D\E4f\1E\19\EEly\97\111K\0D\01\CB\DE\A8\F6m|9FN~?\94\17\DF\A1}\D9\1C\8E\BC}3}\E3\12@\CA\AB7\11F\D4\AE\EFD\A2\B3jf\0E\0C\90\7F\DF\\f_\F2\94\9F\A6sO\EB\0D\AD\BF\C0c\\\DCFQ\E8\8E\90\19\A8\A4<\91y\FA~X\85\13U\C5\19\827\1B\0A\02\1F\99k\18\F1(\08\A2s\B8\0F.\CD\BF\F3\86\7F\EA\EF\D0\BB\A6!\DFIsQ\CC6\D3>\A0\F8D\DF\D3\A6\BE\8A\D4W\DDr\94a\0F\82\D1\07\B8|\18\83\DF:\E5Pj\82 \AC\A9\A8\FF\D9\F3w3Z\9E\7Fm\FE]3AB\E7l\19\E0D\8A\15\F6p\98\B7hM\FA\979\B0\8E\E8\84\8Bu0\B7}\92i \9C\81\FBK\F4\01P\EB\CE\0C\1Cl\B5J\D7'\0C\CE\BB\E5\85\F0\B6\EE\D5p\DD;\FC\D4\99\F13\DD\8B\C4/\AE\ABt\962\C7LV<\89\0F\96\0BB\C0\CB\EE\0F\0B\8C\FB~G{dH\FD\B2\00\80\89\A5\13Ub\FC\8F\E2B\03\B7N*y\B4\82\EA#I\DA\AFRc\1E`\03\89\06DF\08\C3\C4\87p.\DA\94\ADk\E0\E4\D1\8A\06\C2\A8\C0\A7C<GR\0E\C3w\81\11g\0E\A0p\04G)@\86\0D4V\A7\C95Yh\DC\93\81p\EE\86\D9\80\06@O\1A\0D@0\0B\CB\96G\C1\B7R\FDV\E0rK\FB\BD\92Eaq\C23\11\BFR\83y&\E0Ik\B7\05\8B\E8\0E\871\D7\9D\8A\F5\C0_.XJ\DB\11\B3l0*F\19\E3'\84\1Fcn\F6W\C7\C9\D8^\BA\B3\87\D5\83&4!\9Ee\DEB\D3\BE{\BC\91qDM\99;1\E5?\11N\7F\13Q;\AEy\C9\D3\81\8E%@\10\FC\07\1E\F9{\9AKl\E3\B3\AD\1A\0A\DD\9EY\0C\A2\CD\AEHJ8[GA\94ek\BB\EB[\E3\AF\07[\D4J\A2\C9]/d\03\D7:,n\CEv\95\B4\B3\C0\F1\E2Esz\\\AB\C1\FC\02\8D\81)\B3\AC\07\EC@}E\D9zY\EE4\F0\E9\D5{\96\B1=\95\CC\86\B5\B6\04-\B5\92~v\F4\06\A9\A3\12\0F\B1\AF&\BA|\FC~\1C\BC,I\97S`\13\0B\A6a\83\89B\D4\17\0Cl&R\C3\B3\D4g\F5\E3\04\B7\F4\CB\80\B8\CBwV>\AAWT\EE\B4,g\CF\F2\DC\BEU\F9C\1Fn\22\97g\7F\C4\EF\B1&1\1E'\DFA\80Gl\E2\FA\A9\8C*\F6\F2\AB\F0\15\DAl\C8\FE\B5#\DE\A9\05?\06TL\CD\E1\AB\FC\0Eb31s,v\CB\B4G\1E \AD\D8\F21\DD\C4\8B\0Cw\BE\E1\8B&\00\02X\D6\8D\EF\ADtg\AB?\EF\CBo\B0\CC\81DL\AF\E9IO\DB\A0%\A4\F0\89\F1\BE\D8\10\FF\B1;K\FA\98\F5ym\1EiMW\B1\C8\19\1B\BD\1E\8C\84\B7{\E8\D2-\09AA7=\B1o&]q\16=\B7\83',\A7\B6P\BD\91\86\AB$\A18\FD\EAqU~\9A\07wK\FAaf \1E(\95\18\1B\A4\A0\FD\C0\89rC\D9;IZ?\9D\BF\DB\B4F\EAB\01w#h\95\B6$\B3\A8l(;\11@~\18em\D8$B}\88\C0R\D9\05\E4\95\90\87\8C\F4\D0k\B9\83\994m\FET@\94R!O\14%\C5\D6^\95\DC\0A+\89 \11\84H\D6:\CD\\$\ADb\E3\B1\93%\8D\CD~\FC'\A37\FD\84\FC\1B\B2\F1'8Z\B7\FC\F2\FA\95f\D4\FB\BA\A7\D7\A3riHH\8C\EB(\89\FE3eZ6\01~\06y\0A\09;t\11\9An\BF\D4\9EX\90IOM\08\D4\E5J\09!\EF\8B\B8t;\91\DD6\85`-\FA\D4E{ES\F5G\87~\A67\C8xzh\9D\8De,\0E\91\\\A2`\F0\8E?\E9\1A\CD\AA\E7\D5w\18\AF\C9\BC\18\EAH\1B\FB\22Hp\16)\9E[\C1,f#\BC\F0\1F\EF\AF\E4\D6\04\19\82z\0B\BAKF\B1j\85]\B4s\D6!\A1q`\14\EE\0Aw\C4f.\F9i0\AFA\0B\C8\83<S\99\19'F\F7AnV\DC\94(gN\B7%H\8A\C2\E0`\96\CC\18\F4\84\DD\A7^>\05\0B&&\B2\\\1FW\1A\04~j\E3/\B45\B68@@\CDo\87.\EF\A3\D7\A9\C2\E8\0D'\DFDb\99\A0\FC\CF\81x\CB\FE\E5\A0\03Nl\D7\F4\AFz\BBa\82\FEq\89\B2\22|\8E\83\04\CE\F6]\84\8F\95j\7F\AD\FD2\9C^\E4\9C\89`T\AA\96r\D2\D76\85\A9E\D2*\A1\81Io~\04\FA\E2\FE\90&wZ3\B8\04\9Az\E6LO\ADr\96\08(X\13\F8\C4\1C\F0\C3E\95I \8C\9F9p\E1w\FE\D5K\AF\86\DA\EF\22\06\836)\12\11@\BC;\86\AA\AAe`\C3\80\CA\ED\A9\F3\B0y\96\A2U'(Us&\A5P\EA\92K<\\\823\F0\01?\03\C1\08\05\BF\98\F4\9Bm\A5\A8\B4\82\0C\06\FA\FF-\08\F3\05OW*9\D4\83\0DuQ\D8[\1B\D3QZ2*\9B2\B2\F2\A4\96\12\F2\AE@4g\A8\F5D\D55S\FE\A3`\96c\0F\1Fn\B0ZB\A6\FCQ\0B`'\BC\06q\EDe[#\86J\07;\22\07F\E6\90>\F3%P\1BL\7F\03\08\A86k\87\E5\E3\DB\9A8\83\FF\9F\1A\9FW\A4*\F67\BC\1A\FF\C9\1E5\0C\C3|\A3\B2\E5\D2\C6\B4WG\E42\16m\A9\AEd\E6-\8D\C5\8DP\8E\E8\1A\224*\D9\EBQ\90J\B1A}d\F9\B9\0D\F6#3\B03\F4\F7?'\84\C6\0FT\A5\C0.\EC\0B:Hn\805\81C\9B\90\B1\D0+\EA!\DC\DA[\09\F4\CC\10\B4\C7\FEyQ\C3\C5\AC\88t\84\0BK\CAy\16)\FBiT\DFA~\E9\C7\8E\EA\A5\FE\FCv\0E\90\C4\928\AD{H\E6n\F7!\FDN\93\0A{A\83h\FBWQv4\A9l\00\AAOfe\98JO\A3\A0\EFi?\E3\1C\92\8C\FD\D8\E8\DE|\7F>\84\8Ei<\F1\F2\05F\DC/\9D^nL\FB\B5\99*Yc\C14\BCW\C0\0D\B9a%\F33#Q\B6\0D\07\A6\AB\94J\B7*\EA\EE\AC\A3\C3\04\8B\0EV\FED\A79\E2\ED\ED\B4\22+\AC\122(\91\D8\A5\AB\FF_\E0K\DAx\17\DA\F1\01[\CD\E2_PEs+\E4vw\F4d\1DC\FB\84z\EA\91\AE\F9\9E\B7\B4\B0\91_\165\9A\11\B8\C7\C1\8C\C6\10\8D/cJ\A7W:Q\D62-dr\D4f\DC\10\A6g\D6\04#\9D\0A\11w\DD7\94\17<\BF\8Be\B0.^fGd\AC\DD\F0\84\FD9\FA\15]\EF\AE\CA\C16\A7\\\BF\C7\08\C2f\00ttN'?U\8A\B78f\83m\CF\99\9E`\8F\DD.b\22\0E\EF\0C\98\A7\85t;\9D\EC\9E\A9\19r\A5\7F,9\B7}\B7\F1\12e'KZ\DE\17\FE\ADD\F3 M\FD\E4\1F\B5\81\B067\08o\C3\0C\E9\85\98\82\A9b\0C\C4\97\C0P\C8\A7<P\9FC\B9\CD^M\FA\1CK\0B\A9\98\858\92\AC\8D\E4\AD\9B\98\AB\D98\ACbR\A3\22c\0F\BF\95H\DFi\E7\8B3\D5\B2\BD\05II\9DWs\193\AE\FA3\F1\19\A8\80\CE\04\9F\BC\1De\82\1B\E5:Q\C8\1C!\E3]\F3}\9B/,\1DJ\7F\9Bh5\A3\B2P\F7by\CD\F4\98O\E5c|>E1\8C\16\A0\12\C8X\CE9\A6\BCT\DB\C5\E0\D5\BA\BC\B9\04\F4\8D\E8/\15\9D", section ".init.rodata", align 8
@crc32_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016crc32: CRC_LE_BITS = %d, CRC_BE BITS = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc32_test\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/crc32test.c\00", [16 x i8] zeroinitializer }, align 32
@crc32_test._entry_ptr = internal global ptr @crc32_test._entry, section ".printk_index", align 4
@crc32_test._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014crc32: %d self tests failed\0A\00", [33 x i8] zeroinitializer }, align 32
@crc32_test._entry_ptr.5 = internal global ptr @crc32_test._entry.3, section ".printk_index", align 4
@crc32_test._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016crc32: self tests passed, processed %d bytes in %lld nsec\0A\00", [35 x i8] zeroinitializer }, align 32
@crc32_test._entry_ptr.8 = internal global ptr @crc32_test._entry.6, section ".printk_index", align 4
@crc32c_test.crc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@crc32c_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016crc32c: CRC_LE_BITS = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crc32c_test\00", [20 x i8] zeroinitializer }, align 32
@crc32c_test._entry_ptr = internal global ptr @crc32c_test._entry, section ".printk_index", align 4
@crc32c_test._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014crc32c: %d self tests failed\0A\00", [32 x i8] zeroinitializer }, align 32
@crc32c_test._entry_ptr.13 = internal global ptr @crc32c_test._entry.11, section ".printk_index", align 4
@crc32c_test._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016crc32c: self tests passed, processed %d bytes in %lld nsec\0A\00", [34 x i8] zeroinitializer }, align 32
@crc32c_test._entry_ptr.16 = internal global ptr @crc32c_test._entry.14, section ".printk_index", align 4
@crc32_combine_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014crc32_combine: %d/%d self tests failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"crc32_combine_test\00", [45 x i8] zeroinitializer }, align 32
@crc32_combine_test._entry_ptr = internal global ptr @crc32_combine_test._entry, section ".printk_index", align 4
@crc32_combine_test._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016crc32_combine: %d self tests passed\0A\00", [57 x i8] zeroinitializer }, align 32
@crc32_combine_test._entry_ptr.21 = internal global ptr @crc32_combine_test._entry.19, section ".printk_index", align 4
@crc32c_combine_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014crc32c_combine: %d/%d self tests failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crc32c_combine_test\00", [44 x i8] zeroinitializer }, align 32
@crc32c_combine_test._entry_ptr = internal global ptr @crc32c_combine_test._entry, section ".printk_index", align 4
@crc32c_combine_test._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016crc32c_combine: %d self tests passed\0A\00", [56 x i8] zeroinitializer }, align 32
@crc32c_combine_test._entry_ptr.26 = internal global ptr @crc32c_combine_test._entry.24, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 754, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 784, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 788, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 790, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 674, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 697, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 700, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 702, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 825, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 827, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 737, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [19 x i8] c"../lib/crc32test.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 739, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author161, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_crc32_exit, ptr @__initcall__kmod_crc32test__160_847_crc32test_init6, ptr @crc32_combine_test._entry, ptr @crc32_combine_test._entry.19, ptr @crc32_combine_test._entry_ptr, ptr @crc32_combine_test._entry_ptr.21, ptr @crc32_exit, ptr @crc32_test._entry, ptr @crc32_test._entry.3, ptr @crc32_test._entry.6, ptr @crc32_test._entry_ptr, ptr @crc32_test._entry_ptr.5, ptr @crc32_test._entry_ptr.8, ptr @crc32c_combine_test._entry, ptr @crc32c_combine_test._entry.24, ptr @crc32c_combine_test._entry_ptr, ptr @crc32c_combine_test._entry_ptr.26, ptr @crc32c_test._entry, ptr @crc32c_test._entry.11, ptr @crc32c_test._entry.14, ptr @crc32c_test._entry_ptr, ptr @crc32c_test._entry_ptr.13, ptr @crc32c_test._entry_ptr.16, ptr @crc32_test.crc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @crc32c_test.crc, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_test.crc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_test._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_test._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_test.crc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_test._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_test._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_combine_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_combine_test._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_combine_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32c_combine_test._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @crc32_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32test_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @crc32_test() #8
  tail call fastcc void @crc32c_test() #8
  tail call fastcc void @crc32_combine_test() #8
  tail call fastcc void @crc32c_combine_test() #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crc32_test() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04
  %length = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %start = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr @test_buf, i32 %5
  %call = tail call i32 @crc32_le(i32 noundef %3, ptr noundef %add.ptr, i32 noundef %1) #9
  %6 = load i32, ptr @crc32_test.crc, align 4
  %xor = xor i32 %6, %call
  store i32 %xor, ptr @crc32_test.crc, align 4
  %call12 = tail call i32 @crc32_be(i32 noundef %3, ptr noundef %add.ptr, i32 noundef %1) #9
  %xor13 = xor i32 %call12, %xor
  store i32 %xor13, ptr @crc32_test.crc, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body14, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body14:                                        ; preds = %for.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body14.do.end25_crit_edge

do.body14.do.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

if.then:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #10
  br label %do.end25

do.end25:                                         ; preds = %if.then, %do.body14.do.end25_crit_edge
  %call.i = tail call i64 @ktime_get() #10
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %do.end25
  %i.16 = phi i32 [ 0, %do.end25 ], [ %inc60, %for.body30.for.body30_crit_edge ]
  %errors.05 = phi i32 [ 0, %do.end25 ], [ %errors.2, %for.body30.for.body30_crit_edge ]
  %arrayidx31 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16
  %crc_le = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 3
  %8 = ptrtoint ptr %crc_le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crc_le, align 4
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx31, align 4
  %start35 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 1
  %12 = ptrtoint ptr %start35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start35, align 4
  %add.ptr36 = getelementptr i8, ptr @test_buf, i32 %13
  %length38 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 2
  %14 = ptrtoint ptr %length38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length38, align 4
  %call39 = tail call i32 @crc32_le(i32 noundef %11, ptr noundef %add.ptr36, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call39)
  %cmp40.not = icmp ne i32 %9, %call39
  %inc43 = zext i1 %cmp40.not to i32
  %spec.select = add i32 %errors.05, %inc43
  %crc_be = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 4
  %16 = ptrtoint ptr %crc_be to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crc_be, align 4
  %call53 = tail call i32 @crc32_be(i32 noundef %11, ptr noundef %add.ptr36, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call53)
  %cmp54.not = icmp ne i32 %17, %call53
  %inc57 = zext i1 %cmp54.not to i32
  %errors.2 = add i32 %spec.select, %inc57
  %inc60 = add nuw nsw i32 %i.16, 1
  %exitcond7.not = icmp eq i32 %inc60, 100
  br i1 %exitcond7.not, label %for.end61, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.end61:                                        ; preds = %for.body30
  %call.i1 = tail call i64 @ktime_get() #10
  %sub = sub i64 %call.i1, %call.i
  br i1 %tobool.not, label %if.then72, label %for.end61.do.body74_crit_edge

for.end61.do.body74_crit_edge:                    ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

if.then72:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #10
  br label %do.body74

do.body74:                                        ; preds = %if.then72, %for.end61.do.body74_crit_edge
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool82.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool82.not, label %if.then86, label %do.body74.do.end89_crit_edge, !prof !74

do.body74.do.end89_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body74.do.end89_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !75
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.2)
  %tobool99.not = icmp eq i32 %errors.2, 0
  br i1 %tobool99.not, label %do.end108, label %do.end103

do.end103:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %errors.2) #11
  br label %if.end111

do.end108:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 225944, i64 noundef %sub) #11
  br label %if.end111

if.end111:                                        ; preds = %do.end108, %do.end103
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crc32c_test() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04
  %length = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %start = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.04, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr @test_buf, i32 %5
  %call = tail call i32 @__crc32c_le(i32 noundef %3, ptr noundef %add.ptr, i32 noundef %1) #9
  %6 = load i32, ptr @crc32c_test.crc, align 4
  %xor = xor i32 %6, %call
  store i32 %xor, ptr @crc32c_test.crc, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body5, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body5:                                         ; preds = %for.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body5.do.end16_crit_edge

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

if.then:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #10
  br label %do.end16

do.end16:                                         ; preds = %if.then, %do.body5.do.end16_crit_edge
  %call.i = tail call i64 @ktime_get() #10
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %do.end16
  %i.16 = phi i32 [ 0, %do.end16 ], [ %inc37, %for.body21.for.body21_crit_edge ]
  %errors.05 = phi i32 [ 0, %do.end16 ], [ %spec.select, %for.body21.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16
  %crc32c_le = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 5
  %8 = ptrtoint ptr %crc32c_le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crc32c_le, align 4
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx22, align 4
  %start26 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 1
  %12 = ptrtoint ptr %start26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start26, align 4
  %add.ptr27 = getelementptr i8, ptr @test_buf, i32 %13
  %length29 = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.16, i32 2
  %14 = ptrtoint ptr %length29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length29, align 4
  %call30 = tail call i32 @__crc32c_le(i32 noundef %11, ptr noundef %add.ptr27, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call30)
  %cmp31.not = icmp ne i32 %9, %call30
  %inc34 = zext i1 %cmp31.not to i32
  %spec.select = add i32 %errors.05, %inc34
  %inc37 = add nuw nsw i32 %i.16, 1
  %exitcond7.not = icmp eq i32 %inc37, 100
  br i1 %exitcond7.not, label %for.end38, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

for.end38:                                        ; preds = %for.body21
  %call.i1 = tail call i64 @ktime_get() #10
  %sub = sub i64 %call.i1, %call.i
  br i1 %tobool.not, label %if.then49, label %for.end38.do.body51_crit_edge

for.end38.do.body51_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

if.then49:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #10
  br label %do.body51

do.body51:                                        ; preds = %if.then49, %for.end38.do.body51_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool59.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool59.not, label %if.then63, label %do.body51.do.end66_crit_edge, !prof !74

do.body51.do.end66_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body51.do.end66_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !75
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool76.not = icmp eq i32 %spec.select, 0
  br i1 %tobool76.not, label %do.end85, label %do.end80

do.end80:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %spec.select) #11
  br label %if.end88

do.end85:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #7
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 225944, i64 noundef %sub) #11
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %do.end80
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crc32_combine_test() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc29, %for.end.for.body_crit_edge ]
  %errors.06 = phi i32 [ 0, %entry ], [ %errors.2, %for.end.for.body_crit_edge ]
  %runs.05 = phi i32 [ 0, %entry ], [ %inc25, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %start = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr @test_buf, i32 %3
  %length = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %call = tail call i32 @crc32_le(i32 noundef %1, ptr noundef %add.ptr, i32 noundef %5) #9
  %crc_le = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 3
  br label %for.body7

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %for.body
  %j.04 = phi i32 [ 0, %for.body ], [ %inc27, %if.end.for.body7_crit_edge ]
  %errors.13 = phi i32 [ %errors.06, %for.body ], [ %errors.2, %if.end.for.body7_crit_edge ]
  %runs.12 = phi i32 [ %runs.05, %for.body ], [ %inc25, %if.end.for.body7_crit_edge ]
  %sub = sub i32 %5, %j.04
  %call15 = tail call i32 @crc32_le(i32 noundef %1, ptr noundef %add.ptr, i32 noundef %j.04) #9
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %j.04
  %call20 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr19, i32 noundef %sub) #9
  %call.i = tail call i32 @crc32_le_shift(i32 noundef %call15, i32 noundef %sub) #12
  %xor.i = xor i32 %call.i, %call20
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %xor.i)
  %cmp22 = icmp eq i32 %call, %xor.i
  br i1 %cmp22, label %land.lhs.true, label %for.body7.if.then_crit_edge

for.body7.if.then_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %for.body7
  %6 = ptrtoint ptr %crc_le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crc_le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp24 = icmp eq i32 %call, %7
  br i1 %cmp24, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body7.if.then_crit_edge
  %inc = add i32 %errors.13, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %errors.2 = phi i32 [ %errors.13, %land.lhs.true.if.end_crit_edge ], [ %inc, %if.then ]
  %inc25 = add i32 %runs.12, 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 820, i32 noundef 0) #10
  %call.i1 = tail call i32 @__cond_resched() #10
  %inc27 = add i32 %j.04, 1
  %cmp6.not = icmp ult i32 %5, %inc27
  br i1 %cmp6.not, label %for.end, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.end:                                          ; preds = %if.end
  %inc29 = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc29, 10
  br i1 %exitcond.not, label %for.end30, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.2)
  %tobool.not = icmp eq i32 %errors.2, 0
  br i1 %tobool.not, label %do.end36, label %do.end

do.end:                                           ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %errors.2, i32 noundef %inc25) #11
  br label %if.end39

do.end36:                                         ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %inc25) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crc32c_combine_test() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc29, %for.end.for.body_crit_edge ]
  %errors.06 = phi i32 [ 0, %entry ], [ %errors.2, %for.end.for.body_crit_edge ]
  %runs.05 = phi i32 [ 0, %entry ], [ %inc25, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %start = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr @test_buf, i32 %3
  %length = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %call = tail call i32 @__crc32c_le(i32 noundef %1, ptr noundef %add.ptr, i32 noundef %5) #9
  %crc32c_le = getelementptr [100 x %struct.crc_test], ptr @test, i32 0, i32 %i.07, i32 5
  br label %for.body7

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %for.body
  %j.04 = phi i32 [ 0, %for.body ], [ %inc27, %if.end.for.body7_crit_edge ]
  %errors.13 = phi i32 [ %errors.06, %for.body ], [ %errors.2, %if.end.for.body7_crit_edge ]
  %runs.12 = phi i32 [ %runs.05, %for.body ], [ %inc25, %if.end.for.body7_crit_edge ]
  %sub = sub i32 %5, %j.04
  %call15 = tail call i32 @__crc32c_le(i32 noundef %1, ptr noundef %add.ptr, i32 noundef %j.04) #9
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %j.04
  %call20 = tail call i32 @__crc32c_le(i32 noundef 0, ptr noundef %add.ptr19, i32 noundef %sub) #9
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %call15, i32 noundef %sub) #12
  %xor.i = xor i32 %call.i, %call20
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %xor.i)
  %cmp22 = icmp eq i32 %call, %xor.i
  br i1 %cmp22, label %land.lhs.true, label %for.body7.if.then_crit_edge

for.body7.if.then_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %for.body7
  %6 = ptrtoint ptr %crc32c_le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crc32c_le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp24 = icmp eq i32 %call, %7
  br i1 %cmp24, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body7.if.then_crit_edge
  %inc = add i32 %errors.13, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %errors.2 = phi i32 [ %errors.13, %land.lhs.true.if.end_crit_edge ], [ %inc, %if.then ]
  %inc25 = add i32 %runs.12, 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 732, i32 noundef 0) #10
  %call.i1 = tail call i32 @__cond_resched() #10
  %inc27 = add i32 %j.04, 1
  %cmp6.not = icmp ult i32 %5, %inc27
  br i1 %cmp6.not, label %for.end, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.end:                                          ; preds = %if.end
  %inc29 = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc29, 10
  br i1 %exitcond.not, label %for.end30, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.2)
  %tobool.not = icmp eq i32 %errors.2, 0
  br i1 %tobool.not, label %do.end36, label %do.end

do.end:                                           ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %errors.2, i32 noundef %inc25) #11
  br label %if.end39

do.end36:                                         ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %inc25) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %do.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @crc32_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_crc32test__160_847_crc32test_init6, !1, !"__initcall__kmod_crc32test__160_847_crc32test_init6", i1 false, i1 false}
!1 = !{!"../lib/crc32test.c", i32 847, i32 1}
!2 = !{ptr @__exitcall_crc32_exit, !3, !"__exitcall_crc32_exit", i1 false, i1 false}
!3 = !{!"../lib/crc32test.c", i32 848, i32 1}
!4 = !{ptr @__UNIQUE_ID_author161, !5, !"__UNIQUE_ID_author161", i1 false, i1 false}
!5 = !{!"../lib/crc32test.c", i32 850, i32 1}
!6 = !{ptr @__UNIQUE_ID_description162, !7, !"__UNIQUE_ID_description162", i1 false, i1 false}
!7 = !{!"../lib/crc32test.c", i32 851, i32 1}
!8 = !{ptr @__UNIQUE_ID_file163, !9, !"__UNIQUE_ID_file163", i1 false, i1 false}
!9 = !{!"../lib/crc32test.c", i32 852, i32 1}
!10 = !{ptr @__UNIQUE_ID_license164, !9, !"__UNIQUE_ID_license164", i1 false, i1 false}
!11 = !{ptr @crc32_test.crc, !12, !"crc", i1 false, i1 false}
!12 = !{!"../lib/crc32test.c", i32 754, i32 13}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/crc32test.c", i32 784, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @crc32_test._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @crc32_test._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/crc32test.c", i32 788, i32 3}
!21 = !{ptr @crc32_test._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @crc32_test._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/crc32test.c", i32 790, i32 3}
!25 = !{ptr @crc32_test._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @crc32_test._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @test, !28, !"test", i1 false, i1 false}
!28 = !{!"../lib/crc32test.c", i32 558, i32 9}
!29 = !{ptr @test_buf, !30, !"test_buf", i1 false, i1 false}
!30 = !{!"../lib/crc32test.c", i32 34, i32 30}
!31 = !{ptr @crc32c_test.crc, !32, !"crc", i1 false, i1 false}
!32 = !{!"../lib/crc32test.c", i32 674, i32 13}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/crc32test.c", i32 697, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @crc32c_test._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @crc32c_test._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/crc32test.c", i32 700, i32 3}
!40 = !{ptr @crc32c_test._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @crc32c_test._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/crc32test.c", i32 702, i32 3}
!44 = !{ptr @crc32c_test._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @crc32c_test._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/crc32test.c", i32 825, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @crc32_combine_test._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @crc32_combine_test._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/crc32test.c", i32 827, i32 3}
!53 = !{ptr @crc32_combine_test._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @crc32_combine_test._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/crc32test.c", i32 737, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @crc32c_combine_test._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @crc32c_combine_test._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/crc32test.c", i32 739, i32 3}
!62 = !{ptr @crc32c_combine_test._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @crc32c_combine_test._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 786546, i64 786607}
!73 = !{i64 789278}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 789563}
