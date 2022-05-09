; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.rtl8180_priv = type { ptr, ptr, ptr, i8, %struct.spinlock, ptr, i8, i32, i32, [32 x ptr], [5 x %struct.rtl8180_tx_ring], [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [4 x %struct.ieee80211_tx_queue_params], ptr, i32, i8, i16, i32, i32, i16, i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.rtl8180_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8225se_rf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RTL8225-SE version %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8225se_rf_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8225se_rf_init._entry_ptr = internal global ptr @rtl8225se_rf_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"not-D\00", [26 x i8] zeroinitializer }, align 32
@rtl8225se_rf_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Xtal cal\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl8225se_rf_init._entry_ptr.9 = internal global ptr @rtl8225se_rf_init._entry.7, section ".printk_index", align 4
@rtl8225se_rf_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 336, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NO Xtal cal\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl8225se_rf_init._entry_ptr.12 = internal global ptr @rtl8225se_rf_init._entry.10, section ".printk_index", align 4
@rtl8225se_chan = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 128, i32 256, i32 384, i32 512, i32 640, i32 768, i32 896, i32 1024, i32 1152, i32 1280, i32 1408, i32 1536, i32 1664, i32 1866], [40 x i8] zeroinitializer }, align 32
@rtl8225se_ops = internal constant { %struct.rtl818x_rf_ops, [44 x i8] } { %struct.rtl818x_rf_ops { ptr @.str.19, ptr @rtl8225se_rf_init, ptr @rtl8225se_rf_stop, ptr @rtl8225se_rf_set_channel, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtl8187se_three_wire_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 91, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"rtl8225 (se) CmdReg: 0x%x RE/WE bits aren't clear\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8187se_three_wire_io\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl8187se_three_wire_io._entry_ptr = internal global ptr @rtl8187se_three_wire_io._entry, section ".printk_index", align 4
@rtl8187se_three_wire_io._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 109, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtl8225 (se) Unimplemented length\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8187se_three_wire_io._entry_ptr.18 = internal global ptr @rtl8187se_three_wire_io._entry.16, section ".printk_index", align 4
@RF_GAIN_TABLE = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 150, i32 118, i32 86, i32 54, i32 22, i32 502, i32 470, i32 438, i32 406, i32 374, i32 247, i32 215, i32 183, i32 151, i32 119, i32 87, i32 55, i32 251, i32 219, i32 187, i32 255, i32 227, i32 195, i32 163, i32 131, i32 99, i32 67, i32 35, i32 3, i32 483, i32 451, i32 419, i32 387, i32 355, i32 323, i32 291, i32 259], [44 x i8] zeroinitializer }, align 32
@ZEBRA_AGC = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"~~~~}|{zyxwvutsrqponmlkjihgfedcbHGFED)('&%$#\22!\08\07\06\05\04\03\02\01\00\00\00\00\00\00\00\00\00\00\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\11\12\13\15\16\17\17\18\18\19\1A\1A\1B\1B\1C\1C\1D\1D\1D\1E\1E\1F\1F\1F    !!!\22\22\22##$$%%%&&''////////", [32 x i8] zeroinitializer }, align 32
@OFDM_CONFIG = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\10\0F\0A\0C\14\FA\FFP\00P\00\00\00\\\00\00@\00@\00\00\00\A8&23\06\A5oU\C8\BB\0A\E1,J\86\834\00O$o\C2\03@\80\00\C0\C1X\F1\00\C4\90>\D8<{\10\10", [35 x i8] zeroinitializer }, align 32
@cck_ofdm_gain_settings = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl8225-se\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 271, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 333, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 336, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"rtl8225se_chan\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 40, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"rtl8225se_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 420, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 90, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 108, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"RF_GAIN_TABLE\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 23, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"ZEBRA_AGC\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 45, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"OFDM_CONFIG\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 64, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"cck_ofdm_gain_settings\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 31, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [60 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 421, i32 11 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @rtl8187se_three_wire_io._entry, ptr @rtl8187se_three_wire_io._entry.16, ptr @rtl8187se_three_wire_io._entry_ptr, ptr @rtl8187se_three_wire_io._entry_ptr.18, ptr @rtl8225se_rf_init._entry, ptr @rtl8225se_rf_init._entry.10, ptr @rtl8225se_rf_init._entry.7, ptr @rtl8225se_rf_init._entry_ptr, ptr @rtl8225se_rf_init._entry_ptr.12, ptr @rtl8225se_rf_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @rtl8225se_chan, ptr @rtl8225se_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @RF_GAIN_TABLE, ptr @ZEBRA_AGC, ptr @OFDM_CONFIG, ptr @cck_ofdm_gain_settings, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225se_rf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225se_rf_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225se_rf_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225se_chan to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8225se_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_three_wire_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_three_wire_io._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RF_GAIN_TABLE to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZEBRA_AGC to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDM_CONFIG to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cck_ofdm_gain_settings to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8225se_rf_init(ptr noundef %dev) #0 align 64 {
entry:
  %outdata.i234 = alloca i32, align 4
  %outdata.i233 = alloca i32, align 4
  %outdata.i232 = alloca i32, align 4
  %outdata.i231 = alloca i32, align 4
  %outdata.i221 = alloca i32, align 4
  %outdata.i220 = alloca i32, align 4
  %outdata.i219 = alloca i32, align 4
  %outdata.i218 = alloca i32, align 4
  %outdata.i217 = alloca i32, align 4
  %outdata.i216 = alloca i32, align 4
  %outdata.i215 = alloca i32, align 4
  %outdata.i214 = alloca i32, align 4
  %outdata.i213 = alloca i32, align 4
  %outdata.i212 = alloca i32, align 4
  %outdata.i211 = alloca i32, align 4
  %outdata.i210 = alloca i32, align 4
  %outdata.i209 = alloca i32, align 4
  %outdata.i208 = alloca i32, align 4
  %outdata.i207 = alloca i32, align 4
  %outdata.i206 = alloca i32, align 4
  %outdata.i205 = alloca i32, align 4
  %outdata.i204 = alloca i32, align 4
  %outdata.i203 = alloca i32, align 4
  %outdata.i202 = alloca i32, align 4
  %outdata.i201 = alloca i32, align 4
  %outdata.i200 = alloca i32, align 4
  %outdata.i199 = alloca i32, align 4
  %outdata.i198 = alloca i32, align 4
  %outdata.i197 = alloca i32, align 4
  %outdata.i196 = alloca i32, align 4
  %outdata.i5.i = alloca i32, align 4
  %outdata.i.i = alloca i32, align 4
  %outdata.i195 = alloca i32, align 4
  %outdata.i194 = alloca i32, align 4
  %outdata.i193 = alloca i32, align 4
  %outdata.i192 = alloca i32, align 4
  %outdata.i191 = alloca i32, align 4
  %outdata.i190 = alloca i32, align 4
  %outdata.i189 = alloca i32, align 4
  %outdata.i188 = alloca i32, align 4
  %outdata.i187 = alloca i32, align 4
  %outdata.i186 = alloca i32, align 4
  %outdata.i185 = alloca i32, align 4
  %outdata.i184 = alloca i32, align 4
  %outdata.i183 = alloca i32, align 4
  %outdata.i182 = alloca i32, align 4
  %outdata.i181 = alloca i32, align 4
  %outdata.i180 = alloca i32, align 4
  %outdata.i179 = alloca i32, align 4
  %outdata.i178 = alloca i32, align 4
  %outdata.i177 = alloca i32, align 4
  %outdata.i176 = alloca i32, align 4
  %outdata.i175 = alloca i32, align 4
  %outdata.i174 = alloca i32, align 4
  %outdata.i173 = alloca i32, align 4
  %outdata.i172 = alloca i32, align 4
  %outdata.i171 = alloca i32, align 4
  %outdata.i170 = alloca i32, align 4
  %outdata.i169 = alloca i32, align 4
  %outdata.i168 = alloca i32, align 4
  %outdata.i167 = alloca i32, align 4
  %outdata.i166 = alloca i32, align 4
  %outdata.i165 = alloca i32, align 4
  %outdata.i164 = alloca i32, align 4
  %dataread.i163 = alloca i32, align 4
  %dataread.i = alloca i32, align 4
  %outdata.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i) #6
  %2 = ptrtoint ptr %outdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5104, ptr %outdata.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataread.i) #6
  %4 = ptrtoint ptr %dataread.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %dataread.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %dataread.i, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %dataread.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dataread.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataread.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataread.i163) #6
  %8 = ptrtoint ptr %dataread.i163 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %dataread.i163, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %dataread.i163, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %dataread.i163 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dataread.i163, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataread.i163) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2072, i32 %6)
  %cmp = icmp eq i32 %6, 2072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1804, i32 %10)
  %cmp3 = icmp eq i32 %10, 1804
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  %tobool.not = select i1 %or.cond, ptr @.str.5, ptr @.str.6
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %dev4 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str, ptr noundef nonnull %tobool.not) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i164) #6
  %14 = ptrtoint ptr %outdata.i164 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2544, ptr %outdata.i164, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i164, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i164) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i165) #6
  %16 = ptrtoint ptr %outdata.i165 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 28161, ptr %outdata.i165, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i165, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i165) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i166) #6
  %18 = ptrtoint ptr %outdata.i166 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1234, ptr %outdata.i166, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i166, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i166) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i167) #6
  %20 = ptrtoint ptr %outdata.i167 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32531, ptr %outdata.i167, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i167, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i167) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i168) #6
  %22 = ptrtoint ptr %outdata.i168 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 38740, ptr %outdata.i168, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i168, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i168) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i169) #6
  %24 = ptrtoint ptr %outdata.i169 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 50981, ptr %outdata.i169, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i169, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i169) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i170) #6
  %26 = ptrtoint ptr %outdata.i170 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 44646, ptr %outdata.i170, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i170, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i170) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i171) #6
  %28 = ptrtoint ptr %outdata.i171 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3239, ptr %outdata.i171, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i171, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i171) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i172) #6
  %30 = ptrtoint ptr %outdata.i172 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 57800, ptr %outdata.i172, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i172, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i172) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i173) #6
  %32 = ptrtoint ptr %outdata.i173 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12041, ptr %outdata.i173, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i173, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i173) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i174) #6
  %34 = ptrtoint ptr %outdata.i174 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 40202, ptr %outdata.i174, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i174, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i174) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i175) #6
  %36 = ptrtoint ptr %outdata.i175 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7083, ptr %outdata.i175, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i175, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i175) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i176) #6
  %38 = ptrtoint ptr %outdata.i176 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 25612, ptr %outdata.i176, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i176, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i176) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i177) #6
  %40 = ptrtoint ptr %outdata.i177 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 36349, ptr %outdata.i177, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i177, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i177) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i178) #6
  %42 = ptrtoint ptr %outdata.i178 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 526, ptr %outdata.i178, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i178, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i178) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i179) #6
  %44 = ptrtoint ptr %outdata.i179 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 39183, ptr %outdata.i179, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i179, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i179) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i180) #6
  %46 = ptrtoint ptr %outdata.i180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5104, ptr %outdata.i180, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i180, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i180) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i181) #6
  %48 = ptrtoint ptr %outdata.i181 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32867, ptr %outdata.i181, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i181, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i181) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i182) #6
  %50 = ptrtoint ptr %outdata.i182 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 14964, ptr %outdata.i182, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i182, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i182) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i183) #6
  %52 = ptrtoint ptr %outdata.i183 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 22965, ptr %outdata.i183, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i183, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i183) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i184) #6
  %54 = ptrtoint ptr %outdata.i184 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2070, ptr %outdata.i184, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i184, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i184) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i185) #6
  %56 = ptrtoint ptr %outdata.i185 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 6663, ptr %outdata.i185, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i185, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i185) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i186) #6
  %58 = ptrtoint ptr %outdata.i186 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 26, ptr %outdata.i186, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i186, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i186) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i187) #6
  %60 = ptrtoint ptr %outdata.i187 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16779, ptr %outdata.i187, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i187, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i187) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i188) #6
  %62 = ptrtoint ptr %outdata.i188 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64492, ptr %outdata.i188, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i188, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i188) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i189) #6
  %64 = ptrtoint ptr %outdata.i189 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 141, ptr %outdata.i189, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i189, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i189) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  br i1 %or.cond, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i190) #6
  %66 = ptrtoint ptr %outdata.i190 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32894, ptr %outdata.i190, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i190, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i190) #6
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i191) #6
  %67 = ptrtoint ptr %outdata.i191 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 32878, ptr %outdata.i191, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i191, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i191) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i192) #6
  %69 = ptrtoint ptr %outdata.i192 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 44239, ptr %outdata.i192, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i192, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i192) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i193) #6
  %71 = ptrtoint ptr %outdata.i193 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 7536, ptr %outdata.i193, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i193, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i193) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i194) #6
  %73 = ptrtoint ptr %outdata.i194 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 57347, ptr %outdata.i194, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i194, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i194) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i195) #6
  %75 = ptrtoint ptr %outdata.i195 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 58628, ptr %outdata.i195, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i195, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i195) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7
  %i.08.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i.i) #6
  %shl.i.i = shl i32 %i.08.i, 4
  %or.i.i = or i32 %shl.i.i, 1
  %77 = ptrtoint ptr %outdata.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i.i, ptr %outdata.i.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  %arrayidx.i = getelementptr [37 x i32], ptr @RF_GAIN_TABLE, i32 0, i32 %i.08.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i5.i) #6
  %shl.i6.i = shl i32 %80, 4
  %or.i7.i = or i32 %shl.i6.i, 2
  %81 = ptrtoint ptr %outdata.i5.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i7.i, ptr %outdata.i5.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i5.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i5.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 37
  br i1 %exitcond.not.i, label %rtl8187se_write_rf_gain.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtl8187se_write_rf_gain.exit:                     ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i196) #6
  %83 = ptrtoint ptr %outdata.i196 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8245, ptr %outdata.i196, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i196, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i196) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i197) #6
  %85 = ptrtoint ptr %outdata.i197 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8198, ptr %outdata.i197, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i197, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i197) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i198) #6
  %87 = ptrtoint ptr %outdata.i198 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4976, ptr %outdata.i198, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i198, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i198) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i199) #6
  %99 = ptrtoint ptr %outdata.i199 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 141, ptr %outdata.i199, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i199, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i199) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i200) #6
  %111 = ptrtoint ptr %outdata.i200 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 880, ptr %outdata.i200, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i200, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i200) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i201) #6
  %123 = ptrtoint ptr %outdata.i201 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 5636, ptr %outdata.i201, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i201, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i201) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i202) #6
  %135 = ptrtoint ptr %outdata.i202 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2055, ptr %outdata.i202, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i202, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i202) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i203) #6
  %147 = ptrtoint ptr %outdata.i203 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 35026, ptr %outdata.i203, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i203, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i203) #6
  tail call void @msleep(i32 noundef 221) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i204) #6
  %148 = ptrtoint ptr %outdata.i204 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4976, ptr %outdata.i204, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i204, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i204) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i205) #6
  %160 = ptrtoint ptr %outdata.i205 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 7, ptr %outdata.i205, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i205, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i205) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i206) #6
  %162 = ptrtoint ptr %outdata.i206 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 6151, ptr %outdata.i206, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i206, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i206) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i207) #6
  %164 = ptrtoint ptr %outdata.i207 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 8711, ptr %outdata.i207, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i207, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i207) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i208) #6
  %166 = ptrtoint ptr %outdata.i208 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 15879, ptr %outdata.i208, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i208, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i208) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i209) #6
  %168 = ptrtoint ptr %outdata.i209 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 3094, ptr %outdata.i209, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i209, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i209) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i210) #6
  %170 = ptrtoint ptr %outdata.i210 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 26, ptr %outdata.i210, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i210, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i210) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %171(i32 noundef 214748000) #6
  %xtal_cal = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 27
  %172 = ptrtoint ptr %xtal_cal to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %xtal_cal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool39.not = icmp eq i8 %173, 0
  br i1 %tobool39.not, label %do.end56, label %if.then40

if.then40:                                        ; preds = %rtl8187se_write_rf_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_in = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 26
  %174 = ptrtoint ptr %xtal_in to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %xtal_in, align 1
  %shl = shl i8 %175, 4
  %xtal_out = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 25
  %176 = ptrtoint ptr %xtal_out to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %xtal_out, align 2
  %shl43 = shl i8 %177, 1
  %or = or i8 %shl43, %shl
  %conv47 = zext i8 %or to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i211) #6
  %shl.i = shl nuw nsw i32 %conv47, 4
  %or.i = or i32 %shl.i, 15
  %178 = ptrtoint ptr %outdata.i211 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i, ptr %outdata.i211, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i211, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i211) #6
  %179 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %wiphy, align 8
  %dev52 = getelementptr inbounds %struct.wiphy, ptr %180, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.8) #9
  br label %if.end59

do.end56:                                         ; preds = %rtl8187se_write_rf_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wiphy, align 8
  %dev58 = getelementptr inbounds %struct.wiphy, ptr %182, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i212) #6
  %183 = ptrtoint ptr %outdata.i212 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 44239, ptr %outdata.i212, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i212, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i212) #6
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i213) #6
  %185 = ptrtoint ptr %outdata.i213 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 3056, ptr %outdata.i213, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i213, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i213) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i214) #6
  %187 = ptrtoint ptr %outdata.i214 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 36349, ptr %outdata.i214, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i214, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i214) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i215) #6
  %189 = ptrtoint ptr %outdata.i215 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1234, ptr %outdata.i215, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i215, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i215) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i216) #6
  %191 = ptrtoint ptr %outdata.i216 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 38740, ptr %outdata.i216, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i216, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i216) #6
  tail call void @msleep(i32 noundef 31) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i217) #6
  %192 = ptrtoint ptr %outdata.i217 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 6512, ptr %outdata.i217, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i217, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i217) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i218) #6
  %194 = ptrtoint ptr %outdata.i218 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 23221, ptr %outdata.i218, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i218, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i218) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i219) #6
  %196 = ptrtoint ptr %outdata.i219 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 2544, ptr %outdata.i219, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i219, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i219) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i220) #6
  %198 = ptrtoint ptr %outdata.i220 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %outdata.i220, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i220, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i220) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %199(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i221) #6
  %200 = ptrtoint ptr %outdata.i221 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 2, ptr %outdata.i221, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i221, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i221) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 214748000) #6
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %203, i32 590
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %205 = and i8 %204, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %205) #6, !srcloc !54
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 65736) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 65564) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 65656) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 46, i32 noundef 65744) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 47, i32 noundef 65542) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 1, i32 noundef 65606) #6
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 4
  %TX_GAIN_CCK = getelementptr inbounds %struct.rtl818x_csr, ptr %207, i32 0, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_CCK, i8 16) #6, !srcloc !54
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %TX_GAIN_OFDM = getelementptr inbounds %struct.rtl818x_csr, ptr %209, i32 0, i32 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_OFDM, i8 27) #6, !srcloc !54
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %TX_ANTENNA = getelementptr inbounds %struct.rtl818x_csr, ptr %211, i32 0, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA, i8 3) #6, !srcloc !54
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 18) #6
  br label %for.body.i225

for.body.i225:                                    ; preds = %for.body.i225.for.body.i225_crit_edge, %if.end59
  %i.07.i = phi i32 [ 0, %if.end59 ], [ %inc.i223, %for.body.i225.for.body.i225_crit_edge ]
  %arrayidx.i222 = getelementptr [128 x i8], ptr @ZEBRA_AGC, i32 0, i32 %i.07.i
  %212 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i222, align 1
  %conv.i.i = zext i8 %213 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 15, i32 noundef %conv.i.i) #6
  %conv.i6.i = xor i32 %i.07.i, 128
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef %conv.i6.i) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 14, i32 noundef 0) #6
  %inc.i223 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i224 = icmp eq i32 %inc.i223, 128
  br i1 %exitcond.not.i224, label %rtl8225se_write_zebra_agc.exit, label %for.body.i225.for.body.i225_crit_edge

for.body.i225.for.body.i225_crit_edge:            ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i225

rtl8225se_write_zebra_agc.exit:                   ; preds = %for.body.i225
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 0) #6
  br label %for.body.i230

for.body.i230:                                    ; preds = %for.body.i230.for.body.i230_crit_edge, %rtl8225se_write_zebra_agc.exit
  %i.04.i = phi i32 [ 0, %rtl8225se_write_zebra_agc.exit ], [ %inc.i228, %for.body.i230.for.body.i230_crit_edge ]
  %conv.i = trunc i32 %i.04.i to i8
  %arrayidx.i226 = getelementptr [61 x i8], ptr @OFDM_CONFIG, i32 0, i32 %i.04.i
  %214 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx.i226, align 1
  %conv.i.i227 = zext i8 %215 to i32
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext %conv.i, i32 noundef %conv.i.i227) #6
  %inc.i228 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i229 = icmp eq i32 %inc.i228, 60
  br i1 %exitcond.not.i229, label %rtl8187se_write_ofdm_config.exit, label %for.body.i230.for.body.i230_crit_edge

for.body.i230.for.body.i230_crit_edge:            ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i230

rtl8187se_write_ofdm_config.exit:                 ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i231) #6
  %216 = ptrtoint ptr %outdata.i231 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 2544, ptr %outdata.i231, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i231, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i231) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %217(i32 noundef 107374000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i232) #6
  %218 = ptrtoint ptr %outdata.i232 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 38692, ptr %outdata.i232, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i232, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i232) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %219(i32 noundef 107374000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i233) #6
  %220 = ptrtoint ptr %outdata.i233 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 2544, ptr %outdata.i233, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i233, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i233) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 107374000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i234) #6
  %222 = ptrtoint ptr %outdata.i234 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 38692, ptr %outdata.i234, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i234, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i234) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %223(i32 noundef 107374000) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 64) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 64) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 23, i32 noundef 70) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 214748000) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 36, i32 noundef 134) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %225(i32 noundef 214748000) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 5, i32 noundef 251) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %226(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8225se_rf_stop(ptr noundef %dev) #0 align 64 {
entry:
  %outdata.i7 = alloca i32, align 4
  %outdata.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 16, i32 noundef 0) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 18, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i) #6
  %2 = ptrtoint ptr %outdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %outdata.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i7) #6
  %3 = ptrtoint ptr %outdata.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %outdata.i7, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i7, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i7) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  tail call void @rtl8180_set_anaparam(ptr noundef %1, i32 noundef -1341829652) #6
  tail call void @rtl8180_set_anaparam2(ptr noundef %1, i32 noundef 16712902) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_set_anaparam(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_set_anaparam2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8225se_rf_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %conf) #0 align 64 {
entry:
  %outdata.i13 = alloca i32, align 4
  %dataread.i = alloca i32, align 4
  %outdata.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %3, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #6
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %sub.i = add i32 %call.i, -1
  %hw_value.i = getelementptr %struct.rtl8180_priv, ptr %5, i32 0, i32 11, i32 %sub.i, i32 3
  %6 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value.i, align 2
  %conv2.mask.i = and i16 %7, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %conv2.mask.i)
  %cmp.i = icmp ugt i16 %conv2.mask.i, 35
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %TX_GAIN_CCK.i = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 56
  %10 = and i16 %7, 255
  %narrow.i = select i1 %cmp.i, i16 35, i16 %10
  %idxprom.i = zext i16 %narrow.i to i32
  %arrayidx5.i = getelementptr [36 x i8], ptr @cck_ofdm_gain_settings, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_CCK.i, i8 %12) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  %13 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_value.i, align 2
  %15 = lshr i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9215, i16 %14)
  %cmp13.i = icmp ugt i16 %14, 9215
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %TX_GAIN_OFDM.i = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 57
  %narrow47.i = select i1 %cmp13.i, i16 35, i16 %15
  %idxprom18.i = zext i16 %narrow47.i to i32
  %arrayidx19.i = getelementptr [36 x i8], ptr @cck_ofdm_gain_settings, i32 0, i32 %idxprom18.i
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_GAIN_OFDM.i, i8 %19) #6, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %narrow47.i)
  %cmp21.i = icmp ult i16 %narrow47.i, 12
  br i1 %cmp21.i, label %if.end24.thread.i, label %if.end24.i

if.end24.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 92) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef 92) #6
  br label %rtl8225sez2_rf_set_tx_power.exit

if.end24.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %narrow47.i)
  %cmp26.i = icmp ult i16 %narrow47.i, 18
  %spec.select.i = select i1 %cmp26.i, i32 84, i32 80
  br label %rtl8225sez2_rf_set_tx_power.exit

rtl8225sez2_rf_set_tx_power.exit:                 ; preds = %if.end24.i, %if.end24.thread.i
  %.sink49.i = phi i32 [ 84, %if.end24.thread.i ], [ %spec.select.i, %if.end24.i ]
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef %.sink49.i) #6
  tail call void @rtl8180_write_phy(ptr noundef %dev, i8 noundef zeroext 9, i32 noundef %.sink49.i) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  %arrayidx = getelementptr [14 x i32], ptr @rtl8225se_chan, i32 0, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i) #6
  %shl.i = shl i32 %21, 4
  %or.i = or i32 %shl.i, 7
  %22 = ptrtoint ptr %outdata.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i, ptr %outdata.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataread.i) #6
  %23 = ptrtoint ptr %dataread.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %dataread.i, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %dataread.i, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %dataread.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dataread.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataread.i) #6
  %and = and i32 %25, 3968
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %21)
  %cmp.not = icmp eq i32 %and, %21
  br i1 %cmp.not, label %rtl8225sez2_rf_set_tx_power.exit.if.end_crit_edge, label %if.then

rtl8225sez2_rf_set_tx_power.exit.if.end_crit_edge: ; preds = %rtl8225sez2_rf_set_tx_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %rtl8225sez2_rf_set_tx_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outdata.i13) #6
  %26 = ptrtoint ptr %outdata.i13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %outdata.i13, align 4
  call fastcc void @rtl8187se_three_wire_io(ptr noundef %dev, ptr noundef nonnull %outdata.i13, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outdata.i13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %rtl8225sez2_rf_set_tx_power.exit.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @rtl8187se_detect_rf(ptr nocapture noundef readnone %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @rtl8225se_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8187se_three_wire_io(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, i1 noundef zeroext %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 637
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %5 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 637
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.1, label %if.end.if.end8_crit_edge, label %if.end.1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.2 = getelementptr i8, ptr %13, i32 637
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2 = icmp eq i8 %15, 0
  br i1 %tobool.not.2, label %if.end.1.if.end8_crit_edge, label %if.end.2

if.end.1.if.end8_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.3 = getelementptr i8, ptr %18, i32 637
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.3 = icmp eq i8 %20, 0
  br i1 %tobool.not.3, label %if.end.2.if.end8_crit_edge, label %if.end.3

if.end.2.if.end8_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.4 = getelementptr i8, ptr %23, i32 637
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.4) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.4 = icmp eq i8 %25, 0
  br i1 %tobool.not.4, label %if.end.3.if.end8_crit_edge, label %do.end

if.end.3.if.end8_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #6
  %phi.cast.le = zext i8 %24 to i32
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy, align 8
  %dev6 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.13, i32 noundef %phi.cast.le) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.3.if.end8_crit_edge, %if.end.2.if.end8_crit_edge, %if.end.1.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr inbounds %struct.rtl818x_csr, ptr %30, i32 0, i32 2
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %33 = or i8 %32, 2
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.rtl818x_csr, ptr %35, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %33) #6, !srcloc !54
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %38, i32 132
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %40 = and i8 %39, -9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr22 = getelementptr i8, ptr %42, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %40) #6, !srcloc !54
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr30 = getelementptr i16, ptr %44, i32 314
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %47) #6
  %.8 = select i1 %write, i8 2, i8 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %add.ptr57 = getelementptr i8, ptr %49, i32 637
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 %.8) #6, !srcloc !54
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr63 = getelementptr i8, ptr %51, i32 637
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %53 = and i8 %52, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not = icmp eq i8 %53, 0
  br i1 %tobool67.not, label %if.end8.for.end72_crit_edge, label %if.end69

if.end8.for.end72_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

if.end69:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #6
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr63.1 = getelementptr i8, ptr %56, i32 637
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.1) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %58 = and i8 %57, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool67.not.1 = icmp eq i8 %58, 0
  br i1 %tobool67.not.1, label %if.end69.for.end72_crit_edge, label %if.end69.1

if.end69.for.end72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

if.end69.1:                                       ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #6
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %add.ptr63.2 = getelementptr i8, ptr %61, i32 637
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.2) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %63 = and i8 %62, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool67.not.2 = icmp eq i8 %63, 0
  br i1 %tobool67.not.2, label %if.end69.1.for.end72_crit_edge, label %if.end69.2

if.end69.1.for.end72_crit_edge:                   ; preds = %if.end69.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

if.end69.2:                                       ; preds = %if.end69.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 2147480) #6
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %add.ptr63.3 = getelementptr i8, ptr %66, i32 637
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.3) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %68 = and i8 %67, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool67.not.3 = icmp eq i8 %68, 0
  br i1 %tobool67.not.3, label %if.end69.2.for.end72_crit_edge, label %if.end69.3

if.end69.2.for.end72_crit_edge:                   ; preds = %if.end69.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

if.end69.3:                                       ; preds = %if.end69.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %add.ptr63.4 = getelementptr i8, ptr %71, i32 637
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr63.4) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %73 = and i8 %72, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool67.not.4 = icmp eq i8 %73, 0
  br i1 %tobool67.not.4, label %if.end69.3.for.end72_crit_edge, label %if.end69.4

if.end69.3.for.end72_crit_edge:                   ; preds = %if.end69.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

if.end69.4:                                       ; preds = %if.end69.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #6
  br label %for.end72

for.end72:                                        ; preds = %if.end69.4, %if.end69.3.for.end72_crit_edge, %if.end69.2.for.end72_crit_edge, %if.end69.1.for.end72_crit_edge, %if.end69.for.end72_crit_edge, %if.end8.for.end72_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %add.ptr74 = getelementptr i8, ptr %76, i32 637
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 0) #6, !srcloc !54
  br i1 %write, label %for.end72.do.end85_crit_edge, label %if.then76

for.end72.do.end85_crit_edge:                     ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end85

if.then76:                                        ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %add.ptr78 = getelementptr i16, ptr %78, i32 433
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr78) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %80 = and i16 %79, -241
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %82 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %data, align 2
  br label %do.end85

do.end85:                                         ; preds = %if.then76, %for.end72.do.end85_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8180_write_phy(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 271, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl8225se_rf_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl8225se_rf_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 333, i32 3}
!12 = !{ptr @rtl8225se_rf_init._entry.7, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8225se_rf_init._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 336, i32 3}
!16 = !{ptr @rtl8225se_rf_init._entry.10, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8225se_rf_init._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 90, i32 4}
!20 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtl8187se_three_wire_io._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtl8187se_three_wire_io._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 108, i32 5}
!26 = !{ptr @rtl8187se_three_wire_io._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtl8187se_three_wire_io._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @RF_GAIN_TABLE, !29, !"RF_GAIN_TABLE", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 23, i32 18}
!30 = !{ptr @ZEBRA_AGC, !31, !"ZEBRA_AGC", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 45, i32 17}
!32 = !{ptr @OFDM_CONFIG, !33, !"OFDM_CONFIG", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 64, i32 17}
!34 = !{ptr @cck_ofdm_gain_settings, !35, !"cck_ofdm_gain_settings", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 31, i32 17}
!36 = !{ptr @rtl8225se_chan, !37, !"rtl8225se_chan", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 40, i32 18}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 421, i32 11}
!40 = !{ptr @rtl8225se_ops, !41, !"rtl8225se_ops", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8225se.c", i32 420, i32 36}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 6313168}
!52 = !{i64 2153852513}
!53 = !{i64 2153854118}
!54 = !{i64 6312773}
!55 = !{i64 6312550}
!56 = !{i64 2153853125}
