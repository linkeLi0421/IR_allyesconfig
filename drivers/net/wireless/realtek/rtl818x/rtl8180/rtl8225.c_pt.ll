; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl818x_csr = type { [6 x i8], [2 x i8], %union.anon.129, %union.anon.131, i32, [2 x i32], %union.anon.133, %union.anon.134, i32, %union.anon.135, [6 x i8], %union.anon.137, [1 x i8], i8, [4 x i8], %union.anon.139, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32, [8 x i8], i32, i16, i16, i16, i16, i8, i8, [2 x i8], [4 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i32, [4 x i8], i8, i8, i8, i8, [16 x i8], i8, [3 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, i8, [24 x i8], i8, i8, i8, i8, i16, i8, [3 x i8], i16, i32, i16, [4 x i8], %union.anon.141, i32, %union.anon.142, %union.anon.143, %union.anon.145 }
%union.anon.129 = type { [2 x i32] }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%union.anon.137 = type { i16 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i16 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.rtl8180_priv = type { ptr, ptr, ptr, i8, %struct.spinlock, ptr, i8, i32, i32, [32 x ptr], [5 x %struct.rtl8180_tx_ring], [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [4 x %struct.ieee80211_tx_queue_params], ptr, i32, i8, i16, i32, i32, i16, i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl8180_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }

@rtl8225_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str, ptr @rtl8225_rf_init, ptr @rtl8225_rf_stop, ptr @rtl8225_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtl8225z2_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str.1, ptr @rtl8225z2_rf_init, ptr @rtl8225_rf_stop, ptr @rtl8225_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl8225\00", [24 x i8] zeroinitializer }, align 32
@rtl8225_chan = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2140, i32 2268, i32 2396, i32 2524, i32 2652, i32 2780, i32 2908, i32 3036, i32 3164, i32 3292, i32 3420, i32 3548, i32 3676, i32 3954], [40 x i8] zeroinitializer }, align 32
@rtl8225bcd_rxgain = internal constant { [95 x i16], [34 x i8] } { [95 x i16] [i16 1024, i16 1025, i16 1026, i16 1027, i16 1028, i16 1029, i16 1032, i16 1033, i16 1034, i16 1035, i16 1282, i16 1283, i16 1284, i16 1285, i16 1344, i16 1345, i16 1346, i16 1347, i16 1348, i16 1349, i16 1408, i16 1409, i16 1410, i16 1411, i16 1412, i16 1413, i16 1416, i16 1417, i16 1418, i16 1419, i16 1603, i16 1604, i16 1605, i16 1664, i16 1665, i16 1666, i16 1667, i16 1668, i16 1669, i16 1672, i16 1673, i16 1674, i16 1675, i16 1676, i16 1858, i16 1859, i16 1860, i16 1861, i16 1920, i16 1921, i16 1922, i16 1923, i16 1924, i16 1925, i16 1928, i16 1929, i16 1930, i16 1931, i16 1932, i16 1933, i16 1936, i16 1937, i16 1938, i16 1939, i16 1940, i16 1941, i16 1944, i16 1945, i16 1946, i16 1947, i16 1948, i16 1949, i16 1952, i16 1953, i16 1954, i16 1955, i16 1956, i16 1957, i16 1960, i16 1961, i16 1962, i16 1963, i16 1964, i16 1965, i16 1968, i16 1969, i16 1970, i16 1971, i16 1972, i16 1973, i16 1976, i16 1977, i16 1978, i16 1979, i16 1979], [34 x i8] zeroinitializer }, align 32
@rtl8225_agc = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\9E\9E\9E\9E\9E\9E\9E\9E\9D\9C\9B\9A\99\98\97\96\95\94\93\92\91\90\8F\8E\8D\8C\8B\8A\89\88\87\86\85\84\83\82\81\80?>=<;:9876543210/.-,+*)('&%$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11\10\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@rtl8225_tx_gain_cck_ofdm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\06\0E\1E>~", [26 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_cck_ch14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\18\17\15\0C\00\00\00\00\1B\1A\17\0E\00\00\00\00\1F\1E\1A\0F\00\00\00\00\22!\1D\11\00\00\00\00&%!\13\00\00\00\00+*%\15\00\00\00\00", [48 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_cck = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\18\17\15\11\0C\08\04\02\1B\1A\17\13\0E\09\04\02\1F\1E\1A\15\10\0A\05\02\22!\1D\18\11\0B\06\02&%!\1B\14\0D\06\03+*%\1E\16\0E\07\03", [48 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_ofdm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\90\A2\B5\CB\E4", [26 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_power_cck_ch14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"65.\1B\00\00\00\00", [24 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_power_cck_B = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0/)!\19\10\08\04", [24 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_power_cck_A = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"32+#\1A\11\08\04", [24 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_power_cck = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"65.%\1C\12\09\04", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8225z2\00", [22 x i8] zeroinitializer }, align 32
@rtl8225z2_rxgain = internal constant { [95 x i16], [34 x i8] } { [95 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 8, i16 9, i16 10, i16 11, i16 258, i16 259, i16 260, i16 261, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 384, i16 385, i16 386, i16 387, i16 388, i16 389, i16 392, i16 393, i16 394, i16 395, i16 579, i16 580, i16 581, i16 640, i16 641, i16 642, i16 643, i16 644, i16 645, i16 648, i16 649, i16 650, i16 651, i16 652, i16 834, i16 835, i16 836, i16 837, i16 896, i16 897, i16 898, i16 899, i16 900, i16 901, i16 904, i16 905, i16 906, i16 907, i16 908, i16 909, i16 912, i16 913, i16 914, i16 915, i16 916, i16 917, i16 920, i16 921, i16 922, i16 923, i16 924, i16 925, i16 928, i16 929, i16 930, i16 931, i16 932, i16 933, i16 936, i16 937, i16 938, i16 939, i16 940, i16 941, i16 944, i16 945, i16 946, i16 947, i16 948, i16 949, i16 952, i16 953, i16 954, i16 955, i16 955], [34 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"rtl8225_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 731, i32 36 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"rtl8225z2_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 738, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 732, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"rtl8225_chan\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 250, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"rtl8225bcd_rxgain\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 176, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"rtl8225_agc\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 191, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"rtl8225_tx_gain_cck_ofdm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 224, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"rtl8225_tx_power_cck_ch14\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 237, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"rtl8225_tx_power_cck\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 228, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"rtl8225_tx_power_ofdm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 246, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"rtl8225z2_tx_power_cck_ch14\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 456, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"rtl8225z2_tx_power_cck_B\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 460, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"rtl8225z2_tx_power_cck_A\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 464, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"rtl8225z2_tx_power_cck\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 468, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 739, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"rtl8225z2_rxgain\00", align 1
@___asan_gen_.48 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 516, i32 18 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @rtl8225_ops, ptr @rtl8225z2_ops, ptr @.str, ptr @rtl8225_chan, ptr @rtl8225bcd_rxgain, ptr @rtl8225_agc, ptr @rtl8225_tx_gain_cck_ofdm, ptr @rtl8225_tx_power_cck_ch14, ptr @rtl8225_tx_power_cck, ptr @rtl8225_tx_power_ofdm, ptr @rtl8225z2_tx_power_cck_ch14, ptr @rtl8225z2_tx_power_cck_B, ptr @rtl8225z2_tx_power_cck_A, ptr @rtl8225z2_tx_power_cck, ptr @.str.1, ptr @rtl8225z2_rxgain], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_chan to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225bcd_rxgain to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_agc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_gain_cck_ofdm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_cck_ch14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_cck to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_ofdm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck_ch14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck_B to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck_A to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_rxgain to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtl8180_detect_rf(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput, i16 -32764) #3, !srcloc !46
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect, i16 -30716) #3, !srcloc !46
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable, i16 -225) #3, !srcloc !46
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 20
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @msleep(i32 noundef 100) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 439)
  %call5 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 8)
  %call6 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 9)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1416, i16 %call5)
  %cmp.not = icmp eq i16 %call5, 1416
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %call6)
  %cmp9.not = icmp eq i16 %call6, 1792
  %or.cond = select i1 %cmp.not, i1 %cmp9.not, i1 false
  %retval.0 = select i1 %or.cond, ptr @rtl8225z2_ops, ptr @rtl8225_ops
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225_write(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = zext i16 %data to i32
  %shl = shl nuw nsw i32 %conv, 4
  %2 = and i8 %addr, 15
  %and = zext i8 %2 to i32
  %or = or i32 %shl, %and
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %4, i32 0, i32 43
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsOutput) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %6 = and i16 %5, -3073
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 44
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsEnable) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %RFPinsEnable9 = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 44
  %13 = or i16 %10, 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable9, i16 %13) #3, !srcloc !46
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 45
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsSelect) #3, !srcloc !49
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %RFPinsSelect16 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 45
  %or19 = or i16 %17, 1031
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %20 = tail call i16 @llvm.bswap.i16(i16 %or19) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect16, i16 %20) #3, !srcloc !46
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 20
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #3
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %RFPinsOutput24 = getelementptr inbounds %struct.rtl818x_csr, ptr %26, i32 0, i32 43
  %or26 = or i16 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %27 = tail call i16 @llvm.bswap.i16(i16 %or26) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput24, i16 %27) #3, !srcloc !46
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %EEPROM_CMD29 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 20
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD29) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496) #3
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %RFPinsOutput32 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput32, i16 %6) #3, !srcloc !46
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %EEPROM_CMD34 = getelementptr inbounds %struct.rtl818x_csr, ptr %35, i32 0, i32 20
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD34) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #3
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %entry
  %i.0136 = phi i32 [ 15, %entry ], [ %dec, %if.end63.for.body_crit_edge ]
  %shl37 = shl nuw i32 1, %i.0136
  %and38 = and i32 %shl37, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool.not = icmp ne i32 %and38, 0
  %38 = zext i1 %tobool.not to i16
  %spec.select = or i16 %7, %38
  %and42 = and i32 %i.0136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %RFPinsOutput49.c134 = getelementptr inbounds %struct.rtl818x_csr, ptr %40, i32 0, i32 43
  br i1 %tobool43.not, label %if.then60.critedge, label %if.then44

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %41 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput49.c134, i16 %41) #3, !srcloc !46
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %RFPinsOutput49.c = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 43
  %44 = or i16 %spec.select, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput49.c, i16 %45) #3, !srcloc !46
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %RFPinsOutput54.c = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput54.c, i16 %45) #3, !srcloc !46
  br label %if.end63

if.then60.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %48 = or i16 %spec.select, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput49.c134, i16 %49) #3, !srcloc !46
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %RFPinsOutput54.c135 = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput54.c135, i16 %49) #3, !srcloc !46
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %RFPinsOutput62 = getelementptr inbounds %struct.rtl818x_csr, ptr %53, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %54 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput62, i16 %54) #3, !srcloc !46
  br label %if.end63

if.end63:                                         ; preds = %if.then60.critedge, %if.then44
  %dec = add nsw i32 %i.0136, -1
  %cmp.not = icmp eq i32 %i.0136, 0
  br i1 %cmp.not, label %for.end, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %RFPinsOutput65 = getelementptr inbounds %struct.rtl818x_csr, ptr %56, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput65, i16 %27) #3, !srcloc !46
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %EEPROM_CMD70 = getelementptr inbounds %struct.rtl818x_csr, ptr %58, i32 0, i32 20
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD70) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #3
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %RFPinsOutput73 = getelementptr inbounds %struct.rtl818x_csr, ptr %62, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput73, i16 %27) #3, !srcloc !46
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %RFPinsSelect78 = getelementptr inbounds %struct.rtl818x_csr, ptr %64, i32 0, i32 45
  %65 = or i16 %17, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect78, i16 %66) #3, !srcloc !46
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %RFPinsEnable83 = getelementptr inbounds %struct.rtl818x_csr, ptr %68, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable83, i16 -225) #3, !srcloc !46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rtl8225_read(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsOutput) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %6, i32 0, i32 44
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsEnable) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 45
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsSelect) #3, !srcloc !49
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %12 = and i16 %4, -3841
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %RFPinsEnable10 = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 44
  %16 = or i16 %7, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable10, i16 %16) #3, !srcloc !46
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %RFPinsSelect15 = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 45
  %19 = or i16 %11, 1039
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect15, i16 %20) #3, !srcloc !46
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %RFPinsOutput20 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 43
  %or22 = or i16 %13, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %23 = tail call i16 @llvm.bswap.i16(i16 %or22) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput20, i16 %23) #3, !srcloc !46
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 20
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 858992) #3
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %RFPinsOutput27 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput27, i16 %12) #3, !srcloc !46
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %EEPROM_CMD29 = getelementptr inbounds %struct.rtl818x_csr, ptr %31, i32 0, i32 20
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD29) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #3
  %conv33 = zext i8 %addr to i32
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %entry
  %i.0283 = phi i32 [ 4, %entry ], [ %dec, %if.end67.for.body_crit_edge ]
  %shr = lshr i32 %conv33, %i.0283
  %34 = trunc i32 %shr to i16
  %35 = and i16 %34, 1
  %conv36 = or i16 %35, %13
  %and37 = and i32 %i.0283, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool.not = icmp eq i32 %and37, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %RFPinsOutput39 = getelementptr inbounds %struct.rtl818x_csr, ptr %37, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv36) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput39, i16 %38) #3, !srcloc !46
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %EEPROM_CMD41 = getelementptr inbounds %struct.rtl818x_csr, ptr %40, i32 0, i32 20
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD41) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %RFPinsOutput44 = getelementptr inbounds %struct.rtl818x_csr, ptr %44, i32 0, i32 43
  %45 = or i16 %conv36, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput44, i16 %46) #3, !srcloc !46
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %EEPROM_CMD49 = getelementptr inbounds %struct.rtl818x_csr, ptr %48, i32 0, i32 20
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD49) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496) #3
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %RFPinsOutput52 = getelementptr inbounds %struct.rtl818x_csr, ptr %52, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput52, i16 %46) #3, !srcloc !46
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %EEPROM_CMD57 = getelementptr inbounds %struct.rtl818x_csr, ptr %54, i32 0, i32 20
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD57) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 429496) #3
  br i1 %tobool.not, label %if.end.if.end67_crit_edge, label %if.then61

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %RFPinsOutput63 = getelementptr inbounds %struct.rtl818x_csr, ptr %58, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv36) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput63, i16 %59) #3, !srcloc !46
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %EEPROM_CMD65 = getelementptr inbounds %struct.rtl818x_csr, ptr %61, i32 0, i32 20
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD65) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #3
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.end.if.end67_crit_edge
  %dec = add nsw i32 %i.0283, -1
  %cmp.not = icmp eq i32 %i.0283, 0
  br i1 %cmp.not, label %for.end, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end67
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %RFPinsEnable69 = getelementptr inbounds %struct.rtl818x_csr, ptr %65, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable69, i16 3584) #3, !srcloc !46
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %RFPinsSelect71 = getelementptr inbounds %struct.rtl818x_csr, ptr %67, i32 0, i32 45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect71, i16 3588) #3, !srcloc !46
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %EEPROM_CMD73 = getelementptr inbounds %struct.rtl818x_csr, ptr %69, i32 0, i32 20
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD73) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %RFPinsOutput76 = getelementptr inbounds %struct.rtl818x_csr, ptr %72, i32 0, i32 43
  %73 = or i16 %13, 8
  %or79 = or i16 %13, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %74 = tail call i16 @llvm.bswap.i16(i16 %or79) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput76, i16 %74) #3, !srcloc !46
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %EEPROM_CMD82 = getelementptr inbounds %struct.rtl818x_csr, ptr %76, i32 0, i32 20
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD82) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 429496) #3
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %RFPinsOutput85 = getelementptr inbounds %struct.rtl818x_csr, ptr %80, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %81 = tail call i16 @llvm.bswap.i16(i16 %73) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput85, i16 %81) #3, !srcloc !46
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %EEPROM_CMD90 = getelementptr inbounds %struct.rtl818x_csr, ptr %83, i32 0, i32 20
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD90) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 429496) #3
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %RFPinsOutput93 = getelementptr inbounds %struct.rtl818x_csr, ptr %87, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput93, i16 %81) #3, !srcloc !46
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %EEPROM_CMD98 = getelementptr inbounds %struct.rtl818x_csr, ptr %89, i32 0, i32 20
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD98) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 429496) #3
  br label %for.body103

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %for.end
  %i.1285 = phi i32 [ 11, %for.end ], [ %dec158, %for.body103.for.body103_crit_edge ]
  %out.0284 = phi i16 [ 0, %for.end ], [ %out.1, %for.body103.for.body103_crit_edge ]
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %RFPinsOutput105 = getelementptr inbounds %struct.rtl818x_csr, ptr %93, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput105, i16 %81) #3, !srcloc !46
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %EEPROM_CMD110 = getelementptr inbounds %struct.rtl818x_csr, ptr %95, i32 0, i32 20
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD110) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748) #3
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %RFPinsOutput113 = getelementptr inbounds %struct.rtl818x_csr, ptr %99, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput113, i16 %74) #3, !srcloc !46
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %EEPROM_CMD119 = getelementptr inbounds %struct.rtl818x_csr, ptr %101, i32 0, i32 20
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD119) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 429496) #3
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %RFPinsOutput122 = getelementptr inbounds %struct.rtl818x_csr, ptr %105, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput122, i16 %74) #3, !srcloc !46
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %EEPROM_CMD128 = getelementptr inbounds %struct.rtl818x_csr, ptr %107, i32 0, i32 20
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD128) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 429496) #3
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %RFPinsOutput131 = getelementptr inbounds %struct.rtl818x_csr, ptr %111, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput131, i16 %74) #3, !srcloc !46
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %EEPROM_CMD137 = getelementptr inbounds %struct.rtl818x_csr, ptr %113, i32 0, i32 20
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD137) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 429496) #3
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %RFPinsInput = getelementptr inbounds %struct.rtl818x_csr, ptr %117, i32 0, i32 46
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %RFPinsInput) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %119 = and i16 %118, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool143.not = icmp eq i16 %119, 0
  %shl = shl nuw i32 1, %i.1285
  %120 = trunc i32 %shl to i16
  %conv147 = select i1 %tobool143.not, i16 0, i16 %120
  %out.1 = or i16 %conv147, %out.0284
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %RFPinsOutput150 = getelementptr inbounds %struct.rtl818x_csr, ptr %122, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput150, i16 %81) #3, !srcloc !46
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %EEPROM_CMD155 = getelementptr inbounds %struct.rtl818x_csr, ptr %124, i32 0, i32 20
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD155) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 429496) #3
  %dec158 = add nsw i32 %i.1285, -1
  %cmp101.not = icmp eq i32 %i.1285, 0
  br i1 %cmp101.not, label %for.end159, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body103

for.end159:                                       ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #5
  %127 = or i16 %11, 1024
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %RFPinsOutput161 = getelementptr inbounds %struct.rtl818x_csr, ptr %129, i32 0, i32 43
  %or164 = or i16 %13, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %130 = tail call i16 @llvm.bswap.i16(i16 %or164) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput161, i16 %130) #3, !srcloc !46
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %EEPROM_CMD167 = getelementptr inbounds %struct.rtl818x_csr, ptr %132, i32 0, i32 20
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD167) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 429496) #3
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %RFPinsEnable170 = getelementptr inbounds %struct.rtl818x_csr, ptr %136, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable170, i16 %7) #3, !srcloc !46
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %RFPinsSelect172 = getelementptr inbounds %struct.rtl818x_csr, ptr %138, i32 0, i32 45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %139 = tail call i16 @llvm.bswap.i16(i16 %127) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect172, i16 %139) #3, !srcloc !46
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %RFPinsOutput174 = getelementptr inbounds %struct.rtl818x_csr, ptr %141, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput174, i16 -24573) #3, !srcloc !46
  ret i16 %out.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef -1610609831) #3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput, i16 -32764) #3, !srcloc !46
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable, i16 -225) #3, !srcloc !46
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect, i16 -30716) #3, !srcloc !46
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %GP_ENABLE = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %GP_ENABLE, i8 0) #3, !srcloc !52
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 20
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @msleep(i32 noundef 200) #3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %GP_ENABLE7 = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %GP_ENABLE7, i8 -65) #3, !srcloc !52
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %RF_TIMING = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_TIMING, i32 142608896) #3, !srcloc !54
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 9
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 -1) #3, !srcloc !46
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %RF_PARA = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_PARA, i32 1140854784) #3, !srcloc !54
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %EEPROM_CMD14 = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD14, i8 -64) #3, !srcloc !52
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG3, i8 68) #3, !srcloc !52
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %EEPROM_CMD17 = getelementptr inbounds %struct.rtl818x_csr, ptr %31, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD17, i8 0) #3, !srcloc !52
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 103)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 4064)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 1089)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 2238)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 3056)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 2790)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 2140)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 31)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 820)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 10, i16 noundef zeroext 4052)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 913)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 80)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 1755)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 41)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 15, i16 noundef zeroext 2324)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 100) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 295)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0178 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0178, 1
  %conv19 = trunc i32 %add to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv19)
  %arrayidx = getelementptr [95 x i16], ptr @rtl8225bcd_rxgain, i32 0, i32 %i.0178
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 2
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %33)
  %exitcond.not = icmp eq i32 %add, 95
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 39)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 559)
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %RFPinsEnable21 = getelementptr inbounds %struct.rtl818x_csr, ptr %35, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable21, i16 -225) #3, !srcloc !46
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.end
  %i.1179 = phi i32 [ 0, %for.end ], [ %inc30, %for.body25.for.body25_crit_edge ]
  %arrayidx26 = getelementptr [128 x i8], ptr @rtl8225_agc, i32 0, i32 %i.1179
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx26, align 1
  %conv.i = zext i8 %37 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef %conv.i) #3
  tail call void @msleep(i32 noundef 1) #3
  %conv.i177 = xor i32 %i.1179, 128
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef %conv.i177) #3
  tail call void @msleep(i32 noundef 1) #3
  %inc30 = add nuw nsw i32 %i.1179, 1
  %exitcond180.not = icmp eq i32 %inc30, 128
  br i1 %exitcond180.not, label %for.end31, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25

for.end31:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 1, i32 noundef 2) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 98) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef 254) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef 9) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef 128) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 12, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 211) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef 56) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 132) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 3) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 20, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 21, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 22, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 23, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 24, i32 noundef 239) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 25) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 118) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 28, i32 noundef 4) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 30, i32 noundef 149) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 31, i32 noundef 117) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef 31) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 33, i32 noundef 39) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 34, i32 noundef 22) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 36, i32 noundef 70) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 37, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 39, i32 noundef 136) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 65688) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 65568) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 65662) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 65554) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 65788) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 65656) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 65582) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65683) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 65672) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 65607) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 65744) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 65536) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 65696) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 65544) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 65670) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65677) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 66, i32 noundef 65557) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 67, i32 noundef 65560) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef 65567) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef 65566) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef 65562) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef 65557) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 65552) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef 65546) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef 65541) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef 65538) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 76, i32 noundef 65541) #3
  tail call void @msleep(i32 noundef 1) #3
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %TESTR = getelementptr inbounds %struct.rtl818x_csr, ptr %39, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TESTR, i8 13) #3, !srcloc !52
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef 1)
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #3
  tail call void @msleep(i32 noundef 1) #3
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %41, i32 0, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA, i8 3) #3, !srcloc !52
  tail call void @msleep(i32 noundef 1) #3
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33603605) #3, !srcloc !54
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %RFPinsEnable36 = getelementptr inbounds %struct.rtl818x_csr, ptr %45, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable36, i16 -225) #3, !srcloc !46
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 80)
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 13, i32 noundef 67) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 35, i32 noundef 120) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 118) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65677) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 31)
  tail call void @msleep(i32 noundef 1) #3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #3, !srcloc !52
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 26
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %CONFIG34 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 26
  %or = or i8 %6, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG34, i8 %or) #3, !srcloc !52
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM2, i32 300682628) #3, !srcloc !54
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %ANAPARAM = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM, i32 1508576160) #3, !srcloc !54
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %CONFIG39 = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 26
  %15 = and i8 %6, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG39, i8 %15) #3, !srcloc !52
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %EEPROM_CMD13 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD13, i8 0) #3, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %5, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #3
  %rf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf, align 4
  %init = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %cmp = icmp eq ptr %9, @rtl8225_rf_init
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef %call.i)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef %call.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub = add i32 %call.i, -1
  %arrayidx = getelementptr [14 x i32], ptr @rtl8225_chan, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %11 to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext %conv)
  tail call void @msleep(i32 noundef 10) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_set_anaparam(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sub = add i32 %channel, -1
  %hw_value = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 11, i32 %sub, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %4 = and i16 %3, 255
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 35)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 56
  %div.lhs.trunc = trunc i16 %5 to i8
  %div.lhs.trunc.frozen = freeze i8 %div.lhs.trunc
  %div107 = udiv i8 %div.lhs.trunc.frozen, 6
  %div.zext = zext i8 %div107 to i32
  %arrayidx29 = getelementptr [6 x i8], ptr @rtl8225_tx_gain_cck_ofdm, i32 0, i32 %div.zext
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx29, align 1
  %10 = lshr i8 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_CCK, i8 %10) #3, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp33 = icmp eq i32 %channel, 14
  %11 = mul i8 %div107, 6
  %rem108.decomposed = sub i8 %div.lhs.trunc.frozen, %11
  %12 = shl nuw nsw i8 %rem108.decomposed, 3
  %mul = zext i8 %12 to i32
  %rtl8225_tx_power_cck_ch14.rtl8225_tx_power_cck = select i1 %cmp33, ptr @rtl8225_tx_power_cck_ch14, ptr @rtl8225_tx_power_cck
  %arrayidx40 = getelementptr [48 x i8], ptr %rtl8225_tx_power_cck_ch14.rtl8225_tx_power_cck, i32 0, i32 %mul
  %incdec.ptr = getelementptr i8, ptr %arrayidx40, i32 1
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx40, align 1
  %conv.i = zext i8 %14 to i32
  %or.i = or i32 %conv.i, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef %or.i) #3
  %incdec.ptr.1 = getelementptr i8, ptr %arrayidx40, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %conv.i.1 = zext i8 %16 to i32
  %or.i.1 = or i32 %conv.i.1, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef %or.i.1) #3
  %incdec.ptr.2 = getelementptr i8, ptr %arrayidx40, i32 3
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.1, align 1
  %conv.i.2 = zext i8 %18 to i32
  %or.i.2 = or i32 %conv.i.2, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef %or.i.2) #3
  %incdec.ptr.3 = getelementptr i8, ptr %arrayidx40, i32 4
  %19 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.2, align 1
  %conv.i.3 = zext i8 %20 to i32
  %or.i.3 = or i32 %conv.i.3, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef %or.i.3) #3
  %incdec.ptr.4 = getelementptr i8, ptr %arrayidx40, i32 5
  %21 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.3, align 1
  %conv.i.4 = zext i8 %22 to i32
  %or.i.4 = or i32 %conv.i.4, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %or.i.4) #3
  %incdec.ptr.5 = getelementptr i8, ptr %arrayidx40, i32 6
  %23 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.4, align 1
  %conv.i.5 = zext i8 %24 to i32
  %or.i.5 = or i32 %conv.i.5, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef %or.i.5) #3
  %incdec.ptr.6 = getelementptr i8, ptr %arrayidx40, i32 7
  %25 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.5, align 1
  %conv.i.6 = zext i8 %26 to i32
  %or.i.6 = or i32 %conv.i.6, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef %or.i.6) #3
  %27 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.6, align 1
  %conv.i.7 = zext i8 %28 to i32
  %or.i.7 = or i32 %conv.i.7, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef %or.i.7) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 8960, i16 %3)
  %cmp19 = icmp ult i16 %3, 8960
  %29 = lshr i16 %3, 8
  %narrow = select i1 %cmp19, i16 %29, i16 35
  tail call void @msleep(i32 noundef 1) #3
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %31, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #3, !srcloc !52
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 26
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %CONFIG348 = getelementptr inbounds %struct.rtl818x_csr, ptr %36, i32 0, i32 26
  %or = or i8 %34, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG348, i8 %or) #3, !srcloc !52
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %38, i32 0, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM2, i32 300682630) #3, !srcloc !54
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %CONFIG352 = getelementptr inbounds %struct.rtl818x_csr, ptr %40, i32 0, i32 26
  %41 = and i8 %34, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG352, i8 %41) #3, !srcloc !52
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %EEPROM_CMD56 = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD56, i8 0) #3, !srcloc !52
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %45, i32 0, i32 57
  %div59.lhs.trunc = trunc i16 %narrow to i8
  %div59112 = udiv i8 %div59.lhs.trunc, 6
  %div59.zext = zext i8 %div59112 to i32
  %arrayidx60 = getelementptr [6 x i8], ptr @rtl8225_tx_gain_cck_ofdm, i32 0, i32 %div59.zext
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx60, align 1
  %48 = lshr i8 %47, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_OFDM, i8 %48) #3, !srcloc !52
  %rem65.lhs.trunc = trunc i16 %narrow to i8
  %rem65113 = urem i8 %rem65.lhs.trunc, 6
  %rem65.zext = zext i8 %rem65113 to i32
  %arrayidx66 = getelementptr [6 x i8], ptr @rtl8225_tx_power_ofdm, i32 0, i32 %rem65.zext
  %49 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx66, align 1
  %conv.i105 = zext i8 %50 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef %conv.i105) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef %conv.i105) #3
  tail call void @msleep(i32 noundef 1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_write_phy(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sub = add i32 %channel, -1
  %hw_value = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 11, i32 %sub, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp = icmp eq i32 %channel, 14
  %.pre = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %.pre)
  %switch.selectcmp = icmp eq i16 %.pre, 13
  %switch.select = select i1 %switch.selectcmp, ptr @rtl8225z2_tx_power_cck_A, ptr @rtl8225z2_tx_power_cck
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %.pre)
  %switch.selectcmp94 = icmp eq i16 %.pre, 12
  %switch.select95 = select i1 %switch.selectcmp94, ptr @rtl8225z2_tx_power_cck_B, ptr %switch.select
  %tmp.0 = select i1 %cmp, ptr @rtl8225z2_tx_power_cck_ch14, ptr %switch.select95
  %incdec.ptr = getelementptr i8, ptr %tmp.0, i32 1
  %4 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmp.0, align 1
  %conv.i = zext i8 %5 to i32
  %or.i = or i32 %conv.i, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef %or.i) #3
  %incdec.ptr.1 = getelementptr i8, ptr %tmp.0, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %conv.i.1 = zext i8 %7 to i32
  %or.i.1 = or i32 %conv.i.1, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef %or.i.1) #3
  %incdec.ptr.2 = getelementptr i8, ptr %tmp.0, i32 3
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.1, align 1
  %conv.i.2 = zext i8 %9 to i32
  %or.i.2 = or i32 %conv.i.2, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef %or.i.2) #3
  %incdec.ptr.3 = getelementptr i8, ptr %tmp.0, i32 4
  %10 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.2, align 1
  %conv.i.3 = zext i8 %11 to i32
  %or.i.3 = or i32 %conv.i.3, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef %or.i.3) #3
  %incdec.ptr.4 = getelementptr i8, ptr %tmp.0, i32 5
  %12 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.3, align 1
  %conv.i.4 = zext i8 %13 to i32
  %or.i.4 = or i32 %conv.i.4, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %or.i.4) #3
  %incdec.ptr.5 = getelementptr i8, ptr %tmp.0, i32 6
  %14 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.4, align 1
  %conv.i.5 = zext i8 %15 to i32
  %or.i.5 = or i32 %conv.i.5, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef %or.i.5) #3
  %incdec.ptr.6 = getelementptr i8, ptr %tmp.0, i32 7
  %16 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.5, align 1
  %conv.i.6 = zext i8 %17 to i32
  %or.i.6 = or i32 %conv.i.6, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef %or.i.6) #3
  %18 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.6, align 1
  %conv.i.7 = zext i8 %19 to i32
  %or.i.7 = or i32 %conv.i.7, 65536
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef %or.i.7) #3
  %20 = lshr i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %.pre)
  %cmp28 = icmp ult i16 %.pre, 35
  %phi.cast = trunc i16 %3 to i8
  %cond = select i1 %cmp28, i8 %phi.cast, i8 35
  %cond.off = add i8 %cond, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cond.off)
  %switch = icmp ult i8 %cond.off, 2
  %spec.select96 = select i1 %switch, i8 12, i8 %cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %spec.select96)
  %cmp42 = icmp ugt i8 %spec.select96, 14
  %sub46 = add i8 %spec.select96, -2
  %spec.select = select i1 %cmp42, i8 %sub46, i8 %spec.select96
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_CCK, i8 %spec.select) #3, !srcloc !52
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %TX_GAIN_CCK50 = getelementptr inbounds %struct.rtl818x_csr, ptr %24, i32 0, i32 56
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TX_GAIN_CCK50) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @msleep(i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 8960, i16 %3)
  %cmp54 = icmp ult i16 %3, 8960
  %phi.cast93 = trunc i16 %20 to i8
  %cond61 = select i1 %cmp54, i8 %phi.cast93, i8 35
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_OFDM, i8 %cond61) #3, !srcloc !52
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 98) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 64) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225z2_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef -1610609831) #3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput, i16 -32764) #3, !srcloc !46
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable, i16 -225) #3, !srcloc !46
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect, i16 -30716) #3, !srcloc !46
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %GP_ENABLE = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %GP_ENABLE, i8 0) #3, !srcloc !52
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 20
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @msleep(i32 noundef 200) #3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %GP_ENABLE7 = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %GP_ENABLE7, i8 -65) #3, !srcloc !52
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %RF_TIMING = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_TIMING, i32 142608384) #3, !srcloc !54
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 9
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 -1) #3, !srcloc !46
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %RF_PARA = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_PARA, i32 1140854784) #3, !srcloc !54
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %EEPROM_CMD14 = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD14, i8 -64) #3, !srcloc !52
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG3, i8 68) #3, !srcloc !52
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %EEPROM_CMD17 = getelementptr inbounds %struct.rtl818x_csr, ptr %31, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD17, i8 0) #3, !srcloc !52
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %RFPinsEnable19 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable19, i16 -225) #3, !srcloc !46
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 3808)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 1089)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 2243)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 3186)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 230)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 2090)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 63)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 821)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 10, i16 noundef zeroext 2516)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 1979)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 2128)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 3295)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 43)
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 15, i16 noundef zeroext 276)
  tail call void @msleep(i32 noundef 100) #3
  %call20 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %34 = and i16 %call20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not = icmp eq i16 %34, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 100) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 439)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 2)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 4)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0189 = phi i32 [ 0, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0189, 1
  %conv22 = trunc i32 %add to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv22)
  %arrayidx = getelementptr [95 x i16], ptr @rtl8225z2_rxgain, i32 0, i32 %i.0189
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %36)
  %exitcond.not = icmp eq i32 %add, 95
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  tail call void @msleep(i32 noundef 100) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 100) #3
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 703)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext -1, i16 noundef zeroext -1)
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %RFPinsEnable24 = getelementptr inbounds %struct.rtl818x_csr, ptr %38, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable24, i16 -225) #3, !srcloc !46
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end
  %i.1190 = phi i32 [ 0, %for.end ], [ %inc33, %for.body28.for.body28_crit_edge ]
  %arrayidx29 = getelementptr [128 x i8], ptr @rtl8225_agc, i32 0, i32 %i.1190
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx29, align 1
  %conv.i = zext i8 %40 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef %conv.i) #3
  tail call void @msleep(i32 noundef 1) #3
  %conv.i188 = xor i32 %i.1190, 128
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef %conv.i188) #3
  tail call void @msleep(i32 noundef 1) #3
  %inc33 = add nuw nsw i32 %i.1190, 1
  %exitcond191.not = icmp eq i32 %inc33, 128
  br i1 %exitcond191.not, label %for.end34, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body28

for.end34:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 1, i32 noundef 2) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 98) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef 254) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef 9) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 24, i32 noundef 239) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef 128) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 12, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 13, i32 noundef 67) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 211) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef 56) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 132) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 6) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 20, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 21, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 22, i32 noundef 0) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 23, i32 noundef 64) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 24, i32 noundef 239) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 25) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 17) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 28, i32 noundef 4) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 30, i32 noundef 179) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 31, i32 noundef 117) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef 31) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 33, i32 noundef 39) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 34, i32 noundef 22) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 35, i32 noundef 128) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 36, i32 noundef 70) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 37, i32 noundef 32) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 39, i32 noundef 136) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 65688) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 65568) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 65662) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 65554) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 65788) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 65656) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 65582) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65683) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 65672) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 65607) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 65744) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 65536) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 65696) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 65544) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 65670) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65674) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 66, i32 noundef 65557) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 67, i32 noundef 65560) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef 65590) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef 65589) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef 65582) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef 65573) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 65564) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef 65554) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef 65545) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef 65540) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 76, i32 noundef 65541) #3
  tail call void @msleep(i32 noundef 1) #3
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 13) #3, !srcloc !52
  tail call void @msleep(i32 noundef 1) #3
  tail call fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef 1)
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #3
  tail call void @msleep(i32 noundef 1) #3
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #3
  tail call void @msleep(i32 noundef 1) #3
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %44, i32 0, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA, i8 3) #3, !srcloc !52
  tail call void @msleep(i32 noundef 1) #3
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr38 = getelementptr i8, ptr %46, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 33603605) #3, !srcloc !54
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %RFPinsEnable40 = getelementptr inbounds %struct.rtl818x_csr, ptr %48, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable40, i16 -225) #3, !srcloc !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 732, i32 11}
!2 = !{ptr @rtl8225_ops, !3, !"rtl8225_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 731, i32 36}
!4 = !{ptr @rtl8225_chan, !5, !"rtl8225_chan", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 250, i32 18}
!6 = !{ptr @rtl8225bcd_rxgain, !7, !"rtl8225bcd_rxgain", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 176, i32 18}
!8 = !{ptr @rtl8225_agc, !9, !"rtl8225_agc", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 191, i32 17}
!10 = !{ptr @rtl8225_tx_gain_cck_ofdm, !11, !"rtl8225_tx_gain_cck_ofdm", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 224, i32 17}
!12 = !{ptr @rtl8225_tx_power_cck_ch14, !13, !"rtl8225_tx_power_cck_ch14", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 237, i32 17}
!14 = !{ptr @rtl8225_tx_power_cck, !15, !"rtl8225_tx_power_cck", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 228, i32 17}
!16 = !{ptr @rtl8225_tx_power_ofdm, !17, !"rtl8225_tx_power_ofdm", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 246, i32 17}
!18 = distinct !{null, !19, !"rtl8225_gain", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 210, i32 17}
!20 = distinct !{null, !21, !"rtl8225_threshold", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 220, i32 17}
!22 = !{ptr @rtl8225z2_tx_power_cck_ch14, !23, !"rtl8225z2_tx_power_cck_ch14", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 456, i32 17}
!24 = !{ptr @rtl8225z2_tx_power_cck_B, !25, !"rtl8225z2_tx_power_cck_B", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 460, i32 17}
!26 = !{ptr @rtl8225z2_tx_power_cck_A, !27, !"rtl8225z2_tx_power_cck_A", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 464, i32 17}
!28 = !{ptr @rtl8225z2_tx_power_cck, !29, !"rtl8225z2_tx_power_cck", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 468, i32 17}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 739, i32 11}
!32 = !{ptr @rtl8225z2_ops, !33, !"rtl8225z2_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 738, i32 36}
!34 = !{ptr @rtl8225z2_rxgain, !35, !"rtl8225z2_rxgain", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225.c", i32 516, i32 18}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2152546708}
!46 = !{i64 5004516}
!47 = !{i64 5005334}
!48 = !{i64 2152544679}
!49 = !{i64 5004716}
!50 = !{i64 2152545291}
!51 = !{i64 2152546284}
!52 = !{i64 5004939}
!53 = !{i64 2152547258}
!54 = !{i64 5005136}
