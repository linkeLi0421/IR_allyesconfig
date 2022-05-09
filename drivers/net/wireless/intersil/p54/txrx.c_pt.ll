; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+p54_free_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_free_skb\09\09\09\09"
module asm "\09.long\09__crc_p54_free_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_free_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_free_skb\22\09\09\09\09\09"
module asm "__kstrtabns_p54_free_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+p54_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_rx\09\09\09\09"
module asm "\09.long\09__crc_p54_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_rx\22\09\09\09\09\09"
module asm "__kstrtabns_p54_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.132, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p54_hdr = type { i16, i16, i32, i16, i8, i8, [0 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.p54_frame_sent = type { i8, i8, i8, i8, i16, i8, i8 }
%struct.p54_rssi_db_entry = type { i16, i16, i16, i16, i16 }
%struct.p54_tx_data = type { [8 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, [4 x i16], i8, %union.anon.142, [2 x i8], [0 x i8] }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type <{ i8, i16 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.p54_rx_data = type { i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_tim_ie = type { i8, i8, i8, [1 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>

@__kstrtab_p54_free_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_free_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_free_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_free_skb to i32), ptr @__kstrtab_p54_free_skb, ptr @__kstrtabns_p54_free_skb }, section "___ksymtab_gpl+p54_free_skb", align 4
@__kstrtab_p54_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_rx to i32), ptr @__kstrtab_p54_rx, ptr @__kstrtabns_p54_rx }, section "___ksymtab_gpl+p54_rx", align 4
@p54_rx_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"not handling 0x%02x type control frame\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p54_rx_control\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/intersil/p54/txrx.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54_rx_control._entry_ptr = internal global ptr @p54_rx_control._entry, section ".printk_index", align 4
@p54_rx_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 617, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radar (freq:%d MHz)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"p54_rx_trap\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@p54_rx_trap._entry_ptr = internal global ptr @p54_rx_trap._entry, section ".printk_index", align 4
@p54_rx_trap._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 637, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"received event:%x freq:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@p54_rx_trap._entry_ptr.10 = internal global ptr @p54_rx_trap._entry.8, section ".printk_index", align 4
@switch.table.p54_tx_80211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\03\00\07\01", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 8, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 662, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 617, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [44 x i8] c"../drivers/net/wireless/intersil/p54/txrx.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 636, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"switch.table.p54_tx_80211\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_p54_free_skb, ptr @__ksymtab_p54_rx, ptr @p54_rx_control._entry, ptr @p54_rx_control._entry_ptr, ptr @p54_rx_trap._entry, ptr @p54_rx_trap._entry.8, ptr @p54_rx_trap._entry_ptr, ptr @p54_rx_trap._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @switch.table.p54_tx_80211], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_rx_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_rx_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_rx_trap._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.p54_tx_80211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_free_skb(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tx_queue = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  tail call void @skb_unlink(ptr noundef nonnull %skb, ptr noundef %tx_queue) #5
  tail call fastcc void @p54_tx_qos_accounting_free(ptr noundef %1, ptr noundef nonnull %skb)
  tail call void @ieee80211_free_txskb(ptr noundef %dev, ptr noundef nonnull %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p54_tx_qos_accounting_free(ptr noundef %priv, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = and i16 %3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then:                                          ; preds = %entry
  %tx_stats_lock = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 19
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_stats_lock) #5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %hw_queue = getelementptr inbounds %struct.p54_hdr, ptr %6, i32 3, i32 2
  %7 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_queue, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 20, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_stats_lock, i32 noundef %call4) #5
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %hw_queue13 = getelementptr inbounds %struct.p54_hdr, ptr %12, i32 3, i32 2
  %13 = ptrtoint ptr %hw_queue13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hw_queue13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15 = icmp eq i8 %14, 0
  br i1 %cmp15, label %if.then19, label %if.then.if.end26_crit_edge, !prof !31

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then19:                                        ; preds = %if.then
  %beacon_req_id = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 55
  %15 = ptrtoint ptr %beacon_req_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %beacon_req_id, align 8
  %req_id = getelementptr inbounds %struct.p54_hdr, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %req_id to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %req_id, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp21 = icmp eq i32 %16, %18
  br i1 %cmp21, label %if.then23, label %if.then19.if.end_crit_edge

if.then19.if.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %beacon_req_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %beacon_req_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then19.if.end_crit_edge
  %beacon_comp = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 56
  tail call void @complete(ptr noundef %beacon_comp) #5
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %mode.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 46
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.end26.p54_wake_queues.exit_crit_edge, label %if.end.i, !prof !31

if.end26.p54_wake_queues.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_wake_queues.exit

if.end.i:                                         ; preds = %if.end26
  tail call fastcc void @p54_tx_pending(ptr noundef %priv) #5
  %tx_stats_lock.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 19
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_stats_lock.i) #5
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %queues31.i = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %queues31.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %queues31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp833.not.i = icmp eq i16 %25, 0
  br i1 %cmp833.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %26 = phi ptr [ %32, %for.inc.i.for.body.i_crit_edge ], [ %23, %if.end.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.034.i, 4
  %arrayidx.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 20, i32 %add.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %limit.i = getelementptr %struct.p54_common, ptr %priv, i32 0, i32 20, i32 %add.i, i32 1
  %29 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp13.i = icmp ult i32 %28, %30
  br i1 %cmp13.i, label %if.then15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_wake_queue(ptr noundef %26, i32 noundef %i.034.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then15.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %queues.i, align 4
  %conv7.i = zext i16 %34 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_stats_lock.i, i32 noundef %call4.i) #5
  br label %p54_wake_queues.exit

p54_wake_queues.exit:                             ; preds = %for.end.i, %if.end26.p54_wake_queues.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_tx(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pending = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_pending, ptr noundef %skb) #5
  tail call fastcc void @p54_tx_pending(ptr noundef %priv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p54_tx_pending(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pending = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 5
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_pending) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data2.i, align 4
  %rx_start.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %rx_start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_start.i, align 4
  %headroom.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 12
  %4 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %headroom.i, align 2
  %len4.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4.i, align 4
  %tailroom.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %tailroom.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tailroom.i, align 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %tx_queue.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 6, i32 2
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp20.i = icmp eq i32 %14, 32
  br i1 %cmp20.i, label %if.end.if.then12_crit_edge, label %for.cond.preheader.i, !prof !31

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

for.cond.preheader.i:                             ; preds = %if.end
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %add6.i = add i32 %add.i, %7
  %conv5.i = zext i8 %9 to i32
  %conv8.i = add i32 %add6.i, %conv5.i
  %add10.i = add i32 %conv8.i, %12
  %conv11.i = and i32 %add10.i, 65532
  %15 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry1.0184.i = load ptr, ptr %tx_queue.i, align 4
  %cmp27.not185.i = icmp eq ptr %entry1.0184.i, %tx_queue.i
  br i1 %cmp27.not185.i, label %for.cond.preheader.i.if.then50.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then50.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %entry1.0187.i = phi ptr [ %entry1.0.i, %cleanup.i.for.body.i_crit_edge ], [ %entry1.0184.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %last_addr.0186.i = phi i32 [ %19, %cleanup.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rate_driver_data30.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0187.i, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %rate_driver_data30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate_driver_data30.i, align 4
  %sub.i = sub i32 %17, %last_addr.0186.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv11.i)
  %cmp34.not.i = icmp ult i32 %sub.i, %conv11.i
  br i1 %cmp34.not.i, label %cleanup.i, label %for.end.i

cleanup.i:                                        ; preds = %for.body.i
  %end_addr.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0187.i, i32 0, i32 3, i32 28
  %18 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end_addr.i, align 4
  %20 = ptrtoint ptr %entry1.0187.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %entry1.0.i = load ptr, ptr %entry1.0187.i, align 4
  %cmp27.not.i = icmp eq ptr %entry1.0.i, %tx_queue.i
  br i1 %cmp27.not.i, label %cleanup.i.if.then50.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.if.then50.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i

for.end.i:                                        ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.anon.41, ptr %entry1.0187.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %tobool41.not.i = icmp eq ptr %22, null
  br i1 %tobool41.not.i, label %for.end.i.if.then50.i_crit_edge, label %for.end.i.if.end68.i_crit_edge, !prof !31

for.end.i.if.end68.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

for.end.i.if.then50.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i

if.then50.i:                                      ; preds = %for.end.i.if.then50.i_crit_edge, %cleanup.i.if.then50.i_crit_edge, %for.cond.preheader.i.if.then50.i_crit_edge
  %last_addr.0183.i = phi i32 [ %last_addr.0186.i, %for.end.i.if.then50.i_crit_edge ], [ %3, %for.cond.preheader.i.if.then50.i_crit_edge ], [ %19, %cleanup.i.if.then50.i_crit_edge ]
  %target_addr.2179.i = phi i32 [ %last_addr.0186.i, %for.end.i.if.then50.i_crit_edge ], [ %3, %for.cond.preheader.i.if.then50.i_crit_edge ], [ %3, %cleanup.i.if.then50.i_crit_edge ]
  %rx_end.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 10
  %23 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_end.i, align 8
  %sub51.i = sub i32 %24, %last_addr.0183.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51.i, i32 %conv11.i)
  %cmp53.not.i = icmp ult i32 %sub51.i, %conv11.i
  br i1 %cmp53.not.i, label %if.then50.i.if.then12_crit_edge, label %if.then55.i

if.then50.i.if.then12_crit_edge:                  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then55.i:                                      ; preds = %if.then50.i
  %prev.i.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %26, %tx_queue.i
  %tobool58.not180.i = icmp eq ptr %26, null
  %tobool58.not.i = or i1 %cmp.i.i, %tobool58.not180.i
  br i1 %tobool58.not.i, label %if.then55.i.if.end68.i_crit_edge, label %if.then59.i

if.then55.i.if.end68.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

if.then59.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %end_addr63.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 28
  %27 = ptrtoint ptr %end_addr63.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end_addr63.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then59.i, %if.then55.i.if.end68.i_crit_edge, %for.end.i.if.end68.i_crit_edge
  %target_skb.3.i = phi ptr [ %26, %if.then59.i ], [ null, %if.then55.i.if.end68.i_crit_edge ], [ %22, %for.end.i.if.end68.i_crit_edge ]
  %target_addr.3.i = phi i32 [ %28, %if.then59.i ], [ %target_addr.2179.i, %if.then55.i.if.end68.i_crit_edge ], [ %last_addr.0186.i, %for.end.i.if.end68.i_crit_edge ]
  %rate_driver_data70.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %29 = ptrtoint ptr %rate_driver_data70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %target_addr.3.i, ptr %rate_driver_data70.i, align 4
  %add74.i = add i32 %target_addr.3.i, %conv11.i
  %end_addr75.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 28
  %30 = ptrtoint ptr %end_addr75.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add74.i, ptr %end_addr75.i, align 4
  %31 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %headroom.i, align 2
  %conv77.i = zext i8 %32 to i32
  %add78.i = add i32 %target_addr.3.i, %conv77.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %add78.i) #5
  %req_id.i = getelementptr inbounds %struct.p54_hdr, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %req_id.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %req_id.i, align 1
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data2.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %36, align 1
  %39 = and i16 %38, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool83.not.i = icmp eq i16 %39, 0
  br i1 %tobool83.not.i, label %land.lhs.true84.i, label %if.end68.i.if.else_crit_edge

if.end68.i.if.else_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true84.i:                                ; preds = %if.end68.i
  %hw_queue.i = getelementptr inbounds %struct.p54_hdr, ptr %36, i32 3, i32 2
  %40 = ptrtoint ptr %hw_queue.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hw_queue.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp89.i = icmp eq i8 %41, 0
  br i1 %cmp89.i, label %if.then97.i, label %land.lhs.true84.i.if.else_crit_edge, !prof !31

land.lhs.true84.i.if.else_crit_edge:              ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then97.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #7
  %beacon_req_id.i = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 55
  %42 = ptrtoint ptr %beacon_req_id.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %33, ptr %beacon_req_id.i, align 8
  br label %if.else

if.then12:                                        ; preds = %if.then50.i.if.then12_crit_edge, %if.end.if.then12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #5
  tail call void @skb_queue_head(ptr noundef %tx_pending, ptr noundef nonnull %call) #5
  br label %cleanup

if.else:                                          ; preds = %if.then97.i, %land.lhs.true84.i.if.else_crit_edge, %if.end68.i.if.else_crit_edge
  %tobool100.not.i = icmp eq ptr %target_skb.3.i, null
  %tx_queue.target_skb.3.i = select i1 %tobool100.not.i, ptr %tx_queue.i, ptr %target_skb.3.i
  %43 = ptrtoint ptr %tx_queue.target_skb.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_queue.target_skb.3.i, align 4
  %45 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %call, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call, i32 0, i32 1
  %46 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %tx_queue.target_skb.3.i, ptr %prev10.i.i.i.i, align 4
  %prev17.i.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call, ptr %prev17.i.i.i.i, align 4
  store volatile ptr %call, ptr %tx_queue.target_skb.3.i, align 4
  %48 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #5
  %tx = getelementptr inbounds %struct.p54_common, ptr %priv, i32 0, i32 2
  %50 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx, align 8
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  tail call void %51(ptr noundef %53, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_rx(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %.mask = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool.not = icmp eq i16 %.mask, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %type.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %do.end.i [
    i16 8, label %sw.bb.i
    i16 2, label %sw.bb1.i
    i16 11, label %if.then.cleanup_crit_edge
    i16 10, label %sw.bb2.i
    i16 12, label %sw.bb3.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  %data1.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 6
  %req_id.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %req_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %req_id.i.i, align 1
  %tx_queue.i.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  %lock.i.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 2
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #5
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %sw.bb.i
  %entry1.0.in.i.i.i = phi ptr [ %tx_queue.i.i.i, %sw.bb.i ], [ %entry1.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %entry1.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %entry1.0.i.i.i = load ptr, ptr %entry1.0.in.i.i.i, align 4
  %cmp8.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, %tx_queue.i.i.i
  br i1 %cmp8.not.i.i.i, label %p54_find_and_unlink_skb.exit.thread.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %req_id10.i.i.i = getelementptr inbounds %struct.p54_hdr, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %req_id10.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %req_id10.i.i.i, align 1
  %cmp11.i.i.i = icmp eq i32 %16, %11
  br i1 %cmp11.i.i.i, label %p54_find_and_unlink_skb.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

p54_find_and_unlink_skb.exit.thread.i.i:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #5
  br label %cleanup

p54_find_and_unlink_skb.exit.i.i:                 ; preds = %for.body.i.i.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %19 = ptrtoint ptr %entry1.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry1.0.i.i.i, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %entry1.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %entry1.0.i.i.i, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %prev17.i.i.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #5
  tail call fastcc void @p54_tx_qos_accounting_free(ptr noundef %1, ptr noundef %entry1.0.i.i.i) #5
  %tobool.not.i.i = icmp eq ptr %entry1.0.i.i.i, null
  br i1 %tobool.not.i.i, label %p54_find_and_unlink_skb.exit.i.i.cleanup_crit_edge, label %if.end.i.i, !prof !31

p54_find_and_unlink_skb.exit.i.i.cleanup_crit_edge: ; preds = %p54_find_and_unlink_skb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %p54_find_and_unlink_skb.exit.i.i
  %data.i.i.i.le = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 19
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %data.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i.le, align 4
  %data8.i.i = getelementptr inbounds %struct.p54_hdr, ptr %28, i32 0, i32 6
  %tries.i.i = getelementptr inbounds %struct.p54_frame_sent, ptr %data1.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %tries.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tries.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %stats.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 63
  %31 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stats.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %32
  store i32 %add.i.i, ptr %stats.i.i, align 4
  %hw_queue.i.i = getelementptr inbounds %struct.p54_hdr, ptr %28, i32 3, i32 2
  %33 = ptrtoint ptr %hw_queue.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hw_queue.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i.i = icmp eq i8 %34, 0
  br i1 %cmp.i.i, label %if.then18.i.i, label %if.end19.i.i, !prof !31

if.then18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %entry1.0.i.i.i, i32 noundef 1) #5
  br label %cleanup

if.end19.i.i:                                     ; preds = %if.end.i.i
  %35 = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 8
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 20
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %28, align 1
  %39 = and i16 %38, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool21.not.i.i = icmp eq i16 %39, 0
  br i1 %tobool21.not.i.i, label %if.end19.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

if.end19.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %align.i.i = getelementptr inbounds %struct.p54_hdr, ptr %28, i32 4, i32 3
  %40 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %align.i.i, align 1
  %conv23.i.i = zext i8 %41 to i32
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end19.i.i.if.end24.i.i_crit_edge
  %pad.0.i.i = phi i32 [ %conv23.i.i, %if.then22.i.i ], [ 0, %if.end19.i.i.if.end24.i.i_crit_edge ]
  %42 = ptrtoint ptr %tries.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tries.i.i, align 1
  %conv26.i.i = zext i8 %43 to i32
  %count30.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 9
  %44 = ptrtoint ptr %count30.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load.i.i = load i16, ptr %count30.i.i, align 1
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 11
  %conv31.i.i = zext i16 %bf.lshr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i.i, i32 %conv31.i.i)
  %cmp32.not.i.i = icmp ult i32 %conv26.i.i, %conv31.i.i
  br i1 %cmp32.not.i.i, label %if.else.i.i, label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp42.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp42.not.i.i, label %for.inc.i.thread.i, label %for.inc.thread.i.i

for.inc.i.i:                                      ; preds = %if.end24.i.i
  %sub41.i.i = sub nsw i32 %conv26.i.i, %conv31.i.i
  %count30.1.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %count30.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load.1.i.i = load i16, ptr %count30.1.i.i, align 1
  %bf.lshr.1.i.i = lshr i16 %bf.load.1.i.i, 11
  %conv31.1.i.i = zext i16 %bf.lshr.1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub41.i.i, i32 %conv31.1.i.i)
  %cmp32.not.1.i.i = icmp slt i32 %sub41.i.i, %conv31.1.i.i
  br i1 %cmp32.not.1.i.i, label %if.else.1.i.i, label %for.inc.i.i.if.then34.1.i.i_crit_edge

for.inc.i.i.if.then34.1.i.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.1.i.i

for.inc.i.thread.i:                               ; preds = %if.else.i.i
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %35, align 1
  %bf.clear58.i.i = and i16 %bf.load.i.i, 2047
  %47 = ptrtoint ptr %count30.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %bf.clear58.i.i, ptr %count30.i.i, align 1
  %count30.1.i73.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %count30.1.i73.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load.1.i74.i = load i16, ptr %count30.1.i73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.1.i74.i)
  %cmp32.not.1.i77.not.i = icmp ult i16 %bf.load.1.i74.i, 2048
  br i1 %cmp32.not.1.i77.not.i, label %for.inc.i.thread.i.if.then34.1.i.i_crit_edge, label %for.inc.i.thread.i.if.else50.1.i.i_crit_edge

for.inc.i.thread.i.if.else50.1.i.i_crit_edge:     ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.1.i.i

for.inc.i.thread.i.if.then34.1.i.i_crit_edge:     ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.1.i.i

for.inc.thread.i.i:                               ; preds = %if.else.i.i
  %conv45.i.i = zext i8 %43 to i16
  %bf.shl.i.i = shl i16 %conv45.i.i, 11
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  %49 = ptrtoint ptr %count30.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %bf.set.i.i, ptr %count30.i.i, align 1
  %count30.1172.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 12
  %50 = ptrtoint ptr %count30.1172.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load.1173.i.i = load i16, ptr %count30.1172.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.1173.i.i)
  %cmp32.not.1176.not.i.i = icmp ult i16 %bf.load.1173.i.i, 2048
  br i1 %cmp32.not.1176.not.i.i, label %for.inc.thread.i.i.if.then34.1.i.i_crit_edge, label %for.inc.thread.i.i.if.else50.1.i.i_crit_edge

for.inc.thread.i.i.if.else50.1.i.i_crit_edge:     ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.1.i.i

for.inc.thread.i.i.if.then34.1.i.i_crit_edge:     ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.1.i.i

if.then34.1.i.i:                                  ; preds = %for.inc.thread.i.i.if.then34.1.i.i_crit_edge, %for.inc.i.thread.i.if.then34.1.i.i_crit_edge, %for.inc.i.i.if.then34.1.i.i_crit_edge
  %conv31.1182.i.i = phi i32 [ 0, %for.inc.thread.i.i.if.then34.1.i.i_crit_edge ], [ %conv31.1.i.i, %for.inc.i.i.if.then34.1.i.i_crit_edge ], [ 0, %for.inc.i.thread.i.if.then34.1.i.i_crit_edge ]
  %count.1177.i.i = phi i32 [ 0, %for.inc.thread.i.i.if.then34.1.i.i_crit_edge ], [ %sub41.i.i, %for.inc.i.i.if.then34.1.i.i_crit_edge ], [ 0, %for.inc.i.thread.i.if.then34.1.i.i_crit_edge ]
  %sub41.1.i.i = sub nsw i32 %count.1177.i.i, %conv31.1182.i.i
  br label %for.inc.1.i.i

if.else.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41.i.i)
  %cmp42.1.i.i = icmp sgt i32 %sub41.i.i, 0
  br i1 %cmp42.1.i.i, label %for.inc.1.thread.i.i, label %if.else.1.i.i.if.else50.1.i.i_crit_edge

if.else.1.i.i.if.else50.1.i.i_crit_edge:          ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.1.i.i

if.else50.1.i.i:                                  ; preds = %if.else.1.i.i.if.else50.1.i.i_crit_edge, %for.inc.thread.i.i.if.else50.1.i.i_crit_edge, %for.inc.i.thread.i.if.else50.1.i.i_crit_edge
  %count.1178191.i.i = phi i32 [ %sub41.i.i, %if.else.1.i.i.if.else50.1.i.i_crit_edge ], [ 0, %for.inc.thread.i.i.if.else50.1.i.i_crit_edge ], [ 0, %for.inc.i.thread.i.if.else50.1.i.i_crit_edge ]
  %count30.1180189.i.i = phi ptr [ %count30.1.i.i, %if.else.1.i.i.if.else50.1.i.i_crit_edge ], [ %count30.1172.i.i, %for.inc.thread.i.i.if.else50.1.i.i_crit_edge ], [ %count30.1.i73.i, %for.inc.i.thread.i.if.else50.1.i.i_crit_edge ]
  %bf.load.1181188.i.i = phi i16 [ %bf.load.1.i.i, %if.else.1.i.i.if.else50.1.i.i_crit_edge ], [ %bf.load.1173.i.i, %for.inc.thread.i.i.if.else50.1.i.i_crit_edge ], [ %bf.load.1.i74.i, %for.inc.i.thread.i.if.else50.1.i.i_crit_edge ]
  %arrayidx29.1179190.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 11
  %51 = ptrtoint ptr %arrayidx29.1179190.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %arrayidx29.1179190.i.i, align 1
  %bf.clear58.1.i.i = and i16 %bf.load.1181188.i.i, 2047
  %52 = ptrtoint ptr %count30.1180189.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %bf.clear58.1.i.i, ptr %count30.1180189.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.else50.1.i.i, %if.then34.1.i.i
  %count.1.1.i.i = phi i32 [ %sub41.1.i.i, %if.then34.1.i.i ], [ %count.1178191.i.i, %if.else50.1.i.i ]
  %count30.2.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 15
  %53 = ptrtoint ptr %count30.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load.2.i.i = load i16, ptr %count30.2.i.i, align 1
  %bf.lshr.2.i.i = lshr i16 %bf.load.2.i.i, 11
  %conv31.2.i.i = zext i16 %bf.lshr.2.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.1.i.i, i32 %conv31.2.i.i)
  %cmp32.not.2.i.i = icmp slt i32 %count.1.1.i.i, %conv31.2.i.i
  br i1 %cmp32.not.2.i.i, label %if.else.2.i.i, label %for.inc.1.i.i.if.then34.2.i.i_crit_edge

for.inc.1.i.i.if.then34.2.i.i_crit_edge:          ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.2.i.i

for.inc.1.thread.i.i:                             ; preds = %if.else.1.i.i
  %conv45.1.i.i = trunc i32 %sub41.i.i to i16
  %bf.shl.1.i.i = shl i16 %conv45.1.i.i, 11
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  %bf.set.1.i.i = or i16 %bf.clear.1.i.i, %bf.shl.1.i.i
  %54 = ptrtoint ptr %count30.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %bf.set.1.i.i, ptr %count30.1.i.i, align 1
  %count30.2194.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 15
  %55 = ptrtoint ptr %count30.2194.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load.2195.i.i = load i16, ptr %count30.2194.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.2195.i.i)
  %cmp32.not.2198.not.i.i = icmp ult i16 %bf.load.2195.i.i, 2048
  br i1 %cmp32.not.2198.not.i.i, label %for.inc.1.thread.i.i.if.then34.2.i.i_crit_edge, label %for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge

for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge:   ; preds = %for.inc.1.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.2.i.i

for.inc.1.thread.i.i.if.then34.2.i.i_crit_edge:   ; preds = %for.inc.1.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.2.i.i

if.then34.2.i.i:                                  ; preds = %for.inc.1.thread.i.i.if.then34.2.i.i_crit_edge, %for.inc.1.i.i.if.then34.2.i.i_crit_edge
  %conv31.2204.i.i = phi i32 [ 0, %for.inc.1.thread.i.i.if.then34.2.i.i_crit_edge ], [ %conv31.2.i.i, %for.inc.1.i.i.if.then34.2.i.i_crit_edge ]
  %count.1.1199.i.i = phi i32 [ 0, %for.inc.1.thread.i.i.if.then34.2.i.i_crit_edge ], [ %count.1.1.i.i, %for.inc.1.i.i.if.then34.2.i.i_crit_edge ]
  %sub41.2.i.i = sub nsw i32 %count.1.1199.i.i, %conv31.2204.i.i
  br label %for.inc.2.i.i

if.else.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.1.i.i)
  %cmp42.2.i.i = icmp sgt i32 %count.1.1.i.i, 0
  br i1 %cmp42.2.i.i, label %for.inc.2.thread.i.i, label %if.else.2.i.i.if.else50.2.i.i_crit_edge

if.else.2.i.i.if.else50.2.i.i_crit_edge:          ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.2.i.i

if.else50.2.i.i:                                  ; preds = %if.else.2.i.i.if.else50.2.i.i_crit_edge, %for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge
  %count.1.1200213.i.i = phi i32 [ %count.1.1.i.i, %if.else.2.i.i.if.else50.2.i.i_crit_edge ], [ 0, %for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge ]
  %count30.2202211.i.i = phi ptr [ %count30.2.i.i, %if.else.2.i.i.if.else50.2.i.i_crit_edge ], [ %count30.2194.i.i, %for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge ]
  %bf.load.2203210.i.i = phi i16 [ %bf.load.2.i.i, %if.else.2.i.i.if.else50.2.i.i_crit_edge ], [ %bf.load.2195.i.i, %for.inc.1.thread.i.i.if.else50.2.i.i_crit_edge ]
  %arrayidx29.2201212.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 14
  %56 = ptrtoint ptr %arrayidx29.2201212.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %arrayidx29.2201212.i.i, align 1
  %bf.clear58.2.i.i = and i16 %bf.load.2203210.i.i, 2047
  %57 = ptrtoint ptr %count30.2202211.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %bf.clear58.2.i.i, ptr %count30.2202211.i.i, align 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.else50.2.i.i, %if.then34.2.i.i
  %count.1.2.i.i = phi i32 [ %sub41.2.i.i, %if.then34.2.i.i ], [ %count.1.1200213.i.i, %if.else50.2.i.i ]
  %count30.3.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 18
  %58 = ptrtoint ptr %count30.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load.3.i.i = load i16, ptr %count30.3.i.i, align 1
  %bf.lshr.3.i.i = lshr i16 %bf.load.3.i.i, 11
  %conv31.3.i.i = zext i16 %bf.lshr.3.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.2.i.i, i32 %conv31.3.i.i)
  %cmp32.not.3.i.i = icmp slt i32 %count.1.2.i.i, %conv31.3.i.i
  br i1 %cmp32.not.3.i.i, label %if.else.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

for.inc.2.thread.i.i:                             ; preds = %if.else.2.i.i
  %conv45.2.i.i = trunc i32 %count.1.1.i.i to i16
  %bf.shl.2.i.i = shl i16 %conv45.2.i.i, 11
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  %bf.set.2.i.i = or i16 %bf.clear.2.i.i, %bf.shl.2.i.i
  %59 = ptrtoint ptr %count30.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %bf.set.2.i.i, ptr %count30.2.i.i, align 1
  %count30.3216.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 18
  %60 = ptrtoint ptr %count30.3216.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load.3217.i.i = load i16, ptr %count30.3216.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.3217.i.i)
  %cmp32.not.3220.not.i.i = icmp ult i16 %bf.load.3217.i.i, 2048
  br i1 %cmp32.not.3220.not.i.i, label %for.inc.2.thread.i.i.for.inc.3.i.i_crit_edge, label %for.inc.2.thread.i.i.if.else50.3.i.i_crit_edge

for.inc.2.thread.i.i.if.else50.3.i.i_crit_edge:   ; preds = %for.inc.2.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.3.i.i

for.inc.2.thread.i.i.for.inc.3.i.i_crit_edge:     ; preds = %for.inc.2.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

if.else.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.2.i.i)
  %cmp42.3.i.i = icmp sgt i32 %count.1.2.i.i, 0
  br i1 %cmp42.3.i.i, label %if.then44.3.i.i, label %if.else.3.i.i.if.else50.3.i.i_crit_edge

if.else.3.i.i.if.else50.3.i.i_crit_edge:          ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50.3.i.i

if.else50.3.i.i:                                  ; preds = %if.else.3.i.i.if.else50.3.i.i_crit_edge, %for.inc.2.thread.i.i.if.else50.3.i.i_crit_edge
  %count30.3223231.i.i = phi ptr [ %count30.3.i.i, %if.else.3.i.i.if.else50.3.i.i_crit_edge ], [ %count30.3216.i.i, %for.inc.2.thread.i.i.if.else50.3.i.i_crit_edge ]
  %bf.load.3224230.i.i = phi i16 [ %bf.load.3.i.i, %if.else.3.i.i.if.else50.3.i.i_crit_edge ], [ %bf.load.3217.i.i, %for.inc.2.thread.i.i.if.else50.3.i.i_crit_edge ]
  %arrayidx29.3222232.i.i = getelementptr %struct.sk_buff, ptr %entry1.0.i.i.i, i32 0, i32 3, i32 17
  %61 = ptrtoint ptr %arrayidx29.3222232.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %arrayidx29.3222232.i.i, align 1
  %bf.clear58.3.i.i = and i16 %bf.load.3224230.i.i, 2047
  %62 = ptrtoint ptr %count30.3223231.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %bf.clear58.3.i.i, ptr %count30.3223231.i.i, align 1
  br label %for.inc.3.i.i

if.then44.3.i.i:                                  ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv45.3.i.i = trunc i32 %count.1.2.i.i to i16
  %bf.shl.3.i.i = shl i16 %conv45.3.i.i, 11
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  %bf.set.3.i.i = or i16 %bf.clear.3.i.i, %bf.shl.3.i.i
  %63 = ptrtoint ptr %count30.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %bf.set.3.i.i, ptr %count30.3.i.i, align 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then44.3.i.i, %if.else50.3.i.i, %for.inc.2.thread.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %64 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cb.i.i.i, align 8
  %and63.i.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true.i.i, label %for.inc.3.i.i.if.end70.i.i_crit_edge

for.inc.3.i.i.if.end70.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.3.i.i
  %66 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %data1.i.i, align 1
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool67.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool67.not.i.i, label %if.then68.i.i, label %land.lhs.true.i.i.if.end70.i.i_crit_edge

land.lhs.true.i.i.if.end70.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.i.i

if.then68.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i = or i32 %65, 512
  %69 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i.i, ptr %cb.i.i.i, align 8
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then68.i.i, %land.lhs.true.i.i.if.end70.i.i_crit_edge, %for.inc.3.i.i.if.end70.i.i_crit_edge
  %70 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data1.i.i, align 1
  %72 = and i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool74.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool74.not.i.i, label %if.end70.i.i.if.end78.i.i_crit_edge, label %if.then75.i.i

if.end70.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.i.i

if.then75.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cb.i.i.i, align 8
  %or77.i.i = or i32 %74, 256
  store i32 %or77.i.i, ptr %cb.i.i.i, align 8
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then75.i.i, %if.end70.i.i.if.end78.i.i_crit_edge
  %ack_rssi.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 1, i32 1
  %75 = ptrtoint ptr %ack_rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ack_rssi.i.i, align 1
  %rxhw.i.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  %77 = ptrtoint ptr %rxhw.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rxhw.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %78)
  %cmp.not.i.i.i = icmp eq i16 %78, 5
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv79.i.i = zext i8 %76 to i32
  %cur_rssi.i.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 26
  %79 = ptrtoint ptr %cur_rssi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur_rssi.i.i.i, align 4
  %mul.i.i.i = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %mul.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mul.i.i.i, align 2
  %conv2.i.i.i = sext i16 %82 to i32
  %mul3.i.i.i = mul nsw i32 %conv2.i.i.i, %conv79.i.i
  %div.i.i.i = sdiv i32 %mul3.i.i.i, 64
  %add.i.i.i = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %add.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.i.i.i, align 2
  %conv5.i.i.i = sext i16 %84 to i32
  %add6.i.i.i = add nsw i32 %div.i.i.i, %conv5.i.i.i
  %div7.i.i.i = sdiv i32 %add6.i.i.i, 4
  br label %p54_rssi_to_dbm.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div8.i163164165.i.i = lshr i8 %76, 1
  %div8.i163.zext.i.i = zext i8 %div8.i163164165.i.i to i32
  %sub.i.i.i = add nsw i32 %div8.i163.zext.i.i, -110
  br label %p54_rssi_to_dbm.exit.i.i

p54_rssi_to_dbm.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %div7.i.i.i, %if.then.i.i.i ], [ %sub.i.i.i, %if.else.i.i.i ]
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i, align 4
  %key_type.i.i = getelementptr inbounds %struct.p54_hdr, ptr %28, i32 1, i32 4
  %86 = ptrtoint ptr %key_type.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %key_type.i.i, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %87, label %p54_rssi_to_dbm.exit.i.i.sw.epilog.i.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 7, label %sw.bb98.i.i
    i8 1, label %sw.bb100.i.i
  ]

p54_rssi_to_dbm.exit.i.i.sw.epilog.i.i_crit_edge: ; preds = %p54_rssi_to_dbm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %p54_rssi_to_dbm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %align82.i.i = getelementptr inbounds %struct.p54_hdr, ptr %28, i32 4, i32 3
  %add.ptr84.i.i = getelementptr i8, ptr %align82.i.i, i32 %pad.0.i.i
  %crypt_offset.i.i = getelementptr inbounds %struct.p54_tx_data, ptr %data8.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %crypt_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %crypt_offset.i.i, align 1
  %conv85.i.i = zext i8 %90 to i32
  %add.ptr86.i.i = getelementptr i8, ptr %add.ptr84.i.i, i32 %conv85.i.i
  %91 = ptrtoint ptr %add.ptr86.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr86.i.i, align 1
  %arrayidx88.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 2
  %93 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx88.i.i, align 1
  %arrayidx89.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 1
  %94 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx89.i.i, align 1
  store i8 %95, ptr %add.ptr86.i.i, align 1
  %96 = and i8 %95, 95
  %97 = or i8 %96, 32
  store i8 %97, ptr %arrayidx89.i.i, align 1
  %sub97.i.i = add i32 %26, -12
  br label %sw.epilog.i.i

sw.bb98.i.i:                                      ; preds = %p54_rssi_to_dbm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub99.i.i = add i32 %26, -8
  br label %sw.epilog.i.i

sw.bb100.i.i:                                     ; preds = %p54_rssi_to_dbm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub101.i.i = add i32 %26, -4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb100.i.i, %sw.bb98.i.i, %sw.bb.i.i, %p54_rssi_to_dbm.exit.i.i.sw.epilog.i.i_crit_edge
  %frame_len.0.i.i = phi i32 [ %26, %p54_rssi_to_dbm.exit.i.i.sw.epilog.i.i_crit_edge ], [ %sub101.i.i, %sw.bb100.i.i ], [ %sub99.i.i, %sw.bb98.i.i ], [ %sub97.i.i, %sw.bb.i.i ]
  tail call void @skb_trim(ptr noundef nonnull %entry1.0.i.i.i, i32 noundef %frame_len.0.i.i) #5
  %add103.i.i = add nuw nsw i32 %pad.0.i.i, 56
  %call104.i.i = tail call ptr @skb_pull(ptr noundef nonnull %entry1.0.i.i.i, i32 noundef %add103.i.i) #5
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %99, ptr noundef nonnull %entry1.0.i.i.i) #5
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then
  %data1.i2.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 6
  %100 = ptrtoint ptr %data1.i2.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %data1.i2.i, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #5
  %frequency.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 1, i32 1
  %103 = ptrtoint ptr %frequency.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %frequency.i.i, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #5
  %106 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %102, label %do.end14.i.i [
    i16 2, label %sw.bb1.i.cleanup_crit_edge
    i16 5, label %do.end.i.i
    i16 6, label %sw.bb4.i.i
    i16 0, label %sw.bb1.i.cleanup_crit_edge77
    i16 7, label %sw.bb1.i.cleanup_crit_edge78
    i16 1, label %sw.bb1.i.cleanup_crit_edge79
    i16 4, label %sw.bb6.i.i
    i16 3, label %sw.bb9.i.i
  ]

sw.bb1.i.cleanup_crit_edge79:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i.cleanup_crit_edge78:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i.cleanup_crit_edge77:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %110, i32 0, i32 56
  %conv3.i.i = zext i16 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.5, i32 noundef %conv3.i.i) #8
  br label %cleanup

sw.bb4.i.i:                                       ; preds = %sw.bb1.i
  %vif.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 1
  %111 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vif.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %112, null
  br i1 %tobool.not.i3.i, label %sw.bb4.i.i.cleanup_crit_edge, label %if.then.i.i

sw.bb4.i.i.cleanup_crit_edge:                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_beacon_loss(ptr noundef nonnull %112) #5
  br label %cleanup

sw.bb6.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 8
  %wiphy8.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %wiphy8.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wiphy8.i.i, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %116, i1 noundef zeroext true, i32 noundef 1) #5
  br label %cleanup

sw.bb9.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 8
  %wiphy11.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %wiphy11.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wiphy11.i.i, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %120, i1 noundef zeroext false, i32 noundef 1) #5
  br label %cleanup

do.end14.i.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i4.i = zext i16 %102 to i32
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 8
  %wiphy16.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %wiphy16.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy16.i.i, align 8
  %dev17.i.i = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 56
  %conv19.i.i = zext i16 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i4.i, i32 noundef %conv19.i.i) #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then
  %mode.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %125 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i7.i = icmp eq i32 %126, 0
  br i1 %cmp.i7.i, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i8.i, !prof !31

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i8.i:                                      ; preds = %sw.bb2.i
  %tsf323.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 3
  %127 = ptrtoint ptr %tsf323.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %tsf323.i.i, align 1
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #5
  %tsf_low32.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 47
  %130 = ptrtoint ptr %tsf_low32.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tsf_low32.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp4.i.i = icmp ult i32 %129, %131
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i8.i.if.end6.i.i_crit_edge

if.end.i8.i.if.end6.i.i_crit_edge:                ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  %tsf_high32.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 48
  %132 = ptrtoint ptr %tsf_high32.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tsf_high32.i.i, align 8
  %inc.i.i = add i32 %133, 1
  store i32 %inc.i.i, ptr %tsf_high32.i.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %if.end.i8.i.if.end6.i.i_crit_edge
  %134 = ptrtoint ptr %tsf_low32.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %129, ptr %tsf_low32.i.i, align 4
  %rts_fail.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 2, i32 3
  %135 = ptrtoint ptr %rts_fail.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %rts_fail.i.i, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #5
  %dot11RTSFailureCount.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 63, i32 1
  %138 = ptrtoint ptr %dot11RTSFailureCount.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %dot11RTSFailureCount.i.i, align 4
  %rts_success.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 2, i32 2
  %139 = ptrtoint ptr %rts_success.i.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %rts_success.i.i, align 1
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  %dot11RTSSuccessCount.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 63, i32 3
  %142 = ptrtoint ptr %dot11RTSSuccessCount.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %dot11RTSSuccessCount.i.i, align 4
  %rx_bad_fcs.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 1, i32 2
  %143 = ptrtoint ptr %rx_bad_fcs.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %rx_bad_fcs.i.i, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #5
  %dot11FCSErrorCount.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 63, i32 2
  %146 = ptrtoint ptr %dot11FCSErrorCount.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %dot11FCSErrorCount.i.i, align 4
  %noise.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 3, i32 3
  %147 = ptrtoint ptr %noise.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %noise.i.i, align 1
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #5
  %rxhw.i.i9.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  %150 = ptrtoint ptr %rxhw.i.i9.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %rxhw.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %151)
  %cmp.not.i.i10.i = icmp eq i16 %151, 5
  br i1 %cmp.not.i.i10.i, label %if.else.i.i22.i, label %if.then.i.i20.i

if.then.i.i20.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cur_rssi.i.i11.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 26
  %152 = ptrtoint ptr %cur_rssi.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur_rssi.i.i11.i, align 4
  %mul.i.i12.i = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %mul.i.i12.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %mul.i.i12.i, align 2
  %conv2.i.i13.i = sext i16 %155 to i32
  %mul3.i.i14.i = mul i32 %149, %conv2.i.i13.i
  %div.i.i15.i = sdiv i32 %mul3.i.i14.i, 64
  %add.i.i16.i = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %153, i32 0, i32 2
  %156 = ptrtoint ptr %add.i.i16.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.i.i16.i, align 2
  %conv5.i.i17.i = sext i16 %157 to i32
  %add6.i.i18.i = add nsw i32 %div.i.i15.i, %conv5.i.i17.i
  %div7.i.i19.i = sdiv i32 %add6.i.i18.i, 4
  br label %p54_rssi_to_dbm.exit.i25.i

if.else.i.i22.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div8.i.i.i = sdiv i32 %149, 2
  %sub.i.i21.i = add nsw i32 %div8.i.i.i, -110
  br label %p54_rssi_to_dbm.exit.i25.i

p54_rssi_to_dbm.exit.i25.i:                       ; preds = %if.else.i.i22.i, %if.then.i.i20.i
  %retval.0.i.i23.i = phi i32 [ %div7.i.i19.i, %if.then.i.i20.i ], [ %sub.i.i21.i, %if.else.i.i22.i ]
  %noise11.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 33
  %158 = ptrtoint ptr %noise11.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %retval.0.i.i23.i, ptr %noise11.i.i, align 8
  %survey_raw.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32
  %159 = ptrtoint ptr %survey_raw.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %survey_raw.i.i, align 8
  %sample_cca.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 6, i32 3
  %161 = ptrtoint ptr %sample_cca.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %sample_cca.i.i, align 1
  %sample_tx.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 7
  %163 = ptrtoint ptr %sample_tx.i.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %sample_tx.i.i, align 1
  %sample_noise.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 4
  %165 = ptrtoint ptr %sample_noise.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %sample_noise.i.i, align 1
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #5
  %arrayidx.1.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 4, i32 2
  %168 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %arrayidx.1.i.i, align 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  %add.1.i.i = add i32 %170, %167
  %arrayidx.2.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 4, i32 3
  %171 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %arrayidx.2.i.i, align 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #5
  %add.2.i.i = add i32 %add.1.i.i, %173
  %arrayidx.3.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 5
  %174 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %arrayidx.3.i.i, align 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #5
  %add.3.i.i = add i32 %add.2.i.i, %176
  %arrayidx.4.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 5, i32 2
  %177 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %arrayidx.4.i.i, align 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #5
  %add.4.i.i = add i32 %add.3.i.i, %179
  %arrayidx.5.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 5, i32 3
  %180 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %arrayidx.5.i.i, align 1
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #5
  %add.5.i.i = add i32 %add.4.i.i, %182
  %arrayidx.6.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 6
  %183 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %arrayidx.6.i.i, align 1
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #5
  %add.6.i.i = add i32 %add.5.i.i, %185
  %arrayidx.7.i.i = getelementptr %struct.p54_hdr, ptr %3, i32 6, i32 2
  %186 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %arrayidx.7.i.i, align 1
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #5
  %add.7.i.i = add i32 %add.6.i.i, %188
  %sub.i24.i = sub i32 %129, %160
  %189 = tail call i32 @llvm.bswap.i32(i32 %162) #5
  %190 = tail call i32 @llvm.bswap.i32(i32 %164) #5
  %cached_cca.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 1
  %191 = ptrtoint ptr %cached_cca.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cached_cca.i.i, align 4
  %sub15.i.i = sub i32 %189, %192
  %cached_rssi.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 3
  %193 = ptrtoint ptr %cached_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cached_rssi.i.i, align 4
  %sub17.i.i = sub i32 %add.7.i.i, %194
  %cached_tx.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 2
  %195 = ptrtoint ptr %cached_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cached_tx.i.i, align 8
  %sub19.i.i = sub i32 %190, %196
  %add20.i.i = add i32 %sub19.i.i, %sub15.i.i
  %add21.i.i = add i32 %add20.i.i, %sub17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i.i)
  %tobool22.not.i.i = icmp eq i32 %add21.i.i, 0
  br i1 %tobool22.not.i.i, label %p54_rssi_to_dbm.exit.i25.i.if.end76.i.i_crit_edge, label %land.lhs.true.i26.i

p54_rssi_to_dbm.exit.i25.i.if.end76.i.i_crit_edge: ; preds = %p54_rssi_to_dbm.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i.i

land.lhs.true.i26.i:                              ; preds = %p54_rssi_to_dbm.exit.i25.i
  %update_stats.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 31
  %197 = ptrtoint ptr %update_stats.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %update_stats.i.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool23.not.i.i = icmp eq i8 %198, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i24.i)
  %cmp24.i.i = icmp ult i32 %sub.i24.i, 1000000
  %or.cond.i.i = select i1 %tobool23.not.i.i, i1 %cmp24.i.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i24.i, i32 %add21.i.i)
  %cmp26.not.i.i = icmp ult i32 %sub.i24.i, %add21.i.i
  %or.cond1142.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp26.not.i.i
  br i1 %or.cond1142.i.i, label %land.lhs.true.i26.i.if.end76.i.i_crit_edge, label %if.then27.i.i

land.lhs.true.i26.i.if.end76.i.i_crit_edge:       ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true.i26.i
  %199 = ptrtoint ptr %survey_raw.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %129, ptr %survey_raw.i.i, align 8
  %200 = ptrtoint ptr %update_stats.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %update_stats.i.i, align 4
  %div.i.i = udiv i32 %sub.i24.i, %add21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %192)
  %tobool31.not.i.i = icmp eq i32 %189, %192
  br i1 %tobool31.not.i.i, label %if.then27.i.i.if.end38.i.i_crit_edge, label %if.then32.i.i

if.then27.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

if.then32.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = mul i32 %div.i.i, %sub15.i.i
  %conv.i27.i = zext i32 %mul.i.i to i64
  %cca34.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 5
  %201 = ptrtoint ptr %cca34.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %cca34.i.i, align 8
  %add35.i.i = add i64 %202, %conv.i27.i
  store i64 %add35.i.i, ptr %cca34.i.i, align 8
  %203 = ptrtoint ptr %cached_cca.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %189, ptr %cached_cca.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then32.i.i, %if.then27.i.i.if.end38.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %196)
  %tobool39.not.i.i = icmp eq i32 %190, %196
  br i1 %tobool39.not.i.i, label %if.end38.i.i.if.end48.i.i_crit_edge, label %if.then40.i.i

if.end38.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i.i

if.then40.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul41.i.i = mul i32 %div.i.i, %sub19.i.i
  %conv42.i.i = zext i32 %mul41.i.i to i64
  %tx44.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 6
  %204 = ptrtoint ptr %tx44.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %tx44.i.i, align 8
  %add45.i.i = add i64 %205, %conv42.i.i
  store i64 %add45.i.i, ptr %tx44.i.i, align 8
  %206 = ptrtoint ptr %cached_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %190, ptr %cached_tx.i.i, align 8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then40.i.i, %if.end38.i.i.if.end48.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add.7.i.i, i32 %194)
  %tobool49.not.i.i = icmp eq i32 %add.7.i.i, %194
  br i1 %tobool49.not.i.i, label %if.end48.i.i.if.end58.i.i_crit_edge, label %if.then50.i.i

if.end48.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i.i

if.then50.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul51.i.i = mul i32 %div.i.i, %sub17.i.i
  %conv52.i.i = zext i32 %mul51.i.i to i64
  %rssi54.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 7
  %207 = ptrtoint ptr %rssi54.i.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %rssi54.i.i, align 8
  %add55.i.i = add i64 %208, %conv52.i.i
  store i64 %add55.i.i, ptr %rssi54.i.i, align 8
  %209 = ptrtoint ptr %cached_rssi.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add.7.i.i, ptr %cached_rssi.i.i, align 4
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then50.i.i, %if.end48.i.i.if.end58.i.i_crit_edge
  %phy_ps.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 53
  %210 = ptrtoint ptr %phy_ps.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %phy_ps.i.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool59.not.i.i = icmp eq i8 %211, 0
  br i1 %tobool59.not.i.i, label %lor.lhs.false61.i.i, label %if.end58.i.i.if.else.i28.i_crit_edge

if.end58.i.i.if.else.i28.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i28.i

lor.lhs.false61.i.i:                              ; preds = %if.end58.i.i
  %phy_idle.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 52
  %212 = ptrtoint ptr %phy_idle.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %phy_idle.i.i, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool62.not.i.i = icmp eq i8 %213, 0
  br i1 %tobool62.not.i.i, label %lor.lhs.false61.i.i.if.end76.sink.split.i.i_crit_edge, label %lor.lhs.false61.i.i.if.else.i28.i_crit_edge

lor.lhs.false61.i.i.if.else.i28.i_crit_edge:      ; preds = %lor.lhs.false61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i28.i

lor.lhs.false61.i.i.if.end76.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.sink.split.i.i

if.else.i28.i:                                    ; preds = %lor.lhs.false61.i.i.if.else.i28.i_crit_edge, %if.end58.i.i.if.else.i28.i_crit_edge
  br label %if.end76.sink.split.i.i

if.end76.sink.split.i.i:                          ; preds = %if.else.i28.i, %lor.lhs.false61.i.i.if.end76.sink.split.i.i_crit_edge
  %add20.sink.i.i = phi i32 [ %add20.i.i, %if.else.i28.i ], [ %add21.i.i, %lor.lhs.false61.i.i.if.end76.sink.split.i.i_crit_edge ]
  %mul70.i.i = mul i32 %add20.sink.i.i, %div.i.i
  %conv71.i.i = zext i32 %mul70.i.i to i64
  %active73.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 4
  %214 = ptrtoint ptr %active73.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %active73.i.i, align 8
  %add68.i.i = add i64 %215, %conv71.i.i
  store i64 %add68.i.i, ptr %active73.i.i, align 8
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.end76.sink.split.i.i, %land.lhs.true.i26.i.if.end76.i.i_crit_edge, %p54_rssi_to_dbm.exit.i25.i.if.end76.i.i_crit_edge
  %curchan.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 27
  %216 = ptrtoint ptr %curchan.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %curchan.i.i, align 8
  %tobool77.not.i.i = icmp eq ptr %217, null
  br i1 %tobool77.not.i.i, label %if.end76.i.i.if.end779.i.i_crit_edge, label %if.then78.i.i

if.end76.i.i.if.end779.i.i_crit_edge:             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end779.i.i

if.then78.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %survey79.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %218 = ptrtoint ptr %survey79.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %survey79.i.i, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %217, i32 0, i32 3
  %220 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %hw_value.i.i, align 2
  %idxprom.i.i = zext i16 %221 to i32
  %222 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i23.i, i32 -128) #5
  %223 = tail call i32 @llvm.smin.i32(i32 %222, i32 127) #5
  %conv92.i.i = trunc i32 %223 to i8
  %noise93.i.i = getelementptr %struct.survey_info, ptr %219, i32 %idxprom.i.i, i32 9
  %224 = ptrtoint ptr %noise93.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv92.i.i, ptr %noise93.i.i, align 4
  %active95.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 4
  %225 = ptrtoint ptr %active95.i.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %active95.i.i, align 8
  %time.i.i = getelementptr %struct.survey_info, ptr %219, i32 %idxprom.i.i, i32 1
  %227 = ptrtoint ptr %time.i.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %time.i.i, align 8
  %tx97.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 6
  %228 = ptrtoint ptr %tx97.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %tx97.i.i, align 8
  %time_tx.i.i = getelementptr %struct.survey_info, ptr %219, i32 %idxprom.i.i, i32 5
  %230 = ptrtoint ptr %time_tx.i.i to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %time_tx.i.i, align 8
  %231 = load i64, ptr %tx97.i.i, align 8
  %cca101.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 5
  %232 = ptrtoint ptr %cca101.i.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %cca101.i.i, align 8
  %add102.i.i = add i64 %233, %231
  %time_busy.i.i = getelementptr %struct.survey_info, ptr %219, i32 %idxprom.i.i, i32 2
  %shr.i.i = lshr i64 %226, 10
  store i64 %shr.i.i, ptr %time.i.i, align 8
  %shr342.i.i = lshr i64 %229, 10
  store i64 %shr342.i.i, ptr %time_tx.i.i, align 8
  %shr574.i.i = lshr i64 %add102.i.i, 10
  %234 = ptrtoint ptr %time_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %shr574.i.i, ptr %time_busy.i.i, align 8
  br label %if.end779.i.i

if.end779.i.i:                                    ; preds = %if.then78.i.i, %if.end76.i.i.if.end779.i.i_crit_edge
  %req_id.i29.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 2
  %235 = ptrtoint ptr %req_id.i29.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %req_id.i29.i, align 1
  %tx_queue.i.i30.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  %lock.i.i31.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 2
  %call3.i.i32.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i31.i) #5
  br label %for.cond.i.i36.i

for.cond.i.i36.i:                                 ; preds = %for.body.i.i40.i.for.cond.i.i36.i_crit_edge, %if.end779.i.i
  %entry1.0.in.i.i33.i = phi ptr [ %tx_queue.i.i30.i, %if.end779.i.i ], [ %entry1.0.i.i34.i, %for.body.i.i40.i.for.cond.i.i36.i_crit_edge ]
  %237 = ptrtoint ptr %entry1.0.in.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %entry1.0.i.i34.i = load ptr, ptr %entry1.0.in.i.i33.i, align 4
  %cmp8.not.i.i35.i = icmp eq ptr %entry1.0.i.i34.i, %tx_queue.i.i30.i
  br i1 %cmp8.not.i.i35.i, label %for.end.i.i.i, label %for.body.i.i40.i

for.body.i.i40.i:                                 ; preds = %for.cond.i.i36.i
  %data.i.i37.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i34.i, i32 0, i32 19
  %238 = ptrtoint ptr %data.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %data.i.i37.i, align 4
  %req_id10.i.i38.i = getelementptr inbounds %struct.p54_hdr, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %req_id10.i.i38.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %req_id10.i.i38.i, align 1
  %cmp11.i.i39.i = icmp eq i32 %241, %236
  br i1 %cmp11.i.i39.i, label %cleanup.thread.i.i.i, label %for.body.i.i40.i.for.cond.i.i36.i_crit_edge

for.body.i.i40.i.for.cond.i.i36.i_crit_edge:      ; preds = %for.body.i.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i36.i

cleanup.thread.i.i.i:                             ; preds = %for.body.i.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  %qlen.i.i.i41.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 1
  %242 = ptrtoint ptr %qlen.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %qlen.i.i.i41.i, align 4
  %sub.i.i.i42.i = add i32 %243, -1
  store volatile i32 %sub.i.i.i42.i, ptr %qlen.i.i.i41.i, align 4
  %244 = ptrtoint ptr %entry1.0.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %entry1.0.i.i34.i, align 8
  %prev9.i.i.i43.i = getelementptr inbounds %struct.anon.41, ptr %entry1.0.i.i34.i, i32 0, i32 1
  %246 = ptrtoint ptr %prev9.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %prev9.i.i.i43.i, align 4
  store ptr null, ptr %prev9.i.i.i43.i, align 4
  store ptr null, ptr %entry1.0.i.i34.i, align 8
  %prev17.i.i.i44.i = getelementptr inbounds %struct.anon.41, ptr %245, i32 0, i32 1
  %248 = ptrtoint ptr %prev17.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %247, ptr %prev17.i.i.i44.i, align 4
  %249 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %245, ptr %247, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i31.i, i32 noundef %call3.i.i32.i) #5
  tail call fastcc void @p54_tx_qos_accounting_free(ptr noundef %1, ptr noundef %entry1.0.i.i34.i) #5
  br label %p54_find_and_unlink_skb.exit.i45.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i31.i, i32 noundef %call3.i.i32.i) #5
  br label %p54_find_and_unlink_skb.exit.i45.i

p54_find_and_unlink_skb.exit.i45.i:               ; preds = %for.end.i.i.i, %cleanup.thread.i.i.i
  %retval.2.i.i.i = phi ptr [ null, %for.end.i.i.i ], [ %entry1.0.i.i34.i, %cleanup.thread.i.i.i ]
  tail call void @__dev_kfree_skb_any(ptr noundef %retval.2.i.i.i, i32 noundef 1) #5
  %stat_comp.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 30
  tail call void @complete(ptr noundef %stat_comp.i.i) #5
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then
  %eeprom2.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 65
  %250 = ptrtoint ptr %eeprom2.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %eeprom2.i.i, align 8
  %tobool.not.i46.i = icmp eq ptr %251, null
  br i1 %tobool.not.i46.i, label %sw.bb3.i.cleanup_crit_edge, label %if.end.i55.i

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i55.i:                                     ; preds = %sw.bb3.i
  %fw_var.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %252 = ptrtoint ptr %fw_var.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %fw_var.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1288, i32 %253)
  %cmp.i48.i = icmp ugt i32 %253, 1288
  %data8.i49.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 1, i32 2
  %len10.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 1, i32 1
  %data5.i.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 2
  %len10.sink.i.i = select i1 %cmp.i48.i, ptr %data8.i49.i, ptr %len10.i.i
  %data8.sink.i.i = select i1 %cmp.i48.i, ptr %data5.i.i, ptr %data8.i49.i
  %254 = ptrtoint ptr %len10.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 2)
  %255 = load i16, ptr %len10.sink.i.i, align 1
  %256 = tail call i16 @llvm.bswap.i16(i16 %255) #5
  %conv11.i.i = zext i16 %256 to i32
  %257 = call ptr @memcpy(ptr %251, ptr %data8.sink.i.i, i32 %conv11.i.i)
  %258 = ptrtoint ptr %eeprom2.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %eeprom2.i.i, align 8
  %req_id.i51.i = getelementptr inbounds %struct.p54_hdr, ptr %3, i32 0, i32 2
  %259 = ptrtoint ptr %req_id.i51.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %260 = load i32, ptr %req_id.i51.i, align 1
  %tx_queue.i.i52.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  %lock.i.i53.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 2
  %call3.i.i54.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i53.i) #5
  br label %for.cond.i.i59.i

for.cond.i.i59.i:                                 ; preds = %for.body.i.i63.i.for.cond.i.i59.i_crit_edge, %if.end.i55.i
  %entry1.0.in.i.i56.i = phi ptr [ %tx_queue.i.i52.i, %if.end.i55.i ], [ %entry1.0.i.i57.i, %for.body.i.i63.i.for.cond.i.i59.i_crit_edge ]
  %261 = ptrtoint ptr %entry1.0.in.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %entry1.0.i.i57.i = load ptr, ptr %entry1.0.in.i.i56.i, align 4
  %cmp8.not.i.i58.i = icmp eq ptr %entry1.0.i.i57.i, %tx_queue.i.i52.i
  br i1 %cmp8.not.i.i58.i, label %for.end.i.i69.i, label %for.body.i.i63.i

for.body.i.i63.i:                                 ; preds = %for.cond.i.i59.i
  %data.i.i60.i = getelementptr inbounds %struct.sk_buff, ptr %entry1.0.i.i57.i, i32 0, i32 19
  %262 = ptrtoint ptr %data.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %data.i.i60.i, align 4
  %req_id10.i.i61.i = getelementptr inbounds %struct.p54_hdr, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %req_id10.i.i61.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %req_id10.i.i61.i, align 1
  %cmp11.i.i62.i = icmp eq i32 %265, %260
  br i1 %cmp11.i.i62.i, label %cleanup.thread.i.i68.i, label %for.body.i.i63.i.for.cond.i.i59.i_crit_edge

for.body.i.i63.i.for.cond.i.i59.i_crit_edge:      ; preds = %for.body.i.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i59.i

cleanup.thread.i.i68.i:                           ; preds = %for.body.i.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  %qlen.i.i.i64.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 1
  %266 = ptrtoint ptr %qlen.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %qlen.i.i.i64.i, align 4
  %sub.i.i.i65.i = add i32 %267, -1
  store volatile i32 %sub.i.i.i65.i, ptr %qlen.i.i.i64.i, align 4
  %268 = ptrtoint ptr %entry1.0.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %entry1.0.i.i57.i, align 8
  %prev9.i.i.i66.i = getelementptr inbounds %struct.anon.41, ptr %entry1.0.i.i57.i, i32 0, i32 1
  %270 = ptrtoint ptr %prev9.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %prev9.i.i.i66.i, align 4
  store ptr null, ptr %prev9.i.i.i66.i, align 4
  store ptr null, ptr %entry1.0.i.i57.i, align 8
  %prev17.i.i.i67.i = getelementptr inbounds %struct.anon.41, ptr %269, i32 0, i32 1
  %272 = ptrtoint ptr %prev17.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %271, ptr %prev17.i.i.i67.i, align 4
  %273 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile ptr %269, ptr %271, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i53.i, i32 noundef %call3.i.i54.i) #5
  tail call fastcc void @p54_tx_qos_accounting_free(ptr noundef %1, ptr noundef %entry1.0.i.i57.i) #5
  br label %p54_find_and_unlink_skb.exit.i71.i

for.end.i.i69.i:                                  ; preds = %for.cond.i.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i53.i, i32 noundef %call3.i.i54.i) #5
  br label %p54_find_and_unlink_skb.exit.i71.i

p54_find_and_unlink_skb.exit.i71.i:               ; preds = %for.end.i.i69.i, %cleanup.thread.i.i68.i
  %retval.2.i.i70.i = phi ptr [ null, %for.end.i.i69.i ], [ %entry1.0.i.i57.i, %cleanup.thread.i.i68.i ]
  tail call void @__dev_kfree_skb_any(ptr noundef %retval.2.i.i70.i, i32 noundef 1) #5
  %eeprom_comp.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 66
  tail call void @complete(ptr noundef %eeprom_comp.i.i) #5
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %8 to i32
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %1, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %277, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %conv.i) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %freq1.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 2
  %278 = ptrtoint ptr %freq1.i to i32
  call void @__asan_loadN_noabort(i32 %278, i32 2)
  %279 = load i16, ptr %freq1.i, align 1
  %rate2.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 4
  %280 = ptrtoint ptr %rate2.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %rate2.i, align 1
  %282 = and i8 %281, 15
  %mode.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %283 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp.i = icmp eq i32 %284, 0
  %285 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %tobool8.not.i = icmp eq i16 %285, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i, !prof !33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %decrypt_status.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 7
  %286 = ptrtoint ptr %decrypt_status.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %decrypt_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %287)
  %cmp12.i = icmp eq i8 %287, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.end10.i.if.end15.i_crit_edge

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %288 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %289, 2
  store i32 %or.i, ptr %flag.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end15.i_crit_edge
  %290 = ptrtoint ptr %decrypt_status.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %decrypt_status.i, align 1
  %292 = and i8 %291, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %292)
  %switch.i = icmp eq i8 %292, 6
  br i1 %switch.i, label %if.then24.i, label %if.end15.i.if.end27.i_crit_edge

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %flag25.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %293 = ptrtoint ptr %flag25.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %flag25.i, align 8
  %or26.i = or i32 %294, 1
  store i32 %or26.i, ptr %flag25.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end15.i.if.end27.i_crit_edge
  %rssi.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 5
  %295 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %rssi.i, align 1
  %rxhw.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  %297 = ptrtoint ptr %rxhw.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %rxhw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %298)
  %cmp.not.i.i = icmp eq i16 %298, 5
  br i1 %cmp.not.i.i, label %if.else.i.i13, label %if.then.i.i11

if.then.i.i11:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i = zext i8 %296 to i32
  %cur_rssi.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 26
  %299 = ptrtoint ptr %cur_rssi.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %cur_rssi.i.i, align 4
  %mul.i.i8 = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %mul.i.i8 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %mul.i.i8, align 2
  %conv2.i.i = sext i16 %302 to i32
  %mul3.i.i = mul nsw i32 %conv2.i.i, %conv28.i
  %div.i.i9 = sdiv i32 %mul3.i.i, 64
  %add.i.i10 = getelementptr inbounds %struct.p54_rssi_db_entry, ptr %300, i32 0, i32 2
  %303 = ptrtoint ptr %add.i.i10 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %add.i.i10, align 2
  %conv5.i.i = sext i16 %304 to i32
  %add6.i.i = add nsw i32 %div.i.i9, %conv5.i.i
  %div7.i.i = sdiv i32 %add6.i.i, 4
  br label %p54_rssi_to_dbm.exit.i

if.else.i.i13:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %div8.i159160161.i = lshr i8 %296, 1
  %div8.i159.zext.i = zext i8 %div8.i159160161.i to i32
  %sub.i.i12 = add nsw i32 %div8.i159.zext.i, -110
  br label %p54_rssi_to_dbm.exit.i

p54_rssi_to_dbm.exit.i:                           ; preds = %if.else.i.i13, %if.then.i.i11
  %retval.0.i.i = phi i32 [ %div7.i.i, %if.then.i.i11 ], [ %sub.i.i12, %if.else.i.i13 ]
  %conv30.i = trunc i32 %retval.0.i.i to i8
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %305 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv30.i, ptr %signal.i, align 2
  %306 = ptrtoint ptr %rate2.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %rate2.i, align 1
  %308 = and i8 %307, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool34.not.i = icmp eq i8 %308, 0
  br i1 %tobool34.not.i, label %p54_rssi_to_dbm.exit.i.if.end39.i_crit_edge, label %if.then35.i

p54_rssi_to_dbm.exit.i.if.end39.i_crit_edge:      ; preds = %p54_rssi_to_dbm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then35.i:                                      ; preds = %p54_rssi_to_dbm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %309 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %enc_flags.i, align 2
  %311 = or i8 %310, 1
  store i8 %311, ptr %enc_flags.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %p54_rssi_to_dbm.exit.i.if.end39.i_crit_edge
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %1, align 8
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %313, i32 0, i32 7
  %314 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %chandef.i, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %317)
  %cmp40.i = icmp eq i32 %317, 1
  %318 = tail call i8 @llvm.usub.sat.i8(i8 %282, i8 4) #5
  %.sink.i = select i1 %cmp40.i, i8 %318, i8 %282
  %319 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %.sink.i, ptr %319, align 1
  %freq50.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %321 = ptrtoint ptr %freq50.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %bf.load.i = load i16, ptr %freq50.i, align 4
  %322 = and i16 %279, -225
  %323 = tail call i16 @llvm.bswap.i16(i16 %322) #5
  %bf.shl.i = shl nuw i16 %323, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  %324 = ptrtoint ptr %freq50.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %bf.set.i, ptr %freq50.i, align 4
  %325 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %1, align 8
  %chandef53.i = getelementptr inbounds %struct.ieee80211_conf, ptr %326, i32 0, i32 7
  %327 = ptrtoint ptr %chandef53.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %chandef53.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %328, align 4
  %conv56.i = trunc i32 %330 to i8
  %band57.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %331 = ptrtoint ptr %band57.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %conv56.i, ptr %band57.i, align 4
  %antenna.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 3
  %332 = ptrtoint ptr %antenna.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %antenna.i, align 1
  %antenna58.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %334 = ptrtoint ptr %antenna58.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %333, ptr %antenna58.i, align 1
  %tsf3259.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 9
  %335 = ptrtoint ptr %tsf3259.i to i32
  call void @__asan_loadN_noabort(i32 %335, i32 4)
  %336 = load i32, ptr %tsf3259.i, align 1
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #5
  %tsf_low32.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 47
  %338 = ptrtoint ptr %tsf_low32.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %tsf_low32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %339)
  %cmp60.i = icmp ult i32 %337, %339
  br i1 %cmp60.i, label %if.then62.i, label %if.end39.i.if.end63.i_crit_edge

if.end39.i.if.end63.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %tsf_high32.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 48
  %340 = ptrtoint ptr %tsf_high32.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %tsf_high32.i, align 8
  %inc.i = add i32 %341, 1
  store i32 %inc.i, ptr %tsf_high32.i, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.end39.i.if.end63.i_crit_edge
  %tsf_high3264.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 48
  %342 = ptrtoint ptr %tsf_high3264.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %tsf_high3264.i, align 8
  %conv65.i = zext i32 %343 to i64
  %shl.i = shl nuw i64 %conv65.i, 32
  %conv66.i = zext i32 %337 to i64
  %or67.i = or i64 %shl.i, %conv66.i
  %344 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %344)
  store i64 %or67.i, ptr %cb.i.i, align 8
  %345 = ptrtoint ptr %tsf_low32.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %337, ptr %tsf_low32.i, align 4
  %flag69.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %346 = ptrtoint ptr %flag69.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %flag69.i, align 8
  %or70.i = or i32 %347, 65536
  store i32 %or70.i, ptr %flag69.i, align 8
  %348 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %348, i32 2)
  %349 = load i16, ptr %3, align 1
  %350 = and i16 %349, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %350)
  %tobool74.not.i = icmp eq i16 %350, 0
  br i1 %tobool74.not.i, label %if.end63.i.if.end77.i_crit_edge, label %if.then75.i

if.end63.i.if.end77.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  %align.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 11
  %351 = ptrtoint ptr %align.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %align.i, align 1
  %conv76.i = zext i8 %352 to i32
  %add.i = add nuw nsw i32 %conv76.i, 20
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %if.end63.i.if.end77.i_crit_edge
  %header_len.0.i = phi i32 [ %add.i, %if.then75.i ], [ 20, %if.end63.i.if.end77.i_crit_edge ]
  %call78.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %header_len.0.i) #5
  %len.i = getelementptr inbounds %struct.p54_rx_data, ptr %3, i32 0, i32 1
  %353 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %353, i32 2)
  %354 = load i16, ptr %len.i, align 1
  %355 = tail call i16 @llvm.bswap.i16(i16 %354) #5
  %conv79.i = zext i16 %355 to i32
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %conv79.i) #5
  %356 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %data, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %357, align 2
  %360 = and i16 %359, -1024
  %361 = zext i16 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %361, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %360, label %if.end77.i.if.end88.i_crit_edge [
    i16 20480, label %if.end77.i.if.then86.i_crit_edge
    i16 -32768, label %if.end77.i.if.then86.i_crit_edge80
  ]

if.end77.i.if.then86.i_crit_edge80:               ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86.i

if.end77.i.if.then86.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86.i

if.end77.i.if.end88.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end77.i.if.then86.i_crit_edge, %if.end77.i.if.then86.i_crit_edge80
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %boottime_ns.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %362 = ptrtoint ptr %boottime_ns.i to i32
  call void @__asan_store8_noabort(i32 %362)
  store i64 %call.i.i.i, ptr %boottime_ns.i, align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end77.i.if.end88.i_crit_edge
  %363 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %1, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %364, align 8
  %and92.i = and i32 %366, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end88.i.if.end101.i_crit_edge, label %if.then100.i, !prof !34

if.end88.i.if.end101.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.then100.i:                                     ; preds = %if.end88.i
  %367 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %data, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %368, align 2
  %371 = and i16 %370, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %371)
  %cmp.i.i15 = icmp eq i16 %371, -32768
  br i1 %cmp.i.i15, label %if.end.i16, label %if.then100.i.if.end101.i_crit_edge

if.then100.i.if.end101.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.end.i16:                                       ; preds = %if.then100.i
  %aid.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 50
  %372 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %aid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %373)
  %tobool.not.i = icmp eq i16 %373, 0
  br i1 %tobool.not.i, label %if.end.i16.if.end101.i_crit_edge, label %if.end2.i

if.end.i16.if.end101.i_crit_edge:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.end2.i:                                        ; preds = %if.end.i16
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %368, i32 0, i32 4
  %bssid.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 41
  %374 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %addr3.i, align 4
  %376 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %bssid.i, align 4
  %xor.i.i.i = xor i32 %377, %375
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %368, i32 0, i32 4, i32 4
  %378 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 41, i32 4
  %380 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %381, %379
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end6.i, label %if.end2.i.if.end101.i_crit_edge

if.end2.i.if.end101.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.end6.i:                                        ; preds = %if.end2.i
  %call7.i = tail call ptr @p54_find_ie(ptr noundef %skb, i8 noundef zeroext 5) #5
  %tobool8.not.i17 = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i17, label %if.end6.i.if.end101.i_crit_edge, label %if.end10.i19

if.end6.i.if.end101.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.end10.i19:                                     ; preds = %if.end6.i
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 1
  %382 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %call7.i, i32 2
  %tobool.not.i.i18 = icmp eq ptr %arrayidx11.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %383)
  %cmp.i38.i = icmp ult i8 %383, 4
  %spec.select.i.i = or i1 %tobool.not.i.i18, %cmp.i38.i
  br i1 %spec.select.i.i, label %if.end10.i19.ieee80211_check_tim.exit.i_crit_edge, label %if.end.i.i20, !prof !31

if.end10.i19.ieee80211_check_tim.exit.i_crit_edge: ; preds = %if.end10.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_check_tim.exit.i

if.end.i.i20:                                     ; preds = %if.end10.i19
  %384 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %aid.i, align 8
  %div52.i.i = lshr i16 %385, 3
  %386 = trunc i16 %385 to i8
  %and9.i.i = and i8 %386, 7
  %shl.i.i = shl nuw i8 1, %and9.i.i
  %bitmap_ctrl.i.i = getelementptr i8, ptr %call7.i, i32 4
  %387 = ptrtoint ptr %bitmap_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %bitmap_ctrl.i.i, align 1
  %389 = and i8 %388, -2
  %390 = and i16 %div52.i.i, 255
  %391 = zext i8 %389 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %390, i16 %391)
  %cmp19.i.i = icmp ult i16 %390, %391
  br i1 %cmp19.i.i, label %if.end.i.i20.ieee80211_check_tim.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i20.ieee80211_check_tim.exit.i_crit_edge: ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_check_tim.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i20
  %add.i.i21 = add i8 %383, -4
  %sub.i.i22 = add i8 %add.i.i21, %389
  %392 = zext i8 %sub.i.i22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %390, i16 %392)
  %cmp23.i.i = icmp ugt i16 %390, %392
  br i1 %cmp23.i.i, label %lor.lhs.false.i.i.ieee80211_check_tim.exit.i_crit_edge, label %if.end26.i.i

lor.lhs.false.i.i.ieee80211_check_tim.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_check_tim.exit.i

if.end26.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %393 = trunc i16 %div52.i.i to i8
  %conv30.i.i = sub i8 %393, %389
  %idxprom.i.i23 = zext i8 %conv30.i.i to i32
  %arrayidx.i.i = getelementptr %struct.ieee80211_tim_ie, ptr %arrayidx11.i, i32 0, i32 3, i32 %idxprom.i.i23
  %394 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx.i.i, align 1
  %and3353.i.i = and i8 %395, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3353.i.i)
  %tobool34.i.i = icmp ne i8 %and3353.i.i, 0
  br label %ieee80211_check_tim.exit.i

ieee80211_check_tim.exit.i:                       ; preds = %if.end26.i.i, %lor.lhs.false.i.i.ieee80211_check_tim.exit.i_crit_edge, %if.end.i.i20.ieee80211_check_tim.exit.i_crit_edge, %if.end10.i19.ieee80211_check_tim.exit.i_crit_edge
  %retval.0.i.i24 = phi i1 [ %tobool34.i.i, %if.end26.i.i ], [ false, %if.end10.i19.ieee80211_check_tim.exit.i_crit_edge ], [ false, %lor.lhs.false.i.i.ieee80211_check_tim.exit.i_crit_edge ], [ false, %if.end.i.i20.ieee80211_check_tim.exit.i_crit_edge ]
  %powersave_override.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 54
  %396 = ptrtoint ptr %powersave_override.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %powersave_override.i, align 1, !range !32
  %398 = zext i1 %retval.0.i.i24 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %397, i8 %398)
  %cmp.not.i = icmp eq i8 %397, %398
  br i1 %cmp.not.i, label %ieee80211_check_tim.exit.i.if.end101.i_crit_edge, label %if.then18.i

ieee80211_check_tim.exit.i.if.end101.i_crit_edge: ; preds = %ieee80211_check_tim.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.then18.i:                                      ; preds = %ieee80211_check_tim.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %399 = ptrtoint ptr %powersave_override.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %398, ptr %powersave_override.i, align 1
  %call22.i = tail call i32 @p54_set_ps(ptr noundef %1) #5
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then18.i, %ieee80211_check_tim.exit.i.if.end101.i_crit_edge, %if.end6.i.if.end101.i_crit_edge, %if.end2.i.if.end101.i_crit_edge, %if.end.i16.if.end101.i_crit_edge, %if.then100.i.if.end101.i_crit_edge, %if.end88.i.if.end101.i_crit_edge
  %400 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %1, align 8
  tail call void @ieee80211_rx_irqsafe(ptr noundef %401, ptr noundef %skb) #5
  %402 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %1, align 8
  %work.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64
  tail call void @ieee80211_queue_delayed_work(ptr noundef %403, ptr noundef %work.i, i32 noundef 500) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end101.i, %if.else.cleanup_crit_edge, %do.end.i, %p54_find_and_unlink_skb.exit.i71.i, %sw.bb3.i.cleanup_crit_edge, %p54_find_and_unlink_skb.exit.i45.i, %sw.bb2.i.cleanup_crit_edge, %do.end14.i.i, %sw.bb9.i.i, %sw.bb6.i.i, %if.then.i.i, %sw.bb4.i.i.cleanup_crit_edge, %do.end.i.i, %sw.bb1.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge77, %sw.bb1.i.cleanup_crit_edge78, %sw.bb1.i.cleanup_crit_edge79, %sw.epilog.i.i, %if.then18.i.i, %p54_find_and_unlink_skb.exit.i.i.cleanup_crit_edge, %p54_find_and_unlink_skb.exit.thread.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %p54_find_and_unlink_skb.exit.thread.i.i ], [ 0, %p54_find_and_unlink_skb.exit.i.i.cleanup_crit_edge ], [ 0, %if.then18.i.i ], [ 0, %sw.epilog.i.i ], [ 0, %sw.bb1.i.cleanup_crit_edge ], [ 0, %sw.bb1.i.cleanup_crit_edge77 ], [ 0, %sw.bb1.i.cleanup_crit_edge78 ], [ 0, %sw.bb1.i.cleanup_crit_edge79 ], [ 0, %do.end.i.i ], [ 0, %sw.bb4.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %sw.bb6.i.i ], [ 0, %sw.bb9.i.i ], [ 0, %do.end14.i.i ], [ 0, %sw.bb2.i.cleanup_crit_edge ], [ 0, %p54_find_and_unlink_skb.exit.i45.i ], [ 0, %sw.bb3.i.cleanup_crit_edge ], [ 0, %p54_find_and_unlink_skb.exit.i71.i ], [ 0, %do.end.i ], [ -1, %if.end101.i ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_tx_80211(ptr noundef %dev, ptr nocapture noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %calculated_tries = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calculated_tries) #5
  %2 = ptrtoint ptr %calculated_tries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %calculated_tries, align 4
  %3 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %control, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = and i16 %8, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %9)
  %cmp.i.i = icmp eq i16 %9, -30720
  %..i = zext i1 %cmp.i.i to i8
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %12 = trunc i32 %11 to i16
  %13 = shl i16 %12, 1
  %14 = and i16 %13, 4
  %and6.i = lshr i32 %11, 12
  %15 = trunc i32 %and6.i to i16
  %16 = and i16 %15, 32
  %17 = or i16 %14, %16
  %18 = shl i16 %12, 2
  %19 = and i16 %18, 32
  %20 = or i16 %17, %19
  %21 = xor i16 %20, 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_mapping.i.i, align 8
  %conv22.i = trunc i16 %23 to i8
  %add.i = add i8 %conv22.i, 4
  %mode.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %25, label %entry.p54_tx_80211_header.exit_crit_edge [
    i32 6, label %sw.bb.i
    i32 2, label %sw.bb27.i
    i32 3, label %entry.sw.bb28.i_crit_edge
    i32 1, label %entry.sw.bb28.i_crit_edge504
    i32 7, label %entry.sw.bb28.i_crit_edge505
  ]

entry.sw.bb28.i_crit_edge505:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

entry.sw.bb28.i_crit_edge504:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

entry.sw.bb28.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

entry.p54_tx_80211_header.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_tx_80211_header.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %27 = or i16 %21, 1
  br label %p54_tx_80211_header.exit

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_tx_80211_header.exit

sw.bb28.i:                                        ; preds = %entry.sw.bb28.i_crit_edge, %entry.sw.bb28.i_crit_edge504, %entry.sw.bb28.i_crit_edge505
  %and30.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %sw.bb28.i.if.end22.i_crit_edge

sw.bb28.i.if.end22.i_crit_edge:                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.end33.i:                                       ; preds = %sw.bb28.i
  %28 = and i16 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i86.i = icmp eq i16 %28, 0
  br i1 %cmp.i86.i, label %if.then38.i, label %if.end33.i.if.end59.i_crit_edge, !prof !31

if.end33.i.if.end59.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then38.i:                                      ; preds = %if.end33.i
  %29 = and i16 %8, -1024
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %29, label %if.then38.i.if.end59.i_crit_edge [
    i16 20480, label %if.then41.i
    i16 -32768, label %if.then48.i
  ]

if.then38.i.if.end59.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then41.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = or i16 %21, 34
  br label %p54_tx_80211_header.exit

if.then48.i:                                      ; preds = %if.then38.i
  %and50.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.then48.i.p54_tx_80211_header.exit_crit_edge

if.then48.i.p54_tx_80211_header.exit_crit_edge:   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_tx_80211_header.exit

if.end53.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = or i16 %21, 2
  br label %if.end22.i

if.end59.i:                                       ; preds = %if.then38.i.if.end59.i_crit_edge, %if.end33.i.if.end59.i_crit_edge
  %tobool60.not.i = icmp eq ptr %4, null
  br i1 %tobool60.not.i, label %if.end59.i.p54_tx_80211_header.exit_crit_edge, label %if.then61.i

if.end59.i.p54_tx_80211_header.exit_crit_edge:    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_tx_80211_header.exit

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %aid62.i = getelementptr inbounds %struct.ieee80211_sta, ptr %4, i32 0, i32 2
  %33 = ptrtoint ptr %aid62.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %aid62.i, align 2
  br label %p54_tx_80211_header.exit

p54_tx_80211_header.exit:                         ; preds = %if.then61.i, %if.end59.i.p54_tx_80211_header.exit_crit_edge, %if.then48.i.p54_tx_80211_header.exit_crit_edge, %if.then41.i, %sw.bb27.i, %sw.bb.i, %entry.p54_tx_80211_header.exit_crit_edge
  %hdr_flags.3 = phi i16 [ %21, %entry.p54_tx_80211_header.exit_crit_edge ], [ %21, %if.end59.i.p54_tx_80211_header.exit_crit_edge ], [ %21, %if.then61.i ], [ %21, %if.then48.i.p54_tx_80211_header.exit_crit_edge ], [ %31, %if.then41.i ], [ %21, %sw.bb27.i ], [ %27, %sw.bb.i ]
  %aid.0 = phi i16 [ 0, %entry.p54_tx_80211_header.exit_crit_edge ], [ 0, %if.end59.i.p54_tx_80211_header.exit_crit_edge ], [ %34, %if.then61.i ], [ 0, %if.then48.i.p54_tx_80211_header.exit_crit_edge ], [ 0, %if.then41.i ], [ 1, %sw.bb27.i ], [ 0, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %add.i)
  %cmp.i = icmp ugt i8 %add.i, 7
  br i1 %cmp.i, label %do.end.i, label %p54_tx_80211_header.exit.if.end22.i_crit_edge, !prof !31

p54_tx_80211_header.exit.if.end22.i_crit_edge:    ; preds = %p54_tx_80211_header.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

do.end.i:                                         ; preds = %p54_tx_80211_header.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #5
  br label %if.then

if.end22.i:                                       ; preds = %p54_tx_80211_header.exit.if.end22.i_crit_edge, %if.end53.i, %sw.bb28.i.if.end22.i_crit_edge
  %queue.0440 = phi i8 [ %add.i, %p54_tx_80211_header.exit.if.end22.i_crit_edge ], [ 3, %sw.bb28.i.if.end22.i_crit_edge ], [ 0, %if.end53.i ]
  %aid.0438 = phi i16 [ %aid.0, %p54_tx_80211_header.exit.if.end22.i_crit_edge ], [ 0, %sw.bb28.i.if.end22.i_crit_edge ], [ 0, %if.end53.i ]
  %hdr_flags.3436 = phi i16 [ %hdr_flags.3, %p54_tx_80211_header.exit.if.end22.i_crit_edge ], [ %21, %sw.bb28.i.if.end22.i_crit_edge ], [ %32, %if.end53.i ]
  %extra_len.0434 = phi i32 [ 0, %p54_tx_80211_header.exit.if.end22.i_crit_edge ], [ 0, %sw.bb28.i.if.end22.i_crit_edge ], [ 251, %if.end53.i ]
  %conv441 = zext i8 %queue.0440 to i32
  %arrayidx.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 %conv441
  %tx_stats_lock.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 19
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_stats_lock.i) #5
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %limit.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 %conv441, i32 1
  %37 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp33.not.i = icmp uge i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %queue.0440)
  %cmp36.i = icmp ugt i8 %queue.0440, 3
  %spec.select.i = and i1 %cmp36.i, %cmp33.not.i
  br i1 %spec.select.i, label %if.then44.i, label %if.end46.i, !prof !31

if.then44.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_stats_lock.i, i32 noundef %call28.i) #5
  br label %if.then

if.end46.i:                                       ; preds = %if.end22.i
  %inc.i = add i32 %36, 1
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i, ptr %arrayidx.i, align 4
  %count.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 %conv441, i32 2
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count.i, align 4
  %inc48.i = add i32 %41, 1
  store i32 %inc48.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %38)
  %cmp51.i = icmp eq i32 %inc.i, %38
  %spec.select1.i = and i1 %cmp36.i, %cmp51.i
  br i1 %spec.select1.i, label %if.then64.i, label %if.end46.i.if.end_crit_edge, !prof !31

if.end46.i.if.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then64.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nuw nsw i32 %conv441, 65532
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %conv67.i = and i32 %sub.i, 65535
  tail call void @ieee80211_stop_queue(ptr noundef %43, i32 noundef %conv67.i) #5
  br label %if.end

if.then:                                          ; preds = %if.then44.i, %do.end.i
  tail call void @ieee80211_free_txskb(ptr noundef %dev, ptr noundef %skb) #5
  br label %cleanup268

if.end:                                           ; preds = %if.then64.i, %if.end46.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_stats_lock.i, i32 noundef %call28.i) #5
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 -56
  %46 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %46, 3
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len3, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %50 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_key, align 4
  %tobool4.not = icmp eq ptr %51, null
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #5
  %conv7 = trunc i32 %call6 to i8
  %52 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_key, align 4
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %55)
  %cmp = icmp eq i32 %55, 1027074
  br i1 %cmp, label %if.then10, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %conv12 = and i32 %call6, 255
  %add.ptr13 = getelementptr i8, ptr %57, i32 %conv12
  %58 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr13, align 1
  %arrayidx14 = getelementptr i8, ptr %add.ptr13, i32 1
  %60 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %add.ptr13, i32 2
  %61 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx15, align 1
  store i8 %62, ptr %add.ptr13, align 1
  store i8 0, ptr %arrayidx15, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.then5.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %crypt_offset.0 = phi i8 [ %conv7, %if.then10 ], [ %conv7, %if.then5.if.end19_crit_edge ], [ 0, %if.end.if.end19_crit_edge ]
  %add = or i32 %and, 44
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #5
  %call21 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %63 = or i16 %hdr_flags.3436, 16384
  %spec.select450 = select i1 %tobool22.not, i16 %hdr_flags.3436, i16 %63
  %64 = tail call i16 @llvm.bswap.i16(i16 %aid.0438)
  %type = getelementptr inbounds %struct.p54_hdr, ptr %call21, i32 0, i32 3
  %65 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %type, align 1
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %66 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %conv28 = trunc i16 %bf.lshr to i8
  %rts_tries = getelementptr inbounds %struct.p54_hdr, ptr %call21, i32 0, i32 4
  %67 = ptrtoint ptr %rts_tries to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv28, ptr %rts_tries, align 1
  %rts_cts_rate_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %68 = ptrtoint ptr %rts_cts_rate_idx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rts_cts_rate_idx, align 4
  %70 = ptrtoint ptr %call20 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 0, ptr %call20, align 1
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 14
  %71 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %max_rates, align 1
  %conv29 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp30454.not = icmp eq i8 %72, 0
  br i1 %cmp30454.not, label %if.end19.for.end182_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end182_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end182

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %if.end19.for.body_crit_edge
  %nrates.0456 = phi i8 [ %inc, %if.end38.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %i.0455 = phi i32 [ %inc39, %if.end38.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %arrayidx33 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %49, i32 0, i32 %i.0455
  %73 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp35 = icmp slt i8 %74, 0
  br i1 %cmp35, label %for.body.for.end_crit_edge, label %if.end38

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end38:                                         ; preds = %for.body
  %inc = add nuw i8 %nrates.0456, 1
  %inc39 = add nuw nsw i32 %i.0455, 1
  %exitcond.not = icmp eq i32 %inc39, %conv29
  br i1 %exitcond.not, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %for.body.for.end_crit_edge
  %nrates.0.lcssa = phi i8 [ %72, %if.end38.for.end_crit_edge ], [ %nrates.0456, %for.body.for.end_crit_edge ]
  %conv41 = zext i8 %nrates.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nrates.0.lcssa)
  %cmp42458.not = icmp eq i8 %nrates.0.lcssa, 0
  br i1 %cmp42458.not, label %for.end.for.end182_crit_edge, label %for.body44.lr.ph

for.end.for.end182_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end182

for.body44.lr.ph:                                 ; preds = %for.end
  %shr = lshr i32 15, %conv41
  %or46 = or i32 %shr, 1
  %add47 = add nuw nsw i32 %or46, 1
  br label %for.body44

for.cond67.preheader:                             ; preds = %for.body44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv61)
  %cmp69.not465.not = icmp eq i8 %conv61, 0
  br i1 %cmp69.not465.not, label %for.cond67.preheader.for.cond105.preheader_crit_edge, label %for.cond67.preheader.for.body73_crit_edge

for.cond67.preheader.for.body73_crit_edge:        ; preds = %for.cond67.preheader
  br label %for.body73

for.cond67.preheader.for.cond105.preheader_crit_edge: ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond105.preheader

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.lr.ph
  %nremaining.0460 = phi i8 [ 8, %for.body44.lr.ph ], [ %conv61, %for.body44.for.body44_crit_edge ]
  %i.1459 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc63, %for.body44.for.body44_crit_edge ]
  %count50 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %49, i32 0, i32 %i.1459, i32 1
  %75 = ptrtoint ptr %count50 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %bf.load51 = load i16, ptr %count50, align 1
  %bf.lshr52 = lshr i16 %bf.load51, 11
  %conv53 = zext i16 %bf.lshr52 to i32
  %76 = tail call i32 @llvm.umin.i32(i32 %add47, i32 %conv53)
  %conv56 = trunc i32 %76 to i8
  %arrayidx57 = getelementptr [4 x i8], ptr %calculated_tries, i32 0, i32 %i.1459
  %77 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv56, ptr %arrayidx57, align 1
  %conv61 = sub i8 %nremaining.0460, %conv56
  %inc63 = add nuw nsw i32 %i.1459, 1
  %exitcond485.not = icmp eq i32 %inc63, %conv41
  br i1 %exitcond485.not, label %for.cond67.preheader, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.cond105.preheader:                            ; preds = %cleanup.for.cond105.preheader_crit_edge, %for.cond67.preheader.for.cond105.preheader_crit_edge
  br i1 %cmp42458.not, label %for.cond105.preheader.for.end182_crit_edge, label %for.body113.lr.ph

for.cond105.preheader.for.end182_crit_edge:       ; preds = %for.cond105.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end182

for.body113.lr.ph:                                ; preds = %for.cond105.preheader
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  br label %for.body113

for.body73:                                       ; preds = %cleanup.for.body73_crit_edge, %for.cond67.preheader.for.body73_crit_edge
  %i.2469.in = phi i32 [ %i.2469, %cleanup.for.body73_crit_edge ], [ %conv41, %for.cond67.preheader.for.body73_crit_edge ]
  %nremaining.1468 = phi i8 [ %nremaining.2, %cleanup.for.body73_crit_edge ], [ %conv61, %for.cond67.preheader.for.body73_crit_edge ]
  %i.2469 = add nsw i32 %i.2469.in, -1
  %count77 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %49, i32 0, i32 %i.2469, i32 1
  %78 = ptrtoint ptr %count77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %bf.load78 = load i16, ptr %count77, align 1
  %bf.lshr79 = lshr i16 %bf.load78, 11
  %conv80 = zext i16 %bf.lshr79 to i32
  %arrayidx81 = getelementptr [4 x i8], ptr %calculated_tries, i32 0, i32 %i.2469
  %79 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %80 to i32
  %sub83 = sub nsw i32 %conv80, %conv82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub83)
  %cmp84 = icmp slt i32 %sub83, 1
  br i1 %cmp84, label %for.body73.cleanup_crit_edge, label %if.end87

for.body73.cleanup_crit_edge:                     ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end87:                                         ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #7
  %conv68470 = zext i8 %nremaining.1468 to i32
  %81 = tail call i32 @llvm.umin.i32(i32 %sub83, i32 %conv68470)
  %82 = trunc i32 %81 to i8
  %conv99 = add i8 %80, %82
  %83 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv99, ptr %arrayidx81, align 1
  %conv102 = sub i8 %nremaining.1468, %82
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %for.body73.cleanup_crit_edge
  %nremaining.2 = phi i8 [ %conv102, %if.end87 ], [ %nremaining.1468, %for.body73.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nremaining.2)
  %cmp69.not = icmp ne i8 %nremaining.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2469.in)
  %cmp71 = icmp sgt i32 %i.2469.in, 1
  %or.cond = select i1 %cmp69.not, i1 %cmp71, i1 false
  br i1 %or.cond, label %cleanup.for.body73_crit_edge, label %cleanup.for.cond105.preheader_crit_edge

cleanup.for.cond105.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond105.preheader

cleanup.for.body73_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body73

for.body113:                                      ; preds = %for.inc180.for.body113_crit_edge, %for.body113.lr.ph
  %cts_rate.0481 = phi i8 [ %69, %for.body113.lr.ph ], [ %cts_rate.1, %for.inc180.for.body113_crit_edge ]
  %ridx.0480 = phi i32 [ 0, %for.body113.lr.ph ], [ %ridx.1.lcssa, %for.inc180.for.body113_crit_edge ]
  %i.3479 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc181, %for.inc180.for.body113_crit_edge ]
  %burst_allowed.0478 = phi i8 [ %..i, %for.body113.lr.ph ], [ %burst_allowed.1, %for.inc180.for.body113_crit_edge ]
  %arrayidx115 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %49, i32 0, i32 %i.3479
  %84 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx115, align 1
  %86 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load117 = load i32, ptr %band, align 4
  %bf.lshr118.mask = and i32 %bf.load117, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr118.mask)
  %cmp119 = icmp eq i32 %bf.lshr118.mask, 536870912
  %add123 = add i8 %85, 4
  %spec.select = select i1 %cmp119, i8 %add123, i8 %85
  %arrayidx126 = getelementptr [4 x i8], ptr %calculated_tries, i32 0, i32 %i.3479
  %87 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx126, align 1
  %count130 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %49, i32 0, i32 %i.3479, i32 1
  %89 = ptrtoint ptr %count130 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %bf.load131 = load i16, ptr %count130, align 1
  %bf.value = zext i8 %88 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load131, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count130, align 1
  %90 = and i16 %bf.load131, 255
  %conv137 = zext i16 %90 to i32
  %and138 = and i32 %conv137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %91 = or i8 %spec.select, 16
  %92 = or i8 %cts_rate.0481, 16
  %rate.1 = select i1 %tobool139.not, i8 %spec.select, i8 %91
  %cts_rate.1 = select i1 %tobool139.not, i8 %cts_rate.0481, i8 %92
  %and149 = and i32 %conv137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.else, label %if.then151

if.then151:                                       ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #7
  %93 = or i8 %rate.1, 64
  br label %if.end163

if.else:                                          ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #7
  %and156 = and i32 %conv137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %94 = or i8 %rate.1, 32
  %spec.select451 = select i1 %tobool157.not, i8 %burst_allowed.0478, i8 0
  %spec.select452 = select i1 %tobool157.not, i8 %rate.1, i8 %94
  br label %if.end163

if.end163:                                        ; preds = %if.else, %if.then151
  %burst_allowed.1 = phi i8 [ 0, %if.then151 ], [ %spec.select451, %if.else ]
  %rate.2 = phi i8 [ %93, %if.then151 ], [ %spec.select452, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp167471.not = icmp eq i8 %88, 0
  br i1 %cmp167471.not, label %if.end163.for.inc180_crit_edge, label %for.body173.preheader

if.end163.for.inc180_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc180

for.body173.preheader:                            ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  %conv166 = zext i8 %88 to i32
  %uglygep = getelementptr i8, ptr %call20, i32 %ridx.0480
  %95 = add nsw i32 %conv166, -1
  %96 = sub i32 7, %ridx.0480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %97 = icmp eq i32 %95, 0
  %umin = call i32 @llvm.umin.i32(i32 %96, i32 %95)
  %98 = select i1 %97, i32 0, i32 %umin
  %99 = add nuw nsw i32 %98, 1
  %100 = zext i8 %rate.2 to i32
  %101 = call ptr @memset(ptr %uglygep, i32 %100, i32 %99)
  %102 = add nsw i32 %ridx.0480, 1
  %103 = add nsw i32 %102, %98
  br label %for.inc180

for.inc180:                                       ; preds = %for.body173.preheader, %if.end163.for.inc180_crit_edge
  %ridx.1.lcssa = phi i32 [ %ridx.0480, %if.end163.for.inc180_crit_edge ], [ %103, %for.body173.preheader ]
  %inc181 = add nuw nsw i32 %i.3479, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc181, i32 %conv41)
  %cmp107 = icmp ult i32 %inc181, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ridx.1.lcssa)
  %cmp110 = icmp slt i32 %ridx.1.lcssa, 8
  %or.cond413 = select i1 %cmp107, i1 %cmp110, i1 false
  br i1 %or.cond413, label %for.inc180.for.body113_crit_edge, label %for.inc180.for.end182_crit_edge

for.inc180.for.end182_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end182

for.inc180.for.body113_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113

for.end182:                                       ; preds = %for.inc180.for.end182_crit_edge, %for.cond105.preheader.for.end182_crit_edge, %for.end.for.end182_crit_edge, %if.end19.for.end182_crit_edge
  %burst_allowed.0.lcssa = phi i8 [ %..i, %for.cond105.preheader.for.end182_crit_edge ], [ %..i, %if.end19.for.end182_crit_edge ], [ %..i, %for.end.for.end182_crit_edge ], [ %burst_allowed.1, %for.inc180.for.end182_crit_edge ]
  %ridx.0.lcssa = phi i32 [ 0, %for.cond105.preheader.for.end182_crit_edge ], [ 0, %if.end19.for.end182_crit_edge ], [ 0, %for.end.for.end182_crit_edge ], [ %ridx.1.lcssa, %for.inc180.for.end182_crit_edge ]
  %cts_rate.0.lcssa = phi i8 [ %69, %for.cond105.preheader.for.end182_crit_edge ], [ %69, %if.end19.for.end182_crit_edge ], [ %69, %for.end.for.end182_crit_edge ], [ %cts_rate.1, %for.inc180.for.end182_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %burst_allowed.0.lcssa)
  %tobool183.not = icmp eq i8 %burst_allowed.0.lcssa, 0
  %104 = or i16 %spec.select450, 16
  %spec.select453 = select i1 %tobool183.not, i16 %spec.select450, i16 %104
  %105 = tail call i16 @llvm.bswap.i16(i16 %spec.select453)
  %106 = ptrtoint ptr %call21 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %call21, align 1
  %conv190 = trunc i32 %ridx.0.lcssa to i8
  %tries = getelementptr inbounds %struct.p54_hdr, ptr %call21, i32 0, i32 5
  %107 = ptrtoint ptr %tries to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv190, ptr %tries, align 1
  %rts_rate_idx = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 1
  %108 = ptrtoint ptr %rts_rate_idx to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %rts_rate_idx, align 1
  %109 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_key, align 4
  %tobool192.not = icmp eq ptr %110, null
  br i1 %tobool192.not, label %if.else233, label %if.then193

if.then193:                                       ; preds = %for.end182
  %cipher195 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %cipher195 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cipher195, align 8
  %switch.tableidx = add i32 %112, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %113 = icmp ult i32 %switch.tableidx, 5
  br i1 %113, label %switch.lookup, label %if.then193.p54_convert_algo.exit_crit_edge

if.then193.p54_convert_algo.exit_crit_edge:       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54_convert_algo.exit

switch.lookup:                                    ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.p54_tx_80211, i32 0, i32 %switch.tableidx
  %114 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %114)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %p54_convert_algo.exit

p54_convert_algo.exit:                            ; preds = %switch.lookup, %if.then193.p54_convert_algo.exit_crit_edge
  %retval.0.i415 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.then193.p54_convert_algo.exit_crit_edge ]
  %key_type = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 3
  %115 = ptrtoint ptr %key_type to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %retval.0.i415, ptr %key_type, align 1
  %116 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_key, align 4
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %keylen, align 2
  %120 = tail call i8 @llvm.umin.i8(i8 %119, i8 16)
  %key_len = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 4
  %121 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %key_len, align 1
  %key = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 5
  %122 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_key, align 4
  %key211 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %123, i32 0, i32 8
  %conv214 = zext i8 %120 to i32
  %124 = call ptr @memcpy(ptr %key, ptr %key211, i32 %conv214)
  %125 = load ptr, ptr %hw_key, align 4
  %cipher216 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %cipher216 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cipher216, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %127)
  %cmp217 = icmp eq i32 %127, 1027074
  br i1 %cmp217, label %if.then219, label %p54_convert_algo.exit.if.end225_crit_edge

p54_convert_algo.exit.if.end225_crit_edge:        ; preds = %p54_convert_algo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225

if.then219:                                       ; preds = %p54_convert_algo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add220 = add i32 %48, 8
  %key222 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %125, i32 0, i32 8
  %arrayidx223 = getelementptr [0 x i8], ptr %key222, i32 0, i32 16
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #5
  %128 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 8)
  %129 = load i64, ptr %arrayidx223, align 1
  %130 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 8)
  store i64 %129, ptr %call.i, align 1
  br label %if.end225

if.end225:                                        ; preds = %if.then219, %p54_convert_algo.exit.if.end225_crit_edge
  %len.0 = phi i32 [ %add220, %if.then219 ], [ %48, %p54_convert_algo.exit.if.end225_crit_edge ]
  %131 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw_key, align 4
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %icv_len, align 4
  %conv227 = zext i8 %134 to i32
  %add228 = add i32 %len.0, %conv227
  %call.i416 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %conv227) #5
  %135 = call ptr @memset(ptr %call.i416, i32 0, i32 %conv227)
  br label %if.end236

if.else233:                                       ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #7
  %key_type234 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 3
  %136 = ptrtoint ptr %key_type234 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %key_type234, align 1
  %key_len235 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 4
  %137 = ptrtoint ptr %key_len235 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %key_len235, align 1
  br label %if.end236

if.end236:                                        ; preds = %if.else233, %if.end225
  %len.1 = phi i32 [ %add228, %if.end225 ], [ %48, %if.else233 ]
  %crypt_offset237 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 2
  %138 = ptrtoint ptr %crypt_offset237 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %crypt_offset.0, ptr %crypt_offset237, align 1
  %hw_queue = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 6
  %139 = ptrtoint ptr %hw_queue to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %queue.0440, ptr %hw_queue, align 1
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i, align 4
  %142 = trunc i32 %141 to i8
  %conv241 = add i8 %142, -1
  %backlog = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 7
  %143 = ptrtoint ptr %backlog to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv241, ptr %backlog, align 1
  %durations = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 8
  %144 = ptrtoint ptr %durations to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 0, ptr %durations, align 1
  %tx_diversity_mask = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 24
  %145 = ptrtoint ptr %tx_diversity_mask to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tx_diversity_mask, align 1
  %147 = and i8 %146, 2
  %tx_antenna = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 9
  %148 = ptrtoint ptr %tx_antenna to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %tx_antenna, align 1
  %rxhw = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 22
  %149 = ptrtoint ptr %rxhw to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %rxhw, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %150)
  %cmp247 = icmp eq i16 %150, 5
  br i1 %cmp247, label %if.then249, label %if.else253

if.then249:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #7
  %151 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 10
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %cts_rate.0.lcssa, ptr %151, align 1
  %output_power = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 25
  %153 = ptrtoint ptr %output_power to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %output_power, align 8
  %conv251 = trunc i32 %154 to i16
  %155 = tail call i16 @llvm.bswap.i16(i16 %conv251)
  %output_power252 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 10, i32 0, i32 1
  %156 = ptrtoint ptr %output_power252 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %output_power252, align 1
  br label %if.end258

if.else253:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #7
  %output_power254 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 25
  %157 = ptrtoint ptr %output_power254 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %output_power254, align 8
  %conv255 = trunc i32 %158 to i8
  %159 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 10
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv255, ptr %159, align 1
  %cts_rate257 = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 10, i32 0, i32 1
  %161 = ptrtoint ptr %cts_rate257 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %cts_rate.0.lcssa, ptr %cts_rate257, align 1
  br label %if.end258

if.end258:                                        ; preds = %if.else253, %if.then249
  br i1 %tobool22.not, label %if.end258.if.end263_crit_edge, label %if.then260

if.end258.if.end263_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end263

if.then260:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #7
  %conv261 = trunc i32 %and to i8
  %align = getelementptr inbounds %struct.p54_tx_data, ptr %call20, i32 0, i32 12
  %162 = ptrtoint ptr %align to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv261, ptr %align, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end258.if.end263_crit_edge
  %conv264 = trunc i32 %len.1 to i16
  %163 = tail call i16 @llvm.bswap.i16(i16 %conv264)
  %len265 = getelementptr inbounds %struct.p54_hdr, ptr %call21, i32 0, i32 1
  %164 = ptrtoint ptr %len265 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %len265, align 1
  %165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %extra_len.0434, ptr %165, align 4
  %tx_pending.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %tx_pending.i, ptr noundef %skb) #5
  tail call fastcc void @p54_tx_pending(ptr noundef %1) #5
  br label %cleanup268

cleanup268:                                       ; preds = %if.end263, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calculated_tries) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p54_find_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_p54_free_skb, !1, !"__ksymtab_p54_free_skb", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/txrx.c", i32 246, i32 1}
!2 = !{ptr @__ksymtab_p54_rx, !3, !"__ksymtab_p54_rx", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/p54/txrx.c", i32 681, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/p54/txrx.c", i32 662, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @p54_rx_control._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @p54_rx_control._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/p54/txrx.c", i32 617, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @p54_rx_trap._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @p54_rx_trap._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/p54/txrx.c", i32 636, i32 3}
!20 = !{ptr @p54_rx_trap._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @p54_rx_trap._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 2002, i32 2000}
!34 = !{!"branch_weights", i32 2000, i32 1}
