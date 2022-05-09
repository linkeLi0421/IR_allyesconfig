; ModuleID = '/llk/IR_all_yes/net/wireless/sme.c_pt.bc'
source_filename = "../net/wireless/sme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfg80211_connect_done\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_connect_done\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_connect_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_connect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_connect_done\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_connect_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfg80211_roamed\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_roamed\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_roamed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_roamed:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_roamed\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_roamed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfg80211_port_authorized\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_port_authorized\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_port_authorized\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_port_authorized:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_port_authorized\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_port_authorized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfg80211_disconnected\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_disconnected\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_disconnected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_disconnected:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_disconnected\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_disconnected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cfg80211_conn = type { %struct.cfg80211_connect_params, i32, [6 x i8], [6 x i8], ptr, i32, i8, i8 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.124 }
%union.anon.124 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_assoc_request = type { ptr, ptr, ptr, i32, %struct.cfg80211_crypto_settings, i8, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, ptr, i32, ptr, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.138, [16 x i8] }
%struct.anon.138 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.165 }
%union.anon.165 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.anon.166 = type { ptr, i32, i16, i8 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/wireless/sme.c\00", [45 x i8] zeroinitializer }, align 32
@cfg80211_disconnect_work = dso_local global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @cfg80211_disconnect_work, i64 4), ptr getelementptr (i8, ptr @cfg80211_disconnect_work, i64 4) }, ptr @disconnect_work, %struct.lockdep_map { ptr @cfg80211_disconnect_work, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cfg80211_disconnect_work\00", [39 x i8] zeroinitializer }, align 32
@__cfg80211_connect_result.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cfg80211_connect_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_connect_done = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_connect_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_connect_done to i32), ptr @__kstrtab_cfg80211_connect_done, ptr @__kstrtabns_cfg80211_connect_done }, section "___ksymtab+cfg80211_connect_done", align 4
@__kstrtab_cfg80211_roamed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_roamed = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_roamed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_roamed to i32), ptr @__kstrtab_cfg80211_roamed, ptr @__kstrtabns_cfg80211_roamed }, section "___ksymtab+cfg80211_roamed", align 4
@__kstrtab_cfg80211_port_authorized = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_port_authorized = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_port_authorized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_port_authorized to i32), ptr @__kstrtab_cfg80211_port_authorized, ptr @__kstrtabns_cfg80211_port_authorized }, section "___ksymtab+cfg80211_port_authorized", align 4
@__kstrtab_cfg80211_disconnected = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_disconnected = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_disconnected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_disconnected to i32), ptr @__kstrtab_cfg80211_disconnected, ptr @__kstrtabns_cfg80211_disconnected }, section "___ksymtab+cfg80211_disconnected", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_rdev_scan = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/wireless/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_rdev_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@trace_rdev_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cfg80211_rdev_list = external dso_local global %struct.list_head, align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/wireless/core.h\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_rdev_crit_proto_stop = external dso_local global %struct.tracepoint, align 4
@trace_rdev_crit_proto_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@trace_rdev_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_del_key = external dso_local global %struct.tracepoint, align 4
@trace_rdev_del_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4
@trace_rdev_set_qos_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cfg80211_sme_get_conn_ies.before_extcapa = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.F6;H", [26 x i8] zeroinitializer }, align 32
@__tracepoint_rdev_connect = external dso_local global %struct.tracepoint, align 4
@trace_rdev_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_disconnect = external dso_local global %struct.tracepoint, align 4
@trace_rdev_disconnect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3328]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 9]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 335, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"cfg80211_disconnect_work\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 669, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"../net/wireless/trace.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 295, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 108, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"../net/wireless/core.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 200, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"before_extcapa\00", align 1
@___asan_gen_.48 = private constant [22 x i8] c"../net/wireless/sme.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 480, i32 19 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_cfg80211_connect_done, ptr @__ksymtab_cfg80211_disconnected, ptr @__ksymtab_cfg80211_port_authorized, ptr @__ksymtab_cfg80211_roamed, ptr @.str, ptr @cfg80211_disconnect_work, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cfg80211_sme_get_conn_ies.before_extcapa], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg80211_disconnect_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg80211_sme_get_conn_ies.before_extcapa to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_conn_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %bssid_buf = alloca [6 x i8], align 1
  %treason = alloca i32, align 4
  %cr = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid_buf) #10
  %0 = call ptr @memset(ptr %bssid_buf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %treason) #10
  %wiphy = getelementptr i8, ptr %work, i32 760
  tail call void @mutex_lock_nested(ptr noundef %wiphy, i32 noundef 0) #10
  %wdev_list = getelementptr i8, ptr %work, i32 2040
  %1 = ptrtoint ptr %wdev_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn56 = load ptr, ptr %wdev_list, align 4
  %cmp.not58 = icmp eq ptr %.pn56, %wdev_list
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bssid27 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 1
  %timeout_reason = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 8
  %2 = getelementptr inbounds i8, ptr %cr, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn61 = phi ptr [ %.pn56, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %bssid.059 = phi ptr [ null, %for.body.lr.ph ], [ %bssid.2, %for.inc.for.body_crit_edge ]
  %wdev.062 = getelementptr i8, ptr %.pn61, i32 -8
  %netdev = getelementptr i8, ptr %.pn61, i32 8
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mtx.i = getelementptr i8, ptr %.pn61, i32 28
  call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #10
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.for.inc.sink.split_crit_edge, label %if.end9

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.end9:                                          ; preds = %if.end
  %conn = getelementptr i8, ptr %.pn61, i32 168
  %9 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end9.for.inc.sink.split_crit_edge, label %lor.lhs.false

if.end9.for.inc.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

lor.lhs.false:                                    ; preds = %if.end9
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp12 = icmp eq i32 %12, 11
  br i1 %cmp12, label %lor.lhs.false.for.inc.sink.split_crit_edge, label %if.end14

lor.lhs.false.for.inc.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.end14:                                         ; preds = %lor.lhs.false
  %bssid16 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %bssid16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bssid16, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end14.if.end23_crit_edge, label %if.then18

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call ptr @memcpy(ptr %bssid_buf, ptr %14, i32 6)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end14.if.end23_crit_edge
  %bssid.1 = phi ptr [ %bssid_buf, %if.then18 ], [ %bssid.059, %if.end14.if.end23_crit_edge ]
  %16 = ptrtoint ptr %treason to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %treason, align 4
  %call24 = call fastcc i32 @cfg80211_conn_do_work(ptr noundef %wdev.062, ptr noundef nonnull %treason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.for.inc.sink.split_crit_edge, label %if.then26

if.end23.for.inc.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cr) #10
  %17 = call ptr @memset(ptr %2, i32 0, i32 44)
  %18 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %cr, align 4
  %19 = ptrtoint ptr %bssid27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bssid.1, ptr %bssid27, align 4
  %20 = ptrtoint ptr %treason to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %treason, align 4
  %22 = ptrtoint ptr %timeout_reason to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %timeout_reason, align 4
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 4
  call void @__cfg80211_connect_result(ptr noundef %24, ptr noundef nonnull %cr, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cr) #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then26, %if.end23.for.inc.sink.split_crit_edge, %lor.lhs.false.for.inc.sink.split_crit_edge, %if.end9.for.inc.sink.split_crit_edge, %if.end.for.inc.sink.split_crit_edge
  %bssid.2.ph = phi ptr [ %bssid.059, %if.end.for.inc.sink.split_crit_edge ], [ %bssid.059, %lor.lhs.false.for.inc.sink.split_crit_edge ], [ %bssid.059, %if.end9.for.inc.sink.split_crit_edge ], [ %bssid.1, %if.then26 ], [ %bssid.1, %if.end23.for.inc.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mtx.i) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %bssid.2 = phi ptr [ %bssid.059, %for.body.for.inc_crit_edge ], [ %bssid.2.ph, %for.inc.sink.split ]
  %25 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp.not = icmp eq ptr %.pn, %wdev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %wiphy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %treason) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid_buf) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_conn_do_work(ptr noundef %wdev, ptr nocapture noundef writeonly %treason) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.cfg80211_assoc_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1120
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %req) #10
  %2 = call ptr @memset(ptr %req, i32 0, i32 220)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 0, label %if.end27.cleanup_crit_edge
    i32 1, label %sw.bb31
    i32 2, label %sw.bb33
    i32 4, label %sw.bb74
    i32 5, label %sw.bb75
    i32 8, label %sw.bb143
    i32 7, label %if.end27.sw.bb144_crit_edge
    i32 9, label %sw.bb152
    i32 10, label %if.end27.if.end.i_crit_edge
  ]

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end27.sw.bb144_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb144

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call fastcc i32 @cfg80211_conn_scan(ptr noundef %wdev)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end27
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 32
  %auth = getelementptr inbounds %struct.cfg80211_ops, ptr %10, i32 0, i32 39
  %11 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %auth, align 4
  %tobool35.not = icmp eq ptr %12, null
  br i1 %tobool35.not, label %do.end53, label %if.end69, !prof !67

do.end53:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end69:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %state, align 4
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %auth_type, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bssid, align 4
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssid_len, align 4
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 12
  %26 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %key, align 4
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_len, align 4
  %conv = zext i8 %29 to i32
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 14
  %30 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_idx, align 1
  %conv72 = zext i8 %31 to i32
  %call73 = tail call i32 @cfg80211_mlme_auth(ptr noundef %add.ptr.i, ptr noundef %15, ptr noundef %17, i32 noundef %19, ptr noundef %21, ptr noundef %23, i32 noundef %25, ptr noundef null, i32 noundef 0, ptr noundef %27, i32 noundef %conv, i32 noundef %conv72, ptr noundef null, i32 noundef 0) #10
  br label %cleanup

sw.bb74:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %treason to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %treason, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %if.end27
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 32
  %assoc = getelementptr inbounds %struct.cfg80211_ops, ptr %34, i32 0, i32 40
  %35 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %assoc, align 4
  %tobool78.not = icmp eq ptr %36, null
  br i1 %tobool78.not, label %do.end96, label %if.end112, !prof !67

do.end96:                                         ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end112:                                        ; preds = %sw.bb75
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %state, align 4
  %38 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %conn, align 4
  %prev_bssid_valid = getelementptr inbounds %struct.cfg80211_conn, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %prev_bssid_valid, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool116.not = icmp eq i8 %41, 0
  br i1 %tobool116.not, label %if.end112.if.end120_crit_edge, label %if.then117

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %prev_bssid = getelementptr inbounds %struct.cfg80211_conn, ptr %39, i32 0, i32 3
  %prev_bssid119 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 2
  %42 = ptrtoint ptr %prev_bssid119 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %prev_bssid, ptr %prev_bssid119, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end112.if.end120_crit_edge
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 7
  %43 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ie, align 4
  %ie121 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %ie121 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %ie121, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ie_len, align 4
  %ie_len122 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 3
  %48 = ptrtoint ptr %ie_len122 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ie_len122, align 4
  %mfp = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 10
  %49 = ptrtoint ptr %mfp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mfp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp123 = icmp ne i32 %50, 0
  %use_mfp = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 5
  %frombool = zext i1 %cmp123 to i8
  %51 = ptrtoint ptr %use_mfp to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool, ptr %use_mfp, align 4
  %crypto = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 4
  %crypto125 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 11
  %52 = call ptr @memcpy(ptr %crypto, ptr %crypto125, i32 76)
  %flags = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 15
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %flags126 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 6
  %55 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %flags126, align 4
  %ht_capa = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 7
  %ht_capa127 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 17
  %56 = call ptr @memcpy(ptr %ht_capa, ptr %ht_capa127, i32 26)
  %ht_capa_mask = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 8
  %ht_capa_mask128 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 18
  %57 = call ptr @memcpy(ptr %ht_capa_mask, ptr %ht_capa_mask128, i32 26)
  %vht_capa = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 9
  %vht_capa129 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 19
  %58 = call ptr @memcpy(ptr %vht_capa, ptr %vht_capa129, i32 12)
  %vht_capa_mask = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %req, i32 0, i32 10
  %vht_capa_mask130 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 20
  %59 = call ptr @memcpy(ptr %vht_capa_mask, ptr %vht_capa_mask130, i32 12)
  %netdev131 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %60 = ptrtoint ptr %netdev131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev131, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 4
  %bssid133 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 2
  %64 = ptrtoint ptr %bssid133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bssid133, align 4
  %ssid134 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 4
  %66 = ptrtoint ptr %ssid134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ssid134, align 4
  %ssid_len135 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 5
  %68 = ptrtoint ptr %ssid_len135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ssid_len135, align 4
  %call136 = call i32 @cfg80211_mlme_assoc(ptr noundef %add.ptr.i, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, i32 noundef %69, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end120.cleanup_crit_edge, label %if.then138

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then138:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %netdev131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev131, align 4
  %72 = ptrtoint ptr %bssid133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bssid133, align 4
  %call141 = call i32 @cfg80211_mlme_deauth(ptr noundef %add.ptr.i, ptr noundef %71, ptr noundef %73, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb143:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %treason to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %treason, align 4
  br label %sw.bb144

sw.bb144:                                         ; preds = %sw.bb143, %if.end27.sw.bb144_crit_edge
  %netdev145 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %75 = ptrtoint ptr %netdev145 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev145, align 4
  %bssid146 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %bssid146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bssid146, align 4
  %call147 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %add.ptr.i, ptr noundef %76, ptr noundef %78, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb152:                                         ; preds = %if.end27
  %netdev149 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %79 = ptrtoint ptr %netdev149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev149, align 4
  %bssid150 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %5, i32 0, i32 2
  %81 = ptrtoint ptr %bssid150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bssid150, align 4
  %call151 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %add.ptr.i, ptr noundef %80, ptr noundef %82, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  %83 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load ptr, ptr %conn, align 4
  %tobool.not.i205 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i205, label %sw.bb152.cleanup_crit_edge, label %sw.bb152.if.end.i_crit_edge

sw.bb152.if.end.i_crit_edge:                      ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb152.cleanup_crit_edge:                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb152.if.end.i_crit_edge, %if.end27.if.end.i_crit_edge
  %84 = phi ptr [ %.pr, %sw.bb152.if.end.i_crit_edge ], [ %5, %if.end27.if.end.i_crit_edge ]
  %ie.i = getelementptr inbounds %struct.cfg80211_conn, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ie.i, align 4
  tail call void @kfree(ptr noundef %86) #10
  %87 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %conn, align 4
  tail call void @kfree(ptr noundef %88) #10
  %89 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %conn, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.i, %sw.bb152.cleanup_crit_edge, %sw.bb144, %if.then138, %if.end120.cleanup_crit_edge, %do.end96, %sw.bb74, %if.end69, %do.end53, %sw.bb31, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ -107, %sw.bb144 ], [ -95, %do.end96 ], [ -107, %sw.bb74 ], [ -95, %do.end53 ], [ %call73, %if.end69 ], [ %call32, %sw.bb31 ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %if.end27.cleanup_crit_edge ], [ %call136, %if.then138 ], [ 0, %if.end120.cleanup_crit_edge ], [ 0, %sw.bb152.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cfg80211_connect_result(ptr noundef %dev, ptr noundef %cr, i1 noundef zeroext %wextev) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #10
  %2 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %3 = call ptr @memset(ptr %wrqu, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i326 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %cmp.not = icmp eq i32 %call.i326, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %6, label %do.end45 [
    i32 8, label %if.end.if.end61_crit_edge
    i32 2, label %if.end.if.end61_crit_edge379
  ]

if.end.if.end61_crit_edge379:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 693, i32 noundef 9, ptr noundef null) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %bss = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 2
  %10 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bss, align 4
  tail call void @cfg80211_put_bss(ptr noundef %9, ptr noundef %11) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end.if.end61_crit_edge, %if.end.if.end61_crit_edge379
  %unprot_beacon_reported = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %unprot_beacon_reported to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %unprot_beacon_reported, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool.not.i327 = icmp eq ptr %14, null
  br i1 %tobool.not.i327, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %if.end61
  %add.ptr.i = getelementptr i8, ptr %14, i32 -1120
  tail call void @nl80211_send_connect_result(ptr noundef %add.ptr.i, ptr noundef %dev, ptr noundef %cr, i32 noundef 3264) #10
  br i1 %wextev, label %if.then65, label %wiphy_to_rdev.exit.if.end92_crit_edge

wiphy_to_rdev.exit.if.end92_crit_edge:            ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then65:                                        ; preds = %wiphy_to_rdev.exit
  %req_ie = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 3
  %15 = ptrtoint ptr %req_ie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_ie, align 4
  %tobool66.not = icmp eq ptr %16, null
  br i1 %tobool66.not, label %if.then65.if.end70_crit_edge, label %land.lhs.true

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true:                                    ; preds = %if.then65
  %17 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp67 = icmp eq i32 %18, 0
  br i1 %cmp67, label %if.then68, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %req_ie_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 4
  %20 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req_ie_len, align 4
  %conv = trunc i32 %21 to i16
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %2, align 4
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35847, ptr noundef nonnull %wrqu, ptr noundef nonnull %16) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %land.lhs.true.if.end70_crit_edge, %if.then65.if.end70_crit_edge
  %resp_ie = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 5
  %23 = ptrtoint ptr %resp_ie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resp_ie, align 4
  %tobool71.not = icmp eq ptr %24, null
  br i1 %tobool71.not, label %if.end70.if.end80_crit_edge, label %land.lhs.true72

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true72:                                  ; preds = %if.end70
  %25 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp74 = icmp eq i32 %26, 0
  br i1 %cmp74, label %if.then76, label %land.lhs.true72.if.end80_crit_edge

land.lhs.true72.if.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 6
  %28 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp_ie_len, align 4
  %conv77 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv77, ptr %2, align 4
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35848, ptr noundef nonnull %wrqu, ptr noundef nonnull %24) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %land.lhs.true72.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %31 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %32 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %wrqu, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 1
  %33 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bssid, align 4
  %tobool81.not = icmp eq ptr %34, null
  br i1 %tobool81.not, label %if.end80.if.end91_crit_edge, label %land.lhs.true82

if.end80.if.end91_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

land.lhs.true82:                                  ; preds = %if.end80
  %35 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp84 = icmp eq i32 %36, 0
  br i1 %cmp84, label %if.then86, label %land.lhs.true82.if.end91_crit_edge

land.lhs.true82.if.end91_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then86:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #12
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %37 = call ptr @memcpy(ptr %sa_data, ptr %34, i32 6)
  %prev_bssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 6
  %38 = call ptr @memcpy(ptr %prev_bssid, ptr %34, i32 6)
  %prev_bssid_valid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 10
  %39 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %prev_bssid_valid, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %land.lhs.true82.if.end91_crit_edge, %if.end80.if.end91_crit_edge
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #10
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %wiphy_to_rdev.exit.if.end92_crit_edge
  %bss93 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 2
  %40 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bss93, align 4
  %tobool94.not = icmp eq ptr %41, null
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end92.if.end170_crit_edge

if.end92.if.end170_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

land.lhs.true95:                                  ; preds = %if.end92
  %42 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp97 = icmp eq i32 %43, 0
  br i1 %cmp97, label %if.then99, label %land.lhs.true95.if.end170_crit_edge

land.lhs.true95.if.end170_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then99:                                        ; preds = %land.lhs.true95
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %tobool.not.i328 = icmp eq ptr %45, null
  br i1 %tobool.not.i328, label %do.body4.i329, label %wiphy_to_rdev.exit331, !prof !67

do.body4.i329:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit331:                            ; preds = %if.then99
  %add.ptr.i330 = getelementptr i8, ptr %45, i32 -1120
  %46 = ptrtoint ptr %add.ptr.i330 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i330, align 32
  %connect = getelementptr inbounds %struct.cfg80211_ops, ptr %47, i32 0, i32 43
  %48 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %connect, align 4
  %tobool102.not = icmp eq ptr %49, null
  br i1 %tobool102.not, label %land.rhs112, label %wiphy_to_rdev.exit331.if.end150_crit_edge

wiphy_to_rdev.exit331.if.end150_crit_edge:        ; preds = %wiphy_to_rdev.exit331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

land.rhs112:                                      ; preds = %wiphy_to_rdev.exit331
  %.b325 = load i1, ptr @__cfg80211_connect_result.__already_done, align 1
  br i1 %.b325, label %land.rhs112.if.end150_crit_edge, label %if.then123, !prof !70

land.rhs112.if.end150_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then123:                                       ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__cfg80211_connect_result.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 730, i32 noundef 9, ptr noundef null) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then123, %land.rhs112.if.end150_crit_edge, %wiphy_to_rdev.exit331.if.end150_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %bssid159 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 1
  %52 = ptrtoint ptr %bssid159 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bssid159, align 4
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %54 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ssid_len, align 2
  %conv161 = zext i8 %55 to i32
  %conn_bss_type = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %conn_bss_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %conn_bss_type, align 4
  %call162 = call ptr @cfg80211_get_bss(ptr noundef %51, ptr noundef null, ptr noundef %53, ptr noundef %ssid, i32 noundef %conv161, i32 noundef %57, i32 noundef 2) #10
  %58 = ptrtoint ptr %bss93 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call162, ptr %bss93, align 4
  %tobool165.not = icmp eq ptr %call162, null
  br i1 %tobool165.not, label %if.end150.if.end170_crit_edge, label %if.then166

if.end150.if.end170_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then166:                                       ; preds = %if.end150
  %hold.i = getelementptr i8, ptr %call162, i32 -24
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #10
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #10, !srcloc !71
  %transmitted_bss.i = getelementptr i8, ptr %call162, i32 24
  %60 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool.not.i333 = icmp eq ptr %61, null
  br i1 %tobool.not.i333, label %if.then166.if.end170_crit_edge, label %if.then.i334

if.then166.if.end170_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then.i334:                                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  %hold3.i = getelementptr i8, ptr %61, i32 -24
  %call.i.i7.i = call zeroext i1 @__kasan_check_write(ptr noundef %hold3.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %hold3.i, i32 1, i32 3, i32 1) #10
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold3.i, ptr %hold3.i, i32 1, ptr elementtype(i32) %hold3.i) #10, !srcloc !71
  br label %if.end170

if.end170:                                        ; preds = %if.then.i334, %if.then166.if.end170_crit_edge, %if.end150.if.end170_crit_edge, %land.lhs.true95.if.end170_crit_edge, %if.end92.if.end170_crit_edge
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %63 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %current_bss, align 4
  %tobool171.not = icmp eq ptr %64, null
  br i1 %tobool171.not, label %if.end170.if.end177_crit_edge, label %if.then172

if.end170.if.end177_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then172:                                       ; preds = %if.end170
  %hold.i335 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %64, i32 0, i32 6
  %call.i.i.i336 = call zeroext i1 @__kasan_check_write(ptr noundef %hold.i335, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @llvm.prefetch.p0(ptr %hold.i335, i32 1, i32 3, i32 1) #10
  %65 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i335, ptr %hold.i335, i32 1, ptr elementtype(i32) %hold.i335) #10, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %65, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then172.if.end.i_crit_edge, !prof !67

if.then172.if.end.i_crit_edge:                    ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then172.if.end.i_crit_edge
  %transmitted_bss.i337 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %64, i32 0, i32 9, i32 6
  %66 = ptrtoint ptr %transmitted_bss.i337 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %transmitted_bss.i337, align 8
  %tobool19.not.i = icmp eq ptr %67, null
  br i1 %tobool19.not.i, label %if.end.i.cfg80211_unhold_bss.exit_crit_edge, label %if.then20.i

if.end.i.cfg80211_unhold_bss.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

if.then20.i:                                      ; preds = %if.end.i
  %hold24.i = getelementptr i8, ptr %67, i32 -24
  %call.i.i64.i = call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @llvm.prefetch.p0(ptr %hold24.i, i32 1, i32 3, i32 1) #10
  %68 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i, ptr %hold24.i, i32 1, ptr elementtype(i32) %hold24.i) #10, !srcloc !73
  %asmresult.i.i.i.i65.i = extractvalue { i32, i32 } %68, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i)
  %cmp27.i = icmp slt i32 %asmresult.i.i.i.i65.i, 0
  br i1 %cmp27.i, label %do.end43.i, label %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, !prof !67

if.then20.i.cfg80211_unhold_bss.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

do.end43.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %cfg80211_unhold_bss.exit

cfg80211_unhold_bss.exit:                         ; preds = %do.end43.i, %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, %if.end.i.cfg80211_unhold_bss.exit_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %71 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %72, i32 0, i32 9
  call void @cfg80211_put_bss(ptr noundef %70, ptr noundef %pub) #10
  %73 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %current_bss, align 4
  br label %if.end177

if.end177:                                        ; preds = %cfg80211_unhold_bss.exit, %if.end170.if.end177_crit_edge
  %74 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp179.not = icmp eq i32 %75, 0
  br i1 %cmp179.not, label %if.end192, label %if.then181

if.then181:                                       ; preds = %if.end177
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %76 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %connect_keys, align 4
  call void @kfree_sensitive(ptr noundef %77) #10
  %78 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %connect_keys, align 4
  %ssid_len183 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %79 = ptrtoint ptr %ssid_len183 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %ssid_len183, align 2
  %conn_owner_nlportid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 20
  %80 = ptrtoint ptr %conn_owner_nlportid to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %conn_owner_nlportid, align 4
  %81 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bss93, align 4
  %tobool185.not = icmp eq ptr %82, null
  br i1 %tobool185.not, label %if.then181.if.end191_crit_edge, label %if.then186

if.then181.if.end191_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then186:                                       ; preds = %if.then181
  %hold.i339 = getelementptr i8, ptr %82, i32 -24
  %call.i.i.i340 = call zeroext i1 @__kasan_check_write(ptr noundef %hold.i339, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @llvm.prefetch.p0(ptr %hold.i339, i32 1, i32 3, i32 1) #10
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i339, ptr %hold.i339, i32 1, ptr elementtype(i32) %hold.i339) #10, !srcloc !73
  %asmresult.i.i.i.i.i341 = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i341)
  %cmp.i342 = icmp slt i32 %asmresult.i.i.i.i.i341, 0
  br i1 %cmp.i342, label %do.end.i343, label %if.then186.if.end.i346_crit_edge, !prof !67

if.then186.if.end.i346_crit_edge:                 ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i346

do.end.i343:                                      ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i346

if.end.i346:                                      ; preds = %do.end.i343, %if.then186.if.end.i346_crit_edge
  %transmitted_bss.i344 = getelementptr i8, ptr %82, i32 24
  %84 = ptrtoint ptr %transmitted_bss.i344 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %transmitted_bss.i344, align 8
  %tobool19.not.i345 = icmp eq ptr %85, null
  br i1 %tobool19.not.i345, label %if.end.i346.cfg80211_unhold_bss.exit353_crit_edge, label %if.then20.i351

if.end.i346.cfg80211_unhold_bss.exit353_crit_edge: ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit353

if.then20.i351:                                   ; preds = %if.end.i346
  %hold24.i347 = getelementptr i8, ptr %85, i32 -24
  %call.i.i64.i348 = call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i347, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @llvm.prefetch.p0(ptr %hold24.i347, i32 1, i32 3, i32 1) #10
  %86 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i347, ptr %hold24.i347, i32 1, ptr elementtype(i32) %hold24.i347) #10, !srcloc !73
  %asmresult.i.i.i.i65.i349 = extractvalue { i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i349)
  %cmp27.i350 = icmp slt i32 %asmresult.i.i.i.i65.i349, 0
  br i1 %cmp27.i350, label %do.end43.i352, label %if.then20.i351.cfg80211_unhold_bss.exit353_crit_edge, !prof !67

if.then20.i351.cfg80211_unhold_bss.exit353_crit_edge: ; preds = %if.then20.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit353

do.end43.i352:                                    ; preds = %if.then20.i351
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %cfg80211_unhold_bss.exit353

cfg80211_unhold_bss.exit353:                      ; preds = %do.end43.i352, %if.then20.i351.cfg80211_unhold_bss.exit353_crit_edge, %if.end.i346.cfg80211_unhold_bss.exit353_crit_edge
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %89 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bss93, align 4
  call void @cfg80211_put_bss(ptr noundef %88, ptr noundef %90) #10
  br label %if.end191

if.end191:                                        ; preds = %cfg80211_unhold_bss.exit353, %if.then181.if.end191_crit_edge
  %conn.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %91 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %conn.i, align 4
  %tobool.not.i354 = icmp eq ptr %92, null
  br i1 %tobool.not.i354, label %if.end191.cleanup_crit_edge, label %if.end.i355

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i355:                                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %ie.i = getelementptr inbounds %struct.cfg80211_conn, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ie.i, align 4
  call void @kfree(ptr noundef %94) #10
  %95 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %conn.i, align 4
  call void @kfree(ptr noundef %96) #10
  %97 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %conn.i, align 4
  br label %cleanup

if.end192:                                        ; preds = %if.end177
  %98 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bss93, align 4
  %tobool195.not = icmp eq ptr %99, null
  br i1 %tobool195.not, label %do.end213, label %if.end229, !prof !67

do.end213:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 758, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end229:                                        ; preds = %if.end192
  %add.ptr.i356 = getelementptr i8, ptr %99, i32 -72
  %100 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr.i356, ptr %current_bss, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 32
  %and = and i32 %104, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool234.not = icmp eq i32 %and, 0
  br i1 %tobool234.not, label %if.then235, label %if.end229.if.end236_crit_edge

if.end229.if.end236_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfg80211_upload_connect_keys(ptr noundef %1) #10
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.end229.if.end236_crit_edge
  %105 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %108, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end236.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end236.rcu_read_lock.exit_crit_edge:           ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end236
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end236.rcu_read_lock.exit_crit_edge
  %109 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bss93, align 4
  %call238 = call ptr @ieee80211_bss_get_elem(ptr noundef %110, i8 noundef zeroext 7) #10
  %tobool239.not = icmp eq ptr %call238, null
  br i1 %tobool239.not, label %if.then240, label %if.end241

if.then240:                                       ; preds = %rcu_read_lock.exit
  %call.i357 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i357, label %if.then240.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i360

if.then240.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i360:                               ; preds = %if.then240
  %call1.i358 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i358)
  %tobool.not.i359 = icmp eq i32 %call1.i358, 0
  br i1 %tobool.not.i359, label %land.lhs.true.i360.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i362

land.lhs.true.i360.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i362:                              ; preds = %land.lhs.true.i360
  %.b4.i361 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i361, label %land.lhs.true2.i362.rcu_read_unlock.exit_crit_edge, label %if.then.i363

land.lhs.true2.i362.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i362
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i363:                                     ; preds = %land.lhs.true2.i362
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i363, %land.lhs.true2.i362.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i360.rcu_read_unlock.exit_crit_edge, %if.then240.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %111 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i.i364 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i364 to ptr
  %preempt_count.i.i.i.i365 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i365 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i365, align 4
  %sub.i.i.i = add i32 %114, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i365, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

if.end241:                                        ; preds = %rcu_read_lock.exit
  %datalen = getelementptr inbounds %struct.element, ptr %call238, i32 0, i32 1
  %115 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %datalen, align 1
  %data = getelementptr inbounds %struct.element, ptr %call238, i32 0, i32 2
  %conv243 = zext i8 %116 to i32
  %call244 = call ptr @kmemdup(ptr noundef %data, i32 noundef %conv243, i32 noundef 2592) #10
  %call.i367 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i367, label %if.end241.rcu_read_unlock.exit378_crit_edge, label %land.lhs.true.i370

if.end241.rcu_read_unlock.exit378_crit_edge:      ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

land.lhs.true.i370:                               ; preds = %if.end241
  %call1.i368 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i368)
  %tobool.not.i369 = icmp eq i32 %call1.i368, 0
  br i1 %tobool.not.i369, label %land.lhs.true.i370.rcu_read_unlock.exit378_crit_edge, label %land.lhs.true2.i372

land.lhs.true.i370.rcu_read_unlock.exit378_crit_edge: ; preds = %land.lhs.true.i370
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

land.lhs.true2.i372:                              ; preds = %land.lhs.true.i370
  %.b4.i371 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i371, label %land.lhs.true2.i372.rcu_read_unlock.exit378_crit_edge, label %if.then.i373

land.lhs.true2.i372.rcu_read_unlock.exit378_crit_edge: ; preds = %land.lhs.true2.i372
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit378

if.then.i373:                                     ; preds = %land.lhs.true2.i372
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit378

rcu_read_unlock.exit378:                          ; preds = %if.then.i373, %land.lhs.true2.i372.rcu_read_unlock.exit378_crit_edge, %land.lhs.true.i370.rcu_read_unlock.exit378_crit_edge, %if.end241.rcu_read_unlock.exit378_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %117 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i.i374 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i.i374 to ptr
  %preempt_count.i.i.i.i375 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %preempt_count.i.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %preempt_count.i.i.i.i375, align 4
  %sub.i.i.i376 = add i32 %120, -1
  store volatile i32 %sub.i.i.i376, ptr %preempt_count.i.i.i.i375, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool245.not = icmp eq ptr %call244, null
  br i1 %tobool245.not, label %rcu_read_unlock.exit378.cleanup_crit_edge, label %if.end247

rcu_read_unlock.exit378.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit378
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end247:                                        ; preds = %rcu_read_unlock.exit378
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %123 = ptrtoint ptr %bss93 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bss93, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  call void @regulatory_hint_country_ie(ptr noundef %122, i32 noundef %128, ptr noundef nonnull %call244, i8 noundef zeroext %116) #10
  call void @kfree(ptr noundef nonnull %call244) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end247, %rcu_read_unlock.exit378.cleanup_crit_edge, %rcu_read_unlock.exit, %do.end213, %if.end.i355, %if.end191.cleanup_crit_edge, %do.end45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_scan_done(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #10
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_rdev.exit.i, !prof !67

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit.i:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %wiphy_to_rdev.exit.i.if.end.i_crit_edge, label %land.rhs.i

wiphy_to_rdev.exit.i.if.end.i_crit_edge:          ; preds = %wiphy_to_rdev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %wiphy_to_rdev.exit.i
  %dep_map.i = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !67

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %wiphy_to_rdev.exit.i.if.end.i_crit_edge
  %conn.i = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn.i, align 4
  %tobool25.not.i = icmp eq ptr %8, null
  br i1 %tobool25.not.i, label %if.end.i.__cfg80211_sme_scan_done.exit_crit_edge, label %if.end27.i

if.end.i.__cfg80211_sme_scan_done.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cfg80211_sme_scan_done.exit

if.end27.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.cfg80211_conn, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i = icmp ult i32 %10, 2
  br i1 %switch.i, label %if.end34.i, label %if.end27.i.__cfg80211_sme_scan_done.exit_crit_edge

if.end27.i.__cfg80211_sme_scan_done.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cfg80211_sme_scan_done.exit

if.end34.i:                                       ; preds = %if.end27.i
  %call35.i = tail call fastcc ptr @cfg80211_get_conn_bss(ptr noundef %3) #10
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfg80211_put_bss(ptr noundef nonnull %5, ptr noundef nonnull %call35.i) #10
  br label %__cfg80211_sme_scan_done.exit

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %conn_work.i = getelementptr i8, ptr %5, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %conn_work.i) #10
  br label %__cfg80211_sme_scan_done.exit

__cfg80211_sme_scan_done.exit:                    ; preds = %if.else.i, %if.then37.i, %if.end27.i.__cfg80211_sme_scan_done.exit_crit_edge, %if.end.i.__cfg80211_sme_scan_done.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_rx_auth(ptr noundef %wdev, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %cr = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %status_code2 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %buf, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %status_code2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status_code2, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %tobool27.not = icmp eq ptr %7, null
  br i1 %tobool27.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp29 = icmp eq i32 %9, 11
  br i1 %cmp29, label %lor.lhs.false.cleanup_crit_edge, label %if.end31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %conv = zext i16 %4 to i32
  %10 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %3, label %if.end31.if.then68_crit_edge [
    i16 3328, label %land.lhs.true
    i16 0, label %if.else71
  ]

if.end31.if.then68_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

land.lhs.true:                                    ; preds = %if.end31
  %auto_auth = getelementptr inbounds %struct.cfg80211_conn, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %auto_auth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %auto_auth, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool35.not = icmp eq i8 %12, 0
  br i1 %tobool35.not, label %land.lhs.true.if.then68_crit_edge, label %land.lhs.true37

land.lhs.true.if.then68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

land.lhs.true37:                                  ; preds = %land.lhs.true
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auth_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %14, label %sw.default [
    i32 3, label %land.lhs.true37.if.then68_crit_edge
    i32 0, label %sw.bb
    i32 1, label %land.lhs.true37.sw.epilog_crit_edge
  ]

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true37.if.then68_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

sw.bb:                                            ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 18
  %16 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connect_keys, align 4
  %tobool45.not = icmp eq ptr %17, null
  %. = select i1 %tobool45.not, i32 3, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %land.lhs.true37.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ %., %sw.bb ], [ 3, %land.lhs.true37.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %auth_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %auth_type, align 4
  %19 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conn, align 4
  %state62 = getelementptr inbounds %struct.cfg80211_conn, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state62, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %conn_work) #10
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true37.if.then68_crit_edge, %land.lhs.true.if.then68_crit_edge, %if.end31.if.then68_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cr) #10
  %23 = getelementptr inbounds i8, ptr %cr, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 44)
  %25 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %cr, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %buf, i32 0, i32 4
  %bssid70 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 1
  %26 = ptrtoint ptr %bssid70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bssid, ptr %bssid70, align 4
  %timeout_reason = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %cr, i32 0, i32 8
  %27 = ptrtoint ptr %timeout_reason to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %timeout_reason, align 4
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  call void @__cfg80211_connect_result(ptr noundef %29, ptr noundef nonnull %cr, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cr) #10
  br label %cleanup

if.else71:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp74 = icmp eq i32 %9, 3
  br i1 %cmp74, label %if.then76, label %if.else71.cleanup_crit_edge

if.else71.cleanup_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then76:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %state, align 4
  %conn_work79 = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i108 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %conn_work79) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.else71.cleanup_crit_edge, %if.then68, %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_sme_rx_assoc_resp(ptr nocapture noundef readonly %wdev, i16 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status)
  %cmp = icmp eq i16 %status, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %state, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %prev_bssid_valid = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prev_bssid_valid, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prev_bssid_valid, align 1
  %8 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn, align 4
  %state11 = getelementptr inbounds %struct.cfg80211_conn, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %state11, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %conn_work) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %state15 = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %state15, align 4
  %conn_work16 = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %conn_work16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %if.then2, %wiphy_to_rdev.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then2 ], [ true, %if.then7 ], [ false, %if.end13 ], [ false, %wiphy_to_rdev.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_deauth(ptr nocapture noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn.i = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %0 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cfg80211_sme_free.exit_crit_edge, label %if.end.i

entry.cfg80211_sme_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_sme_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ie.i = getelementptr inbounds %struct.cfg80211_conn, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ie.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn.i, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %conn.i, align 4
  br label %cfg80211_sme_free.exit

cfg80211_sme_free.exit:                           ; preds = %if.end.i, %entry.cfg80211_sme_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_auth_timeout(ptr nocapture noundef readonly %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %state, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %conn_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_to_rdev.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_disassoc(ptr nocapture noundef readonly %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %state, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %conn_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_to_rdev.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_assoc_timeout(ptr nocapture noundef readonly %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %state, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %conn_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_to_rdev.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_sme_abandon_assoc(ptr nocapture noundef readonly %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %state, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %conn_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_to_rdev.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disconnect_work(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_rdev_list to i32))
  %.pn46.i = load ptr, ptr @cfg80211_rdev_list, align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, @cfg80211_rdev_list
  br i1 %cmp.not47.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.loopexit.i:                              ; preds = %if.end.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %is_all_idle.1.off0.lcssa.i = phi i1 [ %is_all_idle.0.off048.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %is_all_idle.2.off0.i, %if.end.i.for.cond.loopexit.i_crit_edge ]
  %0 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn49.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cfg80211_rdev_list
  br i1 %cmp.not.i, label %cfg80211_is_all_idle.exit, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn49.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn46.i, %entry.for.body.i_crit_edge ]
  %is_all_idle.0.off048.i = phi i1 [ %is_all_idle.1.off0.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %wdev_list.i = getelementptr i8, ptr %.pn49.i, i32 2396
  %1 = ptrtoint ptr %wdev_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn3840.i = load ptr, ptr %wdev_list.i, align 4
  %cmp8.not42.i = icmp eq ptr %.pn3840.i, %wdev_list.i
  br i1 %cmp8.not42.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body10.i_crit_edge

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

for.body10.i:                                     ; preds = %if.end.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %.pn3844.i = phi ptr [ %.pn38.i, %if.end.i.for.body10.i_crit_edge ], [ %.pn3840.i, %for.body.i.for.body10.i_crit_edge ]
  %is_all_idle.1.off043.i = phi i1 [ %is_all_idle.2.off0.i, %if.end.i.for.body10.i_crit_edge ], [ %is_all_idle.0.off048.i, %for.body.i.for.body10.i_crit_edge ]
  %wdev.045.i = getelementptr i8, ptr %.pn3844.i, i32 -8
  %mtx.i.i = getelementptr i8, ptr %.pn3844.i, i32 28
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i, i32 noundef 0) #10
  %conn.i = getelementptr i8, ptr %.pn3844.i, i32 168
  %2 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body10.i.if.then.i_crit_edge

for.body10.i.if.then.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body10.i
  %current_bss.i = getelementptr i8, ptr %.pn3844.i, i32 288
  %4 = ptrtoint ptr %current_bss.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_bss.i, align 4
  %tobool11.not.i = icmp eq ptr %5, null
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i1 @cfg80211_beaconing_iface_active(ptr noundef %wdev.045.i) #10
  br i1 %call.i, label %lor.lhs.false12.i.if.then.i_crit_edge, label %lor.lhs.false12.i.if.end.i_crit_edge

lor.lhs.false12.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false12.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false12.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %for.body10.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false12.i.if.end.i_crit_edge
  %is_all_idle.2.off0.i = phi i1 [ false, %if.then.i ], [ %is_all_idle.1.off043.i, %lor.lhs.false12.i.if.end.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #10
  %6 = ptrtoint ptr %.pn3844.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn38.i = load ptr, ptr %.pn3844.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn38.i, %wdev_list.i
  br i1 %cmp8.not.i, label %if.end.i.for.cond.loopexit.i_crit_edge, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

if.end.i.for.cond.loopexit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

cfg80211_is_all_idle.exit:                        ; preds = %for.cond.loopexit.i
  br i1 %is_all_idle.1.off0.lcssa.i, label %cfg80211_is_all_idle.exit.if.then_crit_edge, label %cfg80211_is_all_idle.exit.if.end_crit_edge

cfg80211_is_all_idle.exit.if.end_crit_edge:       ; preds = %cfg80211_is_all_idle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cfg80211_is_all_idle.exit.if.then_crit_edge:      ; preds = %cfg80211_is_all_idle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cfg80211_is_all_idle.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @regulatory_hint_disconnect() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %cfg80211_is_all_idle.exit.if.end_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_connect_result(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_upload_connect_keys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_hint_country_ie(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_connect_done(ptr nocapture noundef readonly %dev, ptr nocapture noundef %params, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %bss = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end17_crit_edge, label %if.then

wiphy_to_rdev.exit.if.end17_crit_edge:            ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %wiphy_to_rdev.exit
  %add.ptr.i243 = getelementptr i8, ptr %5, i32 -72
  %6 = ptrtoint ptr %add.ptr.i243 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %add.ptr.i243, align 4
  %cmp.i.not = icmp eq ptr %7, %add.ptr.i243
  br i1 %cmp.i.not, label %if.then5, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then5:                                         ; preds = %if.then
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %5, i32 0, i32 11
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %9 to i32
  %conn_bss_type = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %conn_bss_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %conn_bss_type, align 4
  %call10 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %3, ptr noundef null, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %conv, i32 noundef %11, i32 noundef 2) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %bss, align 4
  br label %if.end

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %ts = getelementptr i8, ptr %5, i32 -32
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts, align 8
  %call14 = tail call ptr @cfg80211_bss_update(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i243, i1 noundef zeroext false, i32 noundef %14) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @cfg80211_put_bss(ptr noundef %16, ptr noundef nonnull %5) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then.if.end17_crit_edge, %wiphy_to_rdev.exit.if.end17_crit_edge
  %bssid18 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 1
  %req_ie_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 4
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 6
  %fils = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7
  %kek_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 1
  %pmk_len = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 5
  %pmkid = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 6
  %or.i = or i32 %gfp, 256
  %17 = ptrtoint ptr %bssid18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bssid18, align 4
  %tobool19.not = icmp eq ptr %18, null
  %add = select i1 %tobool19.not, i32 68, i32 74
  %19 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_ie_len, align 4
  %add20 = add i32 %add, %20
  %21 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resp_ie_len, align 4
  %add21 = add i32 %add20, %22
  %23 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %kek_len, align 4
  %add22 = add i32 %add21, %24
  %25 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pmk_len, align 4
  %add24 = add i32 %add22, %26
  %27 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pmkid, align 4
  %tobool26.not = icmp eq ptr %28, null
  %cond27 = select i1 %tobool26.not, i32 0, i32 16
  %add28 = add i32 %add24, %cond27
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add28, i32 noundef %or.i) #13
  %tobool30.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool30.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bss, align 4
  tail call void @cfg80211_put_bss(ptr noundef %30, ptr noundef %32) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end17
  %type = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %type, align 8
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 68
  %34 = ptrtoint ptr %bssid18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bssid18, align 4
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %bssid38 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %bssid38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %bssid38, align 16
  %37 = ptrtoint ptr %bssid18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bssid18, align 4
  %39 = call ptr @memcpy(ptr %add.ptr, ptr %38, i32 6)
  %add.ptr41 = getelementptr i8, ptr %call9.i.i, i32 74
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  %next.0 = phi ptr [ %add.ptr41, %if.then37 ], [ %add.ptr, %if.end34.if.end42_crit_edge ]
  %40 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool44.not = icmp eq i32 %41, 0
  br i1 %tobool44.not, label %if.end42.if.end53_crit_edge, label %if.then45

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %req_ie = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %req_ie to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %next.0, ptr %req_ie, align 8
  %43 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %req_ie_len, align 4
  %req_ie_len47 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 4
  %45 = ptrtoint ptr %req_ie_len47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %req_ie_len47, align 4
  %req_ie49 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 3
  %46 = ptrtoint ptr %req_ie49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req_ie49, align 4
  %48 = call ptr @memcpy(ptr %next.0, ptr %47, i32 %44)
  %add.ptr52 = getelementptr i8, ptr %next.0, i32 %44
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end42.if.end53_crit_edge
  %next.1 = phi ptr [ %add.ptr52, %if.then45 ], [ %next.0, %if.end42.if.end53_crit_edge ]
  %49 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resp_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool55.not = icmp eq i32 %50, 0
  br i1 %tobool55.not, label %if.end53.if.end64_crit_edge, label %if.then56

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %resp_ie = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 5
  %51 = ptrtoint ptr %resp_ie to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %next.1, ptr %resp_ie, align 32
  %52 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resp_ie_len, align 4
  %resp_ie_len58 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 6
  %54 = ptrtoint ptr %resp_ie_len58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %resp_ie_len58, align 4
  %resp_ie60 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 5
  %55 = ptrtoint ptr %resp_ie60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resp_ie60, align 4
  %57 = call ptr @memcpy(ptr %next.1, ptr %56, i32 %53)
  %58 = load i32, ptr %resp_ie_len, align 4
  %add.ptr63 = getelementptr i8, ptr %next.1, i32 %58
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %if.end53.if.end64_crit_edge
  %next.2 = phi ptr [ %add.ptr63, %if.then56 ], [ %next.1, %if.end53.if.end64_crit_edge ]
  %59 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %kek_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool67.not = icmp eq i32 %60, 0
  br i1 %tobool67.not, label %if.end64.if.end83_crit_edge, label %if.then68

if.end64.if.end83_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %fils69 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7
  %61 = ptrtoint ptr %fils69 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %next.2, ptr %fils69, align 8
  %62 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %kek_len, align 4
  %kek_len73 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %kek_len73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %kek_len73, align 4
  %65 = ptrtoint ptr %fils to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fils, align 4
  %67 = call ptr @memcpy(ptr %next.2, ptr %66, i32 %63)
  %68 = load i32, ptr %kek_len, align 4
  %add.ptr82 = getelementptr i8, ptr %next.2, i32 %68
  br label %if.end83

if.end83:                                         ; preds = %if.then68, %if.end64.if.end83_crit_edge
  %next.3 = phi ptr [ %add.ptr82, %if.then68 ], [ %next.2, %if.end64.if.end83_crit_edge ]
  %69 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pmk_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool86.not = icmp eq i32 %70, 0
  br i1 %tobool86.not, label %if.end83.if.end102_crit_edge, label %if.then87

if.end83.if.end102_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %pmk = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 4
  %71 = ptrtoint ptr %pmk to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %next.3, ptr %pmk, align 4
  %72 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pmk_len, align 4
  %pmk_len92 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %pmk_len92 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %pmk_len92, align 8
  %pmk96 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 4
  %75 = ptrtoint ptr %pmk96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pmk96, align 4
  %77 = call ptr @memcpy(ptr %next.3, ptr %76, i32 %73)
  %78 = load i32, ptr %pmk_len, align 4
  %add.ptr101 = getelementptr i8, ptr %next.3, i32 %78
  br label %if.end102

if.end102:                                        ; preds = %if.then87, %if.end83.if.end102_crit_edge
  %next.4 = phi ptr [ %add.ptr101, %if.then87 ], [ %next.3, %if.end83.if.end102_crit_edge ]
  %79 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pmkid, align 4
  %tobool105.not = icmp eq ptr %80, null
  br i1 %tobool105.not, label %if.end102.if.end114_crit_edge, label %if.then106

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %pmkid108 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 6
  %81 = ptrtoint ptr %pmkid108 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %next.4, ptr %pmkid108, align 4
  %82 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pmkid, align 4
  %84 = call ptr @memcpy(ptr %next.4, ptr %83, i32 16)
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %if.end102.if.end114_crit_edge
  %update_erp_next_seq_num = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %update_erp_next_seq_num to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %update_erp_next_seq_num, align 4, !range !69
  %87 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2
  %update_erp_next_seq_num118 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 2
  %88 = ptrtoint ptr %update_erp_next_seq_num118 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %update_erp_next_seq_num118, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool121.not = icmp eq i8 %86, 0
  br i1 %tobool121.not, label %if.end114.if.end126_crit_edge, label %if.then122

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then122:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %erp_next_seq_num = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 7, i32 3
  %89 = ptrtoint ptr %erp_next_seq_num to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %erp_next_seq_num, align 2
  %erp_next_seq_num125 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 3
  %91 = ptrtoint ptr %erp_next_seq_num125 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %erp_next_seq_num125, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end114.if.end126_crit_edge
  %92 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bss, align 4
  %tobool128.not = icmp eq ptr %93, null
  br i1 %tobool128.not, label %if.end126.if.end132_crit_edge, label %if.then129

if.end126.if.end132_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then129:                                       ; preds = %if.end126
  %hold.i = getelementptr i8, ptr %93, i32 -24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #10
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #10, !srcloc !71
  %transmitted_bss.i = getelementptr i8, ptr %93, i32 24
  %95 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool.not.i245 = icmp eq ptr %96, null
  br i1 %tobool.not.i245, label %if.then129.if.end132_crit_edge, label %if.then.i

if.then129.if.end132_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  %hold3.i = getelementptr i8, ptr %96, i32 -24
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold3.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hold3.i, i32 1, i32 3, i32 1) #10
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold3.i, ptr %hold3.i, i32 1, ptr elementtype(i32) %hold3.i) #10, !srcloc !71
  br label %if.end132

if.end132:                                        ; preds = %if.then.i, %if.then129.if.end132_crit_edge, %if.end126.if.end132_crit_edge
  %98 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bss, align 4
  %bss134 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 2
  %100 = ptrtoint ptr %bss134 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %bss134, align 4
  %101 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %params, align 4
  %103 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %87, align 4
  %timeout_reason = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params, i32 0, i32 8
  %104 = ptrtoint ptr %timeout_reason to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %timeout_reason, align 4
  %timeout_reason136 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 8
  %106 = ptrtoint ptr %timeout_reason136 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %timeout_reason136, align 64
  %event_lock = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %call141 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %event_list = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %108, ptr noundef %event_list) #10
  br i1 %call.i.i, label %if.end.i.i246, label %if.end132.list_add_tail.exit_crit_edge

if.end132.list_add_tail.exit_crit_edge:           ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i246:                                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %110 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %event_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call9.i.i, ptr %108, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i246, %if.end132.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call141) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_wq to i32))
  %113 = load ptr, ptr @cfg80211_wq, align 4
  %event_work = getelementptr i8, ptr %3, i32 -716
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %113, ptr noundef %event_work) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_bss_update(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cfg80211_roamed(ptr noundef %wdev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #10
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %1 = call ptr @memset(ptr %wrqu, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iftype, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %if.end.out_crit_edge [
    i32 8, label %if.end.if.end61.critedge_crit_edge
    i32 2, label %if.end.if.end61.critedge_crit_edge207
  ]

if.end.if.end61.critedge_crit_edge207:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.critedge

if.end.if.end61.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.critedge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end61.critedge:                                ; preds = %if.end.if.end61.critedge_crit_edge, %if.end.if.end61.critedge_crit_edge207
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 25
  %6 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_bss, align 4
  %tobool63.not = icmp eq ptr %7, null
  br i1 %tobool63.not, label %if.end61.critedge.out_crit_edge, label %if.end97.critedge, !prof !67

if.end61.critedge.out_crit_edge:                  ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end97.critedge:                                ; preds = %if.end61.critedge
  %hold.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %7, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end97.critedge.if.end.i_crit_edge, !prof !67

if.end97.critedge.if.end.i_crit_edge:             ; preds = %if.end97.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end97.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end97.critedge.if.end.i_crit_edge
  %transmitted_bss.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %7, i32 0, i32 9, i32 6
  %9 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool19.not.i = icmp eq ptr %10, null
  br i1 %tobool19.not.i, label %if.end.i.cfg80211_unhold_bss.exit_crit_edge, label %if.then20.i

if.end.i.cfg80211_unhold_bss.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

if.then20.i:                                      ; preds = %if.end.i
  %hold24.i = getelementptr i8, ptr %10, i32 -24
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold24.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i, ptr %hold24.i, i32 1, ptr elementtype(i32) %hold24.i) #10, !srcloc !73
  %asmresult.i.i.i.i65.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i)
  %cmp27.i = icmp slt i32 %asmresult.i.i.i.i65.i, 0
  br i1 %cmp27.i, label %do.end43.i, label %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, !prof !67

if.then20.i.cfg80211_unhold_bss.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

do.end43.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %cfg80211_unhold_bss.exit

cfg80211_unhold_bss.exit:                         ; preds = %do.end43.i, %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, %if.end.i.cfg80211_unhold_bss.exit_crit_edge
  %12 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdev, align 4
  %14 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %15, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %13, ptr noundef %pub) #10
  %16 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %current_bss, align 4
  %bss = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bss, align 4
  %tobool102.not = icmp eq ptr %18, null
  br i1 %tobool102.not, label %do.end120, label %if.end136, !prof !67

do.end120:                                        ; preds = %cfg80211_unhold_bss.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 916, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end136:                                        ; preds = %cfg80211_unhold_bss.exit
  %hold.i200 = getelementptr i8, ptr %18, i32 -24
  %call.i.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i200, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hold.i200, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i200, ptr %hold.i200, i32 1, ptr elementtype(i32) %hold.i200) #10, !srcloc !71
  %transmitted_bss.i202 = getelementptr i8, ptr %18, i32 24
  %20 = ptrtoint ptr %transmitted_bss.i202 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transmitted_bss.i202, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end136.cfg80211_hold_bss.exit_crit_edge, label %if.then.i

if.end136.cfg80211_hold_bss.exit_crit_edge:       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_hold_bss.exit

if.then.i:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %hold3.i = getelementptr i8, ptr %21, i32 -24
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold3.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hold3.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold3.i, ptr %hold3.i, i32 1, ptr elementtype(i32) %hold3.i) #10, !srcloc !71
  br label %cfg80211_hold_bss.exit

cfg80211_hold_bss.exit:                           ; preds = %if.then.i, %if.end136.cfg80211_hold_bss.exit_crit_edge
  %23 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bss, align 4
  %add.ptr.i204 = getelementptr i8, ptr %24, i32 -72
  %25 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i204, ptr %current_bss, align 4
  %unprot_beacon_reported = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 44
  %26 = ptrtoint ptr %unprot_beacon_reported to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %unprot_beacon_reported, align 4
  %27 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wdev, align 4
  %tobool.not.i205 = icmp eq ptr %28, null
  br i1 %tobool.not.i205, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %cfg80211_hold_bss.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %cfg80211_hold_bss.exit
  %add.ptr.i206 = getelementptr i8, ptr %28, i32 -1120
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 4
  tail call void @nl80211_send_roamed(ptr noundef %add.ptr.i206, ptr noundef %30, ptr noundef %info, i32 noundef 3264) #10
  %req_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 3
  %31 = ptrtoint ptr %req_ie to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req_ie, align 4
  %tobool144.not = icmp eq ptr %32, null
  br i1 %tobool144.not, label %wiphy_to_rdev.exit.if.end148_crit_edge, label %if.then145

wiphy_to_rdev.exit.if.end148_crit_edge:           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then145:                                       ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %req_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 4
  %34 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req_ie_len, align 4
  %conv = trunc i32 %35 to i16
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %0, align 4
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev, align 4
  call void @wireless_send_event(ptr noundef %38, i32 noundef 35847, ptr noundef nonnull %wrqu, ptr noundef nonnull %32) #10
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %wiphy_to_rdev.exit.if.end148_crit_edge
  %resp_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 5
  %39 = ptrtoint ptr %resp_ie to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resp_ie, align 4
  %tobool149.not = icmp eq ptr %40, null
  br i1 %tobool149.not, label %if.end148.if.end155_crit_edge, label %if.then150

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %41 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 6
  %42 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resp_ie_len, align 4
  %conv151 = trunc i32 %43 to i16
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv151, ptr %0, align 4
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  call void @wireless_send_event(ptr noundef %46, i32 noundef 35848, ptr noundef nonnull %wrqu, ptr noundef nonnull %40) #10
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end148.if.end155_crit_edge
  %47 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 0, ptr %47, align 4
  %49 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %50 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bss, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %51, i32 0, i32 11
  %52 = call ptr @memcpy(ptr %sa_data, ptr %bssid, i32 6)
  %prev_bssid = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 6
  %53 = call ptr @memcpy(ptr %prev_bssid, ptr %bssid, i32 6)
  %prev_bssid_valid = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 10
  %54 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %prev_bssid_valid, align 2
  %55 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev, align 4
  call void @wireless_send_event(ptr noundef %56, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #10
  br label %cleanup

out:                                              ; preds = %if.end61.critedge.out_crit_edge, %if.end.out_crit_edge
  %.sink = phi i32 [ 906, %if.end.out_crit_edge ], [ 909, %if.end61.critedge.out_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #10
  %57 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wdev, align 4
  %bss165 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 1
  %59 = ptrtoint ptr %bss165 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bss165, align 4
  tail call void @cfg80211_put_bss(ptr noundef %58, ptr noundef %60) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end155, %do.end120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_roamed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_roamed(ptr nocapture noundef readonly %dev, ptr nocapture noundef %info, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %bss = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %wiphy_to_rdev.exit.if.end30_crit_edge

wiphy_to_rdev.exit.if.end30_crit_edge:            ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end:                                           ; preds = %wiphy_to_rdev.exit
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bssid, align 4
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %11 to i32
  %conn_bss_type = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %conn_bss_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %conn_bss_type, align 4
  %call2 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %3, ptr noundef %7, ptr noundef %9, ptr noundef %ssid, i32 noundef %conv, i32 noundef %13, i32 noundef 2) #10
  %14 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %bss, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %do.end, label %if.end.if.end30_crit_edge, !prof !67

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %wiphy_to_rdev.exit.if.end30_crit_edge
  %req_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 4
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 6
  %fils = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7
  %kek_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 1
  %pmk_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 5
  %pmkid = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 6
  %or.i = or i32 %gfp, 256
  %15 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req_ie_len, align 4
  %add = add i32 %16, 68
  %17 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resp_ie_len, align 4
  %add31 = add i32 %add, %18
  %19 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kek_len, align 4
  %add32 = add i32 %add31, %20
  %21 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmk_len, align 4
  %add34 = add i32 %add32, %22
  %23 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pmkid, align 4
  %tobool36.not = icmp eq ptr %24, null
  %cond = select i1 %tobool36.not, i32 0, i32 16
  %add37 = add i32 %add34, %cond
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add37, i32 noundef %or.i) #13
  %tobool39.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool39.not, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bss, align 4
  tail call void @cfg80211_put_bss(ptr noundef %26, ptr noundef %28) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  %type = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %type, align 8
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 68
  %30 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool45.not = icmp eq i32 %31, 0
  br i1 %tobool45.not, label %if.end43.if.end54_crit_edge, label %if.then46

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %req_ie = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3
  %32 = ptrtoint ptr %req_ie to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %req_ie, align 8
  %33 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req_ie_len, align 4
  %req_ie_len48 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 4
  %35 = ptrtoint ptr %req_ie_len48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %req_ie_len48, align 4
  %req_ie50 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 3
  %36 = ptrtoint ptr %req_ie50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req_ie50, align 4
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %37, i32 %34)
  %add.ptr53 = getelementptr i8, ptr %add.ptr, i32 %34
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end43.if.end54_crit_edge
  %next.0 = phi ptr [ %add.ptr53, %if.then46 ], [ %add.ptr, %if.end43.if.end54_crit_edge ]
  %39 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool56.not = icmp eq i32 %40, 0
  br i1 %tobool56.not, label %if.end54.if.end65_crit_edge, label %if.then57

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %resp_ie = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 5
  %41 = ptrtoint ptr %resp_ie to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %next.0, ptr %resp_ie, align 32
  %42 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resp_ie_len, align 4
  %resp_ie_len59 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 6
  %44 = ptrtoint ptr %resp_ie_len59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %resp_ie_len59, align 4
  %resp_ie61 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 5
  %45 = ptrtoint ptr %resp_ie61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resp_ie61, align 4
  %47 = call ptr @memcpy(ptr %next.0, ptr %46, i32 %43)
  %add.ptr64 = getelementptr i8, ptr %next.0, i32 %43
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %if.end54.if.end65_crit_edge
  %next.1 = phi ptr [ %add.ptr64, %if.then57 ], [ %next.0, %if.end54.if.end65_crit_edge ]
  %48 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %kek_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool68.not = icmp eq i32 %49, 0
  br i1 %tobool68.not, label %if.end65.if.end84_crit_edge, label %if.then69

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %fils70 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7
  %50 = ptrtoint ptr %fils70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %next.1, ptr %fils70, align 8
  %51 = ptrtoint ptr %kek_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %kek_len, align 4
  %kek_len74 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %kek_len74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %kek_len74, align 4
  %54 = ptrtoint ptr %fils to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fils, align 4
  %56 = call ptr @memcpy(ptr %next.1, ptr %55, i32 %52)
  %57 = load i32, ptr %kek_len, align 4
  %add.ptr83 = getelementptr i8, ptr %next.1, i32 %57
  br label %if.end84

if.end84:                                         ; preds = %if.then69, %if.end65.if.end84_crit_edge
  %next.2 = phi ptr [ %add.ptr83, %if.then69 ], [ %next.1, %if.end65.if.end84_crit_edge ]
  %58 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pmk_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool87.not = icmp eq i32 %59, 0
  br i1 %tobool87.not, label %if.end84.if.end103_crit_edge, label %if.then88

if.end84.if.end103_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %pmk = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 4
  %60 = ptrtoint ptr %pmk to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %next.2, ptr %pmk, align 4
  %61 = ptrtoint ptr %pmk_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pmk_len, align 4
  %pmk_len93 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 5
  %63 = ptrtoint ptr %pmk_len93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %pmk_len93, align 8
  %pmk97 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 4
  %64 = ptrtoint ptr %pmk97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pmk97, align 4
  %66 = call ptr @memcpy(ptr %next.2, ptr %65, i32 %62)
  %67 = load i32, ptr %pmk_len, align 4
  %add.ptr102 = getelementptr i8, ptr %next.2, i32 %67
  br label %if.end103

if.end103:                                        ; preds = %if.then88, %if.end84.if.end103_crit_edge
  %next.3 = phi ptr [ %add.ptr102, %if.then88 ], [ %next.2, %if.end84.if.end103_crit_edge ]
  %68 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pmkid, align 4
  %tobool106.not = icmp eq ptr %69, null
  br i1 %tobool106.not, label %if.end103.if.end115_crit_edge, label %if.then107

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %pmkid109 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 6
  %70 = ptrtoint ptr %pmkid109 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %next.3, ptr %pmkid109, align 4
  %71 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pmkid, align 4
  %73 = call ptr @memcpy(ptr %next.3, ptr %72, i32 16)
  br label %if.end115

if.end115:                                        ; preds = %if.then107, %if.end103.if.end115_crit_edge
  %update_erp_next_seq_num = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %update_erp_next_seq_num to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %update_erp_next_seq_num, align 4, !range !69
  %update_erp_next_seq_num119 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 2
  %76 = ptrtoint ptr %update_erp_next_seq_num119 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %update_erp_next_seq_num119, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool122.not = icmp eq i8 %75, 0
  br i1 %tobool122.not, label %if.end115.if.end127_crit_edge, label %if.then123

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then123:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %erp_next_seq_num = getelementptr inbounds %struct.cfg80211_roam_info, ptr %info, i32 0, i32 7, i32 3
  %77 = ptrtoint ptr %erp_next_seq_num to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %erp_next_seq_num, align 2
  %erp_next_seq_num126 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 7, i32 3
  %79 = ptrtoint ptr %erp_next_seq_num126 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %erp_next_seq_num126, align 2
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end115.if.end127_crit_edge
  %80 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bss, align 4
  %bss129 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %82 = ptrtoint ptr %bss129 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %bss129, align 16
  %event_lock = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %call135 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %event_list = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %84, ptr noundef %event_list) #10
  br i1 %call.i.i, label %if.end.i.i220, label %if.end127.list_add_tail.exit_crit_edge

if.end127.list_add_tail.exit_crit_edge:           ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i220:                                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %86 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %event_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call9.i.i, ptr %84, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i220, %if.end127.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call135) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_wq to i32))
  %89 = load ptr, ptr @cfg80211_wq, align 4
  %event_work = getelementptr i8, ptr %3, i32 -716
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %event_work) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then40, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cfg80211_port_authorized(ptr noundef %wdev, ptr noundef %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1032, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp25.not = icmp eq i32 %2, 2
  br i1 %cmp25.not, label %if.end57.critedge, label %do.end41, !prof !70

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1034, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end57.critedge:                                ; preds = %if.end
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 25
  %3 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_bss, align 4
  %tobool59.not = icmp eq ptr %4, null
  br i1 %tobool59.not, label %do.end77, label %lor.lhs.false.critedge, !prof !67

do.end77:                                         ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1037, i32 noundef 9, ptr noundef null) #10
  br label %return

lor.lhs.false.critedge:                           ; preds = %if.end57.critedge
  %bssid94 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %4, i32 0, i32 9, i32 11
  %5 = ptrtoint ptr %bssid94 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bssid94, align 4
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bssid, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.cfg80211_internal_bss, ptr %4, i32 0, i32 9, i32 11, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end129.critedge, label %do.end113, !prof !70

do.end113:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1038, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end129.critedge:                               ; preds = %lor.lhs.false.critedge
  %13 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %if.end129.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %if.end129.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i143 = getelementptr i8, ptr %14, i32 -1120
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  tail call void @nl80211_send_port_authorized(ptr noundef %add.ptr.i143, ptr noundef %16, ptr noundef %bssid) #10
  br label %return

return:                                           ; preds = %wiphy_to_rdev.exit, %do.end113, %do.end77, %do.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_port_authorized(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_port_authorized(ptr nocapture noundef readonly %dev, ptr noundef readonly %bssid, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %tobool.not = icmp eq ptr %bssid, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !67

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1053, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %wiphy_to_rdev.exit
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end23.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !70

if.end23.kzalloc.exit_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.end23
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %if.end23.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.end23.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 68) #14
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end27

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %kzalloc.exit
  %type = getelementptr inbounds %struct.cfg80211_event, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %type, align 8
  %7 = getelementptr inbounds %struct.cfg80211_event, ptr %call7.i.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %7, ptr %bssid, i32 6)
  %event_lock = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %event_list = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %10, ptr noundef %event_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_add_tail.exit_crit_edge

if.end27.list_add_tail.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end27.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call33) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_wq to i32))
  %15 = load ptr, ptr @cfg80211_wq, align 4
  %event_work = getelementptr i8, ptr %3, i32 -716
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %event_work) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %kzalloc.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cfg80211_disconnected(ptr noundef %dev, ptr noundef %ie, i32 noundef %ie_len, i16 noundef zeroext %reason, i1 noundef zeroext %from_ap) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1084, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %6, label %do.end46 [
    i32 8, label %if.end.if.end62_crit_edge
    i32 2, label %if.end.if.end62_crit_edge139
  ]

if.end.if.end62_crit_edge139:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end.if.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1087, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end.if.end62_crit_edge, %if.end.if.end62_crit_edge139
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_bss, align 4
  %tobool63.not = icmp eq ptr %9, null
  br i1 %tobool63.not, label %if.end62.if.end68_crit_edge, label %if.then64

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then64:                                        ; preds = %if.end62
  %hold.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then64.if.end.i_crit_edge, !prof !67

if.then64.if.end.i_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then64.if.end.i_crit_edge
  %transmitted_bss.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9, i32 6
  %11 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool19.not.i = icmp eq ptr %12, null
  br i1 %tobool19.not.i, label %if.end.i.cfg80211_unhold_bss.exit_crit_edge, label %if.then20.i

if.end.i.cfg80211_unhold_bss.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

if.then20.i:                                      ; preds = %if.end.i
  %hold24.i = getelementptr i8, ptr %12, i32 -24
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold24.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i, ptr %hold24.i, i32 1, ptr elementtype(i32) %hold24.i) #10, !srcloc !73
  %asmresult.i.i.i.i65.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i)
  %cmp27.i = icmp slt i32 %asmresult.i.i.i.i65.i, 0
  br i1 %cmp27.i, label %do.end43.i, label %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, !prof !67

if.then20.i.cfg80211_unhold_bss.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit

do.end43.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %cfg80211_unhold_bss.exit

cfg80211_unhold_bss.exit:                         ; preds = %do.end43.i, %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, %if.end.i.cfg80211_unhold_bss.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %17, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %15, ptr noundef %pub) #10
  br label %if.end68

if.end68:                                         ; preds = %cfg80211_unhold_bss.exit, %if.end62.if.end68_crit_edge
  %18 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %current_bss, align 4
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ssid_len, align 2
  %conn_owner_nlportid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %conn_owner_nlportid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %conn_owner_nlportid, align 4
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %connect_keys, align 4
  tail call void @kfree_sensitive(ptr noundef %22) #10
  %23 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %connect_keys, align 4
  tail call void @nl80211_send_disconnected(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext %reason, ptr noundef %ie, i32 noundef %ie_len, i1 noundef zeroext %from_ap) #10
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 32
  %crit_proto_stop = getelementptr inbounds %struct.cfg80211_ops, ptr %25, i32 0, i32 86
  %26 = ptrtoint ptr %crit_proto_stop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crit_proto_stop, align 4
  %tobool72.not = icmp eq ptr %27, null
  br i1 %tobool72.not, label %if.end68.if.end76_crit_edge, label %land.lhs.true

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end68
  %crit_proto_nlportid = getelementptr i8, ptr %3, i32 -396
  %28 = ptrtoint ptr %crit_proto_nlportid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crit_proto_nlportid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool73.not = icmp eq i32 %29, 0
  br i1 %tobool73.not, label %land.lhs.true.if.end76_crit_edge, label %if.then74

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %crit_proto_nlportid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %crit_proto_nlportid, align 4
  tail call fastcc void @trace_rdev_crit_proto_stop(ptr noundef nonnull %3, ptr noundef %1) #10
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 32
  %crit_proto_stop.i = getelementptr inbounds %struct.cfg80211_ops, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %crit_proto_stop.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crit_proto_stop.i, align 4
  tail call void %34(ptr noundef nonnull %3, ptr noundef %1) #10
  tail call fastcc void @trace_rdev_return_void(ptr noundef nonnull %3) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %land.lhs.true.if.end76_crit_edge, %if.end68.if.end76_crit_edge
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 32
  %del_key = getelementptr inbounds %struct.cfg80211_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %del_key to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %del_key, align 4
  %tobool78.not = icmp eq ptr %38, null
  br i1 %tobool78.not, label %if.end76.if.end88_crit_edge, label %if.then79

if.end76.if.end88_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then79:                                        ; preds = %if.end76
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.wiphy, ptr %40, i32 0, i32 14, i32 5
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %43 = and i8 %42, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %.not = icmp eq i8 %43, 0
  %44 = select i1 %.not, i32 6, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then79
  %i.0138 = phi i32 [ 0, %if.then79 ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.0138 to i8
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext %conv) #10
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i = getelementptr inbounds %struct.cfg80211_ops, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %del_key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %del_key.i, align 4
  %call.i133 = tail call i32 %48(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext %conv, i1 noundef zeroext false, ptr noundef null) #10
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i133) #10
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond = icmp eq i32 %inc, %44
  br i1 %exitcond, label %for.body.if.end88_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.end88:                                         ; preds = %for.body.if.end88_crit_edge, %if.end76.if.end88_crit_edge
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 32
  %set_qos_map.i = getelementptr inbounds %struct.cfg80211_ops, ptr %50, i32 0, i32 89
  %51 = ptrtoint ptr %set_qos_map.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_qos_map.i, align 4
  %tobool.not.i134 = icmp eq ptr %52, null
  br i1 %tobool.not.i134, label %if.end88.rdev_set_qos_map.exit_crit_edge, label %if.then.i

if.end88.rdev_set_qos_map.exit_crit_edge:         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdev_set_qos_map.exit

if.then.i:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_rdev_set_qos_map(ptr noundef nonnull %3, ptr noundef %dev) #10
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 32
  %set_qos_map2.i = getelementptr inbounds %struct.cfg80211_ops, ptr %54, i32 0, i32 89
  %55 = ptrtoint ptr %set_qos_map2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_qos_map2.i, align 4
  %call.i136 = tail call i32 %56(ptr noundef nonnull %3, ptr noundef %dev, ptr noundef null) #10
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i136) #10
  br label %rdev_set_qos_map.exit

rdev_set_qos_map.exit:                            ; preds = %if.then.i, %if.end88.rdev_set_qos_map.exit_crit_edge
  %57 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %58 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %wrqu, align 4
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #10
  %ssid_len90 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 5
  %59 = ptrtoint ptr %ssid_len90 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ssid_len90, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %60, ptr noundef nonnull @cfg80211_disconnect_work) #10
  br label %cleanup

cleanup:                                          ; preds = %rdev_set_qos_map.exit, %do.end46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_disconnected(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_disconnected(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reason, ptr nocapture noundef readonly %ie, i32 noundef %ie_len, i1 noundef zeroext %locally_generated, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %if.end8.i.i, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %gfp, 256
  %add = add i32 %ie_len, 68
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %frombool = zext i1 %locally_generated to i8
  %type = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 68
  %5 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %5, align 4
  %ie_len3 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %ie_len3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ie_len, ptr %ie_len3, align 16
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %ie, i32 %ie_len)
  %reason5 = getelementptr inbounds %struct.cfg80211_event, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %reason5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %reason, ptr %reason5, align 4
  %locally_generated7 = getelementptr inbounds %struct.anon.166, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %locally_generated7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %locally_generated7, align 2
  %event_lock = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %event_list = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %12, ptr noundef %event_list) #10
  br i1 %call.i.i, label %if.end.i.i32, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i32:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %event_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call9.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i32, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call11) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_wq to i32))
  %17 = load ptr, ptr @cfg80211_wq, align 4
  %event_work = getelementptr i8, ptr %3, i32 -716
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %event_work) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end8.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_connect(ptr noundef %rdev, ptr noundef %dev, ptr noundef %connect, ptr noundef %connkeys, ptr noundef readonly %prev_bssid) local_unnamed_addr #0 align 64 {
entry:
  %treason.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1178, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool24.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %ssid_len27 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 5
  %5 = ptrtoint ptr %ssid_len27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ssid_len27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp28.not = icmp eq i32 %6, %conv
  br i1 %cmp28.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid30 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 4
  %7 = ptrtoint ptr %ssid30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ssid30, align 4
  %bcmp = tail call i32 @bcmp(ptr %ssid, ptr %8, i32 %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool34.not = icmp eq i32 %bcmp, 0
  br i1 %tobool34.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %lor.lhs.false.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_bss, align 4
  %tobool37.not = icmp eq ptr %10, null
  br i1 %tobool37.not, label %if.end36.if.end47_crit_edge, label %if.then38

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then38:                                        ; preds = %if.end36
  %tobool39.not = icmp eq ptr %prev_bssid, null
  br i1 %tobool39.not, label %if.then38.cleanup_crit_edge, label %if.end41

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.then38
  %bssid = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %10, i32 0, i32 9, i32 11
  %11 = ptrtoint ptr %prev_bssid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prev_bssid, align 4
  %13 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bssid, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr i8, ptr %prev_bssid, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.cfg80211_internal_bss, ptr %10, i32 0, i32 9, i32 11, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end41.if.end47_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %if.end41.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connect_keys, align 4
  %tobool48.not = icmp eq ptr %20, null
  br i1 %tobool48.not, label %if.end50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %ht_capa_mask = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 18
  %ht_capa_mod_mask = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 59
  %21 = ptrtoint ptr %ht_capa_mod_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ht_capa_mod_mask, align 8
  tail call void @cfg80211_oper_and_ht_capa(ptr noundef %ht_capa_mask, ptr noundef %22) #10
  %vht_capa_mask = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 20
  %vht_capa_mod_mask = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 60
  %23 = ptrtoint ptr %vht_capa_mod_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vht_capa_mod_mask, align 4
  tail call void @cfg80211_oper_and_vht_capa(ptr noundef %vht_capa_mask, ptr noundef %24) #10
  %tobool52.not = icmp eq ptr %connkeys, null
  br i1 %tobool52.not, label %if.end50.if.end128_crit_edge, label %land.lhs.true53

if.end50.if.end128_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

land.lhs.true53:                                  ; preds = %if.end50
  %def = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %connkeys, i32 0, i32 2
  %25 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp54 = icmp sgt i32 %26, -1
  br i1 %cmp54, label %if.then56, label %do.end111.critedge

if.then56:                                        ; preds = %land.lhs.true53
  %cipher58 = getelementptr [4 x %struct.key_params], ptr %connkeys, i32 0, i32 %26, i32 5
  %27 = ptrtoint ptr %cipher58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cipher58, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %28, label %if.then56.if.end88_crit_edge [
    i32 1027073, label %if.then56.if.then64_crit_edge
    i32 1027077, label %if.then56.if.then64_crit_edge225
  ]

if.then56.if.then64_crit_edge225:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then56.if.then64_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then56.if.end88_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then64:                                        ; preds = %if.then56.if.then64_crit_edge, %if.then56.if.then64_crit_edge225
  %arrayidx = getelementptr [4 x %struct.key_params], ptr %connkeys, i32 0, i32 %26
  %conv65 = trunc i32 %26 to i8
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 14
  %30 = ptrtoint ptr %key_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv65, ptr %key_idx, align 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %key68 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 12
  %33 = ptrtoint ptr %key68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %key68, align 4
  %key_len = getelementptr [4 x %struct.key_params], ptr %connkeys, i32 0, i32 %26, i32 2
  %34 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key_len, align 4
  %conv71 = trunc i32 %35 to i8
  %key_len72 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 13
  %36 = ptrtoint ptr %key_len72 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv71, ptr %key_len72, align 4
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cipher_group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp73 = icmp eq i32 %38, 0
  br i1 %cmp73, label %if.then75, label %if.then64.if.end78_crit_edge

if.then64.if.end78_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then75:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %cipher_group to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %28, ptr %cipher_group, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then64.if.end78_crit_edge
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 11, i32 2
  %40 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp80 = icmp eq i32 %41, 0
  br i1 %cmp80, label %if.then82, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %n_ciphers_pairwise, align 4
  %ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 11, i32 3
  %43 = ptrtoint ptr %ciphers_pairwise to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %28, ptr %ciphers_pairwise, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end78.if.end88_crit_edge, %if.then56.if.end88_crit_edge
  %wep_keys = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 11, i32 11
  %44 = ptrtoint ptr %wep_keys to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %connkeys, ptr %wep_keys, align 4
  %45 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %def, align 4
  %wep_tx_key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 11, i32 12
  %47 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %wep_tx_key, align 4
  br label %if.end128

do.end111.critedge:                               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1243, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end128:                                        ; preds = %if.end88, %if.end50.if.end128_crit_edge
  %48 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %connkeys, ptr %connect_keys, align 4
  %ssid130 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid132 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 4
  %49 = ptrtoint ptr %ssid132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ssid132, align 4
  %ssid_len133 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 5
  %51 = ptrtoint ptr %ssid_len133 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ssid_len133, align 4
  %53 = call ptr @memcpy(ptr %ssid130, ptr %50, i32 %52)
  %54 = load i32, ptr %ssid_len133, align 4
  %conv135 = trunc i32 %54 to i8
  %55 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv135, ptr %ssid_len, align 2
  %pbss = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 21
  %56 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pbss, align 4, !range !69
  %58 = zext i8 %57 to i32
  %conn_bss_type = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 19
  %59 = ptrtoint ptr %conn_bss_type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %conn_bss_type, align 4
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rdev, align 32
  %connect139 = getelementptr inbounds %struct.cfg80211_ops, ptr %61, i32 0, i32 43
  %62 = ptrtoint ptr %connect139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %connect139, align 4
  %tobool140.not = icmp eq ptr %63, null
  br i1 %tobool140.not, label %if.then141, label %if.end145

if.then141:                                       ; preds = %if.end128
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_rdev.exit.i, !prof !67

do.body4.i.i:                                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit.i:                             ; preds = %if.then141
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 -1120
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i.i, align 32
  %auth.i = getelementptr inbounds %struct.cfg80211_ops, ptr %67, i32 0, i32 39
  %68 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %auth.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %wiphy_to_rdev.exit.i.if.then147_crit_edge, label %lor.lhs.false.i

wiphy_to_rdev.exit.i.if.then147_crit_edge:        ; preds = %wiphy_to_rdev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

lor.lhs.false.i:                                  ; preds = %wiphy_to_rdev.exit.i
  %assoc.i = getelementptr inbounds %struct.cfg80211_ops, ptr %67, i32 0, i32 40
  %70 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %assoc.i, align 4
  %tobool2.not.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then147_crit_edge, label %if.end.i

lor.lhs.false.i.if.then147_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end.i:                                         ; preds = %lor.lhs.false.i
  %72 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %current_bss, align 4
  %tobool3.not.i = icmp eq ptr %73, null
  br i1 %tobool3.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then4.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  %hold.i.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %73, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold.i.i, i32 1, i32 3, i32 1) #10
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i.i, ptr %hold.i.i, i32 1, ptr elementtype(i32) %hold.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then4.i.if.end.i.i_crit_edge, !prof !67

if.then4.i.if.end.i.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then4.i.if.end.i.i_crit_edge
  %transmitted_bss.i.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %73, i32 0, i32 9, i32 6
  %75 = ptrtoint ptr %transmitted_bss.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transmitted_bss.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %76, null
  br i1 %tobool19.not.i.i, label %if.end.i.i.cfg80211_unhold_bss.exit.i_crit_edge, label %if.then20.i.i

if.end.i.i.cfg80211_unhold_bss.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  %hold24.i.i = getelementptr i8, ptr %76, i32 -24
  %call.i.i64.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %hold24.i.i, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i.i, ptr %hold24.i.i, i32 1, ptr elementtype(i32) %hold24.i.i) #10, !srcloc !73
  %asmresult.i.i.i.i65.i.i = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i.i)
  %cmp27.i.i = icmp slt i32 %asmresult.i.i.i.i65.i.i, 0
  br i1 %cmp27.i.i, label %do.end43.i.i, label %if.then20.i.i.cfg80211_unhold_bss.exit.i_crit_edge, !prof !67

if.then20.i.i.cfg80211_unhold_bss.exit.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_unhold_bss.exit.i

do.end43.i.i:                                     ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %cfg80211_unhold_bss.exit.i

cfg80211_unhold_bss.exit.i:                       ; preds = %do.end43.i.i, %if.then20.i.i.cfg80211_unhold_bss.exit.i_crit_edge, %if.end.i.i.cfg80211_unhold_bss.exit.i_crit_edge
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %current_bss, align 4
  %pub.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %81, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %79, ptr noundef %pub.i) #10
  %82 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %current_bss, align 4
  %conn.i.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %83 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %conn.i.i, align 4
  %tobool.not.i133.i = icmp eq ptr %84, null
  br i1 %tobool.not.i133.i, label %cfg80211_unhold_bss.exit.i.if.end9.i_crit_edge, label %if.end.i134.i

cfg80211_unhold_bss.exit.i.if.end9.i_crit_edge:   ; preds = %cfg80211_unhold_bss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i134.i:                                    ; preds = %cfg80211_unhold_bss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ie.i.i = getelementptr inbounds %struct.cfg80211_conn, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ie.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ie.i.i, align 4
  tail call void @kfree(ptr noundef %86) #10
  %87 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %conn.i.i, align 4
  tail call void @kfree(ptr noundef %88) #10
  %89 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %conn.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i134.i, %cfg80211_unhold_bss.exit.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %conn.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %90 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %conn.i, align 4
  %tobool10.not.i = icmp eq ptr %91, null
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.if.then147_crit_edge

if.end9.i.if.then147_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end12.i:                                       ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 300) #14
  %93 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i.i, ptr %conn.i, align 4
  %tobool16.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not.i, label %if.end12.i.if.then147_crit_edge, label %if.end18.i

if.end12.i.if.then147_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end18.i:                                       ; preds = %if.end12.i
  %94 = call ptr @memcpy(ptr %call7.i.i.i, ptr %connect, i32 272)
  %bssid.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 2
  %95 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bssid.i, align 4
  %tobool20.not.i = icmp eq ptr %96, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end31.i_crit_edge, label %if.then21.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %bssid23.i = getelementptr inbounds %struct.cfg80211_conn, ptr %call7.i.i.i, i32 0, i32 2
  %bssid26.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %call7.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %bssid26.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %bssid23.i, ptr %bssid26.i, align 8
  %98 = call ptr @memcpy(ptr %bssid23.i, ptr %96, i32 6)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end31.i_crit_edge
  %ie.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 7
  %99 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ie.i, align 4
  %ie_len.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 8
  %101 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ie_len.i, align 4
  %103 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %conn.i, align 4
  %ie33.i = getelementptr inbounds %struct.cfg80211_conn, ptr %104, i32 0, i32 4
  %ie_len36.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %tobool.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %wiphy_to_rdev.exit.i.i, !prof !67

do.body4.i.i.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit.i.i:                           ; preds = %if.end31.i
  %extended_capabilities_len.i.i = getelementptr i8, ptr %106, i32 288
  %107 = ptrtoint ptr %extended_capabilities_len.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %extended_capabilities_len.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i135.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i135.i, label %wiphy_to_rdev.exit.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

wiphy_to_rdev.exit.i.i.if.then.i.i_crit_edge:     ; preds = %wiphy_to_rdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %wiphy_to_rdev.exit.i.i
  %tobool2.not.i.i = icmp eq ptr %100, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end8.i.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.end8.i.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call.i.i.i136.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 127, ptr noundef nonnull %100, i32 noundef %102, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i136.i, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end8.i.i.i_crit_edge, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.i.i.if.end8.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.if.then.i.i_crit_edge, %wiphy_to_rdev.exit.i.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @kmemdup(ptr noundef %100, i32 noundef %102, i32 noundef 3264) #10
  %109 = ptrtoint ptr %ie33.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call5.i.i, ptr %ie33.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.then147.sink.split_crit_edge, label %if.then.i.i.if.end42.i_crit_edge

if.then.i.i.if.end42.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then.i.i.if.then147.sink.split_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147.sink.split

if.end8.i.i.i:                                    ; preds = %land.lhs.true.i.i.if.end8.i.i.i_crit_edge, %lor.lhs.false.i.i.if.end8.i.i.i_crit_edge
  %110 = ptrtoint ptr %extended_capabilities_len.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %extended_capabilities_len.i.i, align 32
  %conv.i.i = zext i8 %111 to i32
  %add.i.i = add i32 %102, %conv.i.i
  %add11.i.i = add i32 %add.i.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11.i.i, i32 noundef 3264) #13
  %tobool13.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool13.not.i.i, label %if.end8.i.i.i.if.then147.sink.split_crit_edge, label %if.end15.i.i

if.end8.i.i.i.if.then147.sink.split_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147.sink.split

if.end15.i.i:                                     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool16.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end25.i.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %100, i32 noundef %102, ptr noundef nonnull @cfg80211_sme_get_conn_ies.before_extcapa, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %112 = call ptr @memcpy(ptr %call9.i.i.i, ptr %100, i32 %call.i.i.i)
  %add.ptr.i138.i = getelementptr i8, ptr %call9.i.i.i, i32 %call.i.i.i
  %113 = ptrtoint ptr %extended_capabilities_len.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %extended_capabilities_len.i.i, align 32
  %conv21.i.i = zext i8 %114 to i32
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr.i138.i, i32 %conv21.i.i
  %add.ptr23.i.i = getelementptr i8, ptr %add.ptr22.i.i, i32 2
  %add.ptr24.i.i = getelementptr i8, ptr %100, i32 %call.i.i.i
  %sub.i.i = sub i32 %102, %call.i.i.i
  %115 = call ptr @memcpy(ptr %add.ptr23.i.i, ptr %add.ptr24.i.i, i32 %sub.i.i)
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then17.i.i, %if.end15.i.i.if.end25.i.i_crit_edge
  %offs.0.i.i = phi i32 [ %call.i.i.i, %if.then17.i.i ], [ 0, %if.end15.i.i.if.end25.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %offs.0.i.i
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 127, ptr %arrayidx.i.i, align 1
  %117 = ptrtoint ptr %extended_capabilities_len.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %extended_capabilities_len.i.i, align 32
  %add28.i.i = add i32 %offs.0.i.i, 1
  %arrayidx29.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %add28.i.i
  %119 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx29.i.i, align 1
  %add.ptr31.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  %extended_capabilities.i.i = getelementptr i8, ptr %106, i32 280
  %120 = ptrtoint ptr %extended_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %extended_capabilities.i.i, align 8
  %122 = load i8, ptr %extended_capabilities_len.i.i, align 32
  %conv35.i.i = zext i8 %122 to i32
  %123 = call ptr @memcpy(ptr %add.ptr31.i.i, ptr %121, i32 %conv35.i.i)
  %124 = ptrtoint ptr %ie33.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call9.i.i.i, ptr %ie33.i, align 4
  %125 = load i8, ptr %extended_capabilities_len.i.i, align 32
  %conv38.i.i = zext i8 %125 to i32
  %add39.i.i = add i32 %102, 2
  %add40.i.i = add i32 %add39.i.i, %conv38.i.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end25.i.i, %if.then.i.i.if.end42.i_crit_edge
  %add40.sink.i.i = phi i32 [ %add40.i.i, %if.end25.i.i ], [ %102, %if.then.i.i.if.end42.i_crit_edge ]
  %126 = ptrtoint ptr %ie_len36.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add40.sink.i.i, ptr %ie_len36.i, align 4
  %127 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %conn.i, align 4
  %ie44.i = getelementptr inbounds %struct.cfg80211_conn, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %ie44.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ie44.i, align 4
  %ie47.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %128, i32 0, i32 7
  %131 = ptrtoint ptr %ie47.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %ie47.i, align 4
  %auth_type.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %connect, i32 0, i32 6
  %132 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %auth_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %133)
  %cmp.i216 = icmp eq i32 %133, 8
  %134 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %conn.i, align 4
  %auto_auth.i = getelementptr inbounds %struct.cfg80211_conn, ptr %135, i32 0, i32 6
  br i1 %cmp.i216, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %auto_auth.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %auto_auth.i, align 4
  %137 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %conn.i, align 4
  %auth_type52.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %auth_type52.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %auth_type52.i, align 4
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %auto_auth.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %auto_auth.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.then48.i
  %141 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %conn.i, align 4
  %ssid59.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %ssid59.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %ssid130, ptr %ssid59.i, align 4
  %144 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ssid_len, align 2
  %conv.i = zext i8 %145 to i32
  %146 = load ptr, ptr %conn.i, align 4
  %ssid_len62.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %ssid_len62.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv.i, ptr %ssid_len62.i, align 4
  %call63.i = tail call fastcc ptr @cfg80211_get_conn_bss(ptr noundef %1) #10
  %tobool64.not.i = icmp eq ptr %prev_bssid, null
  br i1 %tobool64.not.i, label %if.end55.i.if.end70.i_crit_edge, label %if.then65.i

if.end55.i.if.end70.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then65.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %conn.i, align 4
  %prev_bssid67.i = getelementptr inbounds %struct.cfg80211_conn, ptr %149, i32 0, i32 3
  %150 = call ptr @memcpy(ptr %prev_bssid67.i, ptr %prev_bssid, i32 6)
  %151 = load ptr, ptr %conn.i, align 4
  %prev_bssid_valid.i = getelementptr inbounds %struct.cfg80211_conn, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %prev_bssid_valid.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %prev_bssid_valid.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i, %if.end55.i.if.end70.i_crit_edge
  %tobool71.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool71.not.i, label %if.else75.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %treason.i) #10
  %call73.i = call fastcc i32 @cfg80211_conn_do_work(ptr noundef %1, ptr noundef nonnull %treason.i) #10
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  tail call void @cfg80211_put_bss(ptr noundef %154, ptr noundef nonnull %call63.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %treason.i) #10
  br label %if.end82.i

if.else75.i:                                      ; preds = %if.end70.i
  %call76.i = tail call fastcc i32 @cfg80211_conn_scan(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call76.i)
  %cmp77.i = icmp eq i32 %call76.i, -16
  br i1 %cmp77.i, label %if.end82.thread.i, label %if.else75.i.if.end82.i_crit_edge

if.else75.i.if.end82.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

if.end82.thread.i:                                ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %conn.i, align 4
  %state.i = getelementptr inbounds %struct.cfg80211_conn, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %state.i, align 4
  br label %cleanup

if.end82.i:                                       ; preds = %if.else75.i.if.end82.i_crit_edge, %if.then72.i
  %err.0.i = phi i32 [ %call73.i, %if.then72.i ], [ %call76.i, %if.else75.i.if.end82.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool83.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool83.not.i, label %if.end82.i.cleanup_crit_edge, label %if.then84.i

if.end82.i.cleanup_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then84.i:                                      ; preds = %if.end82.i
  %158 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %conn.i, align 4
  %tobool.not.i140.i = icmp eq ptr %159, null
  br i1 %tobool.not.i140.i, label %if.then84.i.if.then147_crit_edge, label %if.end.i142.i

if.then84.i.if.then147_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end.i142.i:                                    ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %ie.i141.i = getelementptr inbounds %struct.cfg80211_conn, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %ie.i141.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ie.i141.i, align 4
  tail call void @kfree(ptr noundef %161) #10
  br label %if.then147.sink.split

if.end145:                                        ; preds = %if.end128
  %wiphy.i = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  tail call fastcc void @trace_rdev_connect(ptr noundef %wiphy.i, ptr noundef %dev, ptr noundef %connect) #10
  %162 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rdev, align 32
  %connect.i = getelementptr inbounds %struct.cfg80211_ops, ptr %163, i32 0, i32 43
  %164 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %connect.i, align 4
  %call.i217 = tail call i32 %165(ptr noundef %wiphy.i, ptr noundef %dev, ptr noundef %connect) #10
  tail call fastcc void @trace_rdev_return_int(ptr noundef %wiphy.i, i32 noundef %call.i217) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool146.not = icmp eq i32 %call.i217, 0
  br i1 %tobool146.not, label %if.end145.cleanup_crit_edge, label %if.end145.if.then147_crit_edge

if.end145.if.then147_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then147

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then147.sink.split:                            ; preds = %if.end.i142.i, %if.end8.i.i.i.if.then147.sink.split_crit_edge, %if.then.i.i.if.then147.sink.split_crit_edge
  %err.0220.ph = phi i32 [ %err.0.i, %if.end.i142.i ], [ -12, %if.end8.i.i.i.if.then147.sink.split_crit_edge ], [ -12, %if.then.i.i.if.then147.sink.split_crit_edge ]
  %166 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %conn.i, align 4
  tail call void @kfree(ptr noundef %167) #10
  %168 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %conn.i, align 4
  br label %if.then147

if.then147:                                       ; preds = %if.then147.sink.split, %if.end145.if.then147_crit_edge, %if.then84.i.if.then147_crit_edge, %if.end12.i.if.then147_crit_edge, %if.end9.i.if.then147_crit_edge, %lor.lhs.false.i.if.then147_crit_edge, %wiphy_to_rdev.exit.i.if.then147_crit_edge
  %err.0220 = phi i32 [ %call.i217, %if.end145.if.then147_crit_edge ], [ %err.0.i, %if.then84.i.if.then147_crit_edge ], [ -12, %if.end12.i.if.then147_crit_edge ], [ -115, %if.end9.i.if.then147_crit_edge ], [ -95, %wiphy_to_rdev.exit.i.if.then147_crit_edge ], [ -95, %lor.lhs.false.i.if.then147_crit_edge ], [ %err.0220.ph, %if.then147.sink.split ]
  %169 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %connect_keys, align 4
  %170 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %current_bss, align 4
  %tobool150.not = icmp eq ptr %171, null
  br i1 %tobool150.not, label %if.then151, label %if.then147.cleanup_crit_edge

if.then147.cleanup_crit_edge:                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then151:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %ssid_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %if.then147.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %if.end82.i.cleanup_crit_edge, %if.end82.thread.i, %do.end111.critedge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end111.critedge ], [ -114, %lor.lhs.false.cleanup_crit_edge ], [ -114, %land.lhs.true.cleanup_crit_edge ], [ -114, %if.then38.cleanup_crit_edge ], [ -107, %if.end41.cleanup_crit_edge ], [ -115, %if.end47.cleanup_crit_edge ], [ %err.0220, %if.then151 ], [ %err.0220, %if.then147.cleanup_crit_edge ], [ 0, %if.end145.cleanup_crit_edge ], [ 0, %if.end82.i.cleanup_crit_edge ], [ 0, %if.end82.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_oper_and_ht_capa(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_oper_and_vht_capa(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_disconnect(ptr noundef %rdev, ptr noundef %dev, i16 noundef zeroext %reason, i1 zeroext %wextev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1279, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connect_keys, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #10
  %5 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %connect_keys, align 4
  %conn_owner_nlportid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %conn_owner_nlportid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %conn_owner_nlportid, align 4
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.end.i, !prof !67

do.body4.i.i:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

if.end.i:                                         ; preds = %if.then26
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -1120
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 32
  %deauth.i = getelementptr inbounds %struct.cfg80211_ops, ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %deauth.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %deauth.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.if.end36_crit_edge, label %if.end3.i

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end3.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.cfg80211_conn, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i = icmp ult i32 %16, 2
  br i1 %switch.i, label %if.end3.i.out.i_crit_edge, label %if.end9.i

if.end3.i.out.i_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev.i, align 4
  %bssid.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bssid.i, align 4
  %call11.i = tail call i32 @cfg80211_mlme_deauth(ptr noundef %add.ptr.i.i, ptr noundef %18, ptr noundef %20, ptr noundef null, i32 noundef 0, i16 noundef zeroext %reason, i1 noundef zeroext false) #10
  br label %out.i

out.i:                                            ; preds = %if.end9.i, %if.end3.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call11.i, %if.end9.i ], [ 0, %if.end3.i.out.i_crit_edge ]
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  %tobool.not.i21.i = icmp eq ptr %22, null
  br i1 %tobool.not.i21.i, label %out.i.if.end36_crit_edge, label %if.end.i.i

out.i.if.end36_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end.i.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %ie.i.i = getelementptr inbounds %struct.cfg80211_conn, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ie.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ie.i.i, align 4
  tail call void @kfree(ptr noundef %24) #10
  %25 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn, align 4
  tail call void @kfree(ptr noundef %26) #10
  %27 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %conn, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end
  %28 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rdev, align 32
  %disconnect = getelementptr inbounds %struct.cfg80211_ops, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disconnect, align 4
  %tobool28.not = icmp eq ptr %31, null
  br i1 %tobool28.not, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfg80211_mlme_down(ptr noundef %rdev, ptr noundef %dev) #10
  br label %if.end36

if.else30:                                        ; preds = %if.else
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool31.not = icmp eq i8 %33, 0
  br i1 %tobool31.not, label %if.else30.if.end36_crit_edge, label %if.then32

if.else30.if.end36_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy.i = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  tail call fastcc void @trace_rdev_disconnect(ptr noundef %wiphy.i, ptr noundef %dev, i16 noundef zeroext %reason) #10
  %34 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rdev, align 32
  %disconnect.i = getelementptr inbounds %struct.cfg80211_ops, ptr %35, i32 0, i32 45
  %36 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disconnect.i, align 4
  %call.i55 = tail call i32 %37(ptr noundef %wiphy.i, ptr noundef %dev, i16 noundef zeroext %reason) #10
  tail call fastcc void @trace_rdev_return_int(ptr noundef %wiphy.i, i32 noundef %call.i55) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.else30.if.end36_crit_edge, %if.then29, %if.end.i.i, %out.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge
  %err.0 = phi i32 [ %call.i55, %if.then32 ], [ 0, %if.else30.if.end36_crit_edge ], [ 0, %if.then29 ], [ -95, %if.end.i.if.end36_crit_edge ], [ %err.0.i, %out.i.if.end36_crit_edge ], [ %err.0.i, %if.end.i.i ]
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %38 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %current_bss, align 4
  %tobool37.not = icmp eq ptr %39, null
  br i1 %tobool37.not, label %if.then38, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %ssid_len39 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %ssid_len39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ssid_len39, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mlme_down(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_autodisconnect_wk(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1120
  %mtx.i = getelementptr i8, ptr %work, i32 -156
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #10
  %conn_owner_nlportid = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %conn_owner_nlportid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conn_owner_nlportid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end16_crit_edge, label %if.then

wiphy_to_rdev.exit.if.end16_crit_edge:            ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %wiphy_to_rdev.exit
  %iftype = getelementptr i8, ptr %work, i32 -188
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %5, label %if.then.if.end16_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.then.sw.bb2_crit_edge
    i32 9, label %if.then.sw.bb2_crit_edge34
    i32 7, label %sw.bb5
    i32 2, label %if.then.sw.bb8_crit_edge
    i32 8, label %if.then.sw.bb8_crit_edge35
  ]

if.then.sw.bb8_crit_edge35:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.then.sw.bb8_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.then.sw.bb2_crit_edge34:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr i8, ptr %work, i32 -176
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %call1 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %add.ptr.i, ptr noundef %8, i1 noundef zeroext false) #10
  br label %if.end16

sw.bb2:                                           ; preds = %if.then.sw.bb2_crit_edge, %if.then.sw.bb2_crit_edge34
  %netdev3 = getelementptr i8, ptr %work, i32 -176
  %9 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev3, align 4
  %call4 = tail call i32 @__cfg80211_stop_ap(ptr noundef %add.ptr.i, ptr noundef %10, i1 noundef zeroext false) #10
  br label %if.end16

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %netdev6 = getelementptr i8, ptr %work, i32 -176
  %11 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev6, align 4
  %call7 = tail call i32 @__cfg80211_leave_mesh(ptr noundef %add.ptr.i, ptr noundef %12) #10
  br label %if.end16

sw.bb8:                                           ; preds = %if.then.sw.bb8_crit_edge, %if.then.sw.bb8_crit_edge35
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 32
  %disconnect = getelementptr inbounds %struct.cfg80211_ops, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disconnect, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %lor.lhs.false, label %sw.bb8.if.then11_crit_edge

sw.bb8.if.then11_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %sw.bb8
  %current_bss = getelementptr i8, ptr %work, i32 104
  %17 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_bss, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %sw.bb8.if.then11_crit_edge
  %netdev12 = getelementptr i8, ptr %work, i32 -176
  %19 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev12, align 4
  %call13 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %20, i16 noundef zeroext 3, i1 zeroext undef)
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %netdev14 = getelementptr i8, ptr %work, i32 -176
  %21 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev14, align 4
  %disconnect_bssid = getelementptr i8, ptr %work, i32 44
  %call15 = tail call i32 @cfg80211_mlme_deauth(ptr noundef %add.ptr.i, ptr noundef %22, ptr noundef %disconnect_bssid, ptr noundef null, i32 noundef 0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11, %sw.bb5, %sw.bb2, %sw.bb, %if.then.if.end16_crit_edge, %wiphy_to_rdev.exit.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_ibss(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_stop_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_mesh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_deauth(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_conn_scan(ptr noundef %wdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %scan_req = getelementptr i8, ptr %1, i32 -840
  %3 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scan_req, align 8
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end.cleanup117_crit_edge

if.end.cleanup117_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

lor.lhs.false:                                    ; preds = %if.end
  %scan_msg = getelementptr i8, ptr %1, i32 -832
  %5 = ptrtoint ptr %scan_msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_msg, align 32
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.cleanup117_crit_edge

lor.lhs.false.cleanup117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end28:                                         ; preds = %lor.lhs.false
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool29.not = icmp eq ptr %10, null
  br i1 %tobool29.not, label %if.else, label %if.end28.if.end8.i.i_crit_edge

if.end28.if.end8.i.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdev, align 4
  %call32 = tail call i32 @ieee80211_get_num_supported_channels(ptr noundef %12) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else, %if.end28.if.end8.i.i_crit_edge
  %n_channels.0 = phi i32 [ %call32, %if.else ], [ 1, %if.end28.if.end8.i.i_crit_edge ]
  %mul = shl i32 %n_channels.0, 2
  %add = add i32 %mul, 153
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool35.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool35.not, label %if.end8.i.i.cleanup117_crit_edge, label %if.end37

if.end8.i.i.cleanup117_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end37:                                         ; preds = %if.end8.i.i
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool41.not = icmp eq ptr %16, null
  br i1 %tobool41.not, label %for.cond.preheader, label %if.then42

for.cond.preheader:                               ; preds = %if.end37
  %17 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wdev, align 4
  br label %for.body

if.then42:                                        ; preds = %if.end37
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wdev, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %22, i32 0, i32 53, i32 %20
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %24, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup117

if.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 22
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %channels, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_bitrates, align 4
  %notmask178 = shl nsw i32 -1, %27
  %sub = xor i32 %notmask178, -1
  %arrayidx55 = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 9, i32 %20
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %arrayidx55, align 4
  br label %if.end88

for.body:                                         ; preds = %for.inc85.for.body_crit_edge, %for.cond.preheader
  %band58.0186 = phi i32 [ 0, %for.cond.preheader ], [ %inc86, %for.inc85.for.body_crit_edge ]
  %i.0185 = phi i32 [ 0, %for.cond.preheader ], [ %i.3, %for.inc85.for.body_crit_edge ]
  %arrayidx64 = getelementptr %struct.wiphy, ptr %18, i32 0, i32 53, i32 %band58.0186
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %30, null
  br i1 %tobool65.not, label %for.body.for.inc85_crit_edge, label %for.cond68.preheader

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85

for.cond68.preheader:                             ; preds = %for.body
  %n_channels69 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %n_channels69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_channels69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp70181 = icmp sgt i32 %32, 0
  br i1 %cmp70181, label %for.cond68.preheader.for.body71_crit_edge, label %for.cond68.preheader.for.end_crit_edge

for.cond68.preheader.for.end_crit_edge:           ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond68.preheader.for.body71_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body71

for.body71:                                       ; preds = %for.inc.for.body71_crit_edge, %for.cond68.preheader.for.body71_crit_edge
  %j.0183 = phi i32 [ %inc79, %for.inc.for.body71_crit_edge ], [ 0, %for.cond68.preheader.for.body71_crit_edge ]
  %i.1182 = phi i32 [ %i.2, %for.inc.for.body71_crit_edge ], [ %i.0185, %for.cond68.preheader.for.body71_crit_edge ]
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %34, i32 %j.0183, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %if.end76, label %for.body71.for.inc_crit_edge

for.body71.for.inc_crit_edge:                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end76:                                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx73 = getelementptr %struct.ieee80211_channel, ptr %34, i32 %j.0183
  %inc = add i32 %i.1182, 1
  %arrayidx78 = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 22, i32 %i.1182
  %37 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx73, ptr %arrayidx78, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end76, %for.body71.for.inc_crit_edge
  %i.2 = phi i32 [ %i.1182, %for.body71.for.inc_crit_edge ], [ %inc, %if.end76 ]
  %inc79 = add nuw nsw i32 %j.0183, 1
  %38 = ptrtoint ptr %n_channels69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels69, align 4
  %cmp70 = icmp slt i32 %inc79, %39
  br i1 %cmp70, label %for.inc.for.body71_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body71_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond68.preheader.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.0185, %for.cond68.preheader.for.end_crit_edge ], [ %i.2, %for.inc.for.end_crit_edge ]
  %n_bitrates80 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 4
  %40 = ptrtoint ptr %n_bitrates80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitrates80, align 4
  %notmask = shl nsw i32 -1, %41
  %sub82 = xor i32 %notmask, -1
  %arrayidx84 = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 9, i32 %band58.0186
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub82, ptr %arrayidx84, align 4
  br label %for.inc85

for.inc85:                                        ; preds = %for.end, %for.body.for.inc85_crit_edge
  %i.3 = phi i32 [ %i.1.lcssa, %for.end ], [ %i.0185, %for.body.for.inc85_crit_edge ]
  %inc86 = add nuw nsw i32 %band58.0186, 1
  %exitcond.not = icmp eq i32 %inc86, 6
  br i1 %exitcond.not, label %for.inc85.if.end88_crit_edge, label %for.inc85.for.body_crit_edge

for.inc85.for.body_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc85.if.end88_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.end88:                                         ; preds = %for.inc85.if.end88_crit_edge, %if.end50
  %n_channels.1 = phi i32 [ %n_channels.0, %if.end50 ], [ %i.3, %for.inc85.if.end88_crit_edge ]
  %n_channels89 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %n_channels89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %n_channels.1, ptr %n_channels89, align 8
  %arrayidx91 = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 22, i32 %n_channels.1
  %44 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx91, ptr %call9.i.i, align 128
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %n_ssids to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %n_ssids, align 4
  %ssid96 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %14, i32 0, i32 4
  %46 = ptrtoint ptr %ssid96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ssid96, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %14, i32 0, i32 5
  %48 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ssid_len, align 4
  %50 = call ptr @memcpy(ptr %arrayidx91, ptr %47, i32 %49)
  %51 = load i32, ptr %ssid_len, align 4
  %conv = trunc i32 %51 to i8
  %52 = load ptr, ptr %call9.i.i, align 128
  %ssid_len104 = getelementptr inbounds %struct.cfg80211_ssid, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %ssid_len104 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %ssid_len104, align 1
  %bssid = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 13
  %54 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %wdev106 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %wdev106 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %wdev, ptr %wdev106, align 8
  %wiphy108 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 14
  %56 = ptrtoint ptr %wiphy108 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %1, ptr %wiphy108, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %scan_start = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %scan_start to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %scan_start, align 4
  %59 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i.i, ptr %scan_req, align 8
  tail call fastcc void @trace_rdev_scan(ptr noundef nonnull %1, ptr noundef nonnull %call9.i.i) #10
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 32
  %scan.i = getelementptr inbounds %struct.cfg80211_ops, ptr %61, i32 0, i32 37
  %62 = ptrtoint ptr %scan.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scan.i, align 4
  %call.i179 = tail call i32 %63(ptr noundef nonnull %1, ptr noundef nonnull %call9.i.i) #10
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %1, i32 noundef %call.i179) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool111.not = icmp eq i32 %call.i179, 0
  br i1 %tobool111.not, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.end88
  %64 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %conn, align 4
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %state, align 4
  tail call void @nl80211_send_scan_start(ptr noundef %add.ptr.i, ptr noundef %wdev) #10
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %67 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev, align 4
  %tobool.not.i180 = icmp eq ptr %68, null
  br i1 %tobool.not.i180, label %if.then112.cleanup117_crit_edge, label %do.body1.i

if.then112.cleanup117_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

do.body1.i:                                       ; preds = %if.then112
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 118
  %70 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcpu_refcnt.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %78, %72
  %79 = inttoptr i32 %add.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add13.i = add i32 %81, 1
  store i32 %add13.i, ptr %79, align 4
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !78
  %and.i.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !67

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #10, !srcloc !79
  br label %cleanup117

if.else114:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %scan_req, align 8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup117

cleanup117:                                       ; preds = %if.else114, %do.end30.i, %if.then112.cleanup117_crit_edge, %if.then49, %if.end8.i.i.cleanup117_crit_edge, %lor.lhs.false.cleanup117_crit_edge, %if.end.cleanup117_crit_edge
  %retval.1 = phi i32 [ -16, %lor.lhs.false.cleanup117_crit_edge ], [ -16, %if.end.cleanup117_crit_edge ], [ -12, %if.end8.i.i.cleanup117_crit_edge ], [ -22, %if.then49 ], [ %call.i179, %if.else114 ], [ 0, %if.then112.cleanup117_crit_edge ], [ 0, %do.end30.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_auth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_mlme_assoc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_num_supported_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_scan_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_scan(ptr noundef %wiphy, ptr noundef %request) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 1), ptr blockaddress(@trace_rdev_scan, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %call42 = tail call i32 @__traceiter_rdev_scan(ptr noundef null, ptr noundef %wiphy, ptr noundef %request) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_scan, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 305, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_return_int(ptr noundef %wiphy, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), ptr blockaddress(@trace_rdev_return_int, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %call42 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %wiphy, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cfg80211_get_conn_bss(ptr noundef %wdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !67

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !67

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %3 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdev, align 4
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 17
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bssid, align 4
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ssid_len, align 4
  %conn_bss_type = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 19
  %15 = ptrtoint ptr %conn_bss_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conn_bss_type, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 9
  %17 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %privacy, align 4, !range !69
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %call35 = tail call ptr @cfg80211_get_bss(ptr noundef %4, ptr noundef %8, ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %20) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.end38

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  %bssid40 = getelementptr inbounds %struct.cfg80211_conn, ptr %22, i32 0, i32 2
  %bssid41 = getelementptr inbounds %struct.cfg80211_bss, ptr %call35, i32 0, i32 11
  %23 = call ptr @memcpy(ptr %bssid40, ptr %bssid41, i32 6)
  %24 = load ptr, ptr %conn, align 4
  %bssid44 = getelementptr inbounds %struct.cfg80211_conn, ptr %24, i32 0, i32 2
  %bssid48 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %bssid48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bssid44, ptr %bssid48, align 4
  %26 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call35, align 4
  %28 = load ptr, ptr %conn, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %28, align 4
  %30 = load ptr, ptr %conn, align 4
  %state = getelementptr inbounds %struct.cfg80211_conn, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state, align 4
  %conn_work = getelementptr i8, ptr %1, i32 -760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %conn_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end.cleanup_crit_edge
  ret ptr %call35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_hint_disconnect() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_beaconing_iface_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_crit_proto_stop(ptr noundef %wiphy, ptr noundef %wdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_crit_proto_stop, i32 0, i32 1), ptr blockaddress(@trace_rdev_crit_proto_stop, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %call42 = tail call i32 @__traceiter_rdev_crit_proto_stop(ptr noundef null, ptr noundef %wiphy, ptr noundef %wdev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_crit_proto_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_crit_proto_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_crit_proto_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_crit_proto_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2240, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_return_void(ptr noundef %wiphy) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), ptr blockaddress(@trace_rdev_return_void, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %call42 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %wiphy) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 327, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_crit_proto_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_del_key(ptr noundef %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 1), ptr blockaddress(@trace_rdev_del_key, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call43 = tail call i32 @__traceiter_rdev_del_key(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext false, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !70

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rdev_del_key.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_del_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.3) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_del_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_set_qos_map(ptr noundef %wiphy, ptr noundef %netdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), ptr blockaddress(@trace_rdev_set_qos_map, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call42 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !70

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rdev_set_qos_map.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_set_qos_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2295, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_connect(ptr noundef %wiphy, ptr noundef %netdev, ptr noundef %sme) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_connect, i32 0, i32 1), ptr blockaddress(@trace_rdev_connect, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call42 = tail call i32 @__traceiter_rdev_connect(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, ptr noundef %sme) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_connect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_connect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_connect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1392, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_disconnect(ptr noundef %wiphy, ptr noundef %netdev, i16 noundef zeroext %reason_code) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_disconnect, i32 0, i32 1), ptr blockaddress(@trace_rdev_disconnect, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_rdev_disconnect(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, i16 noundef zeroext %reason_code) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_disconnect, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_disconnect, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_disconnect.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rdev_disconnect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1496, ptr noundef nonnull @.str.3) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_disconnect(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/wireless/sme.c", i32 335, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/wireless/sme.c", i32 669, i32 1}
!4 = !{ptr @cfg80211_disconnect_work, !3, !"cfg80211_disconnect_work", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../net/wireless/sme.c", i32 730, i32 3}
!7 = !{ptr @__ksymtab_cfg80211_connect_done, !8, !"__ksymtab_cfg80211_connect_done", i1 false, i1 false}
!8 = !{!"../net/wireless/sme.c", i32 894, i32 1}
!9 = !{ptr @__ksymtab_cfg80211_roamed, !10, !"__ksymtab_cfg80211_roamed", i1 false, i1 false}
!10 = !{!"../net/wireless/sme.c", i32 1028, i32 1}
!11 = !{ptr @__ksymtab_cfg80211_port_authorized, !12, !"__ksymtab_cfg80211_port_authorized", i1 false, i1 false}
!12 = !{!"../net/wireless/sme.c", i32 1072, i32 1}
!13 = !{ptr @__ksymtab_cfg80211_disconnected, !14, !"__ksymtab_cfg80211_disconnected", i1 false, i1 false}
!14 = !{!"../net/wireless/sme.c", i32 1164, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/wireless/trace.h", i32 295, i32 1}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/wireless/trace.h", i32 281, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/wireless/core.h", i32 200, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/wireless/trace.h", i32 2227, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/wireless/trace.h", i32 324, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/wireless/trace.h", i32 465, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/wireless/trace.h", i32 2279, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = !{ptr @cfg80211_sme_get_conn_ies.before_extcapa, !48, !"before_extcapa", i1 false, i1 false}
!48 = !{!"../net/wireless/sme.c", i32 480, i32 19}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../net/wireless/trace.h", i32 1359, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/wireless/trace.h", i32 1480, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2157278298, i64 2157278782, i64 2157278335, i64 2157278391, i64 2157278425, i64 2157278449, i64 2157278490, i64 2157278511, i64 2157278539, i64 2157278573}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148402093, i64 2148402119, i64 2148402148, i64 2148402182, i64 2148402213, i64 2148402236}
!72 = !{i64 2148490545}
!73 = !{i64 2148405278, i64 2148405310, i64 2148405339, i64 2148405373, i64 2148405404, i64 2148405427}
!74 = !{i64 2148490774}
!75 = !{i64 2149698730}
!76 = !{i64 2149698996}
!77 = !{i64 794574, i64 794635}
!78 = !{i64 797306}
!79 = !{i64 797591}
!80 = !{i64 2148883908, i64 2148883913, i64 2148883926, i64 2148883970, i64 2148884004, i64 2148884025}
!81 = !{i64 2157545670}
!82 = !{i64 2157545879}
!83 = !{i64 2149707289}
!84 = !{i64 2149708325}
!85 = !{i64 2157529216}
!86 = !{i64 2157529429}
!87 = !{i64 2159369155}
!88 = !{i64 2159369380}
!89 = !{i64 2157577160}
!90 = !{i64 2157577365}
!91 = !{i64 2157741963}
!92 = !{i64 2157742238}
!93 = !{i64 2159404342}
!94 = !{i64 2159404581}
!95 = !{i64 2158511496}
!96 = !{i64 2158511719}
!97 = !{i64 2158610244}
!98 = !{i64 2158610489}
