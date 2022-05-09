; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbs_send_tx_feedback\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_send_tx_feedback\09\09\09\09"
module asm "\09.long\09__crc_lbs_send_tx_feedback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_send_tx_feedback:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_send_tx_feedback\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_send_tx_feedback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.128, [0 x i8] }
%union.anon.128 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.tx_radiotap_hdr = type { %struct.ieee80211_radiotap_header, i8, i8, i8, i8 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }

@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_hard_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libertas tx: tx err: skb length %d 0 or > %zd\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lbs_hard_start_xmit\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/marvell/libertas/tx.c\00", [53 x i8] zeroinitializer }, align 32
@lbs_hard_start_xmit._entry_ptr = internal global ptr @lbs_hard_start_xmit._entry, section ".printk_index", align 4
@lbs_hard_start_xmit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017libertas tx: Packet on %s while busy\0A\00", [56 x i8] zeroinitializer }, align 32
@lbs_hard_start_xmit._entry_ptr.5 = internal global ptr @lbs_hard_start_xmit._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX Data\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"txpd\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tx Data\00", [24 x i8] zeroinitializer }, align 32
@lbs_hard_start_xmit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas tx: %s lined up packet\0A\00", [61 x i8] zeroinitializer }, align 32
@lbs_hard_start_xmit._entry_ptr.11 = internal global ptr @lbs_hard_start_xmit._entry.9, section ".printk_index", align 4
@__kstrtab_lbs_send_tx_feedback = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_send_tx_feedback = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_send_tx_feedback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_send_tx_feedback to i32), ptr @__kstrtab_lbs_send_tx_feedback, ptr @__kstrtabns_lbs_send_tx_feedback }, section "___ksymtab_gpl+lbs_send_tx_feedback", align 4
@lbs_deb_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lbs_deb_hex\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/defs.h\00", [51 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr = internal global ptr @lbs_deb_hex._entry, section ".printk_index", align 4
@lbs_deb_hex._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas %s: \00", [18 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.17 = internal global ptr @lbs_deb_hex._entry.15, section ".printk_index", align 4
@lbs_deb_hex._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.20 = internal global ptr @lbs_deb_hex._entry.18, section ".printk_index", align 4
@lbs_deb_hex._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.22 = internal global ptr @lbs_deb_hex._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 82, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 100, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 141, i32 26 }
@___asan_gen_.54 = private constant [46 x i8] c"../drivers/net/wireless/marvell/libertas/tx.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 148, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 96, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 99, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/defs.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 102, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_lbs_send_tx_feedback, ptr @lbs_deb_hex._entry, ptr @lbs_deb_hex._entry.15, ptr @lbs_deb_hex._entry.18, ptr @lbs_deb_hex._entry.21, ptr @lbs_deb_hex._entry_ptr, ptr @lbs_deb_hex._entry_ptr.17, ptr @lbs_deb_hex._entry_ptr.20, ptr @lbs_deb_hex._entry_ptr.22, ptr @lbs_hard_start_xmit._entry, ptr @lbs_hard_start_xmit._entry.3, ptr @lbs_hard_start_xmit._entry.9, ptr @lbs_hard_start_xmit._entry_ptr, ptr @lbs_hard_start_xmit._entry_ptr.11, ptr @lbs_hard_start_xmit._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_hard_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_hard_start_xmit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_hard_start_xmit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %txpd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txpd) #5
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  %surpriseremoved = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surpriseremoved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.free_crit_edge

entry.free_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %free

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = add i32 %5, -1575
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1574, i32 %6)
  %7 = icmp ult i32 %6, -1574
  br i1 %7, label %do.body10, label %if.end25

do.body10:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %8 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %do.body10.do.end22_crit_edge, label %do.end16

do.body10.do.end22_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef 1574) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end16, %do.body10.do.end22_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_errors, align 4
  %inc24 = add i32 %12, 1
  store i32 %inc24, ptr %tx_errors, align 4
  br label %free

if.end25:                                         ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mesh_dev, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %_tx.i.i159 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i159 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i159, align 128
  %state.i.i160 = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i160) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %tx_pending_len = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 81
  %21 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.end46, label %do.body33

do.body33:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %23 = load i32, ptr @lbs_debug, align 4
  %and34 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 0
  br i1 %cmp35.not, label %do.body33.unlock_crit_edge, label %do.end40

do.body33.unlock_crit_edge:                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

do.end40:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %dev) #8
  br label %unlock

if.end46:                                         ; preds = %if.end30
  %24 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %tx_pending_len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end46.lbs_deb_hex.exit_crit_edge, label %land.lhs.true.i

if.end46.lbs_deb_hex.exit_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit

land.lhs.true.i:                                  ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %28 = load i32, ptr @lbs_debug, align 4
  %29 = and i32 %28, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 2162688, i32 %29)
  %.not.i = icmp eq i32 %29, 2162688
  br i1 %.not.i, label %do.end18.i.peel, label %land.lhs.true.i.lbs_deb_hex.exit_crit_edge

land.lhs.true.i.lbs_deb_hex.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit

do.end18.i.peel:                                  ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6) #8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i.peel = zext i8 %33 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i.peel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %exitcond.peel = icmp eq i32 %27, 1
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %do.end18.i.peel.for.body.i_crit_edge

do.end18.i.peel.for.body.i_crit_edge:             ; preds = %do.end18.i.peel
  br label %for.body.i

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %do.end18.i.peel.for.body.i_crit_edge
  %buf.addr.04.i.pn = phi ptr [ %buf.addr.04.i, %do.end18.i.for.body.i_crit_edge ], [ %31, %do.end18.i.peel.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 2, %do.end18.i.peel.for.body.i_crit_edge ]
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
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6) #8
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %34 = ptrtoint ptr %buf.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf.addr.04.i, align 1
  %conv.i = zext i8 %35 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i) #8
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond = icmp eq i32 %i.02.i, %27
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !48

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %do.end23.i, %land.lhs.true.i.lbs_deb_hex.exit_crit_edge, %if.end46.lbs_deb_hex.exit_crit_edge
  %tx_pending_buf = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82
  %36 = ptrtoint ptr %txpd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx_pending_buf, ptr %txpd, align 4
  %37 = call ptr @memset(ptr %tx_pending_buf, i32 0, i32 24)
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %cmp60 = icmp eq i32 %45, 6
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %lbs_deb_hex.exit
  %rate = getelementptr inbounds %struct.tx_radiotap_hdr, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rate, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %sw.epilog.i [
    i8 2, label %if.then62.convert_radiotap_rate_to_mv.exit_crit_edge
    i8 4, label %sw.bb1.i
    i8 11, label %sw.bb2.i
    i8 22, label %sw.bb3.i
    i8 12, label %sw.bb4.i
    i8 18, label %sw.bb5.i
    i8 24, label %sw.bb6.i
    i8 36, label %sw.bb7.i
    i8 48, label %sw.bb8.i
    i8 72, label %sw.bb9.i
    i8 96, label %sw.bb10.i
    i8 108, label %sw.bb11.i
  ]

if.then62.convert_radiotap_rate_to_mv.exit_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb1.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb2.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb3.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb4.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb5.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb6.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb7.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb8.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb9.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb10.i:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.bb11.i:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

sw.epilog.i:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_radiotap_rate_to_mv.exit

convert_radiotap_rate_to_mv.exit:                 ; preds = %sw.epilog.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then62.convert_radiotap_rate_to_mv.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 452984832, %sw.bb11.i ], [ 436207616, %sw.bb10.i ], [ 419430400, %sw.bb9.i ], [ 402653184, %sw.bb8.i ], [ 385875968, %sw.bb7.i ], [ 369098752, %sw.bb6.i ], [ 352321536, %sw.bb5.i ], [ 335544320, %sw.bb4.i ], [ 318767104, %sw.bb3.i ], [ 301989888, %sw.bb2.i ], [ 285212672, %sw.bb1.i ], [ 268435456, %if.then62.convert_radiotap_rate_to_mv.exit_crit_edge ]
  %tx_control = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82, i32 4
  %49 = ptrtoint ptr %tx_control to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %retval.0.i, ptr %tx_control, align 1
  %add.ptr = getelementptr i8, ptr %39, i32 12
  %50 = trunc i32 %41 to i16
  %conv66 = add i16 %50, -12
  %51 = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82, i32 14
  %add.ptr67 = getelementptr i8, ptr %39, i32 16
  %52 = call ptr @memcpy(ptr %51, ptr %add.ptr67, i32 6)
  br label %if.end68

if.else:                                          ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv56 = trunc i32 %41 to i16
  %53 = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82, i32 14
  %54 = call ptr @memcpy(ptr %53, ptr %39, i32 6)
  br label %if.end68

if.end68:                                         ; preds = %if.else, %convert_radiotap_rate_to_mv.exit
  %pkt_len.0 = phi i16 [ %conv66, %convert_radiotap_rate_to_mv.exit ], [ %conv56, %if.else ]
  %p802x_hdr.0 = phi ptr [ %add.ptr, %convert_radiotap_rate_to_mv.exit ], [ %39, %if.else ]
  %55 = tail call i16 @llvm.bswap.i16(i16 %pkt_len.0)
  %tx_packet_length = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82, i32 12
  %56 = ptrtoint ptr %tx_packet_length to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %tx_packet_length, align 1
  %tx_packet_location = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 82, i32 8
  %57 = ptrtoint ptr %tx_packet_location to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 402653184, ptr %tx_packet_location, align 1
  tail call void @lbs_mesh_set_txpd(ptr noundef %1, ptr noundef %dev, ptr noundef %tx_pending_buf) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %58 = load i32, ptr @lbs_debug, align 4
  %59 = and i32 %58, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 2162688, i32 %59)
  %.not.i161 = icmp eq i32 %59, 2162688
  br i1 %.not.i161, label %for.body.i168.peel.next, label %if.end68.lbs_deb_hex.exit183_crit_edge

if.end68.lbs_deb_hex.exit183_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit183

for.body.i168.peel.next:                          ; preds = %if.end68
  %uglygep = getelementptr i8, ptr %txpd, i32 23
  %call14.i173.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #8
  %60 = ptrtoint ptr %txpd to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %txpd, align 4
  %conv.i175.peel = zext i8 %61 to i32
  %call20.i176.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i175.peel) #8
  %incdec.ptr.i177.peel = getelementptr inbounds i8, ptr %txpd, i32 1
  br label %for.body.i168

for.body.i168:                                    ; preds = %do.end18.i180.for.body.i168_crit_edge, %for.body.i168.peel.next
  %buf.addr.04.i164 = phi ptr [ %incdec.ptr.i177, %do.end18.i180.for.body.i168_crit_edge ], [ %incdec.ptr.i177.peel, %for.body.i168.peel.next ]
  %i.02.i165 = phi i32 [ %inc.i178, %do.end18.i180.for.body.i168_crit_edge ], [ 2, %for.body.i168.peel.next ]
  %and5.i166 = and i32 %i.02.i165, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i166)
  %cmp6.i167 = icmp eq i32 %and5.i166, 1
  br i1 %cmp6.i167, label %do.end12.i174, label %for.body.i168.do.end18.i180_crit_edge

for.body.i168.do.end18.i180_crit_edge:            ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i180

do.end12.i174:                                    ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #7
  %call.i171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %call14.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #8
  br label %do.end18.i180

do.end18.i180:                                    ; preds = %do.end12.i174, %for.body.i168.do.end18.i180_crit_edge
  %62 = ptrtoint ptr %buf.addr.04.i164 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buf.addr.04.i164, align 1
  %conv.i175 = zext i8 %63 to i32
  %call20.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i175) #8
  %incdec.ptr.i177 = getelementptr i8, ptr %buf.addr.04.i164, i32 1
  %inc.i178 = add nuw nsw i32 %i.02.i165, 1
  %exitcond211 = icmp eq ptr %buf.addr.04.i164, %uglygep
  br i1 %exitcond211, label %do.end23.i182, label %do.end18.i180.for.body.i168_crit_edge, !llvm.loop !50

do.end18.i180.for.body.i168_crit_edge:            ; preds = %do.end18.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i168

do.end23.i182:                                    ; preds = %do.end18.i180
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %lbs_deb_hex.exit183

lbs_deb_hex.exit183:                              ; preds = %do.end23.i182, %if.end68.lbs_deb_hex.exit183_crit_edge
  %64 = ptrtoint ptr %tx_packet_length to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %tx_packet_length, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv70 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i184 = icmp eq i16 %65, 0
  br i1 %tobool.not.i184, label %lbs_deb_hex.exit183.lbs_deb_hex.exit208_crit_edge, label %land.lhs.true.i186

lbs_deb_hex.exit183.lbs_deb_hex.exit208_crit_edge: ; preds = %lbs_deb_hex.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit208

land.lhs.true.i186:                               ; preds = %lbs_deb_hex.exit183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %68 = and i32 %67, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 2162688, i32 %68)
  %.not.i185 = icmp eq i32 %68, 2162688
  br i1 %.not.i185, label %do.end18.i205.peel, label %land.lhs.true.i186.lbs_deb_hex.exit208_crit_edge

land.lhs.true.i186.lbs_deb_hex.exit208_crit_edge: ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit208

do.end18.i205.peel:                               ; preds = %land.lhs.true.i186
  %69 = call i32 @llvm.smax.i32(i32 %conv70, i32 1)
  %call14.i198.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8) #8
  %70 = ptrtoint ptr %p802x_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %p802x_hdr.0, align 1
  %conv.i200.peel = zext i8 %71 to i32
  %call20.i201.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i200.peel) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %exitcond213.peel = icmp ult i16 %66, 2
  br i1 %exitcond213.peel, label %do.end18.i205.peel.do.end23.i207_crit_edge, label %do.end18.i205.peel.for.body.i193_crit_edge

do.end18.i205.peel.for.body.i193_crit_edge:       ; preds = %do.end18.i205.peel
  br label %for.body.i193

do.end18.i205.peel.do.end23.i207_crit_edge:       ; preds = %do.end18.i205.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i207

for.body.i193:                                    ; preds = %do.end18.i205.for.body.i193_crit_edge, %do.end18.i205.peel.for.body.i193_crit_edge
  %buf.addr.04.i189.pn = phi ptr [ %buf.addr.04.i189, %do.end18.i205.for.body.i193_crit_edge ], [ %p802x_hdr.0, %do.end18.i205.peel.for.body.i193_crit_edge ]
  %i.02.i190 = phi i32 [ %inc.i203, %do.end18.i205.for.body.i193_crit_edge ], [ 2, %do.end18.i205.peel.for.body.i193_crit_edge ]
  %buf.addr.04.i189 = getelementptr i8, ptr %buf.addr.04.i189.pn, i32 1
  %and5.i191 = and i32 %i.02.i190, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i191)
  %cmp6.i192 = icmp eq i32 %and5.i191, 1
  br i1 %cmp6.i192, label %do.end12.i199, label %for.body.i193.do.end18.i205_crit_edge

for.body.i193.do.end18.i205_crit_edge:            ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i205

do.end12.i199:                                    ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  %call.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %call14.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8) #8
  br label %do.end18.i205

do.end18.i205:                                    ; preds = %do.end12.i199, %for.body.i193.do.end18.i205_crit_edge
  %72 = ptrtoint ptr %buf.addr.04.i189 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %buf.addr.04.i189, align 1
  %conv.i200 = zext i8 %73 to i32
  %call20.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv.i200) #8
  %inc.i203 = add nuw nsw i32 %i.02.i190, 1
  %exitcond213 = icmp eq i32 %i.02.i190, %69
  br i1 %exitcond213, label %do.end18.i205.do.end23.i207_crit_edge, label %do.end18.i205.for.body.i193_crit_edge, !llvm.loop !51

do.end18.i205.for.body.i193_crit_edge:            ; preds = %do.end18.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i193

do.end18.i205.do.end23.i207_crit_edge:            ; preds = %do.end18.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i207

do.end23.i207:                                    ; preds = %do.end18.i205.do.end23.i207_crit_edge, %do.end18.i205.peel.do.end23.i207_crit_edge
  %call25.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %lbs_deb_hex.exit208

lbs_deb_hex.exit208:                              ; preds = %do.end23.i207, %land.lhs.true.i186.lbs_deb_hex.exit208_crit_edge, %lbs_deb_hex.exit183.lbs_deb_hex.exit208_crit_edge
  %arrayidx = getelementptr %struct.lbs_private, ptr %1, i32 0, i32 82, i32 24
  %74 = ptrtoint ptr %tx_packet_length to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %tx_packet_length, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %conv72 = zext i16 %76 to i32
  %77 = call ptr @memcpy(ptr %arrayidx, ptr %p802x_hdr.0, i32 %conv72)
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  %conv87 = zext i16 %pkt_len.0 to i32
  %add = add nuw nsw i32 %conv87, 24
  %78 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %tx_pending_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %79 = load i32, ptr @lbs_debug, align 4
  %and90 = and i32 %79, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %cmp91.not = icmp eq i32 %and90, 0
  br i1 %cmp91.not, label %lbs_deb_hex.exit208.do.end101_crit_edge, label %do.end96

lbs_deb_hex.exit208.do.end101_crit_edge:          ; preds = %lbs_deb_hex.exit208
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

do.end96:                                         ; preds = %lbs_deb_hex.exit208
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #8
  br label %do.end101

do.end101:                                        ; preds = %do.end96, %lbs_deb_hex.exit208.do.end101_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %80 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_packets, align 4
  %inc103 = add i32 %81, 1
  store i32 %inc103, ptr %tx_packets, align 4
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %84 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_bytes, align 4
  %add106 = add i32 %85, %83
  store i32 %add106, ptr %tx_bytes, align 4
  %86 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wdev, align 4
  %iftype108 = getelementptr inbounds %struct.wireless_dev, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %iftype108 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iftype108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %89)
  %cmp109 = icmp eq i32 %89, 6
  br i1 %cmp109, label %if.then111, label %do.end101.free_crit_edge

do.end101.free_crit_edge:                         ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %free

if.then111:                                       ; preds = %do.end101
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i209 = icmp eq ptr %91, null
  br i1 %tobool.not.i209, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %91(ptr noundef %skb) #5
  %92 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %destructor.i, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %93, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.then111
  %95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %tobool3.not.i = icmp eq ptr %97, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !52

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %currenttxskb = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 84
  %98 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %skb, ptr %currenttxskb, align 4
  br label %unlock

free:                                             ; preds = %do.end101.free_crit_edge, %do.end22, %entry.free_crit_edge
  %flags.0 = phi i32 [ %call2, %entry.free_crit_edge ], [ %call2, %do.end22 ], [ %call82, %do.end101.free_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %unlock

unlock:                                           ; preds = %free, %skb_orphan.exit, %do.end40, %do.body33.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %free ], [ 0, %skb_orphan.exit ], [ 16, %do.end40 ], [ 16, %do.body33.unlock_crit_edge ]
  %flags.1 = phi i32 [ %flags.0, %free ], [ %call82, %skb_orphan.exit ], [ %call2, %do.end40 ], [ %call2, %do.body33.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %flags.1) #5
  %waitq = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 71
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txpd) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_mesh_set_txpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_send_tx_feedback(ptr nocapture noundef %priv, i32 noundef %try_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %currenttxskb = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 84
  %4 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %currenttxskb, align 4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_count)
  %tobool.not = icmp eq i32 %try_count, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %txretrycount = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 83
  %8 = ptrtoint ptr %txretrycount to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txretrycount, align 4
  %10 = trunc i32 %try_count to i8
  %11 = sub i8 1, %10
  %phi.cast = add i8 %11, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %data_retries = getelementptr inbounds %struct.tx_radiotap_hdr, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %data_retries to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cond, ptr %data_retries, align 1
  %13 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %currenttxskb, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %14, ptr noundef %16) #5
  %17 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %currenttxskb, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call, ptr %protocol, align 8
  %20 = load ptr, ptr %currenttxskb, align 4
  %call7 = tail call i32 @netif_rx(ptr noundef %20) #5
  %21 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %currenttxskb, align 4
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9 = icmp eq i32 %23, 0
  br i1 %cmp9, label %if.then11, label %cond.end.if.end13_crit_edge

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %cond.end.if.end13_crit_edge
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %28 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mesh_dev, align 4
  %tobool14.not = icmp eq ptr %29, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %land.lhs.true

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end13
  %state.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %_tx.i.i36 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i36, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 82, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lbs_hard_start_xmit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lbs_hard_start_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 100, i32 3}
!8 = !{ptr @lbs_hard_start_xmit._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @lbs_hard_start_xmit._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 108, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 139, i32 26}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 141, i32 26}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 148, i32 2}
!18 = !{ptr @lbs_hard_start_xmit._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lbs_hard_start_xmit._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_lbs_send_tx_feedback, !21, !"__ksymtab_lbs_send_tx_feedback", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/tx.c", i32 206, i32 1}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 96, i32 6}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lbs_deb_hex._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @lbs_deb_hex._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 97, i32 5}
!30 = !{ptr @lbs_deb_hex._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lbs_deb_hex._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 99, i32 4}
!34 = !{ptr @lbs_deb_hex._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lbs_deb_hex._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lbs_deb_hex._entry.21, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 102, i32 3}
!38 = !{ptr @lbs_deb_hex._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154958738, i64 2154959226, i64 2154958775, i64 2154958831, i64 2154958865, i64 2154958889, i64 2154958930, i64 2154958951, i64 2154958979, i64 2154959013}
