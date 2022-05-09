; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbs_process_rxed_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_process_rxed_packet\09\09\09\09"
module asm "\09.long\09__crc_lbs_process_rxed_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_process_rxed_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_process_rxed_packet\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_process_rxed_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.124, [0 x i8] }
%union.anon.124 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rxpd = type { %union.anon.129, i8, i8, i16, i8, i8, i32, i32, i8, [3 x i8] }
%union.anon.129 = type { i16 }
%struct.eth803hdr = type { [6 x i8], [6 x i8], i16 }
%struct.rxpackethdr = type { %struct.eth803hdr, %struct.rfc1042hdr }
%struct.rfc1042hdr = type { i8, i8, i8, [3 x i8], i16 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX Data: Before chop rxpd\00", [38 x i8] zeroinitializer }, align 32
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_process_rxed_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas rx: rx err: frame received with bad length\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lbs_process_rxed_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/libertas/rx.c\00", [53 x i8] zeroinitializer }, align 32
@lbs_process_rxed_packet._entry_ptr = internal global ptr @lbs_process_rxed_packet._entry, section ".printk_index", align 4
@lbs_process_rxed_packet._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017libertas rx: rx data: skb->len - pkt_ptr = %d-%zd = %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@lbs_process_rxed_packet._entry_ptr.6 = internal global ptr @lbs_process_rxed_packet._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX Data: Dest\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX Data: Src\00", [19 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local constant [6 x i8], align 1
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX Data: LLC/SNAP\00", [46 x i8] zeroinitializer }, align 32
@lbs_process_rxed_packet._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas rx: rx data: size of actual packet %d\0A\00", [46 x i8] zeroinitializer }, align 32
@lbs_process_rxed_packet._entry_ptr.12 = internal global ptr @lbs_process_rxed_packet._entry.10, section ".printk_index", align 4
@__kstrtab_lbs_process_rxed_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_process_rxed_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_process_rxed_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_process_rxed_packet to i32), ptr @__kstrtab_lbs_process_rxed_packet, ptr @__kstrtabns_lbs_process_rxed_packet }, section "___ksymtab_gpl+lbs_process_rxed_packet", align 4
@lbs_deb_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lbs_deb_hex\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/defs.h\00", [51 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr = internal global ptr @lbs_deb_hex._entry, section ".printk_index", align 4
@lbs_deb_hex._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.15, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas %s: \00", [18 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.18 = internal global ptr @lbs_deb_hex._entry.16, section ".printk_index", align 4
@lbs_deb_hex._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.15, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.21 = internal global ptr @lbs_deb_hex._entry.19, section ".printk_index", align 4
@lbs_deb_hex._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.23 = internal global ptr @lbs_deb_hex._entry.22, section ".printk_index", align 4
@process_rxed_802_11_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"process_rxed_802_11_packet\00", [37 x i8] zeroinitializer }, align 32
@process_rxed_802_11_packet._entry_ptr = internal global ptr @process_rxed_802_11_packet._entry, section ".printk_index", align 4
@process_rxed_802_11_packet._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017libertas rx: rx data: skb->len-sizeof(RxPd) = %d-%zd = %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@process_rxed_802_11_packet._entry_ptr.27 = internal global ptr @process_rxed_802_11_packet._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: couldn't pskb_expand_head\0A\00", [33 x i8] zeroinitializer }, align 32
@process_rxed_802_11_packet._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.24, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_rxed_802_11_packet._entry_ptr.30 = internal global ptr @process_rxed_802_11_packet._entry.29, section ".printk_index", align 4
@convert_mv_rate_to_radiotap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011libertas: Invalid Marvell WLAN rate %i\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"convert_mv_rate_to_radiotap\00", [36 x i8] zeroinitializer }, align 32
@convert_mv_rate_to_radiotap._entry_ptr = internal global ptr @convert_mv_rate_to_radiotap._entry, section ".printk_index", align 4
@switch.table.lbs_process_rxed_packet = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\02\04\0B\16\02\0C\12\18$0H`l", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 81, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 85, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 92, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 96, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 98, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 130, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 145, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 96, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 97, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 99, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/defs.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 102, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 222, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 229, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 249, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 260, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [46 x i8] c"../drivers/net/wireless/marvell/libertas/rx.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 194, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [37 x i8] c"switch.table.lbs_process_rxed_packet\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_lbs_process_rxed_packet, ptr @convert_mv_rate_to_radiotap._entry, ptr @convert_mv_rate_to_radiotap._entry_ptr, ptr @lbs_deb_hex._entry, ptr @lbs_deb_hex._entry.16, ptr @lbs_deb_hex._entry.19, ptr @lbs_deb_hex._entry.22, ptr @lbs_deb_hex._entry_ptr, ptr @lbs_deb_hex._entry_ptr.18, ptr @lbs_deb_hex._entry_ptr.21, ptr @lbs_deb_hex._entry_ptr.23, ptr @lbs_process_rxed_packet._entry, ptr @lbs_process_rxed_packet._entry.10, ptr @lbs_process_rxed_packet._entry.4, ptr @lbs_process_rxed_packet._entry_ptr, ptr @lbs_process_rxed_packet._entry_ptr.12, ptr @lbs_process_rxed_packet._entry_ptr.6, ptr @process_rxed_802_11_packet._entry, ptr @process_rxed_802_11_packet._entry.25, ptr @process_rxed_802_11_packet._entry.29, ptr @process_rxed_802_11_packet._entry_ptr, ptr @process_rxed_802_11_packet._entry_ptr.27, ptr @process_rxed_802_11_packet._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @switch.table.lbs_process_rxed_packet], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_rxed_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_rxed_packet._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_rxed_packet._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rxed_802_11_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rxed_802_11_packet._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rxed_802_11_packet._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_mv_rate_to_radiotap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lbs_process_rxed_packet to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_process_rxed_packet(ptr noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !68

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #5, !srcloc !69
  unreachable

do.end10:                                         ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp = icmp eq i32 %6, 6
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end10
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %12)
  %cmp.i = icmp ult i32 %12, 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %13 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %if.then11
  br i1 %cmp2.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 10
  %14 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_length_errors.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %rx_length_errors.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %done

do.body8.i:                                       ; preds = %if.then11
  br i1 %cmp2.not.i, label %do.body8.i.do.end21.i_crit_edge, label %do.end14.i

do.body8.i.do.end21.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %12, -20
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %12, i32 noundef 20, i32 noundef %sub.i) #8
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end14.i, %do.body8.i.do.end21.i_crit_edge
  %rx_rate.i = getelementptr inbounds %struct.rxpd, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %rx_rate.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %17)
  %18 = icmp ult i8 %17, 13
  br i1 %18, label %switch.hole_check, label %do.end21.i.do.end.i.i_crit_edge

do.end21.i.do.end.i.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %switch.hole_check.do.end.i.i_crit_edge, %do.end21.i.do.end.i.i_crit_edge
  %conv.i.i = zext i8 %17 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv.i.i) #8
  br label %convert_mv_rate_to_radiotap.exit.i

switch.hole_check:                                ; preds = %do.end21.i
  %switch.maskindex = zext i8 %17 to i16
  %switch.shifted = lshr i16 8175, %switch.maskindex
  %19 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %switch.lobit.not = icmp eq i16 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %20 = sext i8 %17 to i32
  %switch.gep = getelementptr inbounds [13 x i8], ptr @switch.table.lbs_process_rxed_packet, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %21)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %convert_mv_rate_to_radiotap.exit.i

convert_mv_rate_to_radiotap.exit.i:               ; preds = %switch.lookup, %do.end.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %switch.load, %switch.lookup ]
  %snr.i = getelementptr inbounds %struct.rxpd, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %snr.i, align 1
  %nf.i = getelementptr inbounds %struct.rxpd, ptr %10, i32 0, i32 4
  %24 = ptrtoint ptr %nf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nf.i, align 1
  %add.i = add i8 %25, %23
  %call26.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 20) #5
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.ptr.sub.i.i)
  %cmp28.i = icmp ult i32 %sub.ptr.sub.i.i, 11
  br i1 %cmp28.i, label %land.lhs.true.i, label %convert_mv_rate_to_radiotap.exit.i.if.end32.i_crit_edge

convert_mv_rate_to_radiotap.exit.i.if.end32.i_crit_edge: ; preds = %convert_mv_rate_to_radiotap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %convert_mv_rate_to_radiotap.exit.i
  %call30.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %skb, i32 noundef 11, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %if.then31.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %done

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %convert_mv_rate_to_radiotap.exit.i.if.end32.i_crit_edge
  %call33.i = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 11) #5
  %30 = ptrtoint ptr %call33.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %call33.i, align 1
  %radiotap_hdr.sroa.5.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 1
  %31 = ptrtoint ptr %radiotap_hdr.sroa.5.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %radiotap_hdr.sroa.5.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %radiotap_hdr.sroa.6.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 2
  %32 = ptrtoint ptr %radiotap_hdr.sroa.6.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 2816, ptr %radiotap_hdr.sroa.6.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %radiotap_hdr.sroa.8.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 4
  %33 = ptrtoint ptr %radiotap_hdr.sroa.8.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 101711872, ptr %radiotap_hdr.sroa.8.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %radiotap_hdr.sroa.10.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 8
  %34 = ptrtoint ptr %radiotap_hdr.sroa.10.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %radiotap_hdr.sroa.10.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %radiotap_hdr.sroa.11.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 9
  %35 = ptrtoint ptr %radiotap_hdr.sroa.11.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.i.i, ptr %radiotap_hdr.sroa.11.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %radiotap_hdr.sroa.13.0.pradiotap_hdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call33.i, i32 10
  %36 = ptrtoint ptr %radiotap_hdr.sroa.13.0.pradiotap_hdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add.i, ptr %radiotap_hdr.sroa.13.0.pradiotap_hdr.0..sroa_idx.i, align 1
  %37 = ptrtoint ptr %rx_rate.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rx_rate.i, align 1
  %call35.i = tail call i32 @lbs_fw_index_to_data_rate(i8 noundef zeroext %38) #5
  %conv36.i = trunc i32 %call35.i to i8
  %cur_rate.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 90
  %39 = ptrtoint ptr %cur_rate.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv36.i, ptr %cur_rate.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %40 = load i32, ptr @lbs_debug, align 4
  %and38.i = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp39.not.i = icmp eq i32 %and38.i, 0
  br i1 %cmp39.not.i, label %if.end32.i.do.end50.i_crit_edge, label %do.end44.i

if.end32.i.do.end50.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.i

do.end44.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %42) #8
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end44.i, %if.end32.i.do.end50.i_crit_edge
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %stats52.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 2
  %45 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bytes.i, align 8
  %add53.i = add i32 %46, %44
  store i32 %add53.i, ptr %rx_bytes.i, align 8
  %47 = ptrtoint ptr %stats52.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stats52.i, align 8
  %inc55.i = add i32 %48, 1
  store i32 %inc55.i, ptr %stats52.i, align 8
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 4
  %call57.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %50) #5
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %51 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %call57.i, ptr %protocol.i, align 8
  %call58.i = tail call i32 @netif_rx_any_context(ptr noundef nonnull %skb) #5
  br label %done

if.end12:                                         ; preds = %do.end10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %pkt_ptr = getelementptr inbounds %struct.rxpd, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %pkt_ptr to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %pkt_ptr, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %add.ptr = getelementptr i8, ptr %53, i32 %56
  %call13 = tail call ptr @lbs_mesh_set_dev(ptr noundef %priv, ptr noundef %1, ptr noundef %53) #5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i136 = icmp eq i32 %59, 0
  br i1 %tobool.not.i136, label %if.end12.lbs_deb_hex.exit_crit_edge, label %land.lhs.true.i137

if.end12.lbs_deb_hex.exit_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit

land.lhs.true.i137:                               ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %60 = load i32, ptr @lbs_debug, align 4
  %61 = and i32 %60, 2129920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2129920, i32 %61)
  %.not.i = icmp eq i32 %61, 2129920
  br i1 %.not.i, label %do.end18.i.peel, label %land.lhs.true.i137.lbs_deb_hex.exitthread-pre-split_crit_edge

land.lhs.true.i137.lbs_deb_hex.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exitthread-pre-split

do.end18.i.peel:                                  ; preds = %land.lhs.true.i137
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str) #8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %conv.i.peel = zext i8 %65 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i.peel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %exitcond.peel = icmp eq i32 %59, 1
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %do.end18.i.peel.for.body.i_crit_edge

do.end18.i.peel.for.body.i_crit_edge:             ; preds = %do.end18.i.peel
  br label %for.body.i

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %do.end18.i.peel.for.body.i_crit_edge
  %buf.addr.04.i.pn = phi ptr [ %buf.addr.04.i, %do.end18.i.for.body.i_crit_edge ], [ %63, %do.end18.i.peel.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i140, %do.end18.i.for.body.i_crit_edge ], [ 2, %do.end18.i.peel.for.body.i_crit_edge ]
  %buf.addr.04.i = getelementptr i8, ptr %buf.addr.04.i.pn, i32 1
  %and5.i = and i32 %i.02.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %do.end12.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str) #8
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %66 = ptrtoint ptr %buf.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %buf.addr.04.i, align 1
  %conv.i = zext i8 %67 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i) #8
  %inc.i140 = add nuw nsw i32 %i.02.i, 1
  %exitcond = icmp eq i32 %i.02.i, %59
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !70

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %lbs_deb_hex.exitthread-pre-split

lbs_deb_hex.exitthread-pre-split:                 ; preds = %do.end23.i, %land.lhs.true.i137.lbs_deb_hex.exitthread-pre-split_crit_edge
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %len, align 4
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %lbs_deb_hex.exitthread-pre-split, %if.end12.lbs_deb_hex.exit_crit_edge
  %69 = phi i32 [ %.pr, %lbs_deb_hex.exitthread-pre-split ], [ %58, %if.end12.lbs_deb_hex.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %69)
  %cmp17 = icmp ult i32 %69, 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %70 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %70, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp17, label %do.body19, label %do.body31

do.body19:                                        ; preds = %lbs_deb_hex.exit
  br i1 %cmp20.not, label %do.body19.do.end29_crit_edge, label %do.end24

do.body19.do.end29_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end24:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body19.do.end29_crit_edge
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 36, i32 10
  %71 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %72, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  tail call void @consume_skb(ptr noundef nonnull %skb) #5
  br label %done

do.body31:                                        ; preds = %lbs_deb_hex.exit
  br i1 %cmp20.not, label %do.body31.do.end46_crit_edge, label %do.end37

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %pkt_ptr to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %pkt_ptr, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %sub = sub i32 %69, %75
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %69, i32 noundef %75, i32 noundef %sub) #8
  br label %do.end46

do.end46:                                         ; preds = %do.end37, %do.body31.do.end46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %76 = load i32, ptr @lbs_debug, align 4
  %77 = and i32 %76, 2129920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2129920, i32 %77)
  %.not.i141 = icmp eq i32 %77, 2129920
  br i1 %.not.i141, label %do.end18.i160.5, label %do.end46.lbs_deb_hex.exit163_crit_edge

do.end46.lbs_deb_hex.exit163_crit_edge:           ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit163

do.end18.i160.5:                                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7) #8
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr, align 1
  %conv.i155 = zext i8 %79 to i32
  %call20.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155) #8
  %incdec.ptr.i157 = getelementptr i8, ptr %add.ptr, i32 1
  %80 = ptrtoint ptr %incdec.ptr.i157 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.i157, align 1
  %conv.i155.1 = zext i8 %81 to i32
  %call20.i156.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155.1) #8
  %incdec.ptr.i157.1 = getelementptr i8, ptr %incdec.ptr.i157, i32 1
  %82 = ptrtoint ptr %incdec.ptr.i157.1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i157.1, align 1
  %conv.i155.2 = zext i8 %83 to i32
  %call20.i156.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155.2) #8
  %incdec.ptr.i157.2 = getelementptr i8, ptr %incdec.ptr.i157.1, i32 1
  %84 = ptrtoint ptr %incdec.ptr.i157.2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr.i157.2, align 1
  %conv.i155.3 = zext i8 %85 to i32
  %call20.i156.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155.3) #8
  %incdec.ptr.i157.3 = getelementptr i8, ptr %incdec.ptr.i157.2, i32 1
  %86 = ptrtoint ptr %incdec.ptr.i157.3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr.i157.3, align 1
  %conv.i155.4 = zext i8 %87 to i32
  %call20.i156.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155.4) #8
  %incdec.ptr.i157.4 = getelementptr i8, ptr %incdec.ptr.i157.3, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i157.4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i157.4, align 1
  %conv.i155.5 = zext i8 %89 to i32
  %call20.i156.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i155.5) #8
  %call25.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %lbs_deb_hex.exit163

lbs_deb_hex.exit163:                              ; preds = %do.end18.i160.5, %do.end46.lbs_deb_hex.exit163_crit_edge
  %src_addr = getelementptr inbounds %struct.eth803hdr, ptr %add.ptr, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %90 = load i32, ptr @lbs_debug, align 4
  %91 = and i32 %90, 2129920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2129920, i32 %91)
  %.not.i164 = icmp eq i32 %91, 2129920
  br i1 %.not.i164, label %do.end18.i183.5, label %lbs_deb_hex.exit163.lbs_deb_hex.exit186_crit_edge

lbs_deb_hex.exit163.lbs_deb_hex.exit186_crit_edge: ; preds = %lbs_deb_hex.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit186

do.end18.i183.5:                                  ; preds = %lbs_deb_hex.exit163
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #8
  %92 = ptrtoint ptr %src_addr to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %src_addr, align 1
  %conv.i178 = zext i8 %93 to i32
  %call20.i179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178) #8
  %incdec.ptr.i180 = getelementptr i8, ptr %src_addr, i32 1
  %94 = ptrtoint ptr %incdec.ptr.i180 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %incdec.ptr.i180, align 1
  %conv.i178.1 = zext i8 %95 to i32
  %call20.i179.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178.1) #8
  %incdec.ptr.i180.1 = getelementptr i8, ptr %src_addr, i32 2
  %96 = ptrtoint ptr %incdec.ptr.i180.1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %incdec.ptr.i180.1, align 1
  %conv.i178.2 = zext i8 %97 to i32
  %call20.i179.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178.2) #8
  %incdec.ptr.i180.2 = getelementptr i8, ptr %src_addr, i32 3
  %98 = ptrtoint ptr %incdec.ptr.i180.2 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr.i180.2, align 1
  %conv.i178.3 = zext i8 %99 to i32
  %call20.i179.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178.3) #8
  %incdec.ptr.i180.3 = getelementptr i8, ptr %src_addr, i32 4
  %100 = ptrtoint ptr %incdec.ptr.i180.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.i180.3, align 1
  %conv.i178.4 = zext i8 %101 to i32
  %call20.i179.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178.4) #8
  %incdec.ptr.i180.4 = getelementptr i8, ptr %src_addr, i32 5
  %102 = ptrtoint ptr %incdec.ptr.i180.4 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %incdec.ptr.i180.4, align 1
  %conv.i178.5 = zext i8 %103 to i32
  %call20.i179.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i178.5) #8
  %call25.i184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %lbs_deb_hex.exit186

lbs_deb_hex.exit186:                              ; preds = %do.end18.i183.5, %lbs_deb_hex.exit163.lbs_deb_hex.exit186_crit_edge
  %rfc1042_hdr = getelementptr %struct.rxpackethdr, ptr %add.ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %rfc1042_hdr, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp50 = icmp eq i32 %bcmp, 0
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %lbs_deb_hex.exit186
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr57 = getelementptr i8, ptr %rfc1042_hdr, i32 -6
  %104 = call ptr @memcpy(ptr %rfc1042_hdr, ptr %src_addr, i32 6)
  %105 = call ptr @memcpy(ptr %add.ptr57, ptr %add.ptr, i32 6)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %53 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end71

if.else:                                          ; preds = %lbs_deb_hex.exit186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %106 = load i32, ptr @lbs_debug, align 4
  %107 = and i32 %106, 2129920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2129920, i32 %107)
  %.not.i187 = icmp eq i32 %107, 2129920
  br i1 %.not.i187, label %do.end18.i206.7, label %if.else.if.end71_crit_edge

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end18.i206.7:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9) #8
  %108 = ptrtoint ptr %rfc1042_hdr to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rfc1042_hdr, align 1
  %conv.i201 = zext i8 %109 to i32
  %call20.i202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201) #8
  %incdec.ptr.i203 = getelementptr i8, ptr %rfc1042_hdr, i32 1
  %110 = ptrtoint ptr %incdec.ptr.i203 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %incdec.ptr.i203, align 1
  %conv.i201.1 = zext i8 %111 to i32
  %call20.i202.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.1) #8
  %incdec.ptr.i203.1 = getelementptr i8, ptr %rfc1042_hdr, i32 2
  %112 = ptrtoint ptr %incdec.ptr.i203.1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %incdec.ptr.i203.1, align 1
  %conv.i201.2 = zext i8 %113 to i32
  %call20.i202.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.2) #8
  %incdec.ptr.i203.2 = getelementptr i8, ptr %rfc1042_hdr, i32 3
  %114 = ptrtoint ptr %incdec.ptr.i203.2 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %incdec.ptr.i203.2, align 1
  %conv.i201.3 = zext i8 %115 to i32
  %call20.i202.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.3) #8
  %incdec.ptr.i203.3 = getelementptr i8, ptr %rfc1042_hdr, i32 4
  %116 = ptrtoint ptr %incdec.ptr.i203.3 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %incdec.ptr.i203.3, align 1
  %conv.i201.4 = zext i8 %117 to i32
  %call20.i202.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.4) #8
  %incdec.ptr.i203.4 = getelementptr i8, ptr %rfc1042_hdr, i32 5
  %118 = ptrtoint ptr %incdec.ptr.i203.4 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %incdec.ptr.i203.4, align 1
  %conv.i201.5 = zext i8 %119 to i32
  %call20.i202.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.5) #8
  %incdec.ptr.i203.5 = getelementptr i8, ptr %rfc1042_hdr, i32 6
  %120 = ptrtoint ptr %incdec.ptr.i203.5 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %incdec.ptr.i203.5, align 1
  %conv.i201.6 = zext i8 %121 to i32
  %call20.i202.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.6) #8
  %incdec.ptr.i203.6 = getelementptr i8, ptr %rfc1042_hdr, i32 7
  %122 = ptrtoint ptr %incdec.ptr.i203.6 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %incdec.ptr.i203.6, align 1
  %conv.i201.7 = zext i8 %123 to i32
  %call20.i202.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv.i201.7) #8
  %call25.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end18.i206.7, %if.else.if.end71_crit_edge, %if.then51
  %hdrchop.0 = phi i32 [ %sub.ptr.sub, %if.then51 ], [ %56, %if.else.if.end71_crit_edge ], [ %56, %do.end18.i206.7 ]
  %call72 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %hdrchop.0) #5
  %rx_rate = getelementptr inbounds %struct.rxpd, ptr %53, i32 0, i32 5
  %124 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %rx_rate, align 1
  %call73 = tail call i32 @lbs_fw_index_to_data_rate(i8 noundef zeroext %125) #5
  %conv = trunc i32 %call73 to i8
  %cur_rate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 90
  %126 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv, ptr %cur_rate, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %127 = load i32, ptr @lbs_debug, align 4
  %and75 = and i32 %127, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not = icmp eq i32 %and75, 0
  br i1 %cmp76.not, label %if.end71.do.end87_crit_edge, label %do.end81

if.end71.do.end87_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87

do.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %129) #8
  br label %do.end87

do.end87:                                         ; preds = %do.end81, %if.end71.do.end87_crit_edge
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len, align 4
  %stats89 = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 36, i32 2
  %132 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %133, %131
  store i32 %add, ptr %rx_bytes, align 8
  %134 = ptrtoint ptr %stats89 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %stats89, align 8
  %inc91 = add i32 %135, 1
  store i32 %inc91, ptr %stats89, align 8
  %call92 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %call13) #5
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %136 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %call92, ptr %protocol, align 8
  %call93 = tail call i32 @netif_rx_any_context(ptr noundef nonnull %skb) #5
  br label %done

done:                                             ; preds = %do.end87, %do.end29, %do.end50.i, %if.then31.i, %do.end6.i
  %ret.0 = phi i32 [ -22, %do.end29 ], [ 0, %do.end87 ], [ -22, %do.end6.i ], [ -12, %if.then31.i ], [ 0, %do.end50.i ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lbs_mesh_set_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_fw_index_to_data_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 81, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 85, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lbs_process_rxed_packet._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @lbs_process_rxed_packet._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 92, i32 2}
!10 = !{ptr @lbs_process_rxed_packet._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lbs_process_rxed_packet._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 96, i32 26}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 98, i32 26}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 130, i32 27}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 145, i32 2}
!20 = !{ptr @lbs_process_rxed_packet._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lbs_process_rxed_packet._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_lbs_process_rxed_packet, !23, !"__ksymtab_lbs_process_rxed_packet", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 156, i32 1}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 96, i32 6}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lbs_deb_hex._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @lbs_deb_hex._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 97, i32 5}
!32 = !{ptr @lbs_deb_hex._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lbs_deb_hex._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 99, i32 4}
!36 = !{ptr @lbs_deb_hex._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lbs_deb_hex._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @lbs_deb_hex._entry.22, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 102, i32 3}
!40 = !{ptr @lbs_deb_hex._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 222, i32 3}
!43 = !{ptr @process_rxed_802_11_packet._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @process_rxed_802_11_packet._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 229, i32 2}
!47 = !{ptr @process_rxed_802_11_packet._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @process_rxed_802_11_packet._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 249, i32 21}
!51 = !{ptr @process_rxed_802_11_packet._entry.29, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 260, i32 2}
!53 = !{ptr @process_rxed_802_11_packet._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/libertas/rx.c", i32 194, i32 2}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @convert_mv_rate_to_radiotap._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @convert_mv_rate_to_radiotap._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2157171945, i64 2157172451, i64 2157171982, i64 2157172038, i64 2157172072, i64 2157172096, i64 2157172137, i64 2157172158, i64 2157172186, i64 2157172220}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.peeled.count", i32 1}
