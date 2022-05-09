; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl8187_priv = type { ptr, ptr, ptr, %struct.mutex, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, ptr, i32, %struct.usb_anchor, %struct.delayed_work, ptr, %struct.rtl8187_led, %struct.rtl8187_led, %struct.rtl8187_led, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, %struct.sk_buff_head, i8, i8, i8, [4 x i8], i8, [40 x i8], %struct.anon.149, %struct.mutex, [36 x i8], ptr, i8, i16, [120 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.rtl8187_led = type { ptr, %struct.led_classdev, i8, [22 x i8], i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.anon.149 = type { %union.anon.150, %struct.sk_buff_head, [72 x i8] }
%union.anon.150 = type { i64, [120 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.145, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.145 = type { i32, i16 }
%struct.rtl818x_csr = type { [6 x i8], [2 x i8], %union.anon, %union.anon.0, i32, [2 x i32], %union.anon.2, %union.anon.3, i32, %union.anon.4, [6 x i8], %union.anon.6, [1 x i8], i8, [4 x i8], %union.anon.8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32, [8 x i8], i32, i16, i16, i16, i16, i8, i8, [2 x i8], [4 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i32, [4 x i8], i8, i8, i8, i8, [16 x i8], i8, [3 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, i8, [24 x i8], i8, i8, i8, i8, i16, i8, [3 x i8], i16, i32, i16, [4 x i8], %union.anon.10, i32, %union.anon.11, %union.anon.12, %union.anon.14 }
%union.anon = type { [2 x i32] }
%union.anon.0 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i16 }
%union.anon.6 = type { i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i16 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.14 = type { i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.144, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.144 = type { i64, i64, i8 }

@rtl8225_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str, ptr @rtl8225_rf_init, ptr @rtl8225_rf_stop, ptr @rtl8225_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtl8225z2_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str.7, ptr @rtl8225z2_rf_init, ptr @rtl8225_rf_stop, ptr @rtl8225_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtl8225z2_b_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str.7, ptr @rtl8225z2_b_rf_init, ptr @rtl8225_rf_stop, ptr @rtl8225_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl8225\00", [24 x i8] zeroinitializer }, align 32
@rtl8225_rf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RF Calibration Failed! %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl8225_rf_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8225_rf_init._entry_ptr = internal global ptr @rtl8225_rf_init._entry, section ".printk_index", align 4
@rtl8225bcd_rxgain = internal constant { [95 x i16], [34 x i8] } { [95 x i16] [i16 1024, i16 1025, i16 1026, i16 1027, i16 1028, i16 1029, i16 1032, i16 1033, i16 1034, i16 1035, i16 1282, i16 1283, i16 1284, i16 1285, i16 1344, i16 1345, i16 1346, i16 1347, i16 1348, i16 1349, i16 1408, i16 1409, i16 1410, i16 1411, i16 1412, i16 1413, i16 1416, i16 1417, i16 1418, i16 1419, i16 1603, i16 1604, i16 1605, i16 1664, i16 1665, i16 1666, i16 1667, i16 1668, i16 1669, i16 1672, i16 1673, i16 1674, i16 1675, i16 1676, i16 1858, i16 1859, i16 1860, i16 1861, i16 1920, i16 1921, i16 1922, i16 1923, i16 1924, i16 1925, i16 1928, i16 1929, i16 1930, i16 1931, i16 1932, i16 1933, i16 1936, i16 1937, i16 1938, i16 1939, i16 1940, i16 1941, i16 1944, i16 1945, i16 1946, i16 1947, i16 1948, i16 1949, i16 1952, i16 1953, i16 1954, i16 1955, i16 1956, i16 1957, i16 1960, i16 1961, i16 1962, i16 1963, i16 1964, i16 1965, i16 1968, i16 1969, i16 1970, i16 1971, i16 1972, i16 1973, i16 1976, i16 1977, i16 1978, i16 1979, i16 1979], [34 x i8] zeroinitializer }, align 32
@rtl8225_agc = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\9E\9E\9E\9E\9E\9E\9E\9E\9D\9C\9B\9A\99\98\97\96\95\94\93\92\91\90\8F\8E\8D\8C\8B\8A\89\88\87\86\85\84\83\82\81\80?>=<;:9876543210/.-,+*)('&%$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11\10\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@rtl8225_tx_gain_cck_ofdm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\06\0E\1E>~", [26 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_cck_ch14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\18\17\15\0C\00\00\00\00\1B\1A\17\0E\00\00\00\00\1F\1E\1A\0F\00\00\00\00\22!\1D\11\00\00\00\00&%!\13\00\00\00\00+*%\15\00\00\00\00", [48 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_cck = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\18\17\15\11\0C\08\04\02\1B\1A\17\13\0E\09\04\02\1F\1E\1A\15\10\0A\05\02\22!\1D\18\11\0B\06\02&%!\1B\14\0D\06\03+*%\1E\16\0E\07\03", [48 x i8] zeroinitializer }, align 32
@rtl8225_tx_power_ofdm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\90\A2\B5\CB\E4", [26 x i8] zeroinitializer }, align 32
@rtl8225_chan = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2140, i32 2268, i32 2396, i32 2524, i32 2652, i32 2780, i32 2908, i32 3036, i32 3164, i32 3292, i32 3420, i32 3548, i32 3676, i32 3954], [40 x i8] zeroinitializer }, align 32
@rtl8225z2_rxgain = internal constant { [95 x i16], [34 x i8] } { [95 x i16] [i16 1024, i16 1025, i16 1026, i16 1027, i16 1028, i16 1029, i16 1032, i16 1033, i16 1034, i16 1035, i16 1282, i16 1283, i16 1284, i16 1285, i16 1344, i16 1345, i16 1346, i16 1347, i16 1348, i16 1349, i16 1408, i16 1409, i16 1410, i16 1411, i16 1412, i16 1413, i16 1416, i16 1417, i16 1418, i16 1419, i16 1603, i16 1604, i16 1605, i16 1664, i16 1665, i16 1666, i16 1667, i16 1668, i16 1669, i16 1672, i16 1673, i16 1674, i16 1675, i16 1676, i16 1858, i16 1859, i16 1860, i16 1861, i16 1920, i16 1921, i16 1922, i16 1923, i16 1924, i16 1925, i16 1928, i16 1929, i16 1930, i16 1931, i16 1932, i16 1933, i16 1936, i16 1937, i16 1938, i16 1939, i16 1940, i16 1941, i16 1944, i16 1945, i16 1946, i16 1947, i16 1948, i16 1949, i16 1952, i16 1953, i16 1954, i16 1955, i16 1956, i16 1957, i16 1960, i16 1961, i16 938, i16 939, i16 940, i16 941, i16 944, i16 945, i16 946, i16 947, i16 948, i16 949, i16 952, i16 953, i16 954, i16 955, i16 955], [34 x i8] zeroinitializer }, align 32
@rtl8225z2_rf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8225z2_rf_init\00", [46 x i8] zeroinitializer }, align 32
@rtl8225z2_rf_init._entry_ptr = internal global ptr @rtl8225z2_rf_init._entry, section ".printk_index", align 4
@rtl8225z2_tx_power_cck_ch14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"65.\1B\00\00\00\000/)\15\00\00\00\000/)\15\00\00\00\000/)\15\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_power_cck = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"65.%\1C\12\09\040/)!\19\10\08\03+*%\1E\16\0E\07\03&%!\1B\14\0D\06\03", [32 x i8] zeroinitializer }, align 32
@rtl8225z2_tx_gain_cck_ofdm = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8225z2\00", [22 x i8] zeroinitializer }, align 32
@rtl8225z2_agc = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"^^^^][YWUSQOMKIGECA?=;97531/-+)'%#!\1F\1D\1B\19\17\15\13\11\0F\0D\0B\09\07\05\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\19\19\19\19\19\19\19\19\19 !\22#$%&&''(()***+++,,,----....///0011111111111111111111", [32 x i8] zeroinitializer }, align 32
@rtl8225z2_ofdm = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\10\0D\01\00\14\FB\FB`\00`\00\00\00\\\00\00@\00@\00\00\00\A8&23\07\A5oU\C8\B3\0A\E1,\8A\86\834\0FO$o\C2k@\80\00\C0\C1X\F1\00\E4\90>m<\FB\07", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"rtl8225_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1004, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"rtl8225z2_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1011, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"rtl8225z2_b_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1018, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1005, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 458, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"rtl8225bcd_rxgain\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 292, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"rtl8225_agc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 307, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"rtl8225_tx_gain_cck_ofdm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 340, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"rtl8225_tx_power_cck_ch14\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 353, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"rtl8225_tx_power_cck\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 344, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"rtl8225_tx_power_ofdm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 362, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"rtl8225_chan\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 366, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"rtl8225z2_rxgain\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 750, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 820, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"rtl8225z2_tx_power_cck_ch14\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 595, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"rtl8225z2_tx_power_cck\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 602, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"rtl8225z2_tx_gain_cck_ofdm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 609, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1012, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"rtl8225z2_agc\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 571, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"rtl8225z2_ofdm\00", align 1
@___asan_gen_.84 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 584, i32 17 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @rtl8225_rf_init._entry, ptr @rtl8225_rf_init._entry_ptr, ptr @rtl8225z2_rf_init._entry, ptr @rtl8225z2_rf_init._entry_ptr, ptr @rtl8225_ops, ptr @rtl8225z2_ops, ptr @rtl8225z2_b_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rtl8225bcd_rxgain, ptr @rtl8225_agc, ptr @rtl8225_tx_gain_cck_ofdm, ptr @rtl8225_tx_power_cck_ch14, ptr @rtl8225_tx_power_cck, ptr @rtl8225_tx_power_ofdm, ptr @rtl8225_chan, ptr @rtl8225z2_rxgain, ptr @.str.6, ptr @rtl8225z2_tx_power_cck_ch14, ptr @rtl8225z2_tx_power_cck, ptr @rtl8225z2_tx_gain_cck_ofdm, ptr @.str.7, ptr @rtl8225z2_agc, ptr @rtl8225z2_ofdm], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_b_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_rf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225bcd_rxgain to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_agc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_gain_cck_ofdm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_cck_ch14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_cck to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_tx_power_ofdm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225_chan to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_rxgain to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_rf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck_ch14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_power_cck to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_tx_gain_cck_ofdm to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_agc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225z2_ofdm to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl818x_ioread8_idx(ptr noundef %priv, ptr noundef %addr, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %4 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %4 to i16
  %5 = and i8 %idx, 3
  %conv4 = zext i8 %5 to i16
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #4
  %8 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_dmabuf, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  ret i8 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl818x_ioread16_idx(ptr noundef %priv, ptr noundef %addr, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %4 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %4 to i16
  %5 = and i8 %idx, 3
  %conv4 = zext i8 %5 to i16
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef %7, i16 noundef zeroext 2, i32 noundef 500) #4
  %8 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_dmabuf, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  ret i16 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl818x_ioread32_idx(ptr noundef %priv, ptr noundef %addr, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %4 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %4 to i16
  %5 = and i8 %idx, 3
  %conv4 = zext i8 %5 to i16
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef %7, i16 noundef zeroext 4, i32 noundef 500) #4
  %8 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_dmabuf, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %addr, i8 noundef zeroext %val, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %0 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_dmabuf, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %1, align 4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %7 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %7 to i16
  %8 = and i8 %idx, 3
  %conv3 = zext i8 %8 to i16
  %9 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl818x_iowrite16_idx(ptr noundef %priv, ptr noundef %addr, i16 noundef zeroext %val, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %1 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_dmabuf, align 128
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %0, ptr %2, align 4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %8 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %8 to i16
  %9 = and i8 %idx, 3
  %conv3 = zext i8 %9 to i16
  %10 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, ptr noundef %10, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl818x_iowrite32_idx(ptr noundef %priv, ptr noundef %addr, i32 noundef %val, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 31
  %1 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_dmabuf, align 128
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %2, align 4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %8 = ptrtoint ptr %addr to i32
  %conv = trunc i32 %8 to i16
  %9 = and i8 %idx, 3
  %conv3 = zext i8 %9 to i16
  %10 = load ptr, ptr %io_dmabuf, align 128
  %call5 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, ptr noundef %10, i16 noundef zeroext 4, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @rtl8187_detect_rf(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 439)
  %call = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 8)
  %call2 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 9)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1416, i16 %call)
  %cmp.not = icmp eq i16 %call, 1416
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %call2)
  %cmp5.not = icmp eq i16 %call2, 1792
  %or.cond = select i1 %cmp.not, i1 %cmp5.not, i1 false
  %spec.select = select i1 %or.cond, ptr @rtl8225z2_ops, ptr @rtl8225_ops
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @rtl8225z2_b_ops, %entry.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225_write(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %asic_rev = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %asic_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %asic_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call i16 @llvm.bswap.i16(i16 %data)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %6, i32 0, i32 43
  %io_mutex.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %udev.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i.i = shl i32 %10, 8
  %or2.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %11 = ptrtoint ptr %RFPinsOutput.i to i32
  %conv.i.i.i = trunc i32 %11 to i16
  %io_dmabuf.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or2.i.i.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i.i, i16 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 2, i32 noundef 500) #4
  %14 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %RFPinsEnable.i = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 44
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i78.i = shl i32 %23, 8
  %or2.i.i79.i = or i32 %shl.i.i.i78.i, -2147483520
  %24 = ptrtoint ptr %RFPinsEnable.i to i32
  %conv.i.i80.i = trunc i32 %24 to i16
  %25 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i82.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or2.i.i79.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i80.i, i16 noundef zeroext 0, ptr noundef %26, i16 noundef zeroext 2, i32 noundef 500) #4
  %27 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %RFPinsSelect.i = getelementptr inbounds %struct.rtl818x_csr, ptr %32, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %33 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i.i85.i = shl i32 %36, 8
  %or2.i.i86.i = or i32 %shl.i.i.i85.i, -2147483520
  %37 = ptrtoint ptr %RFPinsSelect.i to i32
  %conv.i.i87.i = trunc i32 %37 to i16
  %38 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i89.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or2.i.i86.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i87.i, i16 noundef zeroext 0, ptr noundef %39, i16 noundef zeroext 2, i32 noundef 500) #4
  %40 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  %44 = and i16 %17, -3073
  %45 = and i16 %43, -3841
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 128
  %RFPinsEnable11.i = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 44
  %48 = or i16 %30, 1792
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %49 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %50, align 4
  %52 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i93.i = shl i32 %55, 8
  %or.i.i.i = or i32 %shl.i.i.i93.i, -2147483648
  %56 = ptrtoint ptr %RFPinsEnable11.i to i32
  %conv.i.i94.i = trunc i32 %56 to i16
  %57 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i95.i = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i94.i, i16 noundef zeroext 0, ptr noundef %57, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 128
  %RFPinsSelect15.i = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 45
  %60 = or i16 %45, 1792
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %61 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %60, ptr %62, align 4
  %64 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev.i.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i.i99.i = shl i32 %67, 8
  %or.i.i100.i = or i32 %shl.i.i.i99.i, -2147483648
  %68 = ptrtoint ptr %RFPinsSelect15.i to i32
  %conv.i.i101.i = trunc i32 %68 to i16
  %69 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i102.i = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i.i100.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i101.i, i16 noundef zeroext 0, ptr noundef %69, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 128
  %RFPinsOutput20.i = getelementptr inbounds %struct.rtl818x_csr, ptr %72, i32 0, i32 43
  %73 = or i16 %44, 1024
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %74 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %73, ptr %75, align 4
  %77 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %udev.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %shl.i.i.i106.i = shl i32 %80, 8
  %or.i.i107.i = or i32 %shl.i.i.i106.i, -2147483648
  %81 = ptrtoint ptr %RFPinsOutput20.i to i32
  %conv.i.i108.i = trunc i32 %81 to i16
  %82 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i109.i = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i.i107.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i108.i, i16 noundef zeroext 0, ptr noundef %82, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 429496) #4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 128
  %RFPinsOutput25.i = getelementptr inbounds %struct.rtl818x_csr, ptr %85, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %86 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %44, ptr %87, align 4
  %89 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i.i113.i = shl i32 %92, 8
  %or.i.i114.i = or i32 %shl.i.i.i113.i, -2147483648
  %93 = ptrtoint ptr %RFPinsOutput25.i to i32
  %conv.i.i115.i = trunc i32 %93 to i16
  %94 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i116.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i.i114.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i115.i, i16 noundef zeroext 0, ptr noundef %94, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 2147480) #4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %96 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %4, ptr %97, align 4
  %99 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %udev.i.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i = shl i32 %102, 8
  %or28.i = or i32 %shl.i.i, -2147483648
  %conv29.i = zext i8 %addr to i16
  %103 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call31.i = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or28.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv29.i, i16 noundef zeroext -32219, ptr noundef %103, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %conv.i = zext i16 %data to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %104 = and i8 %addr, 15
  %and.i = zext i8 %104 to i32
  %or.i = or i32 %shl.i, %and.i
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 128
  %RFPinsOutput.i7 = getelementptr inbounds %struct.rtl818x_csr, ptr %106, i32 0, i32 43
  %io_mutex.i.i.i8 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %udev.i.i.i9 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %107 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %udev.i.i.i9, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 8
  %shl.i.i.i.i10 = shl i32 %110, 8
  %or2.i.i.i11 = or i32 %shl.i.i.i.i10, -2147483520
  %111 = ptrtoint ptr %RFPinsOutput.i7 to i32
  %conv.i.i.i12 = trunc i32 %111 to i16
  %io_dmabuf.i.i.i13 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %112 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i.i14 = tail call i32 @usb_control_msg(ptr noundef %108, i32 noundef %or2.i.i.i11, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i.i12, i16 noundef zeroext 0, ptr noundef %113, i16 noundef zeroext 2, i32 noundef 500) #4
  %114 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %115, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %118 = and i16 %117, -3073
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 128
  %RFPinsEnable.i15 = getelementptr inbounds %struct.rtl818x_csr, ptr %121, i32 0, i32 44
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %122 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %udev.i.i.i9, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 8
  %shl.i.i.i108.i = shl i32 %125, 8
  %or2.i.i109.i = or i32 %shl.i.i.i108.i, -2147483520
  %126 = ptrtoint ptr %RFPinsEnable.i15 to i32
  %conv.i.i110.i = trunc i32 %126 to i16
  %127 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i112.i = tail call i32 @usb_control_msg(ptr noundef %123, i32 noundef %or2.i.i109.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i110.i, i16 noundef zeroext 0, ptr noundef %128, i16 noundef zeroext 2, i32 noundef 500) #4
  %129 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 128
  %RFPinsEnable9.i = getelementptr inbounds %struct.rtl818x_csr, ptr %134, i32 0, i32 44
  %135 = or i16 %132, 1792
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %136 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %135, ptr %137, align 4
  %139 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %udev.i.i.i9, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i.i116.i = shl i32 %142, 8
  %or.i.i.i16 = or i32 %shl.i.i.i116.i, -2147483648
  %143 = ptrtoint ptr %RFPinsEnable9.i to i32
  %conv.i.i117.i = trunc i32 %143 to i16
  %144 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i118.i = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i.i.i16, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i117.i, i16 noundef zeroext 0, ptr noundef %144, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 128
  %RFPinsSelect.i17 = getelementptr inbounds %struct.rtl818x_csr, ptr %146, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %147 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %udev.i.i.i9, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %shl.i.i.i121.i = shl i32 %150, 8
  %or2.i.i122.i = or i32 %shl.i.i.i121.i, -2147483520
  %151 = ptrtoint ptr %RFPinsSelect.i17 to i32
  %conv.i.i123.i = trunc i32 %151 to i16
  %152 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i125.i = tail call i32 @usb_control_msg(ptr noundef %148, i32 noundef %or2.i.i122.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i123.i, i16 noundef zeroext 0, ptr noundef %153, i16 noundef zeroext 2, i32 noundef 500) #4
  %154 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %155, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 128
  %RFPinsSelect16.i = getelementptr inbounds %struct.rtl818x_csr, ptr %159, i32 0, i32 45
  %160 = or i16 %157, 1792
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %161 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %160, ptr %162, align 4
  %164 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %udev.i.i.i9, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 8
  %shl.i.i.i129.i = shl i32 %167, 8
  %or.i.i130.i = or i32 %shl.i.i.i129.i, -2147483648
  %168 = ptrtoint ptr %RFPinsSelect16.i to i32
  %conv.i.i131.i = trunc i32 %168 to i16
  %169 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i132.i = tail call i32 @usb_control_msg(ptr noundef %165, i32 noundef %or.i.i130.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i131.i, i16 noundef zeroext 0, ptr noundef %169, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 2147480) #4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 128
  %RFPinsOutput21.i = getelementptr inbounds %struct.rtl818x_csr, ptr %172, i32 0, i32 43
  %or23.i = or i16 %119, 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %173 = tail call i16 @llvm.bswap.i16(i16 %or23.i) #4
  %174 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %173, ptr %175, align 4
  %177 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %udev.i.i.i9, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i.i136.i = shl i32 %180, 8
  %or.i.i137.i = or i32 %shl.i.i.i136.i, -2147483648
  %181 = ptrtoint ptr %RFPinsOutput21.i to i32
  %conv.i.i138.i = trunc i32 %181 to i16
  %182 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i139.i = tail call i32 @usb_control_msg(ptr noundef %178, i32 noundef %or.i.i137.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i138.i, i16 noundef zeroext 0, ptr noundef %182, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 429496) #4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 128
  %RFPinsOutput26.i = getelementptr inbounds %struct.rtl818x_csr, ptr %185, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %186 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %118, ptr %187, align 4
  %189 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %udev.i.i.i9, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 8
  %shl.i.i.i143.i = shl i32 %192, 8
  %or.i.i144.i = or i32 %shl.i.i.i143.i, -2147483648
  %193 = ptrtoint ptr %RFPinsOutput26.i to i32
  %conv.i.i145.i = trunc i32 %193 to i16
  %194 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i146.i = tail call i32 @usb_control_msg(ptr noundef %190, i32 noundef %or.i.i144.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i145.i, i16 noundef zeroext 0, ptr noundef %194, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 2147480) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end51.i.for.body.i_crit_edge, %if.else
  %i.0210.i = phi i32 [ 15, %if.else ], [ %dec.i, %if.end51.i.for.body.i_crit_edge ]
  %shl29.i = shl nuw i32 1, %i.0210.i
  %and30.i = and i32 %shl29.i, %or.i
  %shr.i = lshr i32 %and30.i, %i.0210.i
  %196 = trunc i32 %shr.i to i16
  %conv32.i = or i16 %119, %196
  %and33.i = and i32 %i.0210.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool.not.i = icmp eq i32 %and33.i, 0
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 128
  %RFPinsOutput37.c104.i = getelementptr inbounds %struct.rtl818x_csr, ptr %198, i32 0, i32 43
  br i1 %tobool.not.i, label %if.then48.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %199 = tail call i16 @llvm.bswap.i16(i16 %conv32.i) #4
  %200 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %199, ptr %201, align 4
  %203 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %udev.i.i.i9, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 8
  %shl.i.i.i150.i = shl i32 %206, 8
  %or.i.i151.i = or i32 %shl.i.i.i150.i, -2147483648
  %207 = ptrtoint ptr %RFPinsOutput37.c104.i to i32
  %conv.i.i152.i = trunc i32 %207 to i16
  %208 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i153.i = tail call i32 @usb_control_msg(ptr noundef %204, i32 noundef %or.i.i151.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i152.i, i16 noundef zeroext 0, ptr noundef %208, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 128
  %RFPinsOutput37.c.i = getelementptr inbounds %struct.rtl818x_csr, ptr %210, i32 0, i32 43
  %211 = or i16 %conv32.i, 2
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %212 = tail call i16 @llvm.bswap.i16(i16 %211) #4
  %213 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %212, ptr %214, align 4
  %216 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %udev.i.i.i9, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 8
  %shl.i.i.i157.i = shl i32 %219, 8
  %or.i.i158.i = or i32 %shl.i.i.i157.i, -2147483648
  %220 = ptrtoint ptr %RFPinsOutput37.c.i to i32
  %conv.i.i159.i = trunc i32 %220 to i16
  %221 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i160.i = tail call i32 @usb_control_msg(ptr noundef %217, i32 noundef %or.i.i158.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i159.i, i16 noundef zeroext 0, ptr noundef %221, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 128
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  br label %if.end51.i

if.then48.critedge.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %224 = or i16 %conv32.i, 2
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %225 = tail call i16 @llvm.bswap.i16(i16 %224) #4
  %226 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %225, ptr %227, align 4
  %229 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %udev.i.i.i9, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 8
  %shl.i.i.i171.i = shl i32 %232, 8
  %or.i.i172.i = or i32 %shl.i.i.i171.i, -2147483648
  %233 = ptrtoint ptr %RFPinsOutput37.c104.i to i32
  %conv.i.i173.i = trunc i32 %233 to i16
  %234 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i174.i = tail call i32 @usb_control_msg(ptr noundef %230, i32 noundef %or.i.i172.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i173.i, i16 noundef zeroext 0, ptr noundef %234, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %1, align 128
  %RFPinsOutput42.c105.i = getelementptr inbounds %struct.rtl818x_csr, ptr %236, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %237 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %225, ptr %238, align 4
  %240 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %udev.i.i.i9, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 8
  %shl.i.i.i178.i = shl i32 %243, 8
  %or.i.i179.i = or i32 %shl.i.i.i178.i, -2147483648
  %244 = ptrtoint ptr %RFPinsOutput42.c105.i to i32
  %conv.i.i180.i = trunc i32 %244 to i16
  %245 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i181.i = tail call i32 @usb_control_msg(ptr noundef %241, i32 noundef %or.i.i179.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i180.i, i16 noundef zeroext 0, ptr noundef %245, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 128
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8, i32 noundef 0) #4
  %248 = tail call i16 @llvm.bswap.i16(i16 %conv32.i) #4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.critedge.i, %if.then.i
  %.sink.i = phi i16 [ %212, %if.then.i ], [ %248, %if.then48.critedge.i ]
  %.pn.i = phi ptr [ %223, %if.then.i ], [ %247, %if.then48.critedge.i ]
  %RFPinsOutput42.c.sink.i = getelementptr inbounds %struct.rtl818x_csr, ptr %.pn.i, i32 0, i32 43
  %249 = ptrtoint ptr %io_dmabuf.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %.sink.i, ptr %250, align 4
  %252 = ptrtoint ptr %udev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %udev.i.i.i9, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 8
  %shl.i.i.i164.i = shl i32 %255, 8
  %or.i.i165.i = or i32 %shl.i.i.i164.i, -2147483648
  %256 = ptrtoint ptr %RFPinsOutput42.c.sink.i to i32
  %conv.i.i166.i = trunc i32 %256 to i16
  %257 = load ptr, ptr %io_dmabuf.i.i.i13, align 128
  %call5.i.i167.i = tail call i32 @usb_control_msg(ptr noundef %253, i32 noundef %or.i.i165.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i166.i, i16 noundef zeroext 0, ptr noundef %257, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8) #4
  %dec.i = add nsw i32 %i.0210.i, -1
  %cmp.not.i = icmp eq i32 %i.0210.i, 0
  br i1 %cmp.not.i, label %if.end51.i.if.end_crit_edge, label %if.end51.i.for.body.i_crit_edge

if.end51.i.for.body.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end51.i.if.end_crit_edge:                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.end51.i.if.end_crit_edge, %if.then
  %io_mutex.i.i.i8.sink = phi ptr [ %io_mutex.i.i.i, %if.then ], [ %io_mutex.i.i.i8, %if.end51.i.if.end_crit_edge ]
  %io_dmabuf.i.i.i13.sink = phi ptr [ %io_dmabuf.i.i.i, %if.then ], [ %io_dmabuf.i.i.i13, %if.end51.i.if.end_crit_edge ]
  %.sink45 = phi i16 [ %73, %if.then ], [ %173, %if.end51.i.if.end_crit_edge ]
  %udev.i.i.i9.sink = phi ptr [ %udev.i.i.i, %if.then ], [ %udev.i.i.i9, %if.end51.i.if.end_crit_edge ]
  %.sink = phi i16 [ %45, %if.then ], [ %157, %if.end51.i.if.end_crit_edge ]
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 128
  %RFPinsOutput53.i = getelementptr inbounds %struct.rtl818x_csr, ptr %259, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8.sink, i32 noundef 0) #4
  %260 = ptrtoint ptr %io_dmabuf.i.i.i13.sink to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %.sink45, ptr %261, align 4
  %263 = ptrtoint ptr %udev.i.i.i9.sink to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %udev.i.i.i9.sink, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %264, align 8
  %shl.i.i.i192.i = shl i32 %266, 8
  %or.i.i193.i = or i32 %shl.i.i.i192.i, -2147483648
  %267 = ptrtoint ptr %RFPinsOutput53.i to i32
  %conv.i.i194.i = trunc i32 %267 to i16
  %268 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %call5.i.i195.i = tail call i32 @usb_control_msg(ptr noundef %264, i32 noundef %or.i.i193.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i194.i, i16 noundef zeroext 0, ptr noundef %268, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8.sink) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %269(i32 noundef 2147480) #4
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %1, align 128
  %RFPinsOutput58.i = getelementptr inbounds %struct.rtl818x_csr, ptr %271, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8.sink, i32 noundef 0) #4
  %272 = ptrtoint ptr %io_dmabuf.i.i.i13.sink to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %.sink45, ptr %273, align 4
  %275 = ptrtoint ptr %udev.i.i.i9.sink to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %udev.i.i.i9.sink, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %276, align 8
  %shl.i.i.i199.i = shl i32 %278, 8
  %or.i.i200.i = or i32 %shl.i.i.i199.i, -2147483648
  %279 = ptrtoint ptr %RFPinsOutput58.i to i32
  %conv.i.i201.i = trunc i32 %279 to i16
  %280 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %call5.i.i202.i = tail call i32 @usb_control_msg(ptr noundef %276, i32 noundef %or.i.i200.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i201.i, i16 noundef zeroext 0, ptr noundef %280, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8.sink) #4
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 128
  %RFPinsSelect63.i = getelementptr inbounds %struct.rtl818x_csr, ptr %282, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i8.sink, i32 noundef 0) #4
  %283 = ptrtoint ptr %io_dmabuf.i.i.i13.sink to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %.sink, ptr %284, align 4
  %286 = ptrtoint ptr %udev.i.i.i9.sink to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %udev.i.i.i9.sink, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 8
  %shl.i.i.i206.i = shl i32 %289, 8
  %or.i.i207.i = or i32 %shl.i.i.i206.i, -2147483648
  %290 = ptrtoint ptr %RFPinsSelect63.i to i32
  %conv.i.i208.i = trunc i32 %290 to i16
  %291 = load ptr, ptr %io_dmabuf.i.i.i13.sink, align 128
  %call5.i.i209.i = tail call i32 @usb_control_msg(ptr noundef %287, i32 noundef %or.i.i207.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i208.i, i16 noundef zeroext 0, ptr noundef %291, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i8.sink) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rtl8225_read(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %RFPinsOutput = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 43
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %7, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %8 = ptrtoint ptr %RFPinsOutput to i32
  %conv.i.i = trunc i32 %8 to i16
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or2.i.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %10, i16 noundef zeroext 2, i32 noundef 500) #4
  %11 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_dmabuf.i.i, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %RFPinsEnable = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 44
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %17 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i.i195 = shl i32 %20, 8
  %or2.i.i196 = or i32 %shl.i.i.i195, -2147483520
  %21 = ptrtoint ptr %RFPinsEnable to i32
  %conv.i.i197 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i199 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or2.i.i196, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i197, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 2, i32 noundef 500) #4
  %24 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_dmabuf.i.i, align 128
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 128
  %RFPinsSelect = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %30 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i.i202 = shl i32 %33, 8
  %or2.i.i203 = or i32 %shl.i.i.i202, -2147483520
  %34 = ptrtoint ptr %RFPinsSelect to i32
  %conv.i.i204 = trunc i32 %34 to i16
  %35 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i206 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or2.i.i203, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i204, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 2, i32 noundef 500) #4
  %37 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_dmabuf.i.i, align 128
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %41 = and i16 %14, -3841
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 128
  %RFPinsEnable8 = getelementptr inbounds %struct.rtl818x_csr, ptr %44, i32 0, i32 44
  %45 = or i16 %27, 3840
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %46 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_dmabuf.i.i, align 128
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %47, align 4
  %49 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i.i210 = shl i32 %52, 8
  %or.i.i = or i32 %shl.i.i.i210, -2147483648
  %53 = ptrtoint ptr %RFPinsEnable8 to i32
  %conv.i.i211 = trunc i32 %53 to i16
  %54 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i212 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i211, i16 noundef zeroext 0, ptr noundef %54, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 128
  %RFPinsSelect12 = getelementptr inbounds %struct.rtl818x_csr, ptr %56, i32 0, i32 45
  %57 = or i16 %40, 3840
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %58 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_dmabuf.i.i, align 128
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %57, ptr %59, align 4
  %61 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udev.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i.i216 = shl i32 %64, 8
  %or.i.i217 = or i32 %shl.i.i.i216, -2147483648
  %65 = ptrtoint ptr %RFPinsSelect12 to i32
  %conv.i.i218 = trunc i32 %65 to i16
  %66 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i219 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i.i217, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i218, i16 noundef zeroext 0, ptr noundef %66, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 128
  %RFPinsOutput17 = getelementptr inbounds %struct.rtl818x_csr, ptr %68, i32 0, i32 43
  %or19 = or i16 %42, 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %69 = tail call i16 @llvm.bswap.i16(i16 %or19) #4
  %70 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_dmabuf.i.i, align 128
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %69, ptr %71, align 4
  %73 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i.i.i223 = shl i32 %76, 8
  %or.i.i224 = or i32 %shl.i.i.i223, -2147483648
  %77 = ptrtoint ptr %RFPinsOutput17 to i32
  %conv.i.i225 = trunc i32 %77 to i16
  %78 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i226 = tail call i32 @usb_control_msg(ptr noundef %74, i32 noundef %or.i.i224, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i225, i16 noundef zeroext 0, ptr noundef %78, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 858992) #4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 128
  %RFPinsOutput22 = getelementptr inbounds %struct.rtl818x_csr, ptr %81, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %82 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_dmabuf.i.i, align 128
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %41, ptr %83, align 4
  %85 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udev.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 8
  %shl.i.i.i230 = shl i32 %88, 8
  %or.i.i231 = or i32 %shl.i.i.i230, -2147483648
  %89 = ptrtoint ptr %RFPinsOutput22 to i32
  %conv.i.i232 = trunc i32 %89 to i16
  %90 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i233 = tail call i32 @usb_control_msg(ptr noundef %86, i32 noundef %or.i.i231, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i232, i16 noundef zeroext 0, ptr noundef %90, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 1073740) #4
  %conv25 = zext i8 %addr to i32
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %entry
  %i.0353 = phi i32 [ 4, %entry ], [ %dec, %if.end47.for.body_crit_edge ]
  %shr = lshr i32 %conv25, %i.0353
  %92 = trunc i32 %shr to i16
  %93 = and i16 %92, 1
  %conv28 = or i16 %93, %42
  %and29 = and i32 %i.0353, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not = icmp eq i32 %and29, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  %RFPinsOutput31 = getelementptr inbounds %struct.rtl818x_csr, ptr %95, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv28) #4
  %97 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_dmabuf.i.i, align 128
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %96, ptr %98, align 4
  %100 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %udev.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 8
  %shl.i.i.i237 = shl i32 %103, 8
  %or.i.i238 = or i32 %shl.i.i.i237, -2147483648
  %104 = ptrtoint ptr %RFPinsOutput31 to i32
  %conv.i.i239 = trunc i32 %104 to i16
  %105 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i240 = tail call i32 @usb_control_msg(ptr noundef %101, i32 noundef %or.i.i238, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i239, i16 noundef zeroext 0, ptr noundef %105, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 128
  %RFPinsOutput33 = getelementptr inbounds %struct.rtl818x_csr, ptr %108, i32 0, i32 43
  %109 = or i16 %conv28, 2
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #4
  %111 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %io_dmabuf.i.i, align 128
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %110, ptr %112, align 4
  %114 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %udev.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %shl.i.i.i244 = shl i32 %117, 8
  %or.i.i245 = or i32 %shl.i.i.i244, -2147483648
  %118 = ptrtoint ptr %RFPinsOutput33 to i32
  %conv.i.i246 = trunc i32 %118 to i16
  %119 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i247 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %or.i.i245, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i246, i16 noundef zeroext 0, ptr noundef %119, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 429496) #4
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 128
  %RFPinsOutput38 = getelementptr inbounds %struct.rtl818x_csr, ptr %122, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %123 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %io_dmabuf.i.i, align 128
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %110, ptr %124, align 4
  %126 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %udev.i.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 8
  %shl.i.i.i251 = shl i32 %129, 8
  %or.i.i252 = or i32 %shl.i.i.i251, -2147483648
  %130 = ptrtoint ptr %RFPinsOutput38 to i32
  %conv.i.i253 = trunc i32 %130 to i16
  %131 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i254 = tail call i32 @usb_control_msg(ptr noundef %127, i32 noundef %or.i.i252, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i253, i16 noundef zeroext 0, ptr noundef %131, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 429496) #4
  br i1 %tobool.not, label %if.end.if.end47_crit_edge, label %if.then44

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 128
  %RFPinsOutput46 = getelementptr inbounds %struct.rtl818x_csr, ptr %134, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %135 = tail call i16 @llvm.bswap.i16(i16 %conv28) #4
  %136 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_dmabuf.i.i, align 128
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %135, ptr %137, align 4
  %139 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %udev.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i.i258 = shl i32 %142, 8
  %or.i.i259 = or i32 %shl.i.i.i258, -2147483648
  %143 = ptrtoint ptr %RFPinsOutput46 to i32
  %conv.i.i260 = trunc i32 %143 to i16
  %144 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i261 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i.i259, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i260, i16 noundef zeroext 0, ptr noundef %144, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end.if.end47_crit_edge
  %dec = add nsw i32 %i.0353, -1
  %cmp.not = icmp eq i32 %i.0353, 0
  br i1 %cmp.not, label %for.end, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end47
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 128
  %RFPinsOutput49 = getelementptr inbounds %struct.rtl818x_csr, ptr %147, i32 0, i32 43
  %148 = or i16 %42, 8
  %or52 = or i16 %42, 10
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %149 = tail call i16 @llvm.bswap.i16(i16 %or52) #4
  %150 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %io_dmabuf.i.i, align 128
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %149, ptr %151, align 4
  %153 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %udev.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %shl.i.i.i265 = shl i32 %156, 8
  %or.i.i266 = or i32 %shl.i.i.i265, -2147483648
  %157 = ptrtoint ptr %RFPinsOutput49 to i32
  %conv.i.i267 = trunc i32 %157 to i16
  %158 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i268 = tail call i32 @usb_control_msg(ptr noundef %154, i32 noundef %or.i.i266, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i267, i16 noundef zeroext 0, ptr noundef %158, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 429496) #4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 128
  %RFPinsOutput55 = getelementptr inbounds %struct.rtl818x_csr, ptr %161, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %162 = tail call i16 @llvm.bswap.i16(i16 %148) #4
  %163 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_dmabuf.i.i, align 128
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %162, ptr %164, align 4
  %166 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %udev.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 8
  %shl.i.i.i272 = shl i32 %169, 8
  %or.i.i273 = or i32 %shl.i.i.i272, -2147483648
  %170 = ptrtoint ptr %RFPinsOutput55 to i32
  %conv.i.i274 = trunc i32 %170 to i16
  %171 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i275 = tail call i32 @usb_control_msg(ptr noundef %167, i32 noundef %or.i.i273, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i274, i16 noundef zeroext 0, ptr noundef %171, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 429496) #4
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 128
  %RFPinsOutput60 = getelementptr inbounds %struct.rtl818x_csr, ptr %174, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %175 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %io_dmabuf.i.i, align 128
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %162, ptr %176, align 4
  %178 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %udev.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %shl.i.i.i279 = shl i32 %181, 8
  %or.i.i280 = or i32 %shl.i.i.i279, -2147483648
  %182 = ptrtoint ptr %RFPinsOutput60 to i32
  %conv.i.i281 = trunc i32 %182 to i16
  %183 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i282 = tail call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or.i.i280, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i281, i16 noundef zeroext 0, ptr noundef %183, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 429496) #4
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.end
  %i.1355 = phi i32 [ 11, %for.end ], [ %dec107, %for.body67.for.body67_crit_edge ]
  %out.0354 = phi i16 [ 0, %for.end ], [ %out.1, %for.body67.for.body67_crit_edge ]
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 128
  %RFPinsOutput69 = getelementptr inbounds %struct.rtl818x_csr, ptr %186, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %187 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %io_dmabuf.i.i, align 128
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %162, ptr %188, align 4
  %190 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %udev.i.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 8
  %shl.i.i.i286 = shl i32 %193, 8
  %or.i.i287 = or i32 %shl.i.i.i286, -2147483648
  %194 = ptrtoint ptr %RFPinsOutput69 to i32
  %conv.i.i288 = trunc i32 %194 to i16
  %195 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i289 = tail call i32 @usb_control_msg(ptr noundef %191, i32 noundef %or.i.i287, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i288, i16 noundef zeroext 0, ptr noundef %195, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748) #4
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 128
  %RFPinsOutput74 = getelementptr inbounds %struct.rtl818x_csr, ptr %198, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %199 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io_dmabuf.i.i, align 128
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %149, ptr %200, align 4
  %202 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %udev.i.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 8
  %shl.i.i.i293 = shl i32 %205, 8
  %or.i.i294 = or i32 %shl.i.i.i293, -2147483648
  %206 = ptrtoint ptr %RFPinsOutput74 to i32
  %conv.i.i295 = trunc i32 %206 to i16
  %207 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i296 = tail call i32 @usb_control_msg(ptr noundef %203, i32 noundef %or.i.i294, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i295, i16 noundef zeroext 0, ptr noundef %207, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 429496) #4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 128
  %RFPinsOutput80 = getelementptr inbounds %struct.rtl818x_csr, ptr %210, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %211 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %io_dmabuf.i.i, align 128
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %149, ptr %212, align 4
  %214 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %udev.i.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 8
  %shl.i.i.i300 = shl i32 %217, 8
  %or.i.i301 = or i32 %shl.i.i.i300, -2147483648
  %218 = ptrtoint ptr %RFPinsOutput80 to i32
  %conv.i.i302 = trunc i32 %218 to i16
  %219 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i303 = tail call i32 @usb_control_msg(ptr noundef %215, i32 noundef %or.i.i301, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i302, i16 noundef zeroext 0, ptr noundef %219, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 429496) #4
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 128
  %RFPinsOutput86 = getelementptr inbounds %struct.rtl818x_csr, ptr %222, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %223 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io_dmabuf.i.i, align 128
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %149, ptr %224, align 4
  %226 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %udev.i.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 8
  %shl.i.i.i307 = shl i32 %229, 8
  %or.i.i308 = or i32 %shl.i.i.i307, -2147483648
  %230 = ptrtoint ptr %RFPinsOutput86 to i32
  %conv.i.i309 = trunc i32 %230 to i16
  %231 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i310 = tail call i32 @usb_control_msg(ptr noundef %227, i32 noundef %or.i.i308, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i309, i16 noundef zeroext 0, ptr noundef %231, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %232(i32 noundef 429496) #4
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 128
  %RFPinsInput = getelementptr inbounds %struct.rtl818x_csr, ptr %234, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %235 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %udev.i.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 8
  %shl.i.i.i313 = shl i32 %238, 8
  %or2.i.i314 = or i32 %shl.i.i.i313, -2147483520
  %239 = ptrtoint ptr %RFPinsInput to i32
  %conv.i.i315 = trunc i32 %239 to i16
  %240 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i317 = tail call i32 @usb_control_msg(ptr noundef %236, i32 noundef %or2.i.i314, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i315, i16 noundef zeroext 0, ptr noundef %241, i16 noundef zeroext 2, i32 noundef 500) #4
  %242 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %io_dmabuf.i.i, align 128
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %243, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %246 = and i16 %245, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %tobool95.not = icmp eq i16 %246, 0
  %shl = shl nuw i32 1, %i.1355
  %247 = trunc i32 %shl to i16
  %conv99 = select i1 %tobool95.not, i16 0, i16 %247
  %out.1 = or i16 %conv99, %out.0354
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 128
  %RFPinsOutput102 = getelementptr inbounds %struct.rtl818x_csr, ptr %249, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %250 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_dmabuf.i.i, align 128
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %162, ptr %251, align 4
  %253 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %udev.i.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 8
  %shl.i.i.i321 = shl i32 %256, 8
  %or.i.i322 = or i32 %shl.i.i.i321, -2147483648
  %257 = ptrtoint ptr %RFPinsOutput102 to i32
  %conv.i.i323 = trunc i32 %257 to i16
  %258 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i324 = tail call i32 @usb_control_msg(ptr noundef %254, i32 noundef %or.i.i322, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i323, i16 noundef zeroext 0, ptr noundef %258, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %259(i32 noundef 429496) #4
  %dec107 = add nsw i32 %i.1355, -1
  %cmp65.not = icmp eq i32 %i.1355, 0
  br i1 %cmp65.not, label %for.end108, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body67

for.end108:                                       ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #6
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 128
  %RFPinsOutput110 = getelementptr inbounds %struct.rtl818x_csr, ptr %261, i32 0, i32 43
  %or113 = or i16 %42, 12
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %262 = tail call i16 @llvm.bswap.i16(i16 %or113) #4
  %263 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %io_dmabuf.i.i, align 128
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %262, ptr %264, align 4
  %266 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %udev.i.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 8
  %shl.i.i.i328 = shl i32 %269, 8
  %or.i.i329 = or i32 %shl.i.i.i328, -2147483648
  %270 = ptrtoint ptr %RFPinsOutput110 to i32
  %conv.i.i330 = trunc i32 %270 to i16
  %271 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i331 = tail call i32 @usb_control_msg(ptr noundef %267, i32 noundef %or.i.i329, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i330, i16 noundef zeroext 0, ptr noundef %271, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %272(i32 noundef 429496) #4
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 128
  %RFPinsEnable116 = getelementptr inbounds %struct.rtl818x_csr, ptr %274, i32 0, i32 44
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %275 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %io_dmabuf.i.i, align 128
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %27, ptr %276, align 4
  %278 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %udev.i.i, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %279, align 8
  %shl.i.i.i335 = shl i32 %281, 8
  %or.i.i336 = or i32 %shl.i.i.i335, -2147483648
  %282 = ptrtoint ptr %RFPinsEnable116 to i32
  %conv.i.i337 = trunc i32 %282 to i16
  %283 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i338 = tail call i32 @usb_control_msg(ptr noundef %279, i32 noundef %or.i.i336, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i337, i16 noundef zeroext 0, ptr noundef %283, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 128
  %RFPinsSelect118 = getelementptr inbounds %struct.rtl818x_csr, ptr %285, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %286 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %io_dmabuf.i.i, align 128
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %40, ptr %287, align 4
  %289 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %udev.i.i, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %290, align 8
  %shl.i.i.i342 = shl i32 %292, 8
  %or.i.i343 = or i32 %shl.i.i.i342, -2147483648
  %293 = ptrtoint ptr %RFPinsSelect118 to i32
  %conv.i.i344 = trunc i32 %293 to i16
  %294 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i345 = tail call i32 @usb_control_msg(ptr noundef %290, i32 noundef %or.i.i343, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i344, i16 noundef zeroext 0, ptr noundef %294, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 128
  %RFPinsOutput120 = getelementptr inbounds %struct.rtl818x_csr, ptr %296, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %297 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %io_dmabuf.i.i, align 128
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 -24573, ptr %298, align 4
  %300 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %udev.i.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %301, align 8
  %shl.i.i.i349 = shl i32 %303, 8
  %or.i.i350 = or i32 %shl.i.i.i349, -2147483648
  %304 = ptrtoint ptr %RFPinsOutput120 to i32
  %conv.i.i351 = trunc i32 %304 to i16
  %305 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i352 = tail call i32 @usb_control_msg(ptr noundef %301, i32 noundef %or.i.i350, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i351, i16 noundef zeroext 0, ptr noundef %305, i16 noundef zeroext 2, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  ret i16 %out.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 103)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 4064)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 1089)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 1158)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 3008)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 2790)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 2090)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 31)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 820)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 10, i16 noundef zeroext 4052)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 913)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 80)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 1755)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 41)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 15, i16 noundef zeroext 2324)
  tail call void @msleep(i32 noundef 100) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 200) #4
  %call = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %2 = and i16 %call, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 100) #4
  %call2 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %3 = and i16 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %do.end, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev7 = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  %call8 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %conv9 = zext i16 %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.1, i32 noundef %conv9) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 295)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10
  %i.0165 = phi i32 [ 0, %if.end10 ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0165, 1
  %conv12 = trunc i32 %add to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv12)
  %arrayidx = getelementptr [95 x i16], ptr @rtl8225bcd_rxgain, i32 0, i32 %i.0165
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %7)
  %exitcond.not = icmp eq i32 %add, 95
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 39)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 559)
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.end
  %i.1166 = phi i32 [ 0, %for.end ], [ %inc21, %for.body16.for.body16_crit_edge ]
  %arrayidx17 = getelementptr [128 x i8], ptr @rtl8225_agc, i32 0, i32 %i.1166
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef %conv18) #4
  %add19 = add nuw nsw i32 %i.1166, 128
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef %add19) #4
  %inc21 = add nuw nsw i32 %i.1166, 1
  %exitcond167.not = icmp eq i32 %inc21, 128
  br i1 %exitcond167.not, label %for.end22, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16

for.end22:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 1, i32 noundef 2) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 66) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef 254) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef 9) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef 128) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 12, i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 211) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef 56) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 132) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 6) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 20, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 21, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 22, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 23, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 24, i32 noundef 239) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 25) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 118) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 28, i32 noundef 4) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 30, i32 noundef 149) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 31, i32 noundef 117) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef 31) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 33, i32 noundef 39) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 34, i32 noundef 22) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 36, i32 noundef 70) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 37, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 39, i32 noundef 136) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 13, i32 noundef 35) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 124) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 35, i32 noundef 136) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 65688) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 65568) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 65662) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 65554) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 65788) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 65656) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 65582) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 65672) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 65607) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 65744) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 65536) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 65696) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 65544) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 65670) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65677) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 66, i32 noundef 65557) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 67, i32 noundef 65560) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef 65567) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef 65566) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef 65562) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef 65557) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 65552) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef 65546) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef 65541) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef 65538) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 76, i32 noundef 65541) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %TESTR = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 28
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_dmabuf.i.i, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 13, ptr %13, align 4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i.i = shl i32 %18, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %19 = ptrtoint ptr %TESTR to i32
  %conv.i.i = trunc i32 %19 to i16
  %20 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef 1)
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %23 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_dmabuf.i.i, align 128
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %24, align 4
  %26 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i.i155 = shl i32 %29, 8
  %or.i.i156 = or i32 %shl.i.i.i155, -2147483648
  %30 = ptrtoint ptr %TX_ANTENNA to i32
  %conv.i.i157 = trunc i32 %30 to i16
  %31 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i158 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i.i156, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i157, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %32 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_dmabuf.i.i, align 128
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33603645, ptr %33, align 4
  %35 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i.i162 = shl i32 %38, 8
  %or.i.i163 = or i32 %shl.i.i.i162, -2147483648
  %39 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i164 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i.i163, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext -108, i16 noundef zeroext 0, ptr noundef %39, i16 noundef zeroext 4, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 80)
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 13, i32 noundef 35) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 124) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 35, i32 noundef 136) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65677) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 31)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225_rf_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #4
  %rf = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef %call.i)
  br label %if.end8

if.else:                                          ; preds = %entry
  %cmp5 = icmp eq ptr %9, @rtl8225z2_rf_init
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef %call.i)
  br label %if.end8

if.else7:                                         ; preds = %if.else
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 8
  %sub.i = add i32 %call.i, -1
  %hw_value.i = getelementptr %struct.rtl8187_priv, ptr %11, i32 0, i32 4, i32 %sub.i, i32 3
  %12 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value.i, align 2
  %14 = and i16 %13, 15
  %conv2.i = zext i16 %14 to i32
  %15 = lshr i16 %13, 4
  %hw_rev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %11, i32 0, i32 20
  %16 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %cond.i = select i1 %cmp.i, i32 0, i32 7
  %add.i = add nuw nsw i32 %cond.i, %conv2.i
  %txpwr_base.i = getelementptr inbounds %struct.rtl8187_priv, ptr %11, i32 0, i32 17
  %18 = ptrtoint ptr %txpwr_base.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %txpwr_base.i, align 16
  %20 = and i16 %19, 15
  %and13.i = zext i16 %20 to i32
  %add15.i = add nuw nsw i32 %add.i, %and13.i
  %21 = tail call i32 @llvm.umin.i32(i32 %add15.i, i32 35) #4
  %22 = and i16 %13, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp27.not.i = icmp eq i16 %22, 0
  %cond32.i = select i1 %cmp.i, i8 17, i8 25
  %conv26.i = trunc i16 %15 to i8
  %cond37.i = select i1 %cmp.i, i8 2, i8 10
  %add39.i = add i8 %cond37.i, %conv26.i
  %ofdm_power.0.i = select i1 %cmp27.not.i, i8 %add39.i, i8 %cond32.i
  %23 = trunc i16 %19 to i8
  %24 = lshr i8 %23, 4
  %add46.i = add i8 %ofdm_power.0.i, %24
  %25 = tail call i8 @llvm.umin.i8(i8 %add46.i, i8 35) #4
  %cond58.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i)
  %cmp60.i = icmp eq i32 %call.i, 14
  %tmp.0.i = select i1 %cmp60.i, ptr @rtl8225z2_tx_power_cck_ch14, ptr @rtl8225z2_tx_power_cck
  br i1 %cmp.i, label %if.then68.i, label %if.else82.i

if.then68.i:                                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp70.i = icmp ult i32 %21, 7
  br i1 %cmp70.i, label %if.then68.i.if.end104.i_crit_edge, label %if.else73.i

if.then68.i.if.end104.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.i

if.else73.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp75.i = icmp ult i32 %21, 12
  br i1 %cmp75.i, label %if.then77.i, label %if.else78.i

if.then77.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = select i1 %cmp60.i, ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck_ch14, i32 0, i32 8), ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck, i32 0, i32 8)
  br label %if.end104.i

if.else78.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr79.i = select i1 %cmp60.i, ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck_ch14, i32 0, i32 16), ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck, i32 0, i32 16)
  br label %if.end104.i

if.else82.i:                                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp84.i = icmp ult i32 %21, 6
  br i1 %cmp84.i, label %if.else82.i.if.end104.i_crit_edge, label %if.else87.i

if.else82.i.if.end104.i_crit_edge:                ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.i

if.else87.i:                                      ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp89.i = icmp ult i32 %21, 12
  br i1 %cmp89.i, label %if.then91.i, label %if.else93.i

if.then91.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr92.i = select i1 %cmp60.i, ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck_ch14, i32 0, i32 8), ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck, i32 0, i32 8)
  br label %if.end104.i

if.else93.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %21)
  %cmp95.i = icmp ult i32 %21, 18
  br i1 %cmp95.i, label %if.then97.i, label %if.else99.i

if.then97.i:                                      ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr98.i = select i1 %cmp60.i, ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck_ch14, i32 0, i32 16), ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck, i32 0, i32 16)
  br label %if.end104.i

if.else99.i:                                      ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr100.i = select i1 %cmp60.i, ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck_ch14, i32 0, i32 24), ptr getelementptr inbounds ([32 x i8], ptr @rtl8225z2_tx_power_cck, i32 0, i32 24)
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else99.i, %if.then97.i, %if.then91.i, %if.else82.i.if.end104.i_crit_edge, %if.else78.i, %if.then77.i, %if.then68.i.if.end104.i_crit_edge
  %tmp.1.i = phi ptr [ %tmp.0.i, %if.then68.i.if.end104.i_crit_edge ], [ %add.ptr.i, %if.then77.i ], [ %add.ptr79.i, %if.else78.i ], [ %tmp.0.i, %if.else82.i.if.end104.i_crit_edge ], [ %add.ptr92.i, %if.then91.i ], [ %add.ptr98.i, %if.then97.i ], [ %add.ptr100.i, %if.else99.i ]
  %incdec.ptr.i = getelementptr i8, ptr %tmp.1.i, i32 1
  %26 = ptrtoint ptr %tmp.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tmp.1.i, align 1
  %conv109.i = zext i8 %27 to i32
  %or.i.i = or i32 %conv109.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef %or.i.i) #4
  %incdec.ptr.1.i = getelementptr i8, ptr %tmp.1.i, i32 2
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i, align 1
  %conv109.1.i = zext i8 %29 to i32
  %or.i.1.i = or i32 %conv109.1.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef %or.i.1.i) #4
  %incdec.ptr.2.i = getelementptr i8, ptr %tmp.1.i, i32 3
  %30 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.1.i, align 1
  %conv109.2.i = zext i8 %31 to i32
  %or.i.2.i = or i32 %conv109.2.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef %or.i.2.i) #4
  %incdec.ptr.3.i = getelementptr i8, ptr %tmp.1.i, i32 4
  %32 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.2.i, align 1
  %conv109.3.i = zext i8 %33 to i32
  %or.i.3.i = or i32 %conv109.3.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef %or.i.3.i) #4
  %incdec.ptr.4.i = getelementptr i8, ptr %tmp.1.i, i32 5
  %34 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.3.i, align 1
  %conv109.4.i = zext i8 %35 to i32
  %or.i.4.i = or i32 %conv109.4.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %or.i.4.i) #4
  %incdec.ptr.5.i = getelementptr i8, ptr %tmp.1.i, i32 6
  %36 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.4.i, align 1
  %conv109.5.i = zext i8 %37 to i32
  %or.i.5.i = or i32 %conv109.5.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef %or.i.5.i) #4
  %incdec.ptr.6.i = getelementptr i8, ptr %tmp.1.i, i32 7
  %38 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.5.i, align 1
  %conv109.6.i = zext i8 %39 to i32
  %or.i.6.i = or i32 %conv109.6.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef %or.i.6.i) #4
  %40 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.6.i, align 1
  %conv109.7.i = zext i8 %41 to i32
  %or.i.7.i = or i32 %conv109.7.i, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef %or.i.7.i) #4
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %11, align 128
  %TX_GAIN_CCK.i = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 56
  %arrayidx110.i = getelementptr [36 x i8], ptr @rtl8225z2_tx_gain_cck_ofdm, i32 0, i32 %21
  %44 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx110.i, align 1
  %shl.i = shl i8 %45, 1
  %io_mutex.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %11, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %11, i32 0, i32 31
  %46 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %shl.i, ptr %47, align 4
  %udev.i.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %11, i32 0, i32 7
  %49 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev.i.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i.i.i = shl i32 %52, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %53 = ptrtoint ptr %TX_GAIN_CCK.i to i32
  %conv.i.i.i = trunc i32 %53 to i16
  %54 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i, i16 noundef zeroext 0, ptr noundef %54, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %11, align 128
  %TX_GAIN_OFDM.i = getelementptr inbounds %struct.rtl818x_csr, ptr %56, i32 0, i32 57
  %arrayidx115.i = getelementptr [36 x i8], ptr @rtl8225z2_tx_gain_cck_ofdm, i32 0, i32 %cond58.i
  %57 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx115.i, align 1
  %shl117.i = shl i8 %58, 1
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i.i, i32 noundef 0) #4
  %59 = ptrtoint ptr %io_dmabuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %shl117.i, ptr %60, align 4
  %62 = ptrtoint ptr %udev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev.i.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i.i197.i = shl i32 %65, 8
  %or.i.i198.i = or i32 %shl.i.i.i197.i, -2147483648
  %66 = ptrtoint ptr %TX_GAIN_OFDM.i to i32
  %conv.i.i199.i = trunc i32 %66 to i16
  %67 = load ptr, ptr %io_dmabuf.i.i.i, align 128
  %call5.i.i200.i = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i.i198.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i199.i, i16 noundef zeroext 0, ptr noundef %67, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i.i) #4
  %68 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp120.i = icmp eq i32 %69, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %25)
  %cmp124.i = icmp ult i8 %25, 12
  br i1 %cmp120.i, label %if.then122.i, label %if.else129.i

if.then122.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #6
  %..i = select i1 %cmp124.i, i32 96, i32 92
  br label %rtl8225z2_b_rf_set_tx_power.exit

if.else129.i:                                     ; preds = %if.end104.i
  br i1 %cmp124.i, label %if.else129.i.rtl8225z2_b_rf_set_tx_power.exit_crit_edge, label %if.else134.i

if.else129.i.rtl8225z2_b_rf_set_tx_power.exit_crit_edge: ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8225z2_b_rf_set_tx_power.exit

if.else134.i:                                     ; preds = %if.else129.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %25)
  %cmp136.i = icmp ult i8 %25, 18
  %.204.i = select i1 %cmp136.i, i32 84, i32 80
  br label %rtl8225z2_b_rf_set_tx_power.exit

rtl8225z2_b_rf_set_tx_power.exit:                 ; preds = %if.else134.i, %if.else129.i.rtl8225z2_b_rf_set_tx_power.exit_crit_edge, %if.then122.i
  %.sink203.i = phi i32 [ %..i, %if.then122.i ], [ 92, %if.else129.i.rtl8225z2_b_rf_set_tx_power.exit_crit_edge ], [ %.204.i, %if.else134.i ]
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -121, i32 noundef %.sink203.i) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -119, i32 noundef %.sink203.i) #4
  tail call void @msleep(i32 noundef 1) #4
  br label %if.end8

if.end8:                                          ; preds = %rtl8225z2_b_rf_set_tx_power.exit, %if.then6, %if.then
  %sub = add i32 %call.i, -1
  %arrayidx = getelementptr [14 x i32], ptr @rtl8225_chan, i32 0, i32 %sub
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %71 to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext %conv)
  tail call void @msleep(i32 noundef 10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225_rf_set_tx_power(ptr noundef %dev, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sub = add i32 %channel, -1
  %hw_value = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 4, i32 %sub, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %4 = and i16 %3, 15
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 11)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 56
  %div.lhs.trunc = trunc i16 %5 to i8
  %div.lhs.trunc.frozen = freeze i8 %div.lhs.trunc
  %div155 = udiv i8 %div.lhs.trunc.frozen, 6
  %div.zext = zext i8 %div155 to i32
  %arrayidx22 = getelementptr [6 x i8], ptr @rtl8225_tx_gain_cck_ofdm, i32 0, i32 %div.zext
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 1
  %10 = lshr i8 %9, 1
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_dmabuf.i.i, align 128
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %12, align 4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %18 = ptrtoint ptr %TX_GAIN_CCK to i32
  %conv.i.i = trunc i32 %18 to i16
  %19 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp26 = icmp eq i32 %channel, 14
  %20 = mul i8 %div155, 6
  %rem156.decomposed = sub i8 %div.lhs.trunc.frozen, %20
  %21 = shl nuw nsw i8 %rem156.decomposed, 3
  %mul = zext i8 %21 to i32
  %rtl8225_tx_power_cck_ch14.rtl8225_tx_power_cck = select i1 %cmp26, ptr @rtl8225_tx_power_cck_ch14, ptr @rtl8225_tx_power_cck
  %arrayidx35 = getelementptr [48 x i8], ptr %rtl8225_tx_power_cck_ch14.rtl8225_tx_power_cck, i32 0, i32 %mul
  %incdec.ptr = getelementptr i8, ptr %arrayidx35, i32 1
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx35, align 1
  %conv41 = zext i8 %23 to i32
  %or.i = or i32 %conv41, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef %or.i) #4
  %incdec.ptr.1 = getelementptr i8, ptr %arrayidx35, i32 2
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr, align 1
  %conv41.1 = zext i8 %25 to i32
  %or.i.1 = or i32 %conv41.1, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef %or.i.1) #4
  %incdec.ptr.2 = getelementptr i8, ptr %arrayidx35, i32 3
  %26 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.1, align 1
  %conv41.2 = zext i8 %27 to i32
  %or.i.2 = or i32 %conv41.2, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef %or.i.2) #4
  %incdec.ptr.3 = getelementptr i8, ptr %arrayidx35, i32 4
  %28 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.2, align 1
  %conv41.3 = zext i8 %29 to i32
  %or.i.3 = or i32 %conv41.3, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef %or.i.3) #4
  %incdec.ptr.4 = getelementptr i8, ptr %arrayidx35, i32 5
  %30 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.3, align 1
  %conv41.4 = zext i8 %31 to i32
  %or.i.4 = or i32 %conv41.4, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %or.i.4) #4
  %incdec.ptr.5 = getelementptr i8, ptr %arrayidx35, i32 6
  %32 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.4, align 1
  %conv41.5 = zext i8 %33 to i32
  %or.i.5 = or i32 %conv41.5, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef %or.i.5) #4
  %incdec.ptr.6 = getelementptr i8, ptr %arrayidx35, i32 7
  %34 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.5, align 1
  %conv41.6 = zext i8 %35 to i32
  %or.i.6 = or i32 %conv41.6, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef %or.i.6) #4
  %36 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.6, align 1
  %conv41.7 = zext i8 %37 to i32
  %or.i.7 = or i32 %conv41.7, 65536
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef %or.i.7) #4
  %38 = and i16 %3, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp17.not = icmp eq i16 %38, 0
  %39 = lshr i16 %3, 4
  %narrow = add nuw nsw i16 %39, 10
  %40 = and i16 %narrow, 255
  %narrow159 = select i1 %cmp17.not, i16 %40, i16 25
  tail call void @msleep(i32 noundef 1) #4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %42, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %43 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_dmabuf.i.i, align 128
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %44, align 4
  %46 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i.i110 = shl i32 %49, 8
  %or.i.i111 = or i32 %shl.i.i.i110, -2147483648
  %50 = ptrtoint ptr %EEPROM_CMD to i32
  %conv.i.i112 = trunc i32 %50 to i16
  %51 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i113 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i.i111, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i112, i16 noundef zeroext 0, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %53, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %54 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i.i116 = shl i32 %57, 8
  %or2.i.i = or i32 %shl.i.i.i116, -2147483520
  %58 = ptrtoint ptr %CONFIG3 to i32
  %conv.i.i117 = trunc i32 %58 to i16
  %59 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i119 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or2.i.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i117, i16 noundef zeroext 0, ptr noundef %60, i16 noundef zeroext 1, i32 noundef 500) #4
  %61 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_dmabuf.i.i, align 128
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 128
  %CONFIG346 = getelementptr inbounds %struct.rtl818x_csr, ptr %66, i32 0, i32 26
  %or = or i8 %64, 64
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %67 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_dmabuf.i.i, align 128
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or, ptr %68, align 4
  %70 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i.i123 = shl i32 %73, 8
  %or.i.i124 = or i32 %shl.i.i.i123, -2147483648
  %74 = ptrtoint ptr %CONFIG346 to i32
  %conv.i.i125 = trunc i32 %74 to i16
  %75 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i126 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i.i124, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i125, i16 noundef zeroext 0, ptr noundef %75, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 128
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %77, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %78 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io_dmabuf.i.i, align 128
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 309529734, ptr %79, align 4
  %81 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i.i130 = shl i32 %84, 8
  %or.i.i131 = or i32 %shl.i.i.i130, -2147483648
  %85 = ptrtoint ptr %ANAPARAM2 to i32
  %conv.i.i132 = trunc i32 %85 to i16
  %86 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i133 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i131, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i132, i16 noundef zeroext 0, ptr noundef %86, i16 noundef zeroext 4, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 128
  %CONFIG350 = getelementptr inbounds %struct.rtl818x_csr, ptr %88, i32 0, i32 26
  %89 = and i8 %64, -65
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %90 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_dmabuf.i.i, align 128
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %89, ptr %91, align 4
  %93 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %udev.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i.i137 = shl i32 %96, 8
  %or.i.i138 = or i32 %shl.i.i.i137, -2147483648
  %97 = ptrtoint ptr %CONFIG350 to i32
  %conv.i.i139 = trunc i32 %97 to i16
  %98 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i140 = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i.i138, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i139, i16 noundef zeroext 0, ptr noundef %98, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 128
  %EEPROM_CMD54 = getelementptr inbounds %struct.rtl818x_csr, ptr %100, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %101 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io_dmabuf.i.i, align 128
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %102, align 4
  %104 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %udev.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %shl.i.i.i144 = shl i32 %107, 8
  %or.i.i145 = or i32 %shl.i.i.i144, -2147483648
  %108 = ptrtoint ptr %EEPROM_CMD54 to i32
  %conv.i.i146 = trunc i32 %108 to i16
  %109 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i147 = tail call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or.i.i145, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i146, i16 noundef zeroext 0, ptr noundef %109, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 66) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 0) #4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 128
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %111, i32 0, i32 57
  %div57.lhs.trunc = trunc i16 %narrow159 to i8
  %div57162 = udiv i8 %div57.lhs.trunc, 6
  %div57.zext = zext i8 %div57162 to i32
  %arrayidx58 = getelementptr [6 x i8], ptr @rtl8225_tx_gain_cck_ofdm, i32 0, i32 %div57.zext
  %112 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx58, align 1
  %114 = lshr i8 %113, 1
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %115 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %io_dmabuf.i.i, align 128
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %114, ptr %116, align 4
  %118 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %udev.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i.i151 = shl i32 %121, 8
  %or.i.i152 = or i32 %shl.i.i.i151, -2147483648
  %122 = ptrtoint ptr %TX_GAIN_OFDM to i32
  %conv.i.i153 = trunc i32 %122 to i16
  %123 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i154 = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or.i.i152, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i153, i16 noundef zeroext 0, ptr noundef %123, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %rem63.lhs.trunc = trunc i16 %narrow159 to i8
  %rem63163 = urem i8 %rem63.lhs.trunc, 6
  %rem63.zext = zext i8 %rem63163 to i32
  %arrayidx64 = getelementptr [6 x i8], ptr @rtl8225_tx_power_ofdm, i32 0, i32 %rem63.zext
  %124 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %125 to i32
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef %conv65) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef %conv65) #4
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_write_phy(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225z2_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 703)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 3808)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 1089)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 2243)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 3186)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 230)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 2090)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 63)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 821)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 10, i16 noundef zeroext 2516)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 1979)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 2128)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 3295)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 43)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 15, i16 noundef zeroext 276)
  tail call void @msleep(i32 noundef 100) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 439)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0154 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0154, 1
  %conv = trunc i32 %add to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  %arrayidx = getelementptr [95 x i16], ptr @rtl8225z2_rxgain, i32 0, i32 %i.0154
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %3)
  %exitcond.not = icmp eq i32 %add, 95
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 128)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 4)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 100) #4
  %call = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %4 = and i16 %call, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %for.end
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call void @msleep(i32 noundef 200) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call void @msleep(i32 noundef 100) #4
  %call3 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %5 = and i16 %call3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %do.end, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev8 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  %call9 = tail call fastcc zeroext i16 @rtl8225_read(ptr noundef %dev, i8 noundef zeroext 6)
  %conv10 = zext i16 %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.1, i32 noundef %conv10) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then.if.end11_crit_edge, %for.end.if.end11_crit_edge
  tail call void @msleep(i32 noundef 200) #4
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 703)
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end11
  %i.1155 = phi i32 [ 0, %if.end11 ], [ %inc20, %for.body15.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [128 x i8], ptr @rtl8225_agc, i32 0, i32 %i.1155
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef %conv17) #4
  %add18 = add nuw nsw i32 %i.1155, 128
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef %add18) #4
  %inc20 = add nuw nsw i32 %i.1155, 1
  %exitcond156.not = icmp eq i32 %inc20, 128
  br i1 %exitcond156.not, label %for.end21, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15

for.end21:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 1, i32 noundef 2) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 66) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef 254) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 10, i32 noundef 8) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef 128) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 12, i32 noundef 1) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 13, i32 noundef 67) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 211) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef 56) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 132) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 7) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 20, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 21, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 22, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 23, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 24, i32 noundef 239) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 25) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 32) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 21) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 28, i32 noundef 4) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 30, i32 noundef 149) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 31, i32 noundef 117) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef 31) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 33, i32 noundef 23) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 34, i32 noundef 22) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 35, i32 noundef 128) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 36, i32 noundef 70) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 37, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 39, i32 noundef 136) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 11, i32 noundef 67) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 21) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 29, i32 noundef 197) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 33, i32 noundef 55) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 65688) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 3, i32 noundef 65568) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i32 noundef 65662) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 65554) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 65788) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 65656) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 65582) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 17, i32 noundef 65672) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 65607) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 19, i32 noundef 65744) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 25, i32 noundef 65536) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 26, i32 noundef 65696) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 27, i32 noundef 65544) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 65670) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 65677) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 66, i32 noundef 65557) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 67, i32 noundef 65560) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef 65590) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef 65589) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef 65582) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef 65573) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 65564) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef 65554) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef 65545) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef 65540) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 76, i32 noundef 65541) #4
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_dmabuf.i.i, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 13, ptr %11, align 4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %17 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext -165, i16 noundef zeroext 0, ptr noundef %17, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  tail call fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef 1)
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65691) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 38, i32 noundef 144) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_dmabuf.i.i, align 128
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %21, align 4
  %23 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i.i145 = shl i32 %26, 8
  %or.i.i146 = or i32 %shl.i.i.i145, -2147483648
  %27 = ptrtoint ptr %TX_ANTENNA to i32
  %conv.i.i = trunc i32 %27 to i16
  %28 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i147 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i.i146, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %29 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_dmabuf.i.i, align 128
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 33603645, ptr %30, align 4
  %32 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i.i151 = shl i32 %35, 8
  %or.i.i152 = or i32 %shl.i.i.i151, -2147483648
  %36 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i153 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i.i152, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext -108, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 4, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8225z2_rf_set_tx_power(ptr noundef %dev, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sub = add i32 %channel, -1
  %hw_value = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 4, i32 %sub, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %txpwr_base = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %txpwr_base to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txpwr_base, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp56 = icmp eq i32 %channel, 14
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 68, i32 noundef 65590) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 69, i32 noundef 65589) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 70, i32 noundef 65582) #4
  %or.i.3 = select i1 %cmp56, i32 65563, i32 65573
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 71, i32 noundef %or.i.3) #4
  %or.i.4 = select i1 %cmp56, i32 65536, i32 65564
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %or.i.4) #4
  %or.i.5 = select i1 %cmp56, i32 65536, i32 65554
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 73, i32 noundef %or.i.5) #4
  %or.i.6 = select i1 %cmp56, i32 65536, i32 65545
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 74, i32 noundef %or.i.6) #4
  %or.i.7 = select i1 %cmp56, i32 65536, i32 65540
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 75, i32 noundef %or.i.7) #4
  %6 = and i16 %3, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp33.not = icmp eq i16 %6, 0
  %7 = lshr i16 %3, 4
  %narrow = add nuw nsw i16 %7, 10
  %narrow178 = select i1 %cmp33.not, i16 %narrow, i16 25
  %8 = lshr i16 %5, 4
  %narrow179 = add nuw nsw i16 %narrow178, %8
  %9 = and i16 %narrow179, 255
  %10 = tail call i16 @llvm.umin.i16(i16 %9, i16 35)
  %11 = zext i16 %10 to i32
  %12 = and i16 %3, 15
  %13 = and i16 %5, 15
  %narrow180 = add nuw nsw i16 %13, %12
  %add = zext i16 %narrow180 to i32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 56
  %arrayidx66 = getelementptr [36 x i8], ptr @rtl8225z2_tx_gain_cck_ofdm, i32 0, i32 %add
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx66, align 1
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_dmabuf.i.i, align 128
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %19, align 4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i = shl i32 %24, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %25 = ptrtoint ptr %TX_GAIN_CCK to i32
  %conv.i.i = trunc i32 %25 to i16
  %26 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %26, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %28, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %29 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_dmabuf.i.i, align 128
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -64, ptr %30, align 4
  %32 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i.i133 = shl i32 %35, 8
  %or.i.i134 = or i32 %shl.i.i.i133, -2147483648
  %36 = ptrtoint ptr %EEPROM_CMD to i32
  %conv.i.i135 = trunc i32 %36 to i16
  %37 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i136 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i.i134, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i135, i16 noundef zeroext 0, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %39, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %40 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i.i139 = shl i32 %43, 8
  %or2.i.i = or i32 %shl.i.i.i139, -2147483520
  %44 = ptrtoint ptr %CONFIG3 to i32
  %conv.i.i140 = trunc i32 %44 to i16
  %45 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i142 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or2.i.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i140, i16 noundef zeroext 0, ptr noundef %46, i16 noundef zeroext 1, i32 noundef 500) #4
  %47 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_dmabuf.i.i, align 128
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 128
  %CONFIG371 = getelementptr inbounds %struct.rtl818x_csr, ptr %52, i32 0, i32 26
  %or = or i8 %50, 64
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %53 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_dmabuf.i.i, align 128
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %or, ptr %54, align 4
  %56 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i.i146 = shl i32 %59, 8
  %or.i.i147 = or i32 %shl.i.i.i146, -2147483648
  %60 = ptrtoint ptr %CONFIG371 to i32
  %conv.i.i148 = trunc i32 %60 to i16
  %61 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i149 = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i.i147, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i148, i16 noundef zeroext 0, ptr noundef %61, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 128
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %63, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %64 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_dmabuf.i.i, align 128
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 309529734, ptr %65, align 4
  %67 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %udev.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i.i.i153 = shl i32 %70, 8
  %or.i.i154 = or i32 %shl.i.i.i153, -2147483648
  %71 = ptrtoint ptr %ANAPARAM2 to i32
  %conv.i.i155 = trunc i32 %71 to i16
  %72 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i156 = tail call i32 @usb_control_msg(ptr noundef %68, i32 noundef %or.i.i154, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i155, i16 noundef zeroext 0, ptr noundef %72, i16 noundef zeroext 4, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 128
  %CONFIG375 = getelementptr inbounds %struct.rtl818x_csr, ptr %74, i32 0, i32 26
  %75 = and i8 %50, -65
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %76 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_dmabuf.i.i, align 128
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %75, ptr %77, align 4
  %79 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udev.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i.i160 = shl i32 %82, 8
  %or.i.i161 = or i32 %shl.i.i.i160, -2147483648
  %83 = ptrtoint ptr %CONFIG375 to i32
  %conv.i.i162 = trunc i32 %83 to i16
  %84 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i163 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or.i.i161, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i162, i16 noundef zeroext 0, ptr noundef %84, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 128
  %EEPROM_CMD79 = getelementptr inbounds %struct.rtl818x_csr, ptr %86, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %87 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_dmabuf.i.i, align 128
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %88, align 4
  %90 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %shl.i.i.i167 = shl i32 %93, 8
  %or.i.i168 = or i32 %shl.i.i.i167, -2147483648
  %94 = ptrtoint ptr %EEPROM_CMD79 to i32
  %conv.i.i169 = trunc i32 %94 to i16
  %95 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i170 = tail call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or.i.i168, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i169, i16 noundef zeroext 0, ptr noundef %95, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 2, i32 noundef 66) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 64) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 8, i32 noundef 64) #4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 128
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %97, i32 0, i32 57
  %arrayidx82 = getelementptr [36 x i8], ptr @rtl8225z2_tx_gain_cck_ofdm, i32 0, i32 %11
  %98 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx82, align 1
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %100 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io_dmabuf.i.i, align 128
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %99, ptr %101, align 4
  %103 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %udev.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %shl.i.i.i174 = shl i32 %106, 8
  %or.i.i175 = or i32 %shl.i.i.i174, -2147483648
  %107 = ptrtoint ptr %TX_GAIN_OFDM to i32
  %conv.i.i176 = trunc i32 %107 to i16
  %108 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i177 = tail call i32 @usb_control_msg(ptr noundef %104, i32 noundef %or.i.i175, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i176, i16 noundef zeroext 0, ptr noundef %108, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8225z2_b_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 3808)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 1089)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 2243)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 3186)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 230)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 2090)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 63)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 821)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 10, i16 noundef zeroext 2516)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 1979)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 12, i16 noundef zeroext 2128)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 3295)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 43)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 15, i16 noundef zeroext 276)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 439)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.089, 1
  %conv = trunc i32 %add to i16
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  %arrayidx = getelementptr [95 x i16], ptr @rtl8225z2_rxgain, i32 0, i32 %i.089
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %3)
  %exitcond.not = icmp eq i32 %add, 95
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 128)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 5, i16 noundef zeroext 4)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 183)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 3149)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 1101)
  tail call fastcc void @rtl8225_write(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 703)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 56
  %io_mutex.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %io_dmabuf.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_dmabuf.i.i, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %7, align 4
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %13 = ptrtoint ptr %TX_GAIN_CCK to i32
  %conv.i.i = trunc i32 %13 to i16
  %14 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %17 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_dmabuf.i.i, align 128
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %18, align 4
  %20 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i78 = shl i32 %23, 8
  %or.i.i79 = or i32 %shl.i.i.i78, -2147483648
  %24 = ptrtoint ptr %TX_GAIN_OFDM to i32
  %conv.i.i80 = trunc i32 %24 to i16
  %25 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i81 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i.i79, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i80, i16 noundef zeroext 0, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef 0) #4
  %28 = ptrtoint ptr %io_dmabuf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_dmabuf.i.i, align 128
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %29, align 4
  %31 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i.i85 = shl i32 %34, 8
  %or.i.i86 = or i32 %shl.i.i.i85, -2147483648
  %35 = ptrtoint ptr %TX_ANTENNA to i32
  %conv.i.i87 = trunc i32 %35 to i16
  %36 = load ptr, ptr %io_dmabuf.i.i, align 128
  %call5.i.i88 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i.i86, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i87, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #4
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -128, i32 noundef 18) #4
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end
  %i.190 = phi i32 [ 0, %for.end ], [ %inc12, %for.body7.for.body7_crit_edge ]
  %arrayidx8 = getelementptr [128 x i8], ptr @rtl8225z2_agc, i32 0, i32 %i.190
  %37 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %38 to i32
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef %conv9) #4
  %add10 = add nuw nsw i32 %i.190, 128
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef %add10) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 0) #4
  %inc12 = add nuw nsw i32 %i.190, 1
  %exitcond92.not = icmp eq i32 %inc12, 128
  br i1 %exitcond92.not, label %for.end13, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.end13:                                        ; preds = %for.body7
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -128, i32 noundef 16) #4
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end13
  %i.291 = phi i32 [ 0, %for.end13 ], [ %inc22, %for.body17.for.body17_crit_edge ]
  %conv18 = trunc i32 %i.291 to i8
  %arrayidx19 = getelementptr [60 x i8], ptr @rtl8225z2_ofdm, i32 0, i32 %i.291
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %40 to i32
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext %conv18, i32 noundef %conv20) #4
  %inc22 = add nuw nsw i32 %i.291, 1
  %exitcond93.not = icmp eq i32 %inc22, 60
  br i1 %exitcond93.not, label %for.end23, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17

for.end23:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -105, i32 noundef 70) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -92, i32 noundef 182) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -123, i32 noundef 252) #4
  tail call void @rtl8187_write_phy(ptr noundef %dev, i8 noundef zeroext -63, i32 noundef 65672) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 1005, i32 11}
!2 = !{ptr @rtl8225_ops, !3, !"rtl8225_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 1004, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 458, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtl8225_rf_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl8225_rf_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rtl8225bcd_rxgain, !13, !"rtl8225bcd_rxgain", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 292, i32 18}
!14 = !{ptr @rtl8225_agc, !15, !"rtl8225_agc", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 307, i32 17}
!16 = distinct !{null, !17, !"rtl8225_gain", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 326, i32 17}
!18 = !{ptr @rtl8225_tx_gain_cck_ofdm, !19, !"rtl8225_tx_gain_cck_ofdm", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 340, i32 17}
!20 = !{ptr @rtl8225_tx_power_cck_ch14, !21, !"rtl8225_tx_power_cck_ch14", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 353, i32 17}
!22 = !{ptr @rtl8225_tx_power_cck, !23, !"rtl8225_tx_power_cck", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 344, i32 17}
!24 = !{ptr @rtl8225_tx_power_ofdm, !25, !"rtl8225_tx_power_ofdm", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 362, i32 17}
!26 = distinct !{null, !27, !"rtl8225_threshold", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 336, i32 17}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 820, i32 4}
!30 = !{ptr @rtl8225z2_rf_init._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtl8225z2_rf_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rtl8225z2_rxgain, !33, !"rtl8225z2_rxgain", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 750, i32 18}
!34 = distinct !{null, !35, !"rtl8225z2_gain_bg", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 765, i32 17}
!36 = !{ptr @rtl8225z2_tx_power_cck_ch14, !37, !"rtl8225z2_tx_power_cck_ch14", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 595, i32 17}
!38 = !{ptr @rtl8225z2_tx_power_cck, !39, !"rtl8225z2_tx_power_cck", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 602, i32 17}
!40 = !{ptr @rtl8225z2_tx_gain_cck_ofdm, !41, !"rtl8225z2_tx_gain_cck_ofdm", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 609, i32 17}
!42 = !{ptr @rtl8225_chan, !43, !"rtl8225_chan", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 366, i32 18}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 1012, i32 11}
!46 = !{ptr @rtl8225z2_ops, !47, !"rtl8225z2_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 1011, i32 36}
!48 = !{ptr @rtl8225z2_b_ops, !49, !"rtl8225z2_b_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 1018, i32 36}
!50 = !{ptr @rtl8225z2_agc, !51, !"rtl8225z2_agc", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 571, i32 17}
!52 = !{ptr @rtl8225z2_ofdm, !53, !"rtl8225z2_ofdm", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8225.c", i32 584, i32 17}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
