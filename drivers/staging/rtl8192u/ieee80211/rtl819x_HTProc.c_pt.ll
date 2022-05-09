; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+HTUpdateSelfAndPeerSetting\22, \22a\22\09"
module asm "\09.weak\09__crc_HTUpdateSelfAndPeerSetting\09\09\09\09"
module asm "\09.long\09__crc_HTUpdateSelfAndPeerSetting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_HTUpdateSelfAndPeerSetting:\09\09\09\09\09"
module asm "\09.asciz \09\22HTUpdateSelfAndPeerSetting\22\09\09\09\09\09"
module asm "__kstrtabns_HTUpdateSelfAndPeerSetting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.116, i32 }
%union.anon.116 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }

@MCS_FILTER_ALL = dso_local global { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\1F\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@MCS_FILTER_1SS = dso_local global { <{ i8, i8, i8, i8, [12 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 0, i8 0, i8 1, [12 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@MCS_DATA_RATE = dso_local global { [2 x [2 x [77 x i16]]], [152 x i8] } { [2 x [2 x [77 x i16]]] [[2 x [77 x i16]] [[77 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 26, i16 52, i16 78, i16 104, i16 156, i16 208, i16 234, i16 260, i16 39, i16 78, i16 117, i16 234, i16 312, i16 351, i16 390, i16 52, i16 104, i16 156, i16 208, i16 312, i16 416, i16 468, i16 520, i16 0, i16 78, i16 104, i16 130, i16 117, i16 156, i16 195, i16 104, i16 130, i16 130, i16 156, i16 182, i16 182, i16 208, i16 156, i16 195, i16 195, i16 234, i16 273, i16 273, i16 312, i16 130, i16 156, i16 181, i16 156, i16 181, i16 208, i16 234, i16 208, i16 234, i16 260, i16 260, i16 286, i16 195, i16 234, i16 273, i16 234, i16 273, i16 312, i16 351, i16 312, i16 351, i16 390, i16 390, i16 429, i16 0], [77 x i16] [i16 14, i16 29, i16 43, i16 58, i16 87, i16 116, i16 130, i16 144, i16 29, i16 58, i16 87, i16 116, i16 173, i16 231, i16 260, i16 289, i16 43, i16 87, i16 130, i16 173, i16 260, i16 347, i16 390, i16 433, i16 58, i16 116, i16 173, i16 231, i16 347, i16 462, i16 520, i16 578, i16 0, i16 87, i16 116, i16 144, i16 130, i16 173, i16 217, i16 116, i16 144, i16 144, i16 173, i16 202, i16 202, i16 231, i16 173, i16 217, i16 217, i16 260, i16 303, i16 303, i16 347, i16 144, i16 173, i16 202, i16 173, i16 202, i16 231, i16 260, i16 231, i16 260, i16 289, i16 289, i16 318, i16 217, i16 260, i16 303, i16 260, i16 303, i16 347, i16 390, i16 347, i16 390, i16 433, i16 433, i16 477]], [2 x [77 x i16]] [[77 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540, i16 81, i16 162, i16 243, i16 324, i16 486, i16 648, i16 729, i16 810, i16 108, i16 216, i16 324, i16 432, i16 648, i16 864, i16 972, i16 1080, i16 12, i16 162, i16 216, i16 270, i16 243, i16 324, i16 405, i16 216, i16 270, i16 270, i16 324, i16 378, i16 378, i16 432, i16 324, i16 405, i16 405, i16 486, i16 567, i16 567, i16 648, i16 270, i16 324, i16 378, i16 324, i16 378, i16 432, i16 486, i16 432, i16 486, i16 540, i16 540, i16 594, i16 405, i16 486, i16 567, i16 486, i16 567, i16 648, i16 729, i16 648, i16 729, i16 810, i16 810, i16 891], [77 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600, i16 90, i16 180, i16 270, i16 360, i16 540, i16 720, i16 810, i16 900, i16 120, i16 240, i16 360, i16 480, i16 720, i16 960, i16 1080, i16 1200, i16 13, i16 180, i16 240, i16 300, i16 270, i16 360, i16 450, i16 240, i16 300, i16 300, i16 360, i16 420, i16 420, i16 480, i16 360, i16 450, i16 450, i16 540, i16 630, i16 630, i16 720, i16 300, i16 360, i16 420, i16 360, i16 420, i16 480, i16 540, i16 480, i16 540, i16 600, i16 600, i16 660, i16 450, i16 540, i16 630, i16 540, i16 630, i16 720, i16 810, i16 720, i16 810, i16 900, i16 900, i16 990]]], [152 x i8] zeroinitializer }, align 32
@HTDebugHTCapability.EWC11NHTCap = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L3", [28 x i8] zeroinitializer }, align 32
@ieee80211_debug_level = external dso_local local_unnamed_addr global i32, align 4
@HTDebugHTCapability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017ieee80211: EWC IE in %s()\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HTDebugHTCapability\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c\00", [44 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr = internal global ptr @HTDebugHTCapability._entry, section ".printk_index", align 4
@HTDebugHTCapability._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: <Log HT Capability>. Called by %s\0A\00", [48 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.5 = internal global ptr @HTDebugHTCapability._entry.3, section ".printk_index", align 4
@HTDebugHTCapability._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: \09Supported Channel Width = %s\0A\00", [52 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.8 = internal global ptr @HTDebugHTCapability._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20/40MHz\00", [23 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017ieee80211: \09Support Short GI for 20M = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.13 = internal global ptr @HTDebugHTCapability._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017ieee80211: \09Support Short GI for 40M = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.18 = internal global ptr @HTDebugHTCapability._entry.16, section ".printk_index", align 4
@HTDebugHTCapability._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017ieee80211: \09Support TX STBC = %s\0A\00", [60 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.21 = internal global ptr @HTDebugHTCapability._entry.19, section ".printk_index", align 4
@HTDebugHTCapability._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017ieee80211: \09Max AMSDU Size = %s\0A\00", [61 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.24 = internal global ptr @HTDebugHTCapability._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3839\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7935\00", [27 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: \09Support CCK in 20/40 mode = %s\0A\00", [50 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.29 = internal global ptr @HTDebugHTCapability._entry.27, section ".printk_index", align 4
@HTDebugHTCapability._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017ieee80211: \09Max AMPDU Factor = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.32 = internal global ptr @HTDebugHTCapability._entry.30, section ".printk_index", align 4
@HTDebugHTCapability._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017ieee80211: \09MPDU Density = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.35 = internal global ptr @HTDebugHTCapability._entry.33, section ".printk_index", align 4
@HTDebugHTCapability._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017ieee80211: \09MCS Rate Set = [%x][%x][%x][%x][%x]\0A\00", [45 x i8] zeroinitializer }, align 32
@HTDebugHTCapability._entry_ptr.38 = internal global ptr @HTDebugHTCapability._entry.36, section ".printk_index", align 4
@HTDebugHTInfo.EWC11NHTInfo = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L4", [28 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HTDebugHTInfo\00", [18 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr = internal global ptr @HTDebugHTInfo._entry, section ".printk_index", align 4
@HTDebugHTInfo._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ieee80211: <Log HT Information Element>. Called by %s\0A\00", [39 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.42 = internal global ptr @HTDebugHTInfo._entry.40, section ".printk_index", align 4
@HTDebugHTInfo._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017ieee80211: \09Primary channel = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.45 = internal global ptr @HTDebugHTInfo._entry.43, section ".printk_index", align 4
@HTDebugHTInfo._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ieee80211: \09Secondary channel =\00", [62 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.48 = internal global ptr @HTDebugHTInfo._entry.46, section ".printk_index", align 4
@HTDebugHTInfo._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017ieee80211: Not Present\0A\00", [38 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.51 = internal global ptr @HTDebugHTInfo._entry.49, section ".printk_index", align 4
@HTDebugHTInfo._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ieee80211: Upper channel\0A\00", [36 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.54 = internal global ptr @HTDebugHTInfo._entry.52, section ".printk_index", align 4
@HTDebugHTInfo._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017ieee80211: Reserved. Eooro!!!\0A\00", [63 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.57 = internal global ptr @HTDebugHTInfo._entry.55, section ".printk_index", align 4
@HTDebugHTInfo._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.39, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ieee80211: Lower Channel\0A\00", [36 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.60 = internal global ptr @HTDebugHTInfo._entry.58, section ".printk_index", align 4
@HTDebugHTInfo._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.39, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: \09Recommended channel width = %s\0A\00", [50 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.63 = internal global ptr @HTDebugHTInfo._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20Mhz\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40Mhz\00", [26 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.39, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: \09Operation mode for protection = \00", [49 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.68 = internal global ptr @HTDebugHTInfo._entry.66, section ".printk_index", align 4
@HTDebugHTInfo._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.39, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ieee80211: No Protection\0A\00", [36 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.71 = internal global ptr @HTDebugHTInfo._entry.69, section ".printk_index", align 4
@HTDebugHTInfo._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.39, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: HT non-member protection mode\0A\00", [52 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.74 = internal global ptr @HTDebugHTInfo._entry.72, section ".printk_index", align 4
@HTDebugHTInfo._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.39, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: Suggest to open protection\0A\00", [55 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.77 = internal global ptr @HTDebugHTInfo._entry.75, section ".printk_index", align 4
@HTDebugHTInfo._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.39, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ieee80211: HT mixed mode\0A\00", [36 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.80 = internal global ptr @HTDebugHTInfo._entry.78, section ".printk_index", align 4
@HTDebugHTInfo._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.39, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ieee80211: \09Basic MCS Rate Set = [%x][%x][%x][%x][%x]\0A\00", [39 x i8] zeroinitializer }, align 32
@HTDebugHTInfo._entry_ptr.83 = internal global ptr @HTDebugHTInfo._entry.81, section ".printk_index", align 4
@__const.TxCountToDataRate.CCKOFDMRate = private unnamed_addr constant [12 x i16] [i16 2, i16 4, i16 11, i16 22, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108], align 2
@BELKINF5D8233V1_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\17?", [29 x i8] zeroinitializer }, align 32
@BELKINF5D82334V3_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1C\DF", [29 x i8] zeroinitializer }, align 32
@PCI_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\90\CC", [29 x i8] zeroinitializer }, align 32
@EDIMAX_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0E.", [29 x i8] zeroinitializer }, align 32
@AIRLINK_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\18\02", [29 x i8] zeroinitializer }, align 32
@UNKNOWN_BORADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\14\BF", [29 x i8] zeroinitializer }, align 32
@LINKSYSWRT330_LINKSYSWRT300_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1Ap", [29 x i8] zeroinitializer }, align 32
@LINKSYSWRT350_LINKSYSWRT150_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1D~", [29 x i8] zeroinitializer }, align 32
@NETGEAR834Bv2_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1B/", [29 x i8] zeroinitializer }, align 32
@HTConstructCapabilityElement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017ieee80211: posHTCap or pHTInfo can't be null in %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HTConstructCapabilityElement\00", [35 x i8] zeroinitializer }, align 32
@HTConstructCapabilityElement._entry_ptr = internal global ptr @HTConstructCapabilityElement._entry, section ".printk_index", align 4
@HTConstructCapabilityElement._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017ieee80211: TX HT cap/info ele BW=%d MaxAMSDUSize:%d DssCCk:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@HTConstructCapabilityElement._entry_ptr.88 = internal global ptr @HTConstructCapabilityElement._entry.86, section ".printk_index", align 4
@HTConstructInfoElement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017ieee80211: posHTInfo or pHTInfoEle can't be null in %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HTConstructInfoElement\00", [41 x i8] zeroinitializer }, align 32
@HTConstructInfoElement._entry_ptr = internal global ptr @HTConstructInfoElement._entry, section ".printk_index", align 4
@HTConstructRT2RTAggElement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: posRT2RTAgg can't be null in %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HTConstructRT2RTAggElement\00", [37 x i8] zeroinitializer }, align 32
@HTConstructRT2RTAggElement._entry_ptr = internal global ptr @HTConstructRT2RTAggElement._entry, section ".printk_index", align 4
@HTGetHighestMCSRate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017ieee80211: pMCSRateSet or pMCSFilter can't be null in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HTGetHighestMCSRate\00", [44 x i8] zeroinitializer }, align 32
@HTGetHighestMCSRate._entry_ptr = internal global ptr @HTGetHighestMCSRate._entry, section ".printk_index", align 4
@HTOnAssocRsp.EWC11NHTCap = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L3", [28 x i8] zeroinitializer }, align 32
@HTOnAssocRsp.EWC11NHTInfo = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L4", [28 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ieee80211: <=== %s: HT_DISABLE\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HTOnAssocRsp\00", [19 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr = internal global ptr @HTOnAssocRsp._entry, section ".printk_index", align 4
@HTOnAssocRsp._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: ===> HTOnAssocRsp_wq(): HT_ENABLE\0A\00", [48 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr.99 = internal global ptr @HTOnAssocRsp._entry.97, section ".printk_index", align 4
@HTOnAssocRsp._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017ieee80211: %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr.102 = internal global ptr @HTOnAssocRsp._entry.100, section ".printk_index", align 4
@HTOnAssocRsp._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2x \00", [27 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr.105 = internal global ptr @HTOnAssocRsp._entry.103, section ".printk_index", align 4
@HTOnAssocRsp._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr.108 = internal global ptr @HTOnAssocRsp._entry.106, section ".printk_index", align 4
@HTOnAssocRsp._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr.110 = internal global ptr @HTOnAssocRsp._entry.109, section ".printk_index", align 4
@HTInitializeHTInfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017ieee80211: ===========>%s()\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HTInitializeHTInfo\00", [45 x i8] zeroinitializer }, align 32
@HTInitializeHTInfo._entry_ptr = internal global ptr @HTInitializeHTInfo._entry, section ".printk_index", align 4
@HTResetSelfAndSavePeerSetting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ieee80211: ==============>%s()\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HTResetSelfAndSavePeerSetting\00", [34 x i8] zeroinitializer }, align 32
@HTResetSelfAndSavePeerSetting._entry_ptr = internal global ptr @HTResetSelfAndSavePeerSetting._entry, section ".printk_index", align 4
@__kstrtab_HTUpdateSelfAndPeerSetting = external dso_local constant [0 x i8], align 1
@__kstrtabns_HTUpdateSelfAndPeerSetting = external dso_local constant [0 x i8], align 1
@__ksymtab_HTUpdateSelfAndPeerSetting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @HTUpdateSelfAndPeerSetting to i32), ptr @__kstrtab_HTUpdateSelfAndPeerSetting, ptr @__kstrtabns_HTUpdateSelfAndPeerSetting }, section "___ksymtab+HTUpdateSelfAndPeerSetting", align 4
@HTCCheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017ieee80211: HT CONTROL FILED EXIST!!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTCCheck\00", [23 x i8] zeroinitializer }, align 32
@HTCCheck._entry_ptr = internal global ptr @HTCCheck._entry, section ".printk_index", align 4
@HT_PickMCSRate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: pOperateMCS can't be null in %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HT_PickMCSRate\00", [17 x i8] zeroinitializer }, align 32
@HT_PickMCSRate._entry_ptr = internal global ptr @HT_PickMCSRate._entry, section ".printk_index", align 4
@CISCO_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\17\94", [29 x i8] zeroinitializer }, align 32
@HTIOTPeerDetermine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: Joseph debug!! IOTPEER: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HTIOTPeerDetermine\00", [45 x i8] zeroinitializer }, align 32
@HTIOTPeerDetermine._entry_ptr = internal global ptr @HTIOTPeerDetermine._entry, section ".printk_index", align 4
@HTSetConnectBwModeCallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017ieee80211: ======>%s()\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HTSetConnectBwModeCallback\00", [37 x i8] zeroinitializer }, align 32
@HTSetConnectBwModeCallback._entry_ptr = internal global ptr @HTSetConnectBwModeCallback._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"MCS_FILTER_ALL\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 9, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"MCS_FILTER_1SS\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 11, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"MCS_DATA_RATE\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 13, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 129, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 134, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 139, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 142, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 143, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 144, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 145, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 146, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 147, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 148, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 149, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 164, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 169, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 175, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 177, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 178, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 181, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 184, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 187, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 190, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 193, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 195, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 198, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 201, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 204, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 207, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 211, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [23 x i8] c"BELKINF5D8233V1_RALINK\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 40, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant [24 x i8] c"BELKINF5D82334V3_RALINK\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 41, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant [11 x i8] c"PCI_RALINK\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 42, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant [14 x i8] c"EDIMAX_RALINK\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 43, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant [15 x i8] c"AIRLINK_RALINK\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 44, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"UNKNOWN_BORADCOM\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 36, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant [37 x i8] c"LINKSYSWRT330_LINKSYSWRT300_BROADCOM\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 37, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant [37 x i8] c"LINKSYSWRT350_LINKSYSWRT150_BROADCOM\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 38, i32 11 }
@___asan_gen_.354 = private unnamed_addr constant [23 x i8] c"NETGEAR834Bv2_BROADCOM\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 39, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 476, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 517, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 589, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 655, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 767, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"EWC11NHTCap\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 844, i32 15 }
@___asan_gen_.402 = private unnamed_addr constant [13 x i8] c"EWC11NHTInfo\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 845, i32 15 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 848, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 853, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 873, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1027, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1124, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1219, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 704, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant [15 x i8] c"CISCO_BROADCOM\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 46, i32 11 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 330, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private constant [55 x i8] c"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 1230, i32 2 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @HTCCheck._entry, ptr @HTCCheck._entry_ptr, ptr @HTConstructCapabilityElement._entry, ptr @HTConstructCapabilityElement._entry.86, ptr @HTConstructCapabilityElement._entry_ptr, ptr @HTConstructCapabilityElement._entry_ptr.88, ptr @HTConstructInfoElement._entry, ptr @HTConstructInfoElement._entry_ptr, ptr @HTConstructRT2RTAggElement._entry, ptr @HTConstructRT2RTAggElement._entry_ptr, ptr @HTDebugHTCapability._entry, ptr @HTDebugHTCapability._entry.11, ptr @HTDebugHTCapability._entry.16, ptr @HTDebugHTCapability._entry.19, ptr @HTDebugHTCapability._entry.22, ptr @HTDebugHTCapability._entry.27, ptr @HTDebugHTCapability._entry.3, ptr @HTDebugHTCapability._entry.30, ptr @HTDebugHTCapability._entry.33, ptr @HTDebugHTCapability._entry.36, ptr @HTDebugHTCapability._entry.6, ptr @HTDebugHTCapability._entry_ptr, ptr @HTDebugHTCapability._entry_ptr.13, ptr @HTDebugHTCapability._entry_ptr.18, ptr @HTDebugHTCapability._entry_ptr.21, ptr @HTDebugHTCapability._entry_ptr.24, ptr @HTDebugHTCapability._entry_ptr.29, ptr @HTDebugHTCapability._entry_ptr.32, ptr @HTDebugHTCapability._entry_ptr.35, ptr @HTDebugHTCapability._entry_ptr.38, ptr @HTDebugHTCapability._entry_ptr.5, ptr @HTDebugHTCapability._entry_ptr.8, ptr @HTDebugHTInfo._entry, ptr @HTDebugHTInfo._entry.40, ptr @HTDebugHTInfo._entry.43, ptr @HTDebugHTInfo._entry.46, ptr @HTDebugHTInfo._entry.49, ptr @HTDebugHTInfo._entry.52, ptr @HTDebugHTInfo._entry.55, ptr @HTDebugHTInfo._entry.58, ptr @HTDebugHTInfo._entry.61, ptr @HTDebugHTInfo._entry.66, ptr @HTDebugHTInfo._entry.69, ptr @HTDebugHTInfo._entry.72, ptr @HTDebugHTInfo._entry.75, ptr @HTDebugHTInfo._entry.78, ptr @HTDebugHTInfo._entry.81, ptr @HTDebugHTInfo._entry_ptr, ptr @HTDebugHTInfo._entry_ptr.42, ptr @HTDebugHTInfo._entry_ptr.45, ptr @HTDebugHTInfo._entry_ptr.48, ptr @HTDebugHTInfo._entry_ptr.51, ptr @HTDebugHTInfo._entry_ptr.54, ptr @HTDebugHTInfo._entry_ptr.57, ptr @HTDebugHTInfo._entry_ptr.60, ptr @HTDebugHTInfo._entry_ptr.63, ptr @HTDebugHTInfo._entry_ptr.68, ptr @HTDebugHTInfo._entry_ptr.71, ptr @HTDebugHTInfo._entry_ptr.74, ptr @HTDebugHTInfo._entry_ptr.77, ptr @HTDebugHTInfo._entry_ptr.80, ptr @HTDebugHTInfo._entry_ptr.83, ptr @HTGetHighestMCSRate._entry, ptr @HTGetHighestMCSRate._entry_ptr, ptr @HTIOTPeerDetermine._entry, ptr @HTIOTPeerDetermine._entry_ptr, ptr @HTInitializeHTInfo._entry, ptr @HTInitializeHTInfo._entry_ptr, ptr @HTOnAssocRsp._entry, ptr @HTOnAssocRsp._entry.100, ptr @HTOnAssocRsp._entry.103, ptr @HTOnAssocRsp._entry.106, ptr @HTOnAssocRsp._entry.109, ptr @HTOnAssocRsp._entry.97, ptr @HTOnAssocRsp._entry_ptr, ptr @HTOnAssocRsp._entry_ptr.102, ptr @HTOnAssocRsp._entry_ptr.105, ptr @HTOnAssocRsp._entry_ptr.108, ptr @HTOnAssocRsp._entry_ptr.110, ptr @HTOnAssocRsp._entry_ptr.99, ptr @HTResetSelfAndSavePeerSetting._entry, ptr @HTResetSelfAndSavePeerSetting._entry_ptr, ptr @HTSetConnectBwModeCallback._entry, ptr @HTSetConnectBwModeCallback._entry_ptr, ptr @HT_PickMCSRate._entry, ptr @HT_PickMCSRate._entry_ptr, ptr @__ksymtab_HTUpdateSelfAndPeerSetting, ptr @MCS_FILTER_ALL, ptr @MCS_FILTER_1SS, ptr @MCS_DATA_RATE, ptr @HTDebugHTCapability.EWC11NHTCap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @HTDebugHTInfo.EWC11NHTInfo, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @BELKINF5D8233V1_RALINK, ptr @BELKINF5D82334V3_RALINK, ptr @PCI_RALINK, ptr @EDIMAX_RALINK, ptr @AIRLINK_RALINK, ptr @UNKNOWN_BORADCOM, ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, ptr @NETGEAR834Bv2_BROADCOM, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @HTOnAssocRsp.EWC11NHTCap, ptr @HTOnAssocRsp.EWC11NHTInfo, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @CISCO_BROADCOM, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_FILTER_ALL to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_FILTER_1SS to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_DATA_RATE to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability.EWC11NHTCap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTCapability._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo.EWC11NHTInfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTDebugHTInfo._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BELKINF5D8233V1_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BELKINF5D82334V3_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCI_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @EDIMAX_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AIRLINK_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UNKNOWN_BORADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NETGEAR834Bv2_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTConstructCapabilityElement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTConstructCapabilityElement._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTConstructInfoElement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTConstructRT2RTAggElement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTGetHighestMCSRate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp.EWC11NHTCap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp.EWC11NHTInfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTInitializeHTInfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTResetSelfAndSavePeerSetting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTCCheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HT_PickMCSRate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CISCO_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTIOTPeerDetermine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTSetConnectBwModeCallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HTUpdateDefaultSetting(ptr nocapture noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bRegShortGI20MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bRegShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bRegShortGI20MHz, align 1
  %bRegShortGI40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %bRegShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bRegShortGI40MHz, align 1
  %bRegBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bRegBW40MHz, align 1
  %bRegSuppCCK = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bRegSuppCCK, align 1
  %nAMSDU_MaxSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 7935, ptr %nAMSDU_MaxSize, align 1
  %bAMSDU_Support = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %bAMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bAMSDU_Support, align 1
  %bAMPDUEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %bAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bAMPDUEnable, align 1
  %AMPDU_Factor = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %AMPDU_Factor, align 1
  %MPDU_Density = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %MPDU_Density, align 1
  %SelfMimoPs = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %SelfMimoPs to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %SelfMimoPs, align 1
  %bTxDisableRateFallBack = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 20
  %12 = ptrtoint ptr %bTxDisableRateFallBack to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bTxDisableRateFallBack, align 2
  %bTxUseDriverAssingedRate = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 21
  %13 = ptrtoint ptr %bTxUseDriverAssingedRate to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bTxUseDriverAssingedRate, align 1
  %bRegRT2RTAggregation = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 39
  %14 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bRegRT2RTAggregation, align 1
  %bRegRxReorderEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 43
  %15 = ptrtoint ptr %bRegRxReorderEnable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bRegRxReorderEnable, align 1
  %RxReorderWinSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 45
  %16 = ptrtoint ptr %RxReorderWinSize to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %RxReorderWinSize, align 1
  %RxReorderPendingTime = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 46
  %17 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 30, ptr %RxReorderPendingTime, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTDebugHTCapability(ptr nocapture noundef readonly %CapIE, ptr noundef %TitleString) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %CapIE, ptr noundef nonnull dereferenceable(4) @HTDebugHTCapability.EWC11NHTCap, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %arrayidx = getelementptr i8, ptr %CapIE, i32 4
  br label %do.body9

do.body9:                                         ; preds = %do.end6, %entry.do.body9_crit_edge
  %pCapELE.0 = phi ptr [ %arrayidx, %do.end6 ], [ %CapIE, %entry.do.body9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %1 = load i32, ptr @ieee80211_debug_level, align 4
  %and10 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.body21_crit_edge, label %do.end15

do.body9.do.body21_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %TitleString) #14
  br label %do.body21

do.body21:                                        ; preds = %do.end15, %do.body9.do.body21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and22 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.body34_crit_edge, label %do.end27

do.body21.do.body34_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 3)
  %bf.load = load i24, ptr %pCapELE.0, align 1
  %4 = and i24 %bf.load, 4194304
  %tobool29.not = icmp eq i24 %4, 0
  %cond = select i1 %tobool29.not, ptr @.str.10, ptr @.str.9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #14
  br label %do.body34

do.body34:                                        ; preds = %do.end27, %do.body21.do.body34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and35 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.body53_crit_edge, label %do.end40

do.body34.do.body53_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load42 = load i24, ptr %pCapELE.0, align 1
  %7 = and i24 %bf.load42, 262144
  %tobool47.not = icmp eq i24 %7, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.15, ptr @.str.14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %cond48) #14
  br label %do.body53

do.body53:                                        ; preds = %do.end40, %do.body34.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %8 = load i32, ptr @ieee80211_debug_level, align 4
  %and54 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.body72_crit_edge, label %do.end59

do.body53.do.body72_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load61 = load i24, ptr %pCapELE.0, align 1
  %10 = and i24 %bf.load61, 131072
  %tobool66.not = icmp eq i24 %10, 0
  %cond67 = select i1 %tobool66.not, ptr @.str.15, ptr @.str.14
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %cond67) #14
  br label %do.body72

do.body72:                                        ; preds = %do.end59, %do.body53.do.body72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %11 = load i32, ptr @ieee80211_debug_level, align 4
  %and73 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.do.body91_crit_edge, label %do.end78

do.body72.do.body91_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body91

do.end78:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %bf.load80 = load i24, ptr %pCapELE.0, align 1
  %13 = and i24 %bf.load80, 65536
  %tobool85.not = icmp eq i24 %13, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.15, ptr @.str.14
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %cond86) #14
  br label %do.body91

do.body91:                                        ; preds = %do.end78, %do.body72.do.body91_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %14 = load i32, ptr @ieee80211_debug_level, align 4
  %and92 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body91.do.body110_crit_edge, label %do.end97

do.body91.do.body110_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body110

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load99 = load i24, ptr %pCapELE.0, align 1
  %16 = and i24 %bf.load99, 4096
  %tobool104.not = icmp eq i24 %16, 0
  %cond105 = select i1 %tobool104.not, ptr @.str.26, ptr @.str.25
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %cond105) #14
  br label %do.body110

do.body110:                                       ; preds = %do.end97, %do.body91.do.body110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %17 = load i32, ptr @ieee80211_debug_level, align 4
  %and111 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body110.do.body129_crit_edge, label %do.end116

do.body110.do.body129_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body129

do.end116:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 3)
  %bf.load118 = load i24, ptr %pCapELE.0, align 1
  %19 = and i24 %bf.load118, 2048
  %tobool123.not = icmp eq i24 %19, 0
  %cond124 = select i1 %tobool123.not, ptr @.str.15, ptr @.str.14
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %cond124) #14
  br label %do.body129

do.body129:                                       ; preds = %do.end116, %do.body110.do.body129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %20 = load i32, ptr @ieee80211_debug_level, align 4
  %and130 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body129.do.body146_crit_edge, label %do.end135

do.body129.do.body146_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body146

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 3)
  %bf.load137 = load i24, ptr %pCapELE.0, align 1
  %22 = zext i24 %bf.load137 to i32
  %23 = lshr i32 %22, 6
  %conv141 = and i32 %23, 3
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv141) #14
  br label %do.body146

do.body146:                                       ; preds = %do.end135, %do.body129.do.body146_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %24 = load i32, ptr @ieee80211_debug_level, align 4
  %and147 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body146.do.body163_crit_edge, label %do.end152

do.body146.do.body163_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body163

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 3)
  %bf.load154 = load i24, ptr %pCapELE.0, align 1
  %26 = zext i24 %bf.load154 to i32
  %27 = lshr i32 %26, 3
  %bf.cast157 = and i32 %27, 7
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %bf.cast157) #14
  br label %do.body163

do.body163:                                       ; preds = %do.end152, %do.body146.do.body163_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %28 = load i32, ptr @ieee80211_debug_level, align 4
  %and164 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.end188_crit_edge, label %do.end169

do.body163.do.end188_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end188

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #12
  %MCS = getelementptr inbounds %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1
  %29 = ptrtoint ptr %MCS to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %MCS, align 1
  %conv172 = zext i8 %30 to i32
  %arrayidx174 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %32 to i32
  %arrayidx177 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %34 to i32
  %arrayidx180 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %36 to i32
  %arrayidx183 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %38 to i32
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv172, i32 noundef %conv175, i32 noundef %conv178, i32 noundef %conv181, i32 noundef %conv184) #14
  br label %do.end188

do.end188:                                        ; preds = %do.end169, %do.body163.do.end188_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTDebugHTInfo(ptr nocapture noundef readonly %InfoIE, ptr noundef %TitleString) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %InfoIE, ptr noundef nonnull dereferenceable(4) @HTDebugHTInfo.EWC11NHTInfo, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %arrayidx = getelementptr i8, ptr %InfoIE, i32 4
  br label %do.body9

do.body9:                                         ; preds = %do.end6, %entry.do.body9_crit_edge
  %pHTInfoEle.0 = phi ptr [ %arrayidx, %do.end6 ], [ %InfoIE, %entry.do.body9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %1 = load i32, ptr @ieee80211_debug_level, align 4
  %and10 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.body21_crit_edge, label %do.end15

do.body9.do.body21_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %TitleString) #14
  br label %do.body21

do.body21:                                        ; preds = %do.end15, %do.body9.do.body21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and22 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.body33_crit_edge, label %do.end27

do.body21.do.body33_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pHTInfoEle.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pHTInfoEle.0, align 1
  %conv = zext i8 %4 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv) #14
  br label %do.body33

do.body33:                                        ; preds = %do.end27, %do.body21.do.body33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and34 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.end44_crit_edge, label %do.end39

do.body33.do.end44_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #14
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.body33.do.end44_crit_edge
  %ExtChlOffset = getelementptr inbounds %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 1
  %6 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load = load i40, ptr %ExtChlOffset, align 1
  %bf.lshr = lshr i40 %bf.load, 38
  %bf.cast = trunc i40 %bf.lshr to i32
  %7 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast, label %do.end44.unreachabledefault [
    i32 0, label %do.body46
    i32 1, label %do.body59
    i32 2, label %do.body72
    i32 3, label %do.body85
  ]

do.body46:                                        ; preds = %do.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %8 = load i32, ptr @ieee80211_debug_level, align 4
  %and47 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.body97_crit_edge, label %do.body46.do.body97.sink.split_crit_edge

do.body46.do.body97.sink.split_crit_edge:         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97.sink.split

do.body46.do.body97_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.body59:                                        ; preds = %do.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %9 = load i32, ptr @ieee80211_debug_level, align 4
  %and60 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.body97_crit_edge, label %do.body59.do.body97.sink.split_crit_edge

do.body59.do.body97.sink.split_crit_edge:         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97.sink.split

do.body59.do.body97_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.body72:                                        ; preds = %do.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %10 = load i32, ptr @ieee80211_debug_level, align 4
  %and73 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.do.body97_crit_edge, label %do.body72.do.body97.sink.split_crit_edge

do.body72.do.body97.sink.split_crit_edge:         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97.sink.split

do.body72.do.body97_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.body85:                                        ; preds = %do.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %11 = load i32, ptr @ieee80211_debug_level, align 4
  %and86 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.body97_crit_edge, label %do.body85.do.body97.sink.split_crit_edge

do.body85.do.body97.sink.split_crit_edge:         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97.sink.split

do.body85.do.body97_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.end44.unreachabledefault:                      ; preds = %do.end44
  unreachable

do.body97.sink.split:                             ; preds = %do.body85.do.body97.sink.split_crit_edge, %do.body72.do.body97.sink.split_crit_edge, %do.body59.do.body97.sink.split_crit_edge, %do.body46.do.body97.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %do.body46.do.body97.sink.split_crit_edge ], [ @.str.53, %do.body59.do.body97.sink.split_crit_edge ], [ @.str.56, %do.body72.do.body97.sink.split_crit_edge ], [ @.str.59, %do.body85.do.body97.sink.split_crit_edge ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink) #14
  br label %do.body97

do.body97:                                        ; preds = %do.body97.sink.split, %do.body85.do.body97_crit_edge, %do.body72.do.body97_crit_edge, %do.body59.do.body97_crit_edge, %do.body46.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %12 = load i32, ptr @ieee80211_debug_level, align 4
  %and98 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.body114_crit_edge, label %do.end103

do.body97.do.body114_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body114

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %13, i32 5)
  %bf.load105 = load i40, ptr %ExtChlOffset, align 1
  %14 = and i40 %bf.load105, 137438953472
  %tobool109.not = icmp eq i40 %14, 0
  %cond = select i1 %tobool109.not, ptr @.str.65, ptr @.str.64
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull %cond) #14
  br label %do.body114

do.body114:                                       ; preds = %do.end103, %do.body97.do.body114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %15 = load i32, ptr @ieee80211_debug_level, align 4
  %and115 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body114.do.end125_crit_edge, label %do.end120

do.body114.do.end125_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

do.end120:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #14
  br label %do.end125

do.end125:                                        ; preds = %do.end120, %do.body114.do.end125_crit_edge
  %16 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %16, i32 5)
  %bf.load126 = load i40, ptr %ExtChlOffset, align 1
  %17 = trunc i40 %bf.load126 to i32
  %18 = lshr i32 %17, 30
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %18, label %do.end125.unreachabledefault [
    i32 0, label %do.body132
    i32 1, label %do.body145
    i32 2, label %do.body158
    i32 3, label %do.body171
  ]

do.body132:                                       ; preds = %do.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %20 = load i32, ptr @ieee80211_debug_level, align 4
  %and133 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.do.body184_crit_edge, label %do.body132.do.body184.sink.split_crit_edge

do.body132.do.body184.sink.split_crit_edge:       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184.sink.split

do.body132.do.body184_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184

do.body145:                                       ; preds = %do.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %21 = load i32, ptr @ieee80211_debug_level, align 4
  %and146 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.body145.do.body184_crit_edge, label %do.body145.do.body184.sink.split_crit_edge

do.body145.do.body184.sink.split_crit_edge:       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184.sink.split

do.body145.do.body184_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184

do.body158:                                       ; preds = %do.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %22 = load i32, ptr @ieee80211_debug_level, align 4
  %and159 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.body158.do.body184_crit_edge, label %do.body158.do.body184.sink.split_crit_edge

do.body158.do.body184.sink.split_crit_edge:       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184.sink.split

do.body158.do.body184_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184

do.body171:                                       ; preds = %do.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %23 = load i32, ptr @ieee80211_debug_level, align 4
  %and172 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body171.do.body184_crit_edge, label %do.body171.do.body184.sink.split_crit_edge

do.body171.do.body184.sink.split_crit_edge:       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184.sink.split

do.body171.do.body184_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body184

do.end125.unreachabledefault:                     ; preds = %do.end125
  unreachable

do.body184.sink.split:                            ; preds = %do.body171.do.body184.sink.split_crit_edge, %do.body158.do.body184.sink.split_crit_edge, %do.body145.do.body184.sink.split_crit_edge, %do.body132.do.body184.sink.split_crit_edge
  %.str.70.sink = phi ptr [ @.str.70, %do.body132.do.body184.sink.split_crit_edge ], [ @.str.73, %do.body145.do.body184.sink.split_crit_edge ], [ @.str.76, %do.body158.do.body184.sink.split_crit_edge ], [ @.str.79, %do.body171.do.body184.sink.split_crit_edge ]
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.70.sink) #14
  br label %do.body184

do.body184:                                       ; preds = %do.body184.sink.split, %do.body171.do.body184_crit_edge, %do.body158.do.body184_crit_edge, %do.body145.do.body184_crit_edge, %do.body132.do.body184_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %24 = load i32, ptr @ieee80211_debug_level, align 4
  %and185 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body184.do.end209_crit_edge, label %do.end190

do.body184.do.end209_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end209

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #12
  %BasicMSC = getelementptr inbounds %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 2
  %25 = ptrtoint ptr %BasicMSC to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %BasicMSC, align 1
  %conv193 = zext i8 %26 to i32
  %arrayidx195 = getelementptr %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %28 to i32
  %arrayidx198 = getelementptr %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %30 to i32
  %arrayidx201 = getelementptr %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %32 to i32
  %arrayidx204 = getelementptr %struct._HT_INFORMATION_ELE, ptr %pHTInfoEle.0, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %34 to i32
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv193, i32 noundef %conv196, i32 noundef %conv199, i32 noundef %conv202, i32 noundef %conv205) #14
  br label %do.end209

do.end209:                                        ; preds = %do.end190, %do.body184.do.end209_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @TxCountToDataRate(ptr nocapture noundef readnone %ieee, i8 noundef zeroext %nDataRate) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %nDataRate to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %nDataRate)
  %cmp = icmp ult i8 %nDataRate, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [12 x i16], ptr @__const.TxCountToDataRate.CCKOFDMRate, i32 0, i32 %conv
  br label %cleanup

if.else:                                          ; preds = %entry
  %0 = and i8 %nDataRate, -16
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %0, label %if.else27 [
    i8 16, label %if.else.if.end38_crit_edge
    i8 32, label %if.end38.fold.split
    i8 48, label %if.end38.fold.split61
  ]

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %0)
  %2 = icmp eq i8 %0, 64
  %spec.select = zext i1 %2 to i32
  br label %if.end38

if.end38.fold.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38.fold.split61:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %if.end38.fold.split61, %if.end38.fold.split, %if.else27, %if.else.if.end38_crit_edge
  %is40MHz.0 = phi i32 [ 0, %if.else.if.end38_crit_edge ], [ %spec.select, %if.else27 ], [ 1, %if.end38.fold.split ], [ 0, %if.end38.fold.split61 ]
  %isShortGI.0 = phi i32 [ 0, %if.else.if.end38_crit_edge ], [ %spec.select, %if.else27 ], [ 0, %if.end38.fold.split ], [ 1, %if.end38.fold.split61 ]
  %and = and i32 %conv, 15
  %arrayidx44 = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %is40MHz.0, i32 %isShortGI.0, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  %retval.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx44, %if.end38 ]
  %3 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %retval.0 = load i16, ptr %retval.0.in, align 2
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @IsHTHalfNmodeAPs(ptr nocapture noundef readonly %ieee) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_network = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D8233V1_RALINK, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.if.end48_crit_edge, label %lor.lhs.false

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false:                                    ; preds = %entry
  %bcmp61 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D82334V3_RALINK, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp61)
  %cmp4 = icmp eq i32 %bcmp61, 0
  br i1 %cmp4, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %bcmp62 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @PCI_RALINK, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp62)
  %cmp9 = icmp eq i32 %bcmp62, 0
  br i1 %cmp9, label %lor.lhs.false5.if.end48_crit_edge, label %lor.lhs.false10

lor.lhs.false5.if.end48_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %bcmp63 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @EDIMAX_RALINK, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp63)
  %cmp14 = icmp eq i32 %bcmp63, 0
  br i1 %cmp14, label %lor.lhs.false10.if.end48_crit_edge, label %lor.lhs.false15

lor.lhs.false10.if.end48_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %bcmp64 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @AIRLINK_RALINK, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp64)
  %cmp19 = icmp eq i32 %bcmp64, 0
  br i1 %cmp19, label %lor.lhs.false15.if.end48_crit_edge, label %lor.lhs.false20

lor.lhs.false15.if.end48_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %ralink_cap_exist = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 51
  %0 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ralink_cap_exist, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false20.if.end48_crit_edge

lor.lhs.false20.if.end48_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.else:                                          ; preds = %lor.lhs.false20
  %bcmp65 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @UNKNOWN_BORADCOM, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp65)
  %cmp24 = icmp eq i32 %bcmp65, 0
  br i1 %cmp24, label %if.else.if.end48_crit_edge, label %lor.lhs.false25

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false25:                                  ; preds = %if.else
  %bcmp66 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp66)
  %cmp29 = icmp eq i32 %bcmp66, 0
  br i1 %cmp29, label %lor.lhs.false25.if.end48_crit_edge, label %lor.lhs.false30

lor.lhs.false25.if.end48_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %bcmp67 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp67)
  %cmp34 = icmp eq i32 %bcmp67, 0
  br i1 %cmp34, label %lor.lhs.false30.if.end48_crit_edge, label %lor.lhs.false35

lor.lhs.false30.if.end48_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %bcmp68 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @NETGEAR834Bv2_BROADCOM, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp68)
  %cmp39 = icmp eq i32 %bcmp68, 0
  br i1 %cmp39, label %lor.lhs.false35.if.end48_crit_edge, label %lor.lhs.false40

lor.lhs.false35.if.end48_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %broadcom_cap_exist = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 50
  %2 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %broadcom_cap_exist, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool41.not = icmp eq i8 %3, 0
  br i1 %tobool41.not, label %if.else43, label %lor.lhs.false40.if.end48_crit_edge

lor.lhs.false40.if.end48_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.else43:                                        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  %bdRT2RTAggregation = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 49, i32 6
  %4 = ptrtoint ptr %bdRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bdRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool44.not = icmp ne i8 %5, 0
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %lor.lhs.false40.if.end48_crit_edge, %lor.lhs.false35.if.end48_crit_edge, %lor.lhs.false30.if.end48_crit_edge, %lor.lhs.false25.if.end48_crit_edge, %if.else.if.end48_crit_edge, %lor.lhs.false20.if.end48_crit_edge, %lor.lhs.false15.if.end48_crit_edge, %lor.lhs.false10.if.end48_crit_edge, %lor.lhs.false5.if.end48_crit_edge, %lor.lhs.false.if.end48_crit_edge, %entry.if.end48_crit_edge
  %retValue.0.off0 = phi i1 [ true, %lor.lhs.false20.if.end48_crit_edge ], [ true, %lor.lhs.false15.if.end48_crit_edge ], [ true, %lor.lhs.false10.if.end48_crit_edge ], [ true, %lor.lhs.false5.if.end48_crit_edge ], [ true, %lor.lhs.false.if.end48_crit_edge ], [ true, %entry.if.end48_crit_edge ], [ true, %lor.lhs.false40.if.end48_crit_edge ], [ true, %lor.lhs.false35.if.end48_crit_edge ], [ true, %lor.lhs.false30.if.end48_crit_edge ], [ true, %lor.lhs.false25.if.end48_crit_edge ], [ true, %if.else.if.end48_crit_edge ], [ %tobool44.not, %if.else43 ]
  ret i1 %retValue.0.off0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @HTResetIOTSetting(ptr nocapture noundef writeonly %pHTInfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %pHTInfo, i32 0, i32 50
  %0 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %IOTPeer = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %pHTInfo, i32 0, i32 49
  %1 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %IOTPeer, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructCapabilityElement(ptr nocapture noundef readonly %ieee, ptr noundef %posHTCap, ptr nocapture noundef %len, i8 noundef zeroext %IsEncrypt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %tobool.not = icmp eq ptr %posHTCap, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool2.not = icmp sgt i32 %2, -1
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len, align 1
  %conv = zext i8 %4 to i32
  %5 = call ptr @memset(ptr %posHTCap, i32 0, i32 %conv)
  %ePeerHTSpecVer = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ePeerHTSpecVer to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ePeerHTSpecVer, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %posHTCap to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 9456691, ptr %posHTCap, align 1
  %arrayidx = getelementptr i8, ptr %posHTCap, i32 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %pCapELE.0 = phi ptr [ %arrayidx, %if.then9 ], [ %posHTCap, %if.end7.if.end10_crit_edge ]
  %9 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load = load i24, ptr %pCapELE.0, align 1
  %bf.clear = and i24 %bf.load, 8388607
  store i24 %bf.clear, ptr %pCapELE.0, align 1
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 196
  %10 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 8
  %12 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ieee, align 8
  %call11 = tail call zeroext i1 %11(ptr noundef %13) #10
  br i1 %call11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 3)
  %bf.load13 = load i24, ptr %pCapELE.0, align 1
  %bf.clear14 = and i24 %bf.load13, -4194305
  br label %if.end23

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %bRegBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 3)
  %bf.load20 = load i24, ptr %pCapELE.0, align 1
  %bf.shl = select i1 %tobool18.not.not, i24 0, i24 4194304
  %bf.clear21 = and i24 %bf.load20, -4194305
  %bf.set22 = or i24 %bf.clear21, %bf.shl
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %if.then12
  %storemerge = phi i24 [ %bf.set22, %if.else16 ], [ %bf.clear14, %if.then12 ]
  %18 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 3)
  store i24 %storemerge, ptr %pCapELE.0, align 1
  %SelfMimoPs = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %SelfMimoPs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %SelfMimoPs, align 1
  %21 = and i8 %20, 3
  %bf.value25 = zext i8 %21 to i24
  %bf.shl26 = shl nuw nsw i24 %bf.value25, 20
  %bf.clear27 = and i24 %storemerge, -4190209
  %bf.set28 = or i24 %bf.shl26, %bf.clear27
  %bf.set50 = or i24 %bf.set28, 462848
  store i24 %bf.set50, ptr %pCapELE.0, align 1
  %bRegBW40MHz51 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %bRegBW40MHz51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bRegBW40MHz51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %if.end23.cond.end_crit_edge, label %cond.true

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %bRegSuppCCK = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bRegSuppCCK, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool55 = icmp ne i8 %25, 0
  %phi.cast = zext i1 %tobool55 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end23.cond.end_crit_edge
  %cond57 = phi i8 [ %phi.cast, %cond.true ], [ 0, %if.end23.cond.end_crit_edge ]
  %26 = zext i8 %cond57 to i24
  %bf.shl61 = shl nuw nsw i24 %26, 11
  %bf.clear62 = and i24 %bf.set50, -584961
  %bf.set63 = or i24 %bf.shl61, %bf.clear62
  %27 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 3)
  store i24 %bf.set63, ptr %pCapELE.0, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %28 = load i32, ptr @ieee80211_debug_level, align 4
  %and72 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %cond.end.do.end95_crit_edge, label %do.end77

cond.end.do.end95_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

do.end77:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr = lshr i24 %storemerge, 22
  %29 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %29 to i32
  %conv91 = zext i8 %cond57 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %bf.cast, i32 noundef 1, i32 noundef %conv91) #14
  br label %do.end95

do.end95:                                         ; preds = %do.end77, %cond.end.do.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %IsEncrypt)
  %tobool96.not = icmp eq i8 %IsEncrypt, 0
  %30 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 3)
  %bf.load105 = load i24, ptr %pCapELE.0, align 1
  %bf.set107 = and i24 %bf.load105, -249
  %.214 = select i1 %tobool96.not, i24 192, i24 184
  %bf.clear109 = or i24 %bf.set107, %.214
  store i24 %bf.clear109, ptr %pCapELE.0, align 1
  %MCS = getelementptr inbounds %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1
  %Regdot11HTOperationalRateSet = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 15
  %31 = call ptr @memcpy(ptr %MCS, ptr %Regdot11HTOperationalRateSet, i32 16)
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 50
  %32 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %IOTAction, align 1
  %and114 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.end95.if.end122_crit_edge, label %if.then116

do.end95.if.end122_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then116:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx118 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx118, align 1
  %36 = and i8 %35, 127
  store i8 %36, ptr %arrayidx118, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.end95.if.end122_crit_edge
  %37 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %IOTAction, align 1
  %and124 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end122.if.end132_crit_edge, label %if.then126

if.end122.if.end132_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx128 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx128, align 1
  %41 = and i8 %40, -65
  store i8 %41, ptr %arrayidx128, align 1
  br label %if.end132

if.end132:                                        ; preds = %if.then126, %if.end122.if.end132_crit_edge
  %42 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %IOTAction, align 1
  %and134 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end142_crit_edge, label %if.then136

if.end132.if.end142_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx138 = getelementptr %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx138, align 1
  br label %if.end142

if.end142:                                        ; preds = %if.then136, %if.end132.if.end142_crit_edge
  %45 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 8
  %47 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ieee, align 8
  %call145 = tail call zeroext i1 %46(ptr noundef %48) #10
  br i1 %call145, label %for.body.preheader, label %if.end142.if.end151_crit_edge

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

for.body.preheader:                               ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %pCapELE.0, i32 4
  %49 = call ptr @memset(ptr %uglygep, i32 0, i32 15)
  br label %if.end151

if.end151:                                        ; preds = %for.body.preheader, %if.end142.if.end151_crit_edge
  %ExtHTCapInfo = getelementptr inbounds %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 2
  %50 = ptrtoint ptr %ExtHTCapInfo to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 0, ptr %ExtHTCapInfo, align 1
  %TxBFCap = getelementptr inbounds %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 3
  %51 = ptrtoint ptr %TxBFCap to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %TxBFCap, align 1
  %ASCap = getelementptr inbounds %struct.ht_capability_ele, ptr %pCapELE.0, i32 0, i32 4
  %52 = ptrtoint ptr %ASCap to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %ASCap, align 1
  %53 = ptrtoint ptr %ePeerHTSpecVer to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %ePeerHTSpecVer, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp154 = icmp eq i32 %54, 1
  %. = select i1 %cmp154, i8 32, i8 28
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %., ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructInfoElement(ptr nocapture noundef readonly %ieee, ptr noundef %posHTInfo, ptr nocapture noundef %len, i8 noundef zeroext %IsEncrypt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %tobool.not = icmp eq ptr %posHTInfo, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool2.not = icmp sgt i32 %2, -1
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len, align 1
  %conv = zext i8 %4 to i32
  %5 = call ptr @memset(ptr %posHTInfo, i32 0, i32 %conv)
  %iw_mode = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %6 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iw_mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %7, label %if.end7.if.end62_crit_edge [
    i32 1, label %if.end7.if.then13_crit_edge
    i32 3, label %if.end7.if.then13_crit_edge88
  ]

if.end7.if.then13_crit_edge88:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end7.if.end62_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then13:                                        ; preds = %if.end7.if.then13_crit_edge, %if.end7.if.then13_crit_edge88
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 2
  %11 = ptrtoint ptr %posHTInfo to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %posHTInfo, align 1
  %bRegBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %if.then13.cond.end_crit_edge, label %cond.false

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp18 = icmp ult i8 %15, 7
  %phi.cast = select i1 %cmp18, i8 1, i8 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then13.cond.end_crit_edge
  %cond20 = phi i8 [ %phi.cast, %cond.false ], [ 0, %if.then13.cond.end_crit_edge ]
  %ExtChlOffset = getelementptr inbounds %struct._HT_INFORMATION_ELE, ptr %posHTInfo, i32 0, i32 1
  %16 = zext i8 %cond20 to i40
  %17 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %17, i32 5)
  %bf.load = load i40, ptr %ExtChlOffset, align 1
  %bf.shl = shl nuw i40 %16, 38
  %bf.clear = and i40 %bf.load, 274877906943
  %bf.set = or i40 %bf.clear, %bf.shl
  store i40 %bf.set, ptr %ExtChlOffset, align 1
  %18 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bRegBW40MHz, align 1
  %20 = and i8 %19, 1
  %bf.value24 = zext i8 %20 to i40
  %bf.shl25 = shl nuw nsw i40 %bf.value24, 37
  %bf.clear26 = and i40 %bf.set, -270582939649
  %bf.set27 = or i40 %bf.shl25, %bf.clear26
  store i40 %bf.set27, ptr %ExtChlOffset, align 1
  %CurrentOpMode = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %CurrentOpMode, align 1
  %23 = and i8 %22, 3
  %bf.value39 = zext i8 %23 to i40
  %bf.shl40 = shl nuw nsw i40 %bf.value39, 30
  %bf.clear41 = and i40 %bf.set27, -136902083313
  %bf.set42 = or i40 %bf.clear41, %bf.shl40
  store i40 %bf.set42, ptr %ExtChlOffset, align 1
  %BasicMSC = getelementptr inbounds %struct._HT_INFORMATION_ELE, ptr %posHTInfo, i32 0, i32 2
  %24 = call ptr @memset(ptr %BasicMSC, i32 0, i32 16)
  br label %if.end62

if.end62:                                         ; preds = %cond.end, %if.end7.if.end62_crit_edge
  %storemerge = phi i8 [ 24, %cond.end ], [ 0, %if.end7.if.end62_crit_edge ]
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructRT2RTAggElement(ptr nocapture noundef readonly %ieee, ptr noundef writeonly %posRT2RTAgg, ptr nocapture noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %posRT2RTAgg, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %tobool1.not = icmp sgt i32 %0, -1
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #14
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  %conv = zext i8 %2 to i32
  %3 = call ptr @memset(ptr %posRT2RTAgg, i32 0, i32 %conv)
  %incdec.ptr = getelementptr i8, ptr %posRT2RTAgg, i32 1
  %4 = ptrtoint ptr %posRT2RTAgg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %posRT2RTAgg, align 1
  %incdec.ptr6 = getelementptr i8, ptr %posRT2RTAgg, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -32, ptr %incdec.ptr, align 1
  %incdec.ptr7 = getelementptr i8, ptr %posRT2RTAgg, i32 3
  %6 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 76, ptr %incdec.ptr6, align 1
  %incdec.ptr8 = getelementptr i8, ptr %posRT2RTAgg, i32 4
  %7 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %incdec.ptr7, align 1
  %incdec.ptr9 = getelementptr i8, ptr %posRT2RTAgg, i32 5
  %8 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %incdec.ptr8, align 1
  %9 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %incdec.ptr9, align 1
  %bSupportRemoteWakeUp = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 5
  %10 = ptrtoint ptr %bSupportRemoteWakeUp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bSupportRemoteWakeUp, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %spec.store.select = select i1 %tobool10.not, i8 16, i8 24
  %12 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.store.select, ptr %incdec.ptr9, align 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %len, align 1
  br label %return

return:                                           ; preds = %if.end5, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HTGetHighestMCSRate(ptr nocapture noundef readonly %ieee, ptr noundef readonly %pMCSRateSet, ptr noundef readonly %pMCSFilter) local_unnamed_addr #2 align 64 {
entry:
  %availableMcsRate = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %availableMcsRate) #10
  %0 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 15
  %tobool.not = icmp eq ptr %pMCSRateSet, null
  %tobool1.not = icmp eq ptr %pMCSFilter, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.body, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %15 = ptrtoint ptr %pMCSRateSet to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pMCSRateSet, align 1
  %17 = ptrtoint ptr %pMCSFilter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pMCSFilter, align 1
  %and13113 = and i8 %18, %16
  %19 = ptrtoint ptr %availableMcsRate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and13113, ptr %availableMcsRate, align 1
  %arrayidx.1 = getelementptr i8, ptr %pMCSRateSet, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  %arrayidx11.1 = getelementptr i8, ptr %pMCSFilter, i32 1
  %22 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx11.1, align 1
  %and13113.1 = and i8 %23, %21
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and13113.1, ptr %0, align 1
  %arrayidx.2 = getelementptr i8, ptr %pMCSRateSet, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %arrayidx11.2 = getelementptr i8, ptr %pMCSFilter, i32 2
  %27 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx11.2, align 1
  %and13113.2 = and i8 %28, %26
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and13113.2, ptr %1, align 1
  %arrayidx.3 = getelementptr i8, ptr %pMCSRateSet, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %arrayidx11.3 = getelementptr i8, ptr %pMCSFilter, i32 3
  %32 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx11.3, align 1
  %and13113.3 = and i8 %33, %31
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %and13113.3, ptr %2, align 1
  %arrayidx.4 = getelementptr i8, ptr %pMCSRateSet, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4, align 1
  %arrayidx11.4 = getelementptr i8, ptr %pMCSFilter, i32 4
  %37 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx11.4, align 1
  %and13113.4 = and i8 %38, %36
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and13113.4, ptr %3, align 1
  %arrayidx.5 = getelementptr i8, ptr %pMCSRateSet, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %arrayidx11.5 = getelementptr i8, ptr %pMCSFilter, i32 5
  %42 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx11.5, align 1
  %and13113.5 = and i8 %43, %41
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and13113.5, ptr %4, align 1
  %arrayidx.6 = getelementptr i8, ptr %pMCSRateSet, i32 6
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.6, align 1
  %arrayidx11.6 = getelementptr i8, ptr %pMCSFilter, i32 6
  %47 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx11.6, align 1
  %and13113.6 = and i8 %48, %46
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and13113.6, ptr %5, align 1
  %arrayidx.7 = getelementptr i8, ptr %pMCSRateSet, i32 7
  %50 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.7, align 1
  %arrayidx11.7 = getelementptr i8, ptr %pMCSFilter, i32 7
  %52 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx11.7, align 1
  %and13113.7 = and i8 %53, %51
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %and13113.7, ptr %6, align 1
  %arrayidx.8 = getelementptr i8, ptr %pMCSRateSet, i32 8
  %55 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.8, align 1
  %arrayidx11.8 = getelementptr i8, ptr %pMCSFilter, i32 8
  %57 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx11.8, align 1
  %and13113.8 = and i8 %58, %56
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and13113.8, ptr %7, align 1
  %arrayidx.9 = getelementptr i8, ptr %pMCSRateSet, i32 9
  %60 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.9, align 1
  %arrayidx11.9 = getelementptr i8, ptr %pMCSFilter, i32 9
  %62 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx11.9, align 1
  %and13113.9 = and i8 %63, %61
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %and13113.9, ptr %8, align 1
  %arrayidx.10 = getelementptr i8, ptr %pMCSRateSet, i32 10
  %65 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.10, align 1
  %arrayidx11.10 = getelementptr i8, ptr %pMCSFilter, i32 10
  %67 = ptrtoint ptr %arrayidx11.10 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx11.10, align 1
  %and13113.10 = and i8 %68, %66
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %and13113.10, ptr %9, align 1
  %arrayidx.11 = getelementptr i8, ptr %pMCSRateSet, i32 11
  %70 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.11, align 1
  %arrayidx11.11 = getelementptr i8, ptr %pMCSFilter, i32 11
  %72 = ptrtoint ptr %arrayidx11.11 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx11.11, align 1
  %and13113.11 = and i8 %73, %71
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %and13113.11, ptr %10, align 1
  %arrayidx.12 = getelementptr i8, ptr %pMCSRateSet, i32 12
  %75 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.12, align 1
  %arrayidx11.12 = getelementptr i8, ptr %pMCSFilter, i32 12
  %77 = ptrtoint ptr %arrayidx11.12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx11.12, align 1
  %and13113.12 = and i8 %78, %76
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %and13113.12, ptr %11, align 1
  %arrayidx.13 = getelementptr i8, ptr %pMCSRateSet, i32 13
  %80 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.13, align 1
  %arrayidx11.13 = getelementptr i8, ptr %pMCSFilter, i32 13
  %82 = ptrtoint ptr %arrayidx11.13 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx11.13, align 1
  %and13113.13 = and i8 %83, %81
  %84 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %and13113.13, ptr %12, align 1
  %arrayidx.14 = getelementptr i8, ptr %pMCSRateSet, i32 14
  %85 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.14, align 1
  %arrayidx11.14 = getelementptr i8, ptr %pMCSFilter, i32 14
  %87 = ptrtoint ptr %arrayidx11.14 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx11.14, align 1
  %and13113.14 = and i8 %88, %86
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %and13113.14, ptr %13, align 1
  %arrayidx.15 = getelementptr i8, ptr %pMCSRateSet, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.15, align 1
  %arrayidx11.15 = getelementptr i8, ptr %pMCSFilter, i32 15
  %92 = ptrtoint ptr %arrayidx11.15 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx11.15, align 1
  %and13113.15 = and i8 %93, %91
  %94 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %and13113.15, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13113)
  %cmp25.not = icmp eq i8 %and13113, 0
  br i1 %cmp25.not, label %for.inc29, label %for.body.preheader.for.cond37.preheader_crit_edge

for.body.preheader.for.cond37.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %95 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %tobool2.not = icmp sgt i32 %95, -1
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #14
  br label %cleanup

for.inc29:                                        ; preds = %for.body.preheader
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp25.not.1 = icmp eq i8 %97, 0
  br i1 %cmp25.not.1, label %for.inc29.1, label %for.inc29.for.cond37.preheader_crit_edge

for.inc29.for.cond37.preheader_crit_edge:         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.1:                                      ; preds = %for.inc29
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp25.not.2 = icmp eq i8 %99, 0
  br i1 %cmp25.not.2, label %for.inc29.2, label %for.inc29.1.for.cond37.preheader_crit_edge

for.inc29.1.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.2:                                      ; preds = %for.inc29.1
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp25.not.3 = icmp eq i8 %101, 0
  br i1 %cmp25.not.3, label %for.inc29.3, label %for.inc29.2.for.cond37.preheader_crit_edge

for.inc29.2.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.3:                                      ; preds = %for.inc29.2
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp25.not.4 = icmp eq i8 %103, 0
  br i1 %cmp25.not.4, label %for.inc29.4, label %for.inc29.3.for.cond37.preheader_crit_edge

for.inc29.3.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.4:                                      ; preds = %for.inc29.3
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp25.not.5 = icmp eq i8 %105, 0
  br i1 %cmp25.not.5, label %for.inc29.5, label %for.inc29.4.for.cond37.preheader_crit_edge

for.inc29.4.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.5:                                      ; preds = %for.inc29.4
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp25.not.6 = icmp eq i8 %107, 0
  br i1 %cmp25.not.6, label %for.inc29.6, label %for.inc29.5.for.cond37.preheader_crit_edge

for.inc29.5.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.6:                                      ; preds = %for.inc29.5
  %108 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp25.not.7 = icmp eq i8 %109, 0
  br i1 %cmp25.not.7, label %for.inc29.7, label %for.inc29.6.for.cond37.preheader_crit_edge

for.inc29.6.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.7:                                      ; preds = %for.inc29.6
  %110 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp25.not.8 = icmp eq i8 %111, 0
  br i1 %cmp25.not.8, label %for.inc29.8, label %for.inc29.7.for.cond37.preheader_crit_edge

for.inc29.7.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.8:                                      ; preds = %for.inc29.7
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp25.not.9 = icmp eq i8 %113, 0
  br i1 %cmp25.not.9, label %for.inc29.9, label %for.inc29.8.for.cond37.preheader_crit_edge

for.inc29.8.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.9:                                      ; preds = %for.inc29.8
  %114 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp25.not.10 = icmp eq i8 %115, 0
  br i1 %cmp25.not.10, label %for.inc29.10, label %for.inc29.9.for.cond37.preheader_crit_edge

for.inc29.9.for.cond37.preheader_crit_edge:       ; preds = %for.inc29.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.10:                                     ; preds = %for.inc29.9
  %116 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp25.not.11 = icmp eq i8 %117, 0
  br i1 %cmp25.not.11, label %for.inc29.11, label %for.inc29.10.for.cond37.preheader_crit_edge

for.inc29.10.for.cond37.preheader_crit_edge:      ; preds = %for.inc29.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.11:                                     ; preds = %for.inc29.10
  %118 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp25.not.12 = icmp eq i8 %119, 0
  br i1 %cmp25.not.12, label %for.inc29.12, label %for.inc29.11.for.cond37.preheader_crit_edge

for.inc29.11.for.cond37.preheader_crit_edge:      ; preds = %for.inc29.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.12:                                     ; preds = %for.inc29.11
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp25.not.13 = icmp eq i8 %121, 0
  br i1 %cmp25.not.13, label %for.inc29.13, label %for.inc29.12.for.cond37.preheader_crit_edge

for.inc29.12.for.cond37.preheader_crit_edge:      ; preds = %for.inc29.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.13:                                     ; preds = %for.inc29.12
  %122 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp25.not.14 = icmp eq i8 %123, 0
  br i1 %cmp25.not.14, label %for.inc29.14, label %for.inc29.13.for.cond37.preheader_crit_edge

for.inc29.13.for.cond37.preheader_crit_edge:      ; preds = %for.inc29.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.14:                                     ; preds = %for.inc29.13
  %124 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp25.not.15 = icmp eq i8 %125, 0
  br i1 %cmp25.not.15, label %for.inc29.14.cleanup_crit_edge, label %for.inc29.14.for.cond37.preheader_crit_edge

for.inc29.14.for.cond37.preheader_crit_edge:      ; preds = %for.inc29.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond37.preheader

for.inc29.14.cleanup_crit_edge:                   ; preds = %for.inc29.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond37.preheader:                             ; preds = %for.inc29.14.for.cond37.preheader_crit_edge, %for.inc29.13.for.cond37.preheader_crit_edge, %for.inc29.12.for.cond37.preheader_crit_edge, %for.inc29.11.for.cond37.preheader_crit_edge, %for.inc29.10.for.cond37.preheader_crit_edge, %for.inc29.9.for.cond37.preheader_crit_edge, %for.inc29.8.for.cond37.preheader_crit_edge, %for.inc29.7.for.cond37.preheader_crit_edge, %for.inc29.6.for.cond37.preheader_crit_edge, %for.inc29.5.for.cond37.preheader_crit_edge, %for.inc29.4.for.cond37.preheader_crit_edge, %for.inc29.3.for.cond37.preheader_crit_edge, %for.inc29.2.for.cond37.preheader_crit_edge, %for.inc29.1.for.cond37.preheader_crit_edge, %for.inc29.for.cond37.preheader_crit_edge, %for.body.preheader.for.cond37.preheader_crit_edge
  %pHTInfo1.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  br label %for.body41

for.body41:                                       ; preds = %for.inc82.for.body41_crit_edge, %for.cond37.preheader
  %indvars.iv137 = phi i32 [ 0, %for.cond37.preheader ], [ %indvars.iv.next138, %for.inc82.for.body41_crit_edge ]
  %mcsRate.0135 = phi i8 [ 0, %for.cond37.preheader ], [ %mcsRate.3, %for.inc82.for.body41_crit_edge ]
  %arrayidx43 = getelementptr [16 x i8], ptr %availableMcsRate, i32 0, i32 %indvars.iv137
  %126 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp45.not = icmp eq i8 %127, 0
  br i1 %cmp45.not, label %for.body41.for.inc82_crit_edge, label %for.cond50.preheader

for.body41.for.inc82_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc82

for.cond50.preheader:                             ; preds = %for.body41
  %128 = shl i32 %indvars.iv137, 3
  br label %for.body54

for.body54:                                       ; preds = %if.end75.for.body54_crit_edge, %for.cond50.preheader
  %indvars.iv = phi i32 [ 0, %for.cond50.preheader ], [ %indvars.iv.next, %if.end75.for.body54_crit_edge ]
  %mcsRate.1132 = phi i8 [ %mcsRate.0135, %for.cond50.preheader ], [ %mcsRate.2, %if.end75.for.body54_crit_edge ]
  %bitMap.0131 = phi i8 [ %127, %for.cond50.preheader ], [ %142, %if.end75.for.body54_crit_edge ]
  %129 = and i8 %bitMap.0131, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp56.not = icmp eq i8 %129, 0
  br i1 %cmp56.not, label %for.body54.if.end75_crit_edge, label %if.then58

for.body54.if.end75_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then58:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  %130 = add nuw nsw i32 %indvars.iv, %128
  %131 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pHTInfo1.i, align 8
  %bCurBW40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i = icmp eq i8 %134, 0
  %bCurShortGI40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %132, i32 0, i32 5
  %bCurShortGI20MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %132, i32 0, i32 7
  %cond12.in.in.in.i = select i1 %tobool.not.i, ptr %bCurShortGI20MHz.i, ptr %bCurShortGI40MHz.i
  %135 = ptrtoint ptr %cond12.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %cond12.in.in.i = load i8, ptr %cond12.in.in.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond12.in.in.i)
  %cond12.in.i = icmp ne i8 %cond12.in.in.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %idxprom.i = zext i1 %not.tobool.not.i to i32
  %idxprom14.i = zext i1 %cond12.in.i to i32
  %arrayidx17.i = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %idxprom.i, i32 %idxprom14.i, i32 %130
  %136 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx17.i, align 2
  %138 = and i8 %mcsRate.1132, 127
  %and.i125 = zext i8 %138 to i32
  %arrayidx17.i126 = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %idxprom.i, i32 %idxprom14.i, i32 %and.i125
  %139 = ptrtoint ptr %arrayidx17.i126 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx17.i126, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %140)
  %cmp66 = icmp ugt i16 %137, %140
  %141 = trunc i32 %130 to i8
  %spec.select = select i1 %cmp66, i8 %141, i8 %mcsRate.1132
  br label %if.end75

if.end75:                                         ; preds = %if.then58, %for.body54.if.end75_crit_edge
  %mcsRate.2 = phi i8 [ %mcsRate.1132, %for.body54.if.end75_crit_edge ], [ %spec.select, %if.then58 ]
  %142 = lshr i8 %bitMap.0131, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %if.end75.for.inc82_crit_edge, label %if.end75.for.body54_crit_edge

if.end75.for.body54_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

if.end75.for.inc82_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc82

for.inc82:                                        ; preds = %if.end75.for.inc82_crit_edge, %for.body41.for.inc82_crit_edge
  %mcsRate.3 = phi i8 [ %mcsRate.0135, %for.body41.for.inc82_crit_edge ], [ %mcsRate.2, %if.end75.for.inc82_crit_edge ]
  %indvars.iv.next138 = add nuw nsw i32 %indvars.iv137, 1
  %exitcond140.not = icmp eq i32 %indvars.iv.next138, 16
  br i1 %exitcond140.not, label %for.end84, label %for.inc82.for.body41_crit_edge

for.inc82.for.body41_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

for.end84:                                        ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #12
  %143 = or i8 %mcsRate.3, -128
  br label %cleanup

cleanup:                                          ; preds = %for.end84, %for.inc29.14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i8 [ %143, %for.end84 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc29.14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %availableMcsRate) #10
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTOnAssocRsp(ptr noundef %ieee) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %4 = load i32, ptr @ieee80211_debug_level, align 4
  br i1 %tobool.not, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool2.not = icmp sgt i32 %4, -1
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #14
  br label %cleanup

do.body8:                                         ; preds = %entry
  %and9 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end19_crit_edge, label %do.end14

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %PeerHTCapBuf = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 13
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %PeerHTCapBuf, ptr noundef nonnull dereferenceable(4) @HTOnAssocRsp.EWC11NHTCap, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  %arrayidx = getelementptr %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 13, i32 4
  %pPeerHTCap.0 = select i1 %tobool21.not, ptr %arrayidx, ptr %PeerHTCapBuf
  %PeerHTInfoBuf = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 14
  %bcmp320 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %PeerHTInfoBuf, ptr noundef nonnull dereferenceable(4) @HTOnAssocRsp.EWC11NHTInfo, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp320)
  %tobool29.not = icmp eq i32 %bcmp320, 0
  %arrayidx32 = getelementptr %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 14, i32 4
  %pPeerHTInfo.0 = select i1 %tobool29.not, ptr %arrayidx32, ptr %PeerHTInfoBuf
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and38 = and i32 %5, 1073742848
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073742848, i32 %and38)
  %cmp = icmp eq i32 %and38, 1073742848
  br i1 %cmp, label %if.then39, label %do.end19.do.end68_crit_edge

do.end19.do.end68_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then39:                                        ; preds = %do.end19
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.96) #14
  br label %do.end48

do.end48:                                         ; preds = %for.inc.do.end48_crit_edge, %if.then39
  %i.0322 = phi i32 [ 0, %if.then39 ], [ %add, %for.inc.do.end48_crit_edge ]
  %arrayidx50 = getelementptr i8, ptr %pPeerHTCap.0, i32 %i.0322
  %6 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx50, align 1
  %conv = zext i8 %7 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv) #14
  %add = add nuw nsw i32 %i.0322, 1
  %8 = and i32 %add, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp52 = icmp eq i32 %8, 0
  br i1 %cmp52, label %do.end57, label %do.end48.for.inc_crit_edge

do.end48.for.inc_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end57:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end57, %do.end48.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, 26
  br i1 %exitcond.not, label %do.end63, label %for.inc.do.end48_crit_edge

for.inc.do.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end63:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #14
  br label %do.end68

do.end68:                                         ; preds = %do.end63, %do.end19.do.end68_crit_edge
  %9 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr = lshr i24 %bf.load, 22
  %10 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %10 to i32
  %ExtChlOffset = getelementptr inbounds %struct._HT_INFORMATION_ELE, ptr %pPeerHTInfo.0, i32 0, i32 1
  %11 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load70 = load i40, ptr %ExtChlOffset, align 1
  %bf.lshr71 = lshr i40 %bf.load70, 38
  %bf.cast72 = trunc i40 %bf.lshr71 to i32
  tail call void @HTSetConnectBwMode(ptr noundef %ieee, i32 noundef %bf.cast, i32 noundef %bf.cast72)
  %12 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %12, i32 5)
  %bf.load74 = load i40, ptr %ExtChlOffset, align 1
  %13 = lshr i40 %bf.load74, 37
  %14 = trunc i40 %13 to i8
  %15 = and i8 %14, 1
  %bCurTxBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bCurTxBW40MHz, align 1
  %bRegShortGI20MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %bRegShortGI20MHz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRegShortGI20MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool83.not = icmp eq i8 %18, 0
  br i1 %tobool83.not, label %do.end68.land.end_crit_edge, label %land.rhs

do.end68.land.end_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 3)
  %bf.load84 = load i24, ptr %pPeerHTCap.0, align 1
  %20 = and i24 %bf.load84, 262144
  %cmp89 = icmp ne i24 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end68.land.end_crit_edge
  %21 = phi i1 [ false, %do.end68.land.end_crit_edge ], [ %cmp89, %land.rhs ]
  %conv91 = zext i1 %21 to i8
  %bCurShortGI20MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv91, ptr %bCurShortGI20MHz, align 1
  %bRegShortGI40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %bRegShortGI40MHz to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bRegShortGI40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool93.not = icmp eq i8 %24, 0
  br i1 %tobool93.not, label %land.end.land.end102_crit_edge, label %land.rhs94

land.end.land.end102_crit_edge:                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end102

land.rhs94:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 3)
  %bf.load95 = load i24, ptr %pPeerHTCap.0, align 1
  %26 = and i24 %bf.load95, 131072
  %cmp100 = icmp ne i24 %26, 0
  br label %land.end102

land.end102:                                      ; preds = %land.rhs94, %land.end.land.end102_crit_edge
  %27 = phi i1 [ false, %land.end.land.end102_crit_edge ], [ %cmp100, %land.rhs94 ]
  %conv104 = zext i1 %27 to i8
  %bCurShortGI40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv104, ptr %bCurShortGI40MHz, align 1
  %bRegSuppCCK = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bRegSuppCCK, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool106.not = icmp eq i8 %30, 0
  br i1 %tobool106.not, label %land.end102.land.end115_crit_edge, label %land.rhs107

land.end102.land.end115_crit_edge:                ; preds = %land.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end115

land.rhs107:                                      ; preds = %land.end102
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 3)
  %bf.load108 = load i24, ptr %pPeerHTCap.0, align 1
  %32 = and i24 %bf.load108, 2048
  %cmp113 = icmp ne i24 %32, 0
  br label %land.end115

land.end115:                                      ; preds = %land.rhs107, %land.end102.land.end115_crit_edge
  %33 = phi i1 [ false, %land.end102.land.end115_crit_edge ], [ %cmp113, %land.rhs107 ]
  %conv117 = zext i1 %33 to i8
  %bCurSuppCCK = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %bCurSuppCCK to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv117, ptr %bCurSuppCCK, align 1
  %bAMSDU_Support = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %bAMSDU_Support to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bAMSDU_Support, align 1
  %bCurrent_AMSDU_Support = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %bCurrent_AMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bCurrent_AMSDU_Support, align 1
  %38 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 3)
  %bf.load118 = load i24, ptr %pPeerHTCap.0, align 1
  %39 = and i24 %bf.load118, 4096
  %cmp123 = icmp eq i24 %39, 0
  %conv125 = select i1 %cmp123, i16 3839, i16 7935
  %nAMSDU_MaxSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %nAMSDU_MaxSize, align 1
  %42 = call i16 @llvm.umin.i16(i16 %41, i16 %conv125)
  %43 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 18
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %42, ptr %43, align 1
  %bAMPDUEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %bAMPDUEnable to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bAMPDUEnable, align 1
  %bCurrentAMPDUEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %bCurrentAMPDUEnable, align 1
  %bRegRT2RTAggregation = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 39
  %48 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bRegRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool135.not = icmp eq i8 %49, 0
  br i1 %tobool135.not, label %if.then136, label %if.else154

if.then136:                                       ; preds = %land.end115
  %AMPDU_Factor = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 21
  %50 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %AMPDU_Factor, align 1
  %52 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 3)
  %bf.load138 = load i24, ptr %pPeerHTCap.0, align 1
  %53 = trunc i24 %bf.load138 to i8
  %54 = lshr i8 %53, 6
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %54)
  %cmp143 = icmp ugt i8 %51, %54
  %CurrentAMPDUFactor = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  br i1 %cmp143, label %if.then145, label %if.else150

if.then145:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %CurrentAMPDUFactor, align 1
  br label %if.end187

if.else150:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %51, ptr %CurrentAMPDUFactor, align 1
  br label %if.end187

if.else154:                                       ; preds = %land.end115
  %bdRT2RTAggregation = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 49, i32 6
  %57 = ptrtoint ptr %bdRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bdRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool155.not = icmp eq i8 %58, 0
  br i1 %tobool155.not, label %if.else169, label %if.then156

if.then156:                                       ; preds = %if.else154
  %pairwise_key_type = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 68
  %59 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pairwise_key_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp158.not = icmp eq i16 %60, 0
  br i1 %cmp158.not, label %if.else166, label %if.then160

if.then160:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 3)
  %bf.load161 = load i24, ptr %pPeerHTCap.0, align 1
  %62 = trunc i24 %bf.load161 to i8
  %63 = lshr i8 %62, 6
  %CurrentAMPDUFactor165 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  %64 = ptrtoint ptr %CurrentAMPDUFactor165 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %CurrentAMPDUFactor165, align 1
  br label %if.end187

if.else166:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentAMPDUFactor167 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  %65 = ptrtoint ptr %CurrentAMPDUFactor167 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %CurrentAMPDUFactor167, align 1
  br label %if.end187

if.else169:                                       ; preds = %if.else154
  %66 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 3)
  %bf.load170 = load i24, ptr %pPeerHTCap.0, align 1
  %67 = trunc i24 %bf.load170 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp175 = icmp sgt i8 %67, -1
  br i1 %cmp175, label %if.then177, label %if.else183

if.then177:                                       ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #12
  %68 = lshr i8 %67, 6
  %CurrentAMPDUFactor182 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %CurrentAMPDUFactor182 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %CurrentAMPDUFactor182, align 1
  br label %if.end187

if.else183:                                       ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentAMPDUFactor184 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  %70 = ptrtoint ptr %CurrentAMPDUFactor184 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %CurrentAMPDUFactor184, align 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177, %if.else166, %if.then160, %if.else150, %if.then145
  %MPDU_Density = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 23
  %71 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %MPDU_Density, align 1
  %73 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 3)
  %bf.load189 = load i24, ptr %pPeerHTCap.0, align 1
  %74 = trunc i24 %bf.load189 to i8
  %75 = lshr i8 %74, 3
  %bf.cast192 = and i8 %75, 7
  %76 = call i8 @llvm.umax.i8(i8 %72, i8 %bf.cast192)
  %77 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 24
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %77, align 1
  %pairwise_key_type205 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 68
  %79 = ptrtoint ptr %pairwise_key_type205 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pairwise_key_type205, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp207.not = icmp eq i16 %80, 0
  %spec.store.select = select i1 %cmp207.not, i8 %76, i8 7
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.store.select, ptr %77, align 1
  %bRegRxReorderEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 43
  %82 = ptrtoint ptr %bRegRxReorderEnable to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bRegRxReorderEnable, align 1
  %bCurRxReorderEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 44
  %84 = ptrtoint ptr %bCurRxReorderEnable to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %bCurRxReorderEnable, align 1
  %MCS = getelementptr inbounds %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1
  %85 = ptrtoint ptr %MCS to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %MCS, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp214 = icmp eq i8 %86, 0
  br i1 %cmp214, label %if.then216, label %if.end187.if.end219_crit_edge

if.end187.if.end219_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end219

if.then216:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %MCS to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %MCS, align 1
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end187.if.end219_crit_edge
  %dot11HTOperationalRateSet = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 16
  %arrayidx.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 0
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 1
  %90 = ptrtoint ptr %MCS to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %MCS, align 1
  %and1.i = and i8 %91, %89
  %92 = ptrtoint ptr %dot11HTOperationalRateSet to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %and1.i, ptr %dot11HTOperationalRateSet, align 1
  %arrayidx.1.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 1
  %93 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx4.1.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx4.1.i, align 1
  %and1.1.i = and i8 %96, %94
  %arrayidx8.1.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 1
  %97 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %and1.1.i, ptr %arrayidx8.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 2
  %98 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx4.2.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.2.i, align 1
  %and1.2.i = and i8 %101, %99
  %arrayidx8.2.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 2
  %102 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %and1.2.i, ptr %arrayidx8.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 3
  %103 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx4.3.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 3
  %105 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx4.3.i, align 1
  %and1.3.i = and i8 %106, %104
  %arrayidx8.3.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 3
  %107 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %and1.3.i, ptr %arrayidx8.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 4
  %108 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx4.4.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx4.4.i, align 1
  %and1.4.i = and i8 %111, %109
  %arrayidx8.4.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 4
  %112 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %and1.4.i, ptr %arrayidx8.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 5
  %113 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx4.5.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 5
  %115 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx4.5.i, align 1
  %and1.5.i = and i8 %116, %114
  %arrayidx8.5.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 5
  %117 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %and1.5.i, ptr %arrayidx8.5.i, align 1
  %arrayidx.6.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 6
  %118 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx4.6.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 6
  %120 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx4.6.i, align 1
  %and1.6.i = and i8 %121, %119
  %arrayidx8.6.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 6
  %122 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %and1.6.i, ptr %arrayidx8.6.i, align 1
  %arrayidx.7.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 7
  %123 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx4.7.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 7
  %125 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx4.7.i, align 1
  %and1.7.i = and i8 %126, %124
  %arrayidx8.7.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 7
  %127 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %and1.7.i, ptr %arrayidx8.7.i, align 1
  %arrayidx.8.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 8
  %128 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.8.i, align 1
  %arrayidx4.8.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 8
  %130 = ptrtoint ptr %arrayidx4.8.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx4.8.i, align 1
  %and1.8.i = and i8 %131, %129
  %arrayidx8.8.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 8
  %132 = ptrtoint ptr %arrayidx8.8.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %and1.8.i, ptr %arrayidx8.8.i, align 1
  %arrayidx.9.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 9
  %133 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.9.i, align 1
  %arrayidx4.9.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 9
  %135 = ptrtoint ptr %arrayidx4.9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx4.9.i, align 1
  %and1.9.i = and i8 %136, %134
  %arrayidx8.9.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 9
  %137 = ptrtoint ptr %arrayidx8.9.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %and1.9.i, ptr %arrayidx8.9.i, align 1
  %arrayidx.10.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 10
  %138 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.10.i, align 1
  %arrayidx4.10.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 10
  %140 = ptrtoint ptr %arrayidx4.10.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx4.10.i, align 1
  %and1.10.i = and i8 %141, %139
  %arrayidx8.10.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 10
  %142 = ptrtoint ptr %arrayidx8.10.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %and1.10.i, ptr %arrayidx8.10.i, align 1
  %arrayidx.11.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 11
  %143 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.11.i, align 1
  %arrayidx4.11.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 11
  %145 = ptrtoint ptr %arrayidx4.11.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx4.11.i, align 1
  %and1.11.i = and i8 %146, %144
  %arrayidx8.11.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 11
  %147 = ptrtoint ptr %arrayidx8.11.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %and1.11.i, ptr %arrayidx8.11.i, align 1
  %arrayidx.12.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 12
  %148 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.12.i, align 1
  %arrayidx4.12.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 12
  %150 = ptrtoint ptr %arrayidx4.12.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx4.12.i, align 1
  %and1.12.i = and i8 %151, %149
  %arrayidx8.12.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 12
  %152 = ptrtoint ptr %arrayidx8.12.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %and1.12.i, ptr %arrayidx8.12.i, align 1
  %arrayidx.13.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 13
  %153 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.13.i, align 1
  %arrayidx4.13.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 13
  %155 = ptrtoint ptr %arrayidx4.13.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx4.13.i, align 1
  %and1.13.i = and i8 %156, %154
  %arrayidx8.13.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 13
  %157 = ptrtoint ptr %arrayidx8.13.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %and1.13.i, ptr %arrayidx8.13.i, align 1
  %arrayidx.14.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 14
  %158 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.14.i, align 1
  %arrayidx4.14.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 14
  %160 = ptrtoint ptr %arrayidx4.14.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx4.14.i, align 1
  %and1.14.i = and i8 %161, %159
  %arrayidx8.14.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 14
  %162 = ptrtoint ptr %arrayidx8.14.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %and1.14.i, ptr %arrayidx8.14.i, align 1
  %arrayidx.15.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 15, i32 15
  %163 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.15.i, align 1
  %arrayidx4.15.i = getelementptr %struct.ht_capability_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 15
  %165 = ptrtoint ptr %arrayidx4.15.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx4.15.i, align 1
  %and1.15.i = and i8 %166, %164
  %arrayidx8.15.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 16, i32 15
  %167 = ptrtoint ptr %arrayidx8.15.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %and1.15.i, ptr %arrayidx8.15.i, align 1
  %tobool.not.i.i = icmp eq ptr %dot11HTOperationalRateSet, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end5.i.i

do.body.i.i:                                      ; preds = %if.end219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %168 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %tobool1.not.i.i = icmp sgt i32 %168, -1
  br i1 %tobool1.not.i.i, label %do.body.i.i.HT_PickMCSRate.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.HT_PickMCSRate.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %HT_PickMCSRate.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #14
  br label %HT_PickMCSRate.exit.i

if.end5.i.i:                                      ; preds = %if.end219
  %mode.i.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 86
  %169 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mode.i.i, align 4
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %170, label %if.end5.i.i.HT_PickMCSRate.exit.i_crit_edge [
    i32 1, label %if.end5.i.i.sw.bb.i.i_crit_edge
    i32 2, label %if.end5.i.i.sw.bb.i.i_crit_edge324
    i32 4, label %if.end5.i.i.sw.bb.i.i_crit_edge325
    i32 16, label %if.end5.i.i.sw.bb6.i.i_crit_edge
    i32 32, label %if.end5.i.i.sw.bb6.i.i_crit_edge326
  ]

if.end5.i.i.sw.bb6.i.i_crit_edge326:              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i.i

if.end5.i.i.sw.bb6.i.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i.i

if.end5.i.i.sw.bb.i.i_crit_edge325:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end5.i.i.sw.bb.i.i_crit_edge324:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end5.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end5.i.i.HT_PickMCSRate.exit.i_crit_edge:      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %HT_PickMCSRate.exit.i

sw.bb.i.i:                                        ; preds = %if.end5.i.i.sw.bb.i.i_crit_edge, %if.end5.i.i.sw.bb.i.i_crit_edge324, %if.end5.i.i.sw.bb.i.i_crit_edge325
  %172 = call ptr @memset(ptr %dot11HTOperationalRateSet, i32 0, i32 16)
  br label %HT_PickMCSRate.exit.i

sw.bb6.i.i:                                       ; preds = %if.end5.i.i.sw.bb6.i.i_crit_edge, %if.end5.i.i.sw.bb6.i.i_crit_edge326
  %173 = and i8 %and1.1.i, -16
  %174 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx8.1.i, align 1
  %175 = and i8 %and1.3.i, 1
  %176 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx8.3.i, align 1
  br label %HT_PickMCSRate.exit.i

HT_PickMCSRate.exit.i:                            ; preds = %sw.bb6.i.i, %sw.bb.i.i, %if.end5.i.i.HT_PickMCSRate.exit.i_crit_edge, %do.end.i.i, %do.body.i.i.HT_PickMCSRate.exit.i_crit_edge
  %GetHalfNmodeSupportByAPsHandler.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 196
  %177 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler.i, align 8
  %179 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ieee, align 8
  %call9.i = tail call zeroext i1 %178(ptr noundef %180) #10
  br i1 %call9.i, label %if.then.i, label %HT_PickMCSRate.exit.i.HTFilterMCSRate.exit_crit_edge

HT_PickMCSRate.exit.i.HTFilterMCSRate.exit_crit_edge: ; preds = %HT_PickMCSRate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %HTFilterMCSRate.exit

if.then.i:                                        ; preds = %HT_PickMCSRate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %arrayidx8.1.i, align 1
  br label %HTFilterMCSRate.exit

HTFilterMCSRate.exit:                             ; preds = %if.then.i, %HT_PickMCSRate.exit.i.HTFilterMCSRate.exit_crit_edge
  %182 = call ptr @memset(ptr %arrayidx8.2.i, i32 0, i32 14)
  %183 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 3)
  %bf.load224 = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr225 = lshr i24 %bf.load224, 20
  %184 = trunc i24 %bf.lshr225 to i8
  %bf.cast227 = and i8 %184, 3
  %PeerMimoPs = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 33
  %185 = ptrtoint ptr %PeerMimoPs to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %bf.cast227, ptr %PeerMimoPs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast227)
  %cmp230 = icmp eq i8 %bf.cast227, 0
  %MCS_FILTER_1SS.MCS_FILTER_ALL = select i1 %cmp230, ptr @MCS_FILTER_1SS, ptr @MCS_FILTER_ALL
  %call237 = tail call zeroext i8 @HTGetHighestMCSRate(ptr noundef %ieee, ptr noundef %dot11HTOperationalRateSet, ptr noundef nonnull %MCS_FILTER_1SS.MCS_FILTER_ALL)
  %HTHighestOperaRate = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 19
  %186 = ptrtoint ptr %HTHighestOperaRate to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %call237, ptr %HTHighestOperaRate, align 1
  %HTCurrentOperaRate = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 18
  %187 = ptrtoint ptr %HTCurrentOperaRate to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %call237, ptr %HTCurrentOperaRate, align 4
  %188 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %188, i32 5)
  %bf.load239 = load i40, ptr %ExtChlOffset, align 1
  %bf.lshr240 = lshr i40 %bf.load239, 30
  %189 = trunc i40 %bf.lshr240 to i8
  %bf.cast242 = and i8 %189, 3
  %CurrentOpMode = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 31
  %190 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %bf.cast242, ptr %CurrentOpMode, align 1
  br label %cleanup

cleanup:                                          ; preds = %HTFilterMCSRate.exit, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTSetConnectBwMode(ptr noundef readonly %ieee, i32 noundef %Bandwidth, i32 noundef %Offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bRegBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bSwBwInProgress = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bSwBwInProgress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %Bandwidth)
  %cmp = icmp eq i32 %Bandwidth, 1
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end24_crit_edge

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end4
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 196
  %6 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 8
  %8 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ieee, align 8
  %call = tail call zeroext i1 %7(ptr noundef %9) #10
  br i1 %call, label %land.lhs.true.if.end24_crit_edge, label %if.then5

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then5:                                         ; preds = %land.lhs.true
  %channel = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp6 = icmp ult i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %Offset)
  %cmp9 = icmp eq i32 %Offset, 3
  %12 = and i1 %cmp9, %cmp6
  %Offset.addr.0 = select i1 %12, i32 0, i32 %Offset
  %13 = zext i32 %Offset.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %Offset.addr.0, label %if.else [
    i32 1, label %if.then5.if.end24_crit_edge
    i32 3, label %if.then5.if.end24_crit_edge41
  ]

if.then5.if.end24_crit_edge41:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then5.if.end24_crit_edge, %if.then5.if.end24_crit_edge41, %land.lhs.true.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then5.if.end24_crit_edge ], [ 1, %if.then5.if.end24_crit_edge41 ], [ 0, %land.lhs.true.if.end24_crit_edge ], [ 0, %if.end4.if.end24_crit_edge ]
  %Offset.addr.0.sink = phi i32 [ 0, %if.else ], [ %Offset.addr.0, %if.then5.if.end24_crit_edge ], [ %Offset.addr.0, %if.then5.if.end24_crit_edge41 ], [ 0, %land.lhs.true.if.end24_crit_edge ], [ 0, %if.end4.if.end24_crit_edge ]
  %bCurBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %bCurBW40MHz to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %bCurBW40MHz, align 1
  %CurSTAExtChnlOffset = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 34
  %15 = ptrtoint ptr %CurSTAExtChnlOffset to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %Offset.addr.0.sink, ptr %CurSTAExtChnlOffset, align 1
  %16 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bSwBwInProgress, align 1
  %17 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pHTInfo1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %19 = load i32, ptr @ieee80211_debug_level, align 4
  %and.i = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end24.do.end4.i_crit_edge, label %do.end.i

if.end24.do.end4.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end24.do.end4.i_crit_edge
  %bCurBW40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %18, i32 0, i32 3
  %20 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not.i = icmp eq i8 %21, 0
  br i1 %tobool5.not.i, label %if.else29.i, label %if.then6.i

if.then6.i:                                       ; preds = %do.end4.i
  %CurSTAExtChnlOffset.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %18, i32 0, i32 34
  %22 = ptrtoint ptr %CurSTAExtChnlOffset.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %CurSTAExtChnlOffset.i, align 1
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %23, label %if.else19.i [
    i32 1, label %if.then7.i
    i32 3, label %if.then12.i
  ]

if.then7.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_chan.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 179
  %25 = ptrtoint ptr %set_chan.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_chan.i, align 4
  %27 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ieee, align 8
  %channel.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %29 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %channel.i, align 2
  %conv.i = zext i8 %30 to i16
  %add.i = add nuw nsw i16 %conv.i, 2
  tail call void %26(ptr noundef %28, i16 noundef signext %add.i) #10
  br label %if.end26.i

if.then12.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_chan13.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 179
  %31 = ptrtoint ptr %set_chan13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_chan13.i, align 4
  %33 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ieee, align 8
  %channel16.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %35 = ptrtoint ptr %channel16.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %channel16.i, align 2
  %conv17.i = zext i8 %36 to i16
  %sub.i = add nsw i16 %conv17.i, -2
  tail call void %32(ptr noundef %34, i16 noundef signext %sub.i) #10
  br label %if.end26.i

if.else19.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_chan20.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 179
  %37 = ptrtoint ptr %set_chan20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_chan20.i, align 4
  %39 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ieee, align 8
  %channel23.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %41 = ptrtoint ptr %channel23.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channel23.i, align 2
  %conv24.i = zext i8 %42 to i16
  tail call void %38(ptr noundef %40, i16 noundef signext %conv24.i) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else19.i, %if.then12.i, %if.then7.i
  %SetBWModeHandler.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 193
  %43 = ptrtoint ptr %SetBWModeHandler.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %SetBWModeHandler.i, align 4
  %45 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ieee, align 8
  %47 = ptrtoint ptr %CurSTAExtChnlOffset.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %CurSTAExtChnlOffset.i, align 1
  tail call void %44(ptr noundef %46, i32 noundef 1, i32 noundef %48) #10
  br label %HTSetConnectBwModeCallback.exit

if.else29.i:                                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_chan30.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 179
  %49 = ptrtoint ptr %set_chan30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_chan30.i, align 4
  %51 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ieee, align 8
  %channel33.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %53 = ptrtoint ptr %channel33.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %channel33.i, align 2
  %conv34.i = zext i8 %54 to i16
  tail call void %50(ptr noundef %52, i16 noundef signext %conv34.i) #10
  %SetBWModeHandler35.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 193
  %55 = ptrtoint ptr %SetBWModeHandler35.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %SetBWModeHandler35.i, align 4
  %57 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ieee, align 8
  tail call void %56(ptr noundef %58, i32 noundef 0, i32 noundef 0) #10
  br label %HTSetConnectBwModeCallback.exit

HTSetConnectBwModeCallback.exit:                  ; preds = %if.else29.i, %if.end26.i
  %bSwBwInProgress.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %18, i32 0, i32 37
  %59 = ptrtoint ptr %bSwBwInProgress.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %bSwBwInProgress.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %HTSetConnectBwModeCallback.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTInitializeHTInfo(ptr nocapture noundef %ieee) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bCurrentHTSupport, align 1
  %bCurBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bCurBW40MHz to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bCurBW40MHz, align 1
  %bCurTxBW40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bCurTxBW40MHz, align 1
  %bCurShortGI20MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bCurShortGI20MHz, align 1
  %bCurShortGI40MHz = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bCurShortGI40MHz, align 1
  %bForcedShortGI = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %bForcedShortGI to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bForcedShortGI, align 1
  %bCurSuppCCK = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %bCurSuppCCK to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bCurSuppCCK, align 1
  %bCurrent_AMSDU_Support = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %bCurrent_AMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bCurrent_AMSDU_Support, align 1
  %nAMSDU_MaxSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %nAMSDU_MaxSize, align 1
  %nCurrent_AMSDU_MaxSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %nCurrent_AMSDU_MaxSize to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %nCurrent_AMSDU_MaxSize, align 1
  %MPDU_Density = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %MPDU_Density, align 1
  %CurrentMPDUDensity = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %CurrentMPDUDensity to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %CurrentMPDUDensity, align 1
  %AMPDU_Factor = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %AMPDU_Factor, align 1
  %CurrentAMPDUFactor = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %CurrentAMPDUFactor, align 1
  %bSwBwInProgress = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 37
  %20 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bSwBwInProgress, align 1
  %ePeerHTSpecVer = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 10
  %bCurrentRT2RTAggregation = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 40
  %21 = ptrtoint ptr %bCurrentRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bCurrentRT2RTAggregation, align 1
  %bCurrentRT2RTLongSlotTime = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 41
  %22 = ptrtoint ptr %bCurrentRT2RTLongSlotTime to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bCurrentRT2RTLongSlotTime, align 1
  %IOTPeer = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 49
  %23 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %IOTPeer, align 1
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 50
  %24 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %RegHTSuppRateSet = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 17
  %25 = call ptr @memset(ptr %ePeerHTSpecVer, i32 0, i32 116)
  %26 = ptrtoint ptr %RegHTSuppRateSet to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %RegHTSuppRateSet, align 1
  %arrayidx6 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 17, i32 4
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx7, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @HTInitializeBssDesc(ptr nocapture noundef writeonly %pBssHT) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pBssHT, i32 0, i32 75)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTResetSelfAndSavePeerSetting(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pNetwork) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bssht = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49
  %3 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bssht, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  %bCurrentHTSupport92 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 1
  br i1 %tobool5.not, label %if.else91, label %if.then6

if.then6:                                         ; preds = %do.end4
  %5 = ptrtoint ptr %bCurrentHTSupport92 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bCurrentHTSupport92, align 1
  %bdHTSpecVer = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 5
  %6 = ptrtoint ptr %bdHTSpecVer to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %bdHTSpecVer, align 1
  %ePeerHTSpecVer = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %ePeerHTSpecVer to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %ePeerHTSpecVer, align 1
  %bdHTCapLen = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 2
  %9 = ptrtoint ptr %bdHTCapLen to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %bdHTCapLen, align 1
  %11 = add i16 %10, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %11)
  %12 = icmp ult i16 %11, 32
  br i1 %12, label %if.then15, label %if.then6.if.end21_crit_edge

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %10 to i32
  %PeerHTCapBuf = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 13
  %bdHTCapBuf = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 1
  %13 = call ptr @memcpy(ptr %PeerHTCapBuf, ptr %bdHTCapBuf, i32 %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then6.if.end21_crit_edge
  %bdHTInfoLen = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 4
  %14 = ptrtoint ptr %bdHTInfoLen to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %bdHTInfoLen, align 1
  %16 = add i16 %15, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %16)
  %17 = icmp ult i16 %16, 32
  br i1 %17, label %if.then32, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = zext i16 %15 to i32
  %PeerHTInfoBuf = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 14
  %bdHTInfoBuf = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 3
  %18 = call ptr @memcpy(ptr %PeerHTInfoBuf, ptr %bdHTInfoBuf, i32 %conv23)
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end21.if.end39_crit_edge
  %bRegRT2RTAggregation = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 39
  %19 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bRegRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool40.not = icmp eq i8 %20, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %bdRT2RTAggregation = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 6
  %21 = ptrtoint ptr %bdRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bdRT2RTAggregation, align 1
  %bCurrentRT2RTAggregation = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 40
  %23 = ptrtoint ptr %bCurrentRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %bCurrentRT2RTAggregation, align 1
  %bdRT2RTLongSlotTime = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 7
  %24 = ptrtoint ptr %bdRT2RTLongSlotTime to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bdRT2RTLongSlotTime, align 1
  br label %if.end46

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %bCurrentRT2RTAggregation44 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 40
  %26 = ptrtoint ptr %bCurrentRT2RTAggregation44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bCurrentRT2RTAggregation44, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then41
  %.sink = phi i8 [ 0, %if.else ], [ %25, %if.then41 ]
  %27 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 41
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %27, align 1
  %29 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pHTInfo1, align 8
  %current_network.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %bdRT2RTAggregation.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 49, i32 6
  %31 = ptrtoint ptr %bdRT2RTAggregation.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bdRT2RTAggregation.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %IOTPeer.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %33 = ptrtoint ptr %IOTPeer.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %IOTPeer.i, align 1
  br label %do.body.i

if.else.i:                                        ; preds = %if.end46
  %broadcom_cap_exist.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 50
  %34 = ptrtoint ptr %broadcom_cap_exist.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %broadcom_cap_exist.i, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.i = icmp eq i8 %35, 0
  br i1 %tobool2.not.i, label %if.else5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %IOTPeer4.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %36 = ptrtoint ptr %IOTPeer4.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %IOTPeer4.i, align 1
  br label %do.body.i

if.else5.i:                                       ; preds = %if.else.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @UNKNOWN_BORADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.else5.i.if.then20.i_crit_edge, label %lor.lhs.false.i

if.else5.i.if.then20.i_crit_edge:                 ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.else5.i
  %bcmp98.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98.i)
  %cmp9.i = icmp eq i32 %bcmp98.i, 0
  br i1 %cmp9.i, label %lor.lhs.false.i.if.then20.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %bcmp99.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp99.i)
  %cmp14.i = icmp eq i32 %bcmp99.i, 0
  br i1 %cmp14.i, label %lor.lhs.false10.i.if.then20.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false10.i.if.then20.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false10.i
  %bcmp100.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @NETGEAR834Bv2_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp100.i)
  %cmp19.i = icmp eq i32 %bcmp100.i, 0
  br i1 %cmp19.i, label %lor.lhs.false15.i.if.then20.i_crit_edge, label %if.else22.i

lor.lhs.false15.i.if.then20.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false15.i.if.then20.i_crit_edge, %lor.lhs.false10.i.if.then20.i_crit_edge, %lor.lhs.false.i.if.then20.i_crit_edge, %if.else5.i.if.then20.i_crit_edge
  %IOTPeer21.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %37 = ptrtoint ptr %IOTPeer21.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %IOTPeer21.i, align 1
  br label %do.body.i

if.else22.i:                                      ; preds = %lor.lhs.false15.i
  %bcmp101.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @BELKINF5D8233V1_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp101.i)
  %cmp26.i = icmp eq i32 %bcmp101.i, 0
  br i1 %cmp26.i, label %if.else22.i.if.then49.i_crit_edge, label %lor.lhs.false27.i

if.else22.i.if.then49.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

lor.lhs.false27.i:                                ; preds = %if.else22.i
  %bcmp102.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @BELKINF5D82334V3_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp102.i)
  %cmp31.i = icmp eq i32 %bcmp102.i, 0
  br i1 %cmp31.i, label %lor.lhs.false27.i.if.then49.i_crit_edge, label %lor.lhs.false32.i

lor.lhs.false27.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

lor.lhs.false32.i:                                ; preds = %lor.lhs.false27.i
  %bcmp103.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @PCI_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp103.i)
  %cmp36.i = icmp eq i32 %bcmp103.i, 0
  br i1 %cmp36.i, label %lor.lhs.false32.i.if.then49.i_crit_edge, label %lor.lhs.false37.i

lor.lhs.false32.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

lor.lhs.false37.i:                                ; preds = %lor.lhs.false32.i
  %bcmp104.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @EDIMAX_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp104.i)
  %cmp41.i = icmp eq i32 %bcmp104.i, 0
  br i1 %cmp41.i, label %lor.lhs.false37.i.if.then49.i_crit_edge, label %lor.lhs.false42.i

lor.lhs.false37.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

lor.lhs.false42.i:                                ; preds = %lor.lhs.false37.i
  %bcmp105.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @AIRLINK_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp105.i)
  %cmp46.i = icmp eq i32 %bcmp105.i, 0
  br i1 %cmp46.i, label %lor.lhs.false42.i.if.then49.i_crit_edge, label %lor.lhs.false47.i

lor.lhs.false42.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

lor.lhs.false47.i:                                ; preds = %lor.lhs.false42.i
  %ralink_cap_exist.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 51
  %38 = ptrtoint ptr %ralink_cap_exist.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ralink_cap_exist.i, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not.i = icmp eq i8 %39, 0
  br i1 %tobool48.not.i, label %if.else51.i, label %lor.lhs.false47.i.if.then49.i_crit_edge

lor.lhs.false47.i.if.then49.i_crit_edge:          ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49.i

if.then49.i:                                      ; preds = %lor.lhs.false47.i.if.then49.i_crit_edge, %lor.lhs.false42.i.if.then49.i_crit_edge, %lor.lhs.false37.i.if.then49.i_crit_edge, %lor.lhs.false32.i.if.then49.i_crit_edge, %lor.lhs.false27.i.if.then49.i_crit_edge, %if.else22.i.if.then49.i_crit_edge
  %IOTPeer50.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %40 = ptrtoint ptr %IOTPeer50.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %IOTPeer50.i, align 1
  br label %do.body.i

if.else51.i:                                      ; preds = %lor.lhs.false47.i
  %atheros_cap_exist.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 52
  %41 = ptrtoint ptr %atheros_cap_exist.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %atheros_cap_exist.i, align 2, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool52.not.i = icmp eq i8 %42, 0
  br i1 %tobool52.not.i, label %if.else55.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #12
  %IOTPeer54.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %43 = ptrtoint ptr %IOTPeer54.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %IOTPeer54.i, align 1
  br label %do.body.i

if.else55.i:                                      ; preds = %if.else51.i
  %bcmp106.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network.i, ptr noundef nonnull dereferenceable(3) @CISCO_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp106.i)
  %cmp59.i = icmp eq i32 %bcmp106.i, 0
  %IOTPeer61.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  br i1 %cmp59.i, label %if.then60.i, label %if.else62.i

if.then60.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %IOTPeer61.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %IOTPeer61.i, align 1
  br label %do.body.i

if.else62.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %IOTPeer61.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %IOTPeer61.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.else62.i, %if.then60.i, %if.then53.i, %if.then49.i, %if.then20.i, %if.then3.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %46 = load i32, ptr @ieee80211_debug_level, align 4
  %and.i = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool69.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool69.not.i, label %do.body.i.HTIOTPeerDetermine.exit_crit_edge, label %do.end.i

do.body.i.HTIOTPeerDetermine.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %HTIOTPeerDetermine.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %IOTPeer72.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %30, i32 0, i32 49
  %47 = ptrtoint ptr %IOTPeer72.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %IOTPeer72.i, align 1
  %conv.i = zext i8 %48 to i32
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv.i) #14
  br label %HTIOTPeerDetermine.exit

HTIOTPeerDetermine.exit:                          ; preds = %do.end.i, %do.body.i.HTIOTPeerDetermine.exit_crit_edge
  %IOTAction = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 50
  %49 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %broadcom_cap_exist.i143 = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 50
  %50 = ptrtoint ptr %broadcom_cap_exist.i143 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %broadcom_cap_exist.i143, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool78.not = icmp eq i8 %51, 0
  %spec.store.select = select i1 %tobool78.not, i32 0, i32 64
  %52 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %spec.store.select, ptr %IOTAction, align 1
  %bcmp.i144 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %pNetwork, ptr noundef nonnull dereferenceable(3) @UNKNOWN_BORADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i144)
  %cmp.i145 = icmp eq i32 %bcmp.i144, 0
  br i1 %cmp.i145, label %HTIOTPeerDetermine.exit.if.then87_crit_edge, label %lor.lhs.false.i146

HTIOTPeerDetermine.exit.if.then87_crit_edge:      ; preds = %HTIOTPeerDetermine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

lor.lhs.false.i146:                               ; preds = %HTIOTPeerDetermine.exit
  %bcmp8.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %pNetwork, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp8.i)
  %cmp2.i = icmp eq i32 %bcmp8.i, 0
  br i1 %cmp2.i, label %lor.lhs.false.i146.if.then87_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i146.if.then87_crit_edge:           ; preds = %lor.lhs.false.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i146
  %bcmp9.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %pNetwork, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp9.i)
  %cmp5.i = icmp eq i32 %bcmp9.i, 0
  br i1 %cmp5.i, label %lor.lhs.false3.i.if.then87_crit_edge, label %lor.lhs.false3.i.if.end96_crit_edge

lor.lhs.false3.i.if.end96_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

lor.lhs.false3.i.if.then87_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then87:                                        ; preds = %lor.lhs.false3.i.if.then87_crit_edge, %lor.lhs.false.i146.if.then87_crit_edge, %HTIOTPeerDetermine.exit.if.then87_crit_edge
  %53 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %IOTAction, align 1
  %or89 = or i32 %54, 128
  store i32 %or89, ptr %IOTAction, align 1
  br label %if.end96

if.else91:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %bCurrentHTSupport92 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %bCurrentHTSupport92, align 1
  %bCurrentRT2RTAggregation93 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 40
  %56 = ptrtoint ptr %bCurrentRT2RTAggregation93 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %bCurrentRT2RTAggregation93, align 1
  %bCurrentRT2RTLongSlotTime94 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 41
  %57 = ptrtoint ptr %bCurrentRT2RTLongSlotTime94 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %bCurrentRT2RTLongSlotTime94, align 1
  %IOTAction95 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 50
  %58 = ptrtoint ptr %IOTAction95 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %IOTAction95, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.then87, %lor.lhs.false3.i.if.end96_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HTUpdateSelfAndPeerSetting(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pNetwork) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %bdHTInfoLen = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 4
  %4 = ptrtoint ptr %bdHTInfoLen to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %bdHTInfoLen, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %OptMode = getelementptr inbounds %struct.ieee80211_network, ptr %pNetwork, i32 0, i32 49, i32 3, i32 1
  %6 = ptrtoint ptr %OptMode to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load = load i40, ptr %OptMode, align 1
  %bf.lshr = lshr i40 %bf.load, 30
  %7 = trunc i40 %bf.lshr to i8
  %bf.cast = and i8 %7, 3
  %CurrentOpMode = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.cast, ptr %CurrentOpMode, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HTCCheck(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pFrame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %pFrame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pFrame, align 2
  %6 = and i16 %5, -32632
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32632, i16 %6)
  %7 = icmp eq i16 %6, -32632
  br i1 %7, label %do.body, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %8 = load i32, ptr @ieee80211_debug_level, align 4
  %and8 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #14
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %do.body.return_crit_edge ], [ 1, %do.end ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !187, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !222, !223, !224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @MCS_FILTER_ALL, !1, !"MCS_FILTER_ALL", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 9, i32 4}
!2 = !{ptr @MCS_FILTER_1SS, !3, !"MCS_FILTER_1SS", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 11, i32 4}
!4 = !{ptr @MCS_DATA_RATE, !5, !"MCS_DATA_RATE", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 13, i32 5}
!6 = !{ptr @HTDebugHTCapability.EWC11NHTCap, !7, !"EWC11NHTCap", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 129, i32 22}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 134, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @HTDebugHTCapability._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @HTDebugHTCapability._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 139, i32 2}
!16 = !{ptr @HTDebugHTCapability._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @HTDebugHTCapability._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 141, i32 2}
!20 = !{ptr @HTDebugHTCapability._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @HTDebugHTCapability._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 142, i32 2}
!26 = !{ptr @HTDebugHTCapability._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @HTDebugHTCapability._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 143, i32 2}
!32 = !{ptr @HTDebugHTCapability._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @HTDebugHTCapability._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 144, i32 2}
!36 = !{ptr @HTDebugHTCapability._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @HTDebugHTCapability._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 145, i32 2}
!40 = !{ptr @HTDebugHTCapability._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @HTDebugHTCapability._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 146, i32 2}
!46 = !{ptr @HTDebugHTCapability._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @HTDebugHTCapability._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 147, i32 2}
!50 = !{ptr @HTDebugHTCapability._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @HTDebugHTCapability._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 148, i32 2}
!54 = !{ptr @HTDebugHTCapability._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @HTDebugHTCapability._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 149, i32 2}
!58 = !{ptr @HTDebugHTCapability._entry.36, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @HTDebugHTCapability._entry_ptr.38, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @HTDebugHTInfo.EWC11NHTInfo, !61, !"EWC11NHTInfo", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 164, i32 12}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 169, i32 3}
!64 = !{ptr @HTDebugHTInfo._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @HTDebugHTInfo._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 175, i32 2}
!68 = !{ptr @HTDebugHTInfo._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @HTDebugHTInfo._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 177, i32 2}
!72 = !{ptr @HTDebugHTInfo._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @HTDebugHTInfo._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 178, i32 2}
!76 = !{ptr @HTDebugHTInfo._entry.46, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @HTDebugHTInfo._entry_ptr.48, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 181, i32 3}
!80 = !{ptr @HTDebugHTInfo._entry.49, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @HTDebugHTInfo._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 184, i32 3}
!84 = !{ptr @HTDebugHTInfo._entry.52, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @HTDebugHTInfo._entry_ptr.54, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 187, i32 3}
!88 = !{ptr @HTDebugHTInfo._entry.55, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @HTDebugHTInfo._entry_ptr.57, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 190, i32 3}
!92 = !{ptr @HTDebugHTInfo._entry.58, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @HTDebugHTInfo._entry_ptr.60, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.62, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 193, i32 2}
!96 = !{ptr @HTDebugHTInfo._entry.61, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @HTDebugHTInfo._entry_ptr.63, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.64, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.65, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.67, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 195, i32 2}
!102 = !{ptr @HTDebugHTInfo._entry.66, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @HTDebugHTInfo._entry_ptr.68, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.70, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 198, i32 3}
!106 = !{ptr @HTDebugHTInfo._entry.69, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @HTDebugHTInfo._entry_ptr.71, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.73, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 201, i32 3}
!110 = !{ptr @HTDebugHTInfo._entry.72, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @HTDebugHTInfo._entry_ptr.74, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.76, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 204, i32 3}
!114 = !{ptr @HTDebugHTInfo._entry.75, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @HTDebugHTInfo._entry_ptr.77, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.79, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 207, i32 3}
!118 = !{ptr @HTDebugHTInfo._entry.78, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @HTDebugHTInfo._entry_ptr.80, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.82, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 211, i32 2}
!122 = !{ptr @HTDebugHTInfo._entry.81, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @HTDebugHTInfo._entry_ptr.83, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.84, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 476, i32 3}
!126 = !{ptr @.str.85, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @HTConstructCapabilityElement._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @HTConstructCapabilityElement._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.87, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 517, i32 2}
!131 = !{ptr @HTConstructCapabilityElement._entry.86, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @HTConstructCapabilityElement._entry_ptr.88, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.89, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 589, i32 3}
!135 = !{ptr @.str.90, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @HTConstructInfoElement._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @HTConstructInfoElement._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.91, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 655, i32 3}
!140 = !{ptr @.str.92, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @HTConstructRT2RTAggElement._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @HTConstructRT2RTAggElement._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.93, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 767, i32 3}
!145 = !{ptr @.str.94, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @HTGetHighestMCSRate._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @HTGetHighestMCSRate._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @HTOnAssocRsp.EWC11NHTCap, !149, !"EWC11NHTCap", i1 false, i1 false}
!149 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 844, i32 15}
!150 = !{ptr @HTOnAssocRsp.EWC11NHTInfo, !151, !"EWC11NHTInfo", i1 false, i1 false}
!151 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 845, i32 15}
!152 = !{ptr @.str.95, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 848, i32 3}
!154 = !{ptr @.str.96, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @HTOnAssocRsp._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @HTOnAssocRsp._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.98, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 853, i32 2}
!159 = !{ptr @HTOnAssocRsp._entry.97, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @HTOnAssocRsp._entry_ptr.99, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.101, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 873, i32 2}
!163 = !{ptr @HTOnAssocRsp._entry.100, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @HTOnAssocRsp._entry_ptr.102, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.104, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @HTOnAssocRsp._entry.103, !162, !"_entry", i1 false, i1 false}
!167 = !{ptr @HTOnAssocRsp._entry_ptr.105, !162, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.107, !162, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @HTOnAssocRsp._entry.106, !162, !"_entry", i1 false, i1 false}
!170 = !{ptr @HTOnAssocRsp._entry_ptr.108, !162, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @HTOnAssocRsp._entry.109, !162, !"_entry", i1 false, i1 false}
!172 = !{ptr @HTOnAssocRsp._entry_ptr.110, !162, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.111, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 1027, i32 2}
!175 = !{ptr @.str.112, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @HTInitializeHTInfo._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @HTInitializeHTInfo._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.113, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 1124, i32 2}
!180 = !{ptr @.str.114, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @HTResetSelfAndSavePeerSetting._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @HTResetSelfAndSavePeerSetting._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @__ksymtab_HTUpdateSelfAndPeerSetting, !184, !"__ksymtab_HTUpdateSelfAndPeerSetting", i1 false, i1 false}
!184 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 1205, i32 1}
!185 = !{ptr @.str.115, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 1219, i32 4}
!187 = !{ptr @.str.116, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @HTCCheck._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @HTCCheck._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @BELKINF5D8233V1_RALINK, !191, !"BELKINF5D8233V1_RALINK", i1 false, i1 false}
!191 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 40, i32 11}
!192 = !{ptr @BELKINF5D82334V3_RALINK, !193, !"BELKINF5D82334V3_RALINK", i1 false, i1 false}
!193 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 41, i32 11}
!194 = !{ptr @PCI_RALINK, !195, !"PCI_RALINK", i1 false, i1 false}
!195 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 42, i32 11}
!196 = !{ptr @EDIMAX_RALINK, !197, !"EDIMAX_RALINK", i1 false, i1 false}
!197 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 43, i32 11}
!198 = !{ptr @AIRLINK_RALINK, !199, !"AIRLINK_RALINK", i1 false, i1 false}
!199 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 44, i32 11}
!200 = !{ptr @UNKNOWN_BORADCOM, !201, !"UNKNOWN_BORADCOM", i1 false, i1 false}
!201 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 36, i32 11}
!202 = !{ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, !203, !"LINKSYSWRT330_LINKSYSWRT300_BROADCOM", i1 false, i1 false}
!203 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 37, i32 11}
!204 = !{ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, !205, !"LINKSYSWRT350_LINKSYSWRT150_BROADCOM", i1 false, i1 false}
!205 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 38, i32 11}
!206 = !{ptr @NETGEAR834Bv2_BROADCOM, !207, !"NETGEAR834Bv2_BROADCOM", i1 false, i1 false}
!207 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 39, i32 11}
!208 = !{ptr @.str.117, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 704, i32 3}
!210 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @HT_PickMCSRate._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @HT_PickMCSRate._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 330, i32 2}
!215 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @HTIOTPeerDetermine._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @HTIOTPeerDetermine._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @CISCO_BROADCOM, !219, !"CISCO_BROADCOM", i1 false, i1 false}
!219 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 46, i32 11}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c", i32 1230, i32 2}
!222 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @HTSetConnectBwModeCallback._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @HTSetConnectBwModeCallback._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i8 0, i8 2}
