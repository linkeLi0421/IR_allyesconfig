; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/ipw2x00/libipw_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/ipw2x00/libipw_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+libipw_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_xmit\09\09\09\09"
module asm "\09.long\09__crc_libipw_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_txb_free\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_txb_free\09\09\09\09"
module asm "\09.long\09__crc_libipw_txb_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_txb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_txb_free\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_txb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.libipw_txb = type { i8, i8, i8, i8, i16, i16, [0 x ptr] }
%struct.libipw_hdr_3addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8], i16 }
%struct.sk_buff = type { %union.anon, %union.anon.133, %union.anon.134, [48 x i8], %union.anon.135, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.137, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.133 = type { ptr }
%union.anon.134 = type { i64 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, ptr }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.139, i32, i32, i32, i16, i16, %union.anon.141, i32, %union.anon.142, %union.anon.143, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.139 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.libipw_device = type { ptr, %struct.wireless_dev, %struct.libipw_security, %struct.libipw_stats, %struct.libipw_geo, %struct.ieee80211_supported_band, %struct.ieee80211_supported_band, %struct.list_head, %struct.list_head, [128 x ptr], i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lib80211_crypt_info, i32, [4 x %struct.libipw_frag_entry], i32, i16, i16, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.libipw_security = type <{ i8, i8, [4 x i8], [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.libipw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libipw_geo = type { [4 x i8], i8, i8, [14 x %struct.libipw_channel], [132 x %struct.libipw_channel] }
%struct.libipw_channel = type { i32, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.libipw_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.132 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.libipw_snap_hdr = type { i8, i8, i8, [3 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@libipw_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: No xmit handler.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"libipw_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/ipw2x00/libipw_tx.c\00", [49 x i8] zeroinitializer }, align 32
@libipw_xmit._entry_ptr = internal global ptr @libipw_xmit._entry, section ".printk_index", align 4
@libipw_xmit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: skb too small (%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@libipw_xmit._entry_ptr.5 = internal global ptr @libipw_xmit._entry.3, section ".printk_index", align 4
@libipw_xmit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013libipw: msdu encryption failed\0A\00", [62 x i8] zeroinitializer }, align 32
@libipw_xmit._entry_ptr.8 = internal global ptr @libipw_xmit._entry.6, section ".printk_index", align 4
@libipw_xmit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Could not allocate TXB\0A\00", [34 x i8] zeroinitializer }, align 32
@libipw_xmit._entry_ptr.11 = internal global ptr @libipw_xmit._entry.9, section ".printk_index", align 4
@__kstrtab_libipw_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_xmit to i32), ptr @__kstrtab_libipw_xmit, ptr @__kstrtabns_libipw_xmit }, section "___ksymtab+libipw_xmit", align 4
@__kstrtab_libipw_txb_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_txb_free = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_txb_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_txb_free to i32), ptr @__kstrtab_libipw_txb_free, ptr @__kstrtabns_libipw_txb_free }, section "___ksymtab+libipw_txb_free", align 4
@libipw_encrypt_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Encryption failed: len=%d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libipw_encrypt_fragment\00", [40 x i8] zeroinitializer }, align 32
@libipw_encrypt_fragment._entry_ptr = internal global ptr @libipw_encrypt_fragment._entry, section ".printk_index", align 4
@switch.table.libipw_xmit = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 271, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 276, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 355, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 415, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [50 x i8] c"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 157, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"switch.table.libipw_xmit\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_libipw_txb_free, ptr @__ksymtab_libipw_xmit, ptr @libipw_encrypt_fragment._entry, ptr @libipw_encrypt_fragment._entry_ptr, ptr @libipw_xmit._entry, ptr @libipw_xmit._entry.3, ptr @libipw_xmit._entry.6, ptr @libipw_xmit._entry.9, ptr @libipw_xmit._entry_ptr, ptr @libipw_xmit._entry_ptr.11, ptr @libipw_xmit._entry_ptr.5, ptr @libipw_xmit._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @switch.table.libipw_xmit], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_xmit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_xmit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_xmit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_encrypt_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.libipw_xmit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @libipw_txb_free(ptr noundef %txb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %txb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp18.not = icmp eq i8 %1, 0
  br i1 %cmp18.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.libipw_txb, ptr %txb, i32 0, i32 6, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %4 = ptrtoint ptr %txb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %txb, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %txb) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %header = alloca %struct.libipw_hdr_3addrqos, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %header)
  %0 = call ptr @memset(ptr %header, i32 0, i32 26)
  %priority1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %1 = ptrtoint ptr %priority1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priority1, align 4
  %is_queue_full = getelementptr i8, ptr %dev, i32 5864
  %3 = ptrtoint ptr %is_queue_full to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is_queue_full, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %land.lhs.true

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 %4(ptr noundef %dev, i32 noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.body5_crit_edge, label %land.lhs.true.cleanup337_crit_edge

land.lhs.true.cleanup337_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup337

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.body5:                                         ; preds = %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 5500
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hard_start_xmit = getelementptr i8, ptr %dev, i32 5860
  %5 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hard_start_xmit, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end14, label %if.end18

do.end14:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8) #10
  br label %success

if.end18:                                         ; preds = %do.body5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp19 = icmp ult i32 %10, 8
  br i1 %cmp19, label %do.end26, label %if.end33, !prof !40

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %12, i32 noundef %10) #10
  br label %success

if.end33:                                         ; preds = %if.end18
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %h_proto, align 1
  %tx_keyidx = getelementptr i8, ptr %dev, i32 5628
  %17 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_keyidx, align 4
  %arrayidx = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 30, i32 2, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %16)
  %cmp37 = icmp eq i16 %16, -30578
  br i1 %cmp37, label %land.lhs.true39, label %if.end33.land.rhs_crit_edge

if.end33.land.rhs_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.lhs.true39:                                  ; preds = %if.end33
  %ieee802_1x = getelementptr i8, ptr %dev, i32 5580
  %21 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ieee802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool40.not = icmp eq i32 %22, 0
  br i1 %tobool40.not, label %land.lhs.true39.land.rhs_crit_edge, label %land.lhs.true39.land.end_crit_edge

land.lhs.true39.land.end_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true39.land.rhs_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true39.land.rhs_crit_edge, %if.end33.land.rhs_crit_edge
  %sec = getelementptr i8, ptr %dev, i32 3272
  %23 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %sec, align 4
  %24 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool42 = icmp ne i8 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true39.land.end_crit_edge
  %25 = phi i1 [ false, %land.lhs.true39.land.end_crit_edge ], [ %tobool42, %land.rhs ]
  %host_encrypt43 = getelementptr i8, ptr %dev, i32 5556
  %26 = ptrtoint ptr %host_encrypt43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_encrypt43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool44.not = icmp eq i32 %27, 0
  br i1 %tobool44.not, label %land.end.land.end49_crit_edge, label %land.lhs.true45

land.end.land.end49_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end49

land.lhs.true45:                                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %tobool48 = icmp ne ptr %20, null
  %spec.select = select i1 %25, i1 %tobool48, i1 false
  br label %land.end49

land.end49:                                       ; preds = %land.lhs.true45, %land.end.land.end49_crit_edge
  %28 = phi i1 [ false, %land.end.land.end49_crit_edge ], [ %spec.select, %land.lhs.true45 ]
  %host_encrypt_msdu51 = getelementptr i8, ptr %dev, i32 5560
  %29 = ptrtoint ptr %host_encrypt_msdu51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_encrypt_msdu51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool52.not = icmp eq i32 %30, 0
  br i1 %tobool52.not, label %land.end49.land.end57_crit_edge, label %land.lhs.true53

land.end49.land.end57_crit_edge:                  ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end57

land.lhs.true53:                                  ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #9
  %tobool56 = icmp ne ptr %20, null
  %spec.select523 = select i1 %25, i1 %tobool56, i1 false
  br label %land.end57

land.end57:                                       ; preds = %land.lhs.true53, %land.end49.land.end57_crit_edge
  %31 = phi i1 [ false, %land.end49.land.end57_crit_edge ], [ %spec.select523, %land.lhs.true53 ]
  br i1 %25, label %land.end57.if.end70_crit_edge, label %land.lhs.true60

land.end57.if.end70_crit_edge:                    ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true60:                                  ; preds = %land.end57
  %ieee802_1x61 = getelementptr i8, ptr %dev, i32 5580
  %32 = ptrtoint ptr %ieee802_1x61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ieee802_1x61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool62.not = icmp eq i32 %33, 0
  br i1 %tobool62.not, label %land.lhs.true60.if.end70_crit_edge, label %land.lhs.true63

land.lhs.true60.if.end70_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %drop_unencrypted = getelementptr i8, ptr %dev, i32 5588
  %34 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drop_unencrypted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool64.not = icmp eq i32 %35, 0
  %or.cond = select i1 %tobool64.not, i1 true, i1 %cmp37
  br i1 %or.cond, label %land.lhs.true63.if.end70_crit_edge, label %if.then69

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then69:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %success

if.end70:                                         ; preds = %land.lhs.true63.if.end70_crit_edge, %land.lhs.true60.if.end70_crit_edge, %land.end57.if.end70_crit_edge
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %dest.sroa.0.0.copyload583 = load i32, ptr %14, align 1
  %dest.sroa.0.sroa.0.0.extract.shift = lshr i32 %dest.sroa.0.0.copyload583, 16
  %dest.sroa.0.sroa.0.sroa.0.0.extract.shift656 = lshr i32 %dest.sroa.0.0.copyload583, 24
  %dest.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 4
  %39 = ptrtoint ptr %dest.sroa.12.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %dest.sroa.12.0.copyload585 = load i16, ptr %dest.sroa.12.0..sroa_idx, align 1
  %add.ptr.i531 = getelementptr i8, ptr %14, i32 6
  %40 = ptrtoint ptr %add.ptr.i531 to i32
  call void @__asan_load1_noabort(i32 %40)
  %src.sroa.0.0.copyload570 = load i8, ptr %add.ptr.i531, align 1
  %src.sroa.6.0.add.ptr.i531.sroa_idx = getelementptr i8, ptr %14, i32 7
  %41 = ptrtoint ptr %src.sroa.6.0.add.ptr.i531.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %src.sroa.6.0.copyload572 = load i8, ptr %src.sroa.6.0.add.ptr.i531.sroa_idx, align 1
  %src.sroa.7.0.add.ptr.i531.sroa_idx = getelementptr i8, ptr %14, i32 8
  %42 = ptrtoint ptr %src.sroa.7.0.add.ptr.i531.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %src.sroa.7.0.copyload574 = load i8, ptr %src.sroa.7.0.add.ptr.i531.sroa_idx, align 1
  %src.sroa.8.0.add.ptr.i531.sroa_idx = getelementptr i8, ptr %14, i32 9
  %43 = ptrtoint ptr %src.sroa.8.0.add.ptr.i531.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %src.sroa.8.0.copyload576 = load i8, ptr %src.sroa.8.0.add.ptr.i531.sroa_idx, align 1
  %src.sroa.9.0.add.ptr.i531.sroa_idx = getelementptr i8, ptr %14, i32 10
  %44 = ptrtoint ptr %src.sroa.9.0.add.ptr.i531.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %src.sroa.9.0.copyload578 = load i8, ptr %src.sroa.9.0.add.ptr.i531.sroa_idx, align 1
  %src.sroa.10.0.add.ptr.i531.sroa_idx = getelementptr i8, ptr %14, i32 11
  %45 = ptrtoint ptr %src.sroa.10.0.add.ptr.i531.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %src.sroa.10.0.copyload580 = load i8, ptr %src.sroa.10.0.add.ptr.i531.sroa_idx, align 1
  %. = select i1 %28, i32 16392, i32 8
  %iw_mode = getelementptr i8, ptr %dev, i32 5396
  %46 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iw_mode, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %if.end70.if.end101_crit_edge [
    i32 2, label %if.then78
    i32 1, label %if.then89
  ]

if.end70.if.end101_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %., 256
  %addr1 = getelementptr inbounds %struct.libipw_hdr_3addrqos, ptr %header, i32 0, i32 2
  %bssid = getelementptr i8, ptr %dev, i32 5816
  %49 = call ptr @memcpy(ptr %addr1, ptr %bssid, i32 6)
  %header.10.header.10.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 10
  %50 = ptrtoint ptr %header.10.header.10.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %src.sroa.0.0.copyload570, ptr %header.10.header.10.addr2.sroa_idx, align 2
  %header.11.header.11.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 11
  %51 = ptrtoint ptr %header.11.header.11.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %src.sroa.6.0.copyload572, ptr %header.11.header.11.addr2.sroa_idx, align 1
  %header.12.header.12.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 12
  %52 = ptrtoint ptr %header.12.header.12.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %src.sroa.7.0.copyload574, ptr %header.12.header.12.addr2.sroa_idx, align 2
  %header.13.header.13.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 13
  %53 = ptrtoint ptr %header.13.header.13.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %src.sroa.8.0.copyload576, ptr %header.13.header.13.addr2.sroa_idx, align 1
  %header.14.header.14.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 14
  %54 = ptrtoint ptr %header.14.header.14.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %src.sroa.9.0.copyload578, ptr %header.14.header.14.addr2.sroa_idx, align 2
  %header.15.header.15.addr2.sroa_idx = getelementptr inbounds i8, ptr %header, i32 15
  %55 = ptrtoint ptr %header.15.header.15.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %src.sroa.10.0.copyload580, ptr %header.15.header.15.addr2.sroa_idx, align 1
  %header.16.header.16.addr3.sroa_idx = getelementptr inbounds i8, ptr %header, i32 16
  %56 = ptrtoint ptr %header.16.header.16.addr3.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %dest.sroa.0.0.copyload583, ptr %header.16.header.16.addr3.sroa_idx, align 2
  %header.20.header.20.addr3.sroa_idx = getelementptr inbounds i8, ptr %header, i32 20
  %57 = ptrtoint ptr %header.20.header.20.addr3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %dest.sroa.12.0.copyload585, ptr %header.20.header.20.addr3.sroa_idx, align 2
  br label %if.end101

if.then89:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %header.4.header.4.addr190.sroa_idx = getelementptr inbounds i8, ptr %header, i32 4
  %58 = ptrtoint ptr %header.4.header.4.addr190.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %dest.sroa.0.0.copyload583, ptr %header.4.header.4.addr190.sroa_idx, align 2
  %header.8.header.8.addr190.sroa_idx = getelementptr inbounds i8, ptr %header, i32 8
  %59 = ptrtoint ptr %header.8.header.8.addr190.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %dest.sroa.12.0.copyload585, ptr %header.8.header.8.addr190.sroa_idx, align 2
  %header.10.header.10.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 10
  %60 = ptrtoint ptr %header.10.header.10.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %src.sroa.0.0.copyload570, ptr %header.10.header.10.addr293.sroa_idx, align 2
  %header.11.header.11.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 11
  %61 = ptrtoint ptr %header.11.header.11.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %src.sroa.6.0.copyload572, ptr %header.11.header.11.addr293.sroa_idx, align 1
  %header.12.header.12.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 12
  %62 = ptrtoint ptr %header.12.header.12.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %src.sroa.7.0.copyload574, ptr %header.12.header.12.addr293.sroa_idx, align 2
  %header.13.header.13.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 13
  %63 = ptrtoint ptr %header.13.header.13.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %src.sroa.8.0.copyload576, ptr %header.13.header.13.addr293.sroa_idx, align 1
  %header.14.header.14.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 14
  %64 = ptrtoint ptr %header.14.header.14.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %src.sroa.9.0.copyload578, ptr %header.14.header.14.addr293.sroa_idx, align 2
  %header.15.header.15.addr293.sroa_idx = getelementptr inbounds i8, ptr %header, i32 15
  %65 = ptrtoint ptr %header.15.header.15.addr293.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %src.sroa.10.0.copyload580, ptr %header.15.header.15.addr293.sroa_idx, align 1
  %addr396 = getelementptr inbounds %struct.libipw_hdr_3addrqos, ptr %header, i32 0, i32 4
  %bssid98 = getelementptr i8, ptr %dev, i32 5816
  %66 = call ptr @memcpy(ptr %addr396, ptr %bssid98, i32 6)
  br label %if.end101

if.end101:                                        ; preds = %if.then89, %if.then78, %if.end70.if.end101_crit_edge
  %fc.1 = phi i32 [ %or, %if.then78 ], [ %., %if.then89 ], [ %., %if.end70.if.end101_crit_edge ]
  %is_qos_active = getelementptr i8, ptr %dev, i32 5872
  %67 = ptrtoint ptr %is_qos_active to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %is_qos_active, align 4
  %tobool102.not = icmp eq ptr %68, null
  br i1 %tobool102.not, label %if.end101.if.end117_crit_edge, label %land.lhs.true103

if.end101.if.end117_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true103:                                 ; preds = %if.end101
  %call105 = tail call i32 %68(ptr noundef %dev, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true103.if.end117_crit_edge, label %if.then107

land.lhs.true103.if.end117_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then107:                                       ; preds = %land.lhs.true103
  %or108 = or i32 %fc.1, 128
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %72)
  %cmp.not.i = icmp eq i16 %72, 2048
  br i1 %cmp.not.i, label %if.end.i, label %if.then107.libipw_classify.exit_crit_edge

if.then107.libipw_classify.exit_crit_edge:        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %libipw_classify.exit

if.end.i:                                         ; preds = %if.then107
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %73 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %75 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %76 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tos.i, align 1
  %79 = and i8 %78, -4
  %and.i = zext i8 %79 to i32
  %80 = add nsw i32 %and.i, -32
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %82 = icmp ult i32 %81, 7
  br i1 %82, label %switch.lookup, label %if.end.i.libipw_classify.exit_crit_edge

if.end.i.libipw_classify.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %libipw_classify.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.libipw_xmit, i32 0, i32 %81
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %libipw_classify.exit

libipw_classify.exit:                             ; preds = %switch.lookup, %if.end.i.libipw_classify.exit_crit_edge, %if.then107.libipw_classify.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then107.libipw_classify.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.libipw_classify.exit_crit_edge ]
  %84 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %retval.0.i, ptr %priority1, align 4
  %header.24.header.24.qos_ctl.sroa_idx = getelementptr inbounds i8, ptr %header, i32 24
  %85 = ptrtoint ptr %header.24.header.24.qos_ctl.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %85)
  %header.24.header.24. = load i16, ptr %header.24.header.24.qos_ctl.sroa_idx, align 2
  %call109.tr = trunc i32 %retval.0.i to i16
  %86 = shl nuw nsw i16 %call109.tr, 8
  %conv116 = or i16 %86, %header.24.header.24.
  store i16 %conv116, ptr %header.24.header.24.qos_ctl.sroa_idx, align 2
  br label %if.end117

if.end117:                                        ; preds = %libipw_classify.exit, %land.lhs.true103.if.end117_crit_edge, %if.end101.if.end117_crit_edge
  %fc.2 = phi i32 [ %or108, %libipw_classify.exit ], [ %fc.1, %land.lhs.true103.if.end117_crit_edge ], [ %fc.1, %if.end101.if.end117_crit_edge ]
  %hdr_len.0 = phi i32 [ 26, %libipw_classify.exit ], [ 24, %land.lhs.true103.if.end117_crit_edge ], [ 24, %if.end101.if.end117_crit_edge ]
  %conv118 = trunc i32 %fc.2 to i16
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv118)
  %88 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %header, align 2
  %call119 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #7
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 4
  %add122 = add i32 %90, 8
  %brmerge = select i1 %28, i1 true, i1 %31
  %brmerge.not = xor i1 %brmerge, true
  %tobool126.not = icmp eq ptr %20, null
  %or.cond524 = select i1 %brmerge.not, i1 true, i1 %tobool126.not
  br i1 %or.cond524, label %if.end117.if.end180_crit_edge, label %land.lhs.true127

if.end117.if.end180_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

land.lhs.true127:                                 ; preds = %if.end117
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %20, i32 0, i32 1
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %tobool128.not = icmp eq ptr %92, null
  br i1 %tobool128.not, label %land.lhs.true127.if.end180_crit_edge, label %land.lhs.true129

land.lhs.true127.if.end180_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

land.lhs.true129:                                 ; preds = %land.lhs.true127
  %encrypt_msdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %encrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %encrypt_msdu, align 4
  %tobool131.not = icmp eq ptr %94, null
  br i1 %tobool131.not, label %land.lhs.true129.if.end180_crit_edge, label %if.then132

land.lhs.true129.if.end180_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.then132:                                       ; preds = %land.lhs.true129
  %add134 = add i32 %add122, %hdr_len.0
  %extra_msdu_prefix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %92, i32 0, i32 15
  %95 = ptrtoint ptr %extra_msdu_prefix_len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %extra_msdu_prefix_len, align 4
  %add136 = add i32 %add134, %96
  %extra_msdu_postfix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %92, i32 0, i32 16
  %97 = ptrtoint ptr %extra_msdu_postfix_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %extra_msdu_postfix_len, align 4
  %add138 = add i32 %add136, %98
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add138, i32 noundef 2592) #7
  %tobool140.not = icmp eq ptr %call.i.i, null
  br i1 %tobool140.not, label %if.then132.failed_crit_edge, label %if.end150, !prof !40

if.then132.failed_crit_edge:                      ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end150:                                        ; preds = %if.then132
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %extra_msdu_prefix_len152 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %100, i32 0, i32 15
  %101 = ptrtoint ptr %extra_msdu_prefix_len152 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %extra_msdu_prefix_len152, align 4
  %data.i533 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %103 = ptrtoint ptr %data.i533 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i533, align 4
  %add.ptr.i534 = getelementptr i8, ptr %104, i32 %102
  store ptr %add.ptr.i534, ptr %data.i533, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %105 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %106, i32 %102
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %hdr_len.0) #7
  %107 = call ptr @memcpy(ptr %call.i, ptr %header, i32 %hdr_len.0)
  %call154 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #7
  %108 = ptrtoint ptr %call154 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -86, ptr %call154, align 1
  %ssap.i = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call154, i32 0, i32 1
  %109 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call154, i32 0, i32 2
  %110 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %16)
  %switch.selectcmp.case1.i = icmp eq i16 %16, -32525
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %16)
  %switch.selectcmp.case2.i = icmp eq i16 %16, -32457
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %oui5.i = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call154, i32 0, i32 3
  %111 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.libipw_snap_hdr, ptr %call154, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx9.i, align 1
  %113 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  %arrayidx12.i = getelementptr %struct.libipw_snap_hdr, ptr %call154, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx12.i, align 1
  %add.ptr.i535 = getelementptr i8, ptr %call154, i32 6
  %115 = ptrtoint ptr %add.ptr.i535 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %16, ptr %add.ptr.i535, align 1
  %116 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len, align 4
  %call157 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %117) #7
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len, align 4
  %120 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data, align 4
  %122 = call ptr @memcpy(ptr %call157, ptr %121, i32 %119)
  %123 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops, align 4
  %encrypt_msdu160 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %encrypt_msdu160 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %encrypt_msdu160, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %20, i32 0, i32 2
  %127 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv, align 4
  %call161 = tail call i32 %126(ptr noundef nonnull %call.i.i, i32 noundef %hdr_len.0, ptr noundef %128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %do.end167, label %cleanup

do.end167:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  br label %failed

cleanup:                                          ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  %129 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops, align 4
  %extra_msdu_prefix_len172 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %130, i32 0, i32 15
  %131 = ptrtoint ptr %extra_msdu_prefix_len172 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %extra_msdu_prefix_len172, align 4
  %extra_msdu_postfix_len174 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %130, i32 0, i32 16
  %133 = ptrtoint ptr %extra_msdu_postfix_len174 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %extra_msdu_postfix_len174, align 4
  %add175 = add i32 %132, %add122
  %add176 = add i32 %add175, %134
  %call177 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef %hdr_len.0) #7
  br label %if.end180

if.end180:                                        ; preds = %cleanup, %land.lhs.true129.if.end180_crit_edge, %land.lhs.true127.if.end180_crit_edge, %if.end117.if.end180_crit_edge
  %bytes.1 = phi i32 [ %add176, %cleanup ], [ %add122, %land.lhs.true129.if.end180_crit_edge ], [ %add122, %land.lhs.true127.if.end180_crit_edge ], [ %add122, %if.end117.if.end180_crit_edge ]
  %tobool296.not = phi i1 [ false, %cleanup ], [ true, %land.lhs.true129.if.end180_crit_edge ], [ true, %land.lhs.true127.if.end180_crit_edge ], [ true, %if.end117.if.end180_crit_edge ]
  %skb.addr.1 = phi ptr [ %call.i.i, %cleanup ], [ %skb, %land.lhs.true129.if.end180_crit_edge ], [ %skb, %land.lhs.true127.if.end180_crit_edge ], [ %skb, %if.end117.if.end180_crit_edge ]
  br i1 %28, label %if.end180.if.then184_crit_edge, label %lor.lhs.false182

if.end180.if.then184_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then184

lor.lhs.false182:                                 ; preds = %if.end180
  %host_open_frag = getelementptr i8, ptr %dev, i32 5576
  %135 = ptrtoint ptr %host_open_frag to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %host_open_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool183.not = icmp eq i32 %136, 0
  br i1 %tobool183.not, label %if.else213, label %lor.lhs.false182.if.then184_crit_edge

lor.lhs.false182.if.then184_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then184

if.then184:                                       ; preds = %lor.lhs.false182.if.then184_crit_edge, %if.end180.if.then184_crit_edge
  %137 = trunc i32 %dest.sroa.0.sroa.0.sroa.0.0.extract.shift656 to i16
  %138 = and i16 %137, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool.i.not = icmp eq i16 %138, 0
  br i1 %tobool.i.not, label %lor.lhs.false188, label %if.then184.if.end195_crit_edge

if.then184.if.end195_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

lor.lhs.false188:                                 ; preds = %if.then184
  %dest.sroa.0.sroa.0.sroa.0.0.insert.shift622 = shl nuw i16 %137, 8
  %139 = trunc i32 %dest.sroa.0.sroa.0.0.extract.shift to i16
  %dest.sroa.0.sroa.0.sroa.8.0.insert.ext633 = and i16 %139, 255
  %dest.sroa.0.sroa.0.sroa.0.0.insert.insert624 = or i16 %dest.sroa.0.sroa.0.sroa.8.0.insert.ext633, %dest.sroa.0.sroa.0.sroa.0.0.insert.shift622
  %140 = trunc i32 %dest.sroa.0.0.copyload583 to i16
  %and9.i = and i16 %dest.sroa.12.0.copyload585, %140
  %and510.i = and i16 %and9.i, %dest.sroa.0.sroa.0.sroa.0.0.insert.insert624
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %lor.lhs.false188.if.end195_crit_edge, label %if.else193

lor.lhs.false188.if.end195_crit_edge:             ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.else193:                                       ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #9
  %fts = getelementptr i8, ptr %dev, i32 5812
  %141 = ptrtoint ptr %fts to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %fts, align 4
  %conv194 = zext i16 %142 to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else193, %lor.lhs.false188.if.end195_crit_edge, %if.then184.if.end195_crit_edge
  %frag_size.0 = phi i32 [ %conv194, %if.else193 ], [ 2346, %lor.lhs.false188.if.end195_crit_edge ], [ 2346, %if.then184.if.end195_crit_edge ]
  %sub = sub nsw i32 %frag_size.0, %hdr_len.0
  %config = getelementptr i8, ptr %dev, i32 5548
  %143 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %config, align 4
  %and196 = and i32 %144, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  %sub199 = add nsw i32 %sub, -4
  %spec.select525 = select i1 %tobool197.not, i32 %sub, i32 %sub199
  br i1 %28, label %if.then202, label %if.end195.if.end207_crit_edge

if.end195.if.end207_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then202:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %ops203 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %20, i32 0, i32 1
  %145 = ptrtoint ptr %ops203 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops203, align 4
  %extra_mpdu_prefix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %146, i32 0, i32 13
  %147 = ptrtoint ptr %extra_mpdu_prefix_len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %extra_mpdu_prefix_len, align 4
  %extra_mpdu_postfix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %146, i32 0, i32 14
  %149 = ptrtoint ptr %extra_mpdu_postfix_len to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %extra_mpdu_postfix_len, align 4
  %151 = add i32 %148, %150
  %sub206 = sub i32 %spec.select525, %151
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %if.end195.if.end207_crit_edge
  %bytes_per_frag.1 = phi i32 [ %sub206, %if.then202 ], [ %spec.select525, %if.end195.if.end207_crit_edge ]
  %bytes.1.frozen = freeze i32 %bytes.1
  %bytes_per_frag.1.frozen = freeze i32 %bytes_per_frag.1
  %div = sdiv i32 %bytes.1.frozen, %bytes_per_frag.1.frozen
  %152 = mul i32 %div, %bytes_per_frag.1.frozen
  %rem.decomposed = sub i32 %bytes.1.frozen, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool208.not = icmp eq i32 %rem.decomposed, 0
  %not.tobool208.not = xor i1 %tobool208.not, true
  %inc210 = zext i1 %not.tobool208.not to i32
  %spec.select528 = add i32 %div, %inc210
  %spec.select529 = select i1 %tobool208.not, i32 %bytes_per_frag.1, i32 %rem.decomposed
  br label %if.end215

if.else213:                                       ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #9
  %add214 = add i32 %bytes.1, %hdr_len.0
  br label %if.end215

if.end215:                                        ; preds = %if.else213, %if.end207
  %nr_frags.0 = phi i32 [ 1, %if.else213 ], [ %spec.select528, %if.end207 ]
  %bytes_last_frag.0 = phi i32 [ %bytes.1, %if.else213 ], [ %spec.select529, %if.end207 ]
  %frag_size.1 = phi i32 [ %add214, %if.else213 ], [ %frag_size.0, %if.end207 ]
  %bytes_per_frag.2 = phi i32 [ %bytes.1, %if.else213 ], [ %bytes_per_frag.1, %if.end207 ]
  %rts = getelementptr i8, ptr %dev, i32 5814
  %153 = ptrtoint ptr %rts to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %rts, align 2
  %conv216 = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_size.1, i32 %conv216)
  %cmp217 = icmp sgt i32 %frag_size.1, %conv216
  br i1 %cmp217, label %land.end223, label %if.end215.land.end223.thread_crit_edge

if.end215.land.end223.thread_crit_edge:           ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end223.thread

land.end223:                                      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %config220 = getelementptr i8, ptr %dev, i32 5548
  %155 = ptrtoint ptr %config220 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %config220, align 4
  %and221 = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222 = icmp ne i32 %and221, 0
  %and221.lobit = lshr exact i32 %and221, 2
  %spec.select655 = add i32 %and221.lobit, %nr_frags.0
  br label %land.end223.thread

land.end223.thread:                               ; preds = %land.end223, %if.end215.land.end223.thread_crit_edge
  %157 = phi i1 [ false, %if.end215.land.end223.thread_crit_edge ], [ %tobool222, %land.end223 ]
  %158 = phi i32 [ %nr_frags.0, %if.end215.land.end223.thread_crit_edge ], [ %spec.select655, %land.end223 ]
  %tx_headroom = getelementptr i8, ptr %dev, i32 5544
  %159 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_headroom, align 4
  %161 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %158, i32 4) #7
  %162 = extractvalue { i32, i1 } %161, 1
  %163 = extractvalue { i32, i1 } %161, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %163, i32 8) #7
  %retval.0.i.i = select i1 %162, i32 -1, i32 %spec.select.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %land.end223.thread.do.end242_crit_edge, label %if.end.i538

land.end223.thread.do.end242_crit_edge:           ; preds = %land.end223.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end242

if.end.i538:                                      ; preds = %land.end223.thread
  %164 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 0, ptr %call9.i.i, align 128
  %conv.i = trunc i32 %158 to i8
  store i8 %conv.i, ptr %call9.i.i, align 128
  %conv3.i = trunc i32 %frag_size.1 to i16
  %frag_size.i = getelementptr inbounds %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 4
  %165 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv3.i, ptr %frag_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp2.i = icmp sgt i32 %158, 0
  br i1 %cmp2.i, label %for.body.lr.ph.i, label %for.end.thread9.i

for.body.lr.ph.i:                                 ; preds = %if.end.i538
  %add.i = add i32 %160, %frag_size.1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end13.i.for.body.i_crit_edge ]
  %call.i.i539 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #7
  %arrayidx.i = getelementptr %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 6, i32 %i.03.i
  %166 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i.i539, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i.i539, null
  br i1 %tobool8.not.i, label %for.end.i, label %if.end13.i, !prof !40

if.end13.i:                                       ; preds = %for.body.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i539, i32 0, i32 19
  %167 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %168, i32 %160
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i539, i32 0, i32 16
  %169 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %170, i32 %160
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %158
  br i1 %exitcond.not.i, label %if.end13.i.if.end248_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end13.i.if.end248_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

for.end.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.03.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %158)
  %cmp16.not.i = icmp eq i32 %dec.i, %158
  br i1 %cmp16.not.i, label %for.end.i.if.end248_crit_edge, label %while.cond.preheader.i, !prof !41

for.end.i.if.end248_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

for.end.thread9.i:                                ; preds = %if.end.i538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp16.not11.i = icmp eq i32 %158, 0
  br i1 %cmp16.not11.i, label %for.end.thread9.i.if.end248_crit_edge, label %for.end.thread9.i.while.body.i.preheader_crit_edge, !prof !41

for.end.thread9.i.while.body.i.preheader_crit_edge: ; preds = %for.end.thread9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

for.end.thread9.i.if.end248_crit_edge:            ; preds = %for.end.thread9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

while.cond.preheader.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i)
  %cmp254.not.i = icmp eq i32 %i.03.i, 0
  br i1 %cmp254.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i.preheader_crit_edge

while.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.preheader:                           ; preds = %while.cond.preheader.i.while.body.i.preheader_crit_edge, %for.end.thread9.i.while.body.i.preheader_crit_edge
  %i.25.i.ph = phi i32 [ 0, %for.end.thread9.i.while.body.i.preheader_crit_edge ], [ %dec.i, %while.cond.preheader.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %i.25.i = phi i32 [ %dec28.i, %while.body.i.while.body.i_crit_edge ], [ %i.25.i.ph, %while.body.i.preheader ]
  %dec28.i = add nsw i32 %i.25.i, -1
  %arrayidx29.i = getelementptr %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 6, i32 %i.25.i
  %171 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx29.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %172, i32 noundef 1) #7
  %cmp25.not.i = icmp eq i32 %i.25.i, 0
  br i1 %cmp25.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %do.end242

do.end242:                                        ; preds = %while.end.i, %land.end223.thread.do.end242_crit_edge
  %173 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr.i, align 4
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %174) #10
  br label %failed

if.end248:                                        ; preds = %for.end.thread9.i.if.end248_crit_edge, %for.end.i.if.end248_crit_edge, %if.end13.i.if.end248_crit_edge
  %conv249 = zext i1 %25 to i8
  %encrypted = getelementptr inbounds %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv249, ptr %encrypted, align 1
  %sub252 = add i32 %158, 65535
  %mul = mul i32 %sub252, %frag_size.1
  %add253 = add i32 %mul, %bytes_last_frag.0
  %conv256.sink.in = select i1 %28, i32 %add253, i32 %bytes.1
  %conv256.sink = trunc i32 %conv256.sink.in to i16
  %176 = getelementptr inbounds %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 5
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv256.sink, ptr %176, align 2
  br i1 %157, label %if.then260, label %if.end248.if.end273_crit_edge

if.end248.if.end273_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

if.then260:                                       ; preds = %if.end248
  %fragments = getelementptr inbounds %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 6
  %178 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fragments, align 8
  %call262 = tail call ptr @skb_put(ptr noundef %179, i32 noundef %hdr_len.0) #7
  %180 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -19456, ptr %header, align 2
  %181 = call ptr @memcpy(ptr %call262, ptr %header, i32 %hdr_len.0)
  store i16 %87, ptr %header, align 2
  %config266 = getelementptr i8, ptr %dev, i32 5548
  %182 = ptrtoint ptr %config266 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %config266, align 4
  %and267 = and i32 %183, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %if.then260.if.end271_crit_edge, label %if.then269

if.then260.if.end271_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

if.then269:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #9
  %call270 = tail call ptr @skb_put(ptr noundef %179, i32 noundef 4) #7
  br label %if.end271

if.end271:                                        ; preds = %if.then269, %if.then260.if.end271_crit_edge
  %rts_included = getelementptr inbounds %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 2
  %184 = ptrtoint ptr %rts_included to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %rts_included, align 2
  br label %if.end273

if.end273:                                        ; preds = %if.end271, %if.end248.if.end273_crit_edge
  %i.0 = phi i32 [ 1, %if.end271 ], [ 0, %if.end248.if.end273_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %158)
  %cmp274660 = icmp slt i32 %i.0, %158
  br i1 %cmp274660, label %for.body.lr.ph, label %if.end273.success_crit_edge

if.end273.success_crit_edge:                      ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

for.body.lr.ph:                                   ; preds = %if.end273
  %ops280 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %20, i32 0, i32 1
  %sub284 = add nsw i32 %158, -1
  %conv289 = or i16 %conv118, 1024
  %185 = tail call i16 @llvm.bswap.i16(i16 %conv289)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %16)
  %switch.selectcmp.case1.i548 = icmp eq i16 %16, -32525
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %16)
  %switch.selectcmp.case2.i549 = icmp eq i16 %16, -32457
  %switch.selectcmp.i550 = or i1 %switch.selectcmp.case1.i548, %switch.selectcmp.case2.i549
  %186 = select i1 %switch.selectcmp.i550, i8 -8, i8 0
  %data.i555 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %tx_discards.i = getelementptr i8, ptr %dev, i32 3452
  %config308 = getelementptr i8, ptr %dev, i32 5548
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.1661 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc314, %for.inc.for.body_crit_edge ]
  %arrayidx277 = getelementptr %struct.libipw_txb, ptr %call9.i.i, i32 0, i32 6, i32 %i.1661
  %187 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx277, align 4
  br i1 %28, label %if.then279, label %for.body.if.end282_crit_edge

for.body.if.end282_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282

if.then279:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %ops280 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ops280, align 4
  %extra_mpdu_prefix_len281 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %190, i32 0, i32 13
  %191 = ptrtoint ptr %extra_mpdu_prefix_len281 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %extra_mpdu_prefix_len281, align 4
  %data.i541 = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 19
  %193 = ptrtoint ptr %data.i541 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data.i541, align 4
  %add.ptr.i542 = getelementptr i8, ptr %194, i32 %192
  store ptr %add.ptr.i542, ptr %data.i541, align 4
  %tail.i543 = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 16
  %195 = ptrtoint ptr %tail.i543 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tail.i543, align 8
  %add.ptr1.i544 = getelementptr i8, ptr %196, i32 %192
  store ptr %add.ptr1.i544, ptr %tail.i543, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %for.body.if.end282_crit_edge
  %call.i545 = tail call ptr @skb_put(ptr noundef %188, i32 noundef %hdr_len.0) #7
  %197 = call ptr @memcpy(ptr %call.i545, ptr %header, i32 %hdr_len.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1661, i32 %sub284)
  %cmp285.not = icmp eq i32 %i.1661, %sub284
  br i1 %cmp285.not, label %if.end282.if.end292_crit_edge, label %if.then287

if.end282.if.end292_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end292

if.then287:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  %198 = ptrtoint ptr %call.i545 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 %185, ptr %call.i545, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.then287, %if.end282.if.end292_crit_edge
  %bytes.2 = phi i32 [ %bytes_per_frag.2, %if.then287 ], [ %bytes_last_frag.0, %if.end282.if.end292_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1661)
  %cmp293 = icmp eq i32 %i.1661, 0
  %or.cond527 = and i1 %tobool296.not, %cmp293
  br i1 %or.cond527, label %if.then297, label %if.end292.if.end301_crit_edge

if.end292.if.end301_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end301

if.then297:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  %call298 = tail call ptr @skb_put(ptr noundef %188, i32 noundef 8) #7
  %199 = ptrtoint ptr %call298 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -86, ptr %call298, align 1
  %ssap.i546 = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call298, i32 0, i32 1
  %200 = ptrtoint ptr %ssap.i546 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -86, ptr %ssap.i546, align 1
  %ctrl.i547 = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call298, i32 0, i32 2
  %201 = ptrtoint ptr %ctrl.i547 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 3, ptr %ctrl.i547, align 1
  %oui5.i551 = getelementptr inbounds %struct.libipw_snap_hdr, ptr %call298, i32 0, i32 3
  %202 = ptrtoint ptr %oui5.i551 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %oui5.i551, align 1
  %arrayidx9.i552 = getelementptr %struct.libipw_snap_hdr, ptr %call298, i32 0, i32 3, i32 1
  %203 = ptrtoint ptr %arrayidx9.i552 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %arrayidx9.i552, align 1
  %arrayidx12.i553 = getelementptr %struct.libipw_snap_hdr, ptr %call298, i32 0, i32 3, i32 2
  %204 = ptrtoint ptr %arrayidx12.i553 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %186, ptr %arrayidx12.i553, align 1
  %add.ptr.i554 = getelementptr i8, ptr %call298, i32 6
  %205 = ptrtoint ptr %add.ptr.i554 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 2)
  store i16 %16, ptr %add.ptr.i554, align 1
  %sub300 = add i32 %bytes.2, -8
  br label %if.end301

if.end301:                                        ; preds = %if.then297, %if.end292.if.end301_crit_edge
  %bytes.3 = phi i32 [ %sub300, %if.then297 ], [ %bytes.2, %if.end292.if.end301_crit_edge ]
  %call302 = tail call ptr @skb_put(ptr noundef %188, i32 noundef %bytes.3) #7
  %206 = ptrtoint ptr %data.i555 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data.i555, align 4
  %208 = call ptr @memcpy(ptr %call302, ptr %207, i32 %bytes.3)
  %call303 = tail call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef %bytes.3) #7
  br i1 %28, label %if.then305, label %if.end301.if.end307_crit_edge

if.end301.if.end307_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end307

if.then305:                                       ; preds = %if.end301
  %209 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_keyidx, align 4
  %arrayidx.i556 = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 30, i32 2, i32 %210
  %211 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i556, align 4
  %cmp.i557 = icmp eq ptr %212, null
  br i1 %cmp.i557, label %if.then305.if.end307_crit_edge, label %if.end.i559

if.then305.if.end307_crit_edge:                   ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end307

if.end.i559:                                      ; preds = %if.then305
  %refcnt.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %212, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %213 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !42
  %ops.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %212, i32 0, i32 1
  %214 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i, align 4
  %tobool.not.i558 = icmp eq ptr %215, null
  br i1 %tobool.not.i558, label %if.end13.critedge1.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i559
  %encrypt_mpdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %encrypt_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %encrypt_mpdu.i, align 4
  %tobool4.not.i = icmp eq ptr %217, null
  br i1 %tobool4.not.i, label %if.end13.critedge.i, label %if.then5.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %priv.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %212, i32 0, i32 2
  %218 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %priv.i, align 4
  %call.i560 = tail call i32 %217(ptr noundef %188, i32 noundef %hdr_len.0, ptr noundef %219) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i560)
  %phi.cmp.i = icmp slt i32 %call.i560, 0
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %220 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !43
  br i1 %phi.cmp.i, label %do.end.i, label %if.then5.i.if.end307_crit_edge

if.then5.i.if.end307_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end307

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %add.ptr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 6
  %223 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %222, i32 noundef %224) #10
  %225 = ptrtoint ptr %tx_discards.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %tx_discards.i, align 4
  %inc.i561 = add i32 %226, 1
  store i32 %inc.i561, ptr %tx_discards.i, align 4
  br label %if.end307

if.end13.critedge.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %227 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !43
  br label %if.end307

if.end13.critedge1.i:                             ; preds = %if.end.i559
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %228 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !43
  br label %if.end307

if.end307:                                        ; preds = %if.end13.critedge1.i, %if.end13.critedge.i, %do.end.i, %if.then5.i.if.end307_crit_edge, %if.then305.if.end307_crit_edge, %if.end301.if.end307_crit_edge
  %229 = ptrtoint ptr %config308 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %config308, align 4
  %and309 = and i32 %230, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %if.end307.for.inc_crit_edge, label %if.then311

if.end307.for.inc_crit_edge:                      ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then311:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #9
  %call312 = tail call ptr @skb_put(ptr noundef %188, i32 noundef 4) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then311, %if.end307.for.inc_crit_edge
  %inc314 = add nuw nsw i32 %i.1661, 1
  %exitcond.not = icmp eq i32 %inc314, %158
  br i1 %exitcond.not, label %for.inc.success_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.success_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

success:                                          ; preds = %for.inc.success_crit_edge, %if.end273.success_crit_edge, %if.then69, %do.end26, %do.end14
  %txb.0 = phi ptr [ null, %do.end26 ], [ null, %if.then69 ], [ null, %do.end14 ], [ %call9.i.i, %if.end273.success_crit_edge ], [ %call9.i.i, %for.inc.success_crit_edge ]
  %skb.addr.2 = phi ptr [ %skb, %do.end26 ], [ %skb, %if.then69 ], [ %skb, %do.end14 ], [ %skb.addr.1, %if.end273.success_crit_edge ], [ %skb.addr.1, %for.inc.success_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.2, i32 noundef 1) #7
  %tobool316.not = icmp eq ptr %txb.0, null
  br i1 %tobool316.not, label %success.cleanup337_crit_edge, label %if.then317

success.cleanup337_crit_edge:                     ; preds = %success
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup337

if.then317:                                       ; preds = %success
  %231 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hard_start_xmit, align 4
  %call319 = tail call i32 %232(ptr noundef nonnull %txb.0, ptr noundef %dev, i32 noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %cmp320 = icmp eq i32 %call319, 0
  br i1 %cmp320, label %if.then322, label %for.cond.preheader.i

if.then322:                                       ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %233 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %tx_packets, align 4
  %inc324 = add i32 %234, 1
  store i32 %inc324, ptr %tx_packets, align 4
  %payload_size325 = getelementptr inbounds %struct.libipw_txb, ptr %txb.0, i32 0, i32 5
  %235 = ptrtoint ptr %payload_size325 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %payload_size325, align 2
  %conv326 = zext i16 %236 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %237 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tx_bytes, align 4
  %add328 = add i32 %238, %conv326
  store i32 %add328, ptr %tx_bytes, align 4
  br label %cleanup337

for.cond.preheader.i:                             ; preds = %if.then317
  %239 = ptrtoint ptr %txb.0 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %txb.0, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %cmp18.not.i = icmp eq i8 %240, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.libipw_txb_free.exit_crit_edge, label %for.cond.preheader.i.for.body.i564_crit_edge

for.cond.preheader.i.for.body.i564_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i564

for.cond.preheader.i.libipw_txb_free.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %libipw_txb_free.exit

for.body.i564:                                    ; preds = %for.inc.i.for.body.i564_crit_edge, %for.cond.preheader.i.for.body.i564_crit_edge
  %i.019.i = phi i32 [ %inc.i565, %for.inc.i.for.body.i564_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i564_crit_edge ]
  %arrayidx.i563 = getelementptr %struct.libipw_txb, ptr %txb.0, i32 0, i32 6, i32 %i.019.i
  %241 = ptrtoint ptr %arrayidx.i563 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i563, align 4
  %tobool5.not.i = icmp eq ptr %242, null
  br i1 %tobool5.not.i, label %for.body.i564.for.inc.i_crit_edge, label %if.then6.i

for.body.i564.for.inc.i_crit_edge:                ; preds = %for.body.i564
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i564
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %242, i32 noundef 1) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i564.for.inc.i_crit_edge
  %inc.i565 = add nuw nsw i32 %i.019.i, 1
  %243 = ptrtoint ptr %txb.0 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %txb.0, align 128
  %conv.i566 = zext i8 %244 to i32
  %cmp.i567 = icmp ult i32 %inc.i565, %conv.i566
  br i1 %cmp.i567, label %for.inc.i.for.body.i564_crit_edge, label %for.inc.i.libipw_txb_free.exit_crit_edge

for.inc.i.libipw_txb_free.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %libipw_txb_free.exit

for.inc.i.for.body.i564_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i564

libipw_txb_free.exit:                             ; preds = %for.inc.i.libipw_txb_free.exit_crit_edge, %for.cond.preheader.i.libipw_txb_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %txb.0) #7
  br label %cleanup337

failed:                                           ; preds = %do.end242, %do.end167, %if.then132.failed_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %245 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %246, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %247 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %tx_errors, align 4
  %inc336 = add i32 %248, 1
  store i32 %inc336, ptr %tx_errors, align 4
  br label %cleanup337

cleanup337:                                       ; preds = %failed, %libipw_txb_free.exit, %if.then322, %success.cleanup337_crit_edge, %land.lhs.true.cleanup337_crit_edge
  %retval.1 = phi i32 [ 16, %failed ], [ 16, %land.lhs.true.cleanup337_crit_edge ], [ 0, %if.then322 ], [ 0, %libipw_txb_free.exit ], [ 0, %success.cleanup337_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %header)
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 271, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @libipw_xmit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @libipw_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 276, i32 3}
!8 = !{ptr @libipw_xmit._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @libipw_xmit._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 355, i32 4}
!12 = !{ptr @libipw_xmit._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @libipw_xmit._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 415, i32 3}
!16 = !{ptr @libipw_xmit._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @libipw_xmit._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_libipw_xmit, !19, !"__ksymtab_libipw_xmit", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 517, i32 1}
!20 = !{ptr @__ksymtab_libipw_txb_free, !21, !"__ksymtab_libipw_txb_free", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 519, i32 1}
!22 = distinct !{null, !23, !"P802_1H_OUI", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 112, i32 11}
!24 = distinct !{null, !25, !"RFC1042_OUI", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 113, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_tx.c", i32 157, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @libipw_encrypt_fragment._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @libipw_encrypt_fragment._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148364587, i64 2148364613, i64 2148364642, i64 2148364676, i64 2148364707, i64 2148364730}
!43 = !{i64 2148367052, i64 2148367078, i64 2148367107, i64 2148367141, i64 2148367172, i64 2148367195}
