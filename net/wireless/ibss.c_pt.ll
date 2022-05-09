; ModuleID = '/llk/IR_all_yes/net/wireless/ibss.c_pt.bc'
source_filename = "../net/wireless/ibss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfg80211_ibss_joined\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_ibss_joined\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_ibss_joined\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_ibss_joined:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_ibss_joined\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_ibss_joined:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.104 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.125 = type { ptr }
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
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.123, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.123 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.124 }
%union.anon.124 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.122, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.122 = type { i64, i64, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.132 }
%union.anon.132 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iw_freq = type { i32, i16, i8, i8 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/wireless/ibss.c\00", [44 x i8] zeroinitializer }, align 32
@cfg80211_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cfg80211_ibss_joined = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_ibss_joined = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_ibss_joined = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_ibss_joined to i32), ptr @__kstrtab_cfg80211_ibss_joined, ptr @__kstrtabns_cfg80211_ibss_joined }, section "___ksymtab+cfg80211_ibss_joined", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/wireless/core.h\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_cfg80211_ibss_joined = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/wireless/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_cfg80211_ibss_joined.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_rdev_join_ibss = external dso_local global %struct.tracepoint, align 4
@trace_rdev_join_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@trace_rdev_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4
@trace_rdev_set_qos_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_del_key = external dso_local global %struct.tracepoint, align 4
@trace_rdev_del_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_leave_ibss = external dso_local global %struct.tracepoint, align 4
@trace_rdev_leave_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.6 = private constant [23 x i8] c"../net/wireless/ibss.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 28, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"../net/wireless/core.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 200, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"../net/wireless/trace.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 3112, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 108, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_cfg80211_ibss_joined, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cfg80211_ibss_joined(ptr noundef %dev, ptr noundef %bssid, ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #7
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call ptr @cfg80211_get_bss(ptr noundef %7, ptr noundef %channel, ptr noundef %bssid, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef 2) #7
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !40

do.end44:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end24
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_bss, align 4
  %tobool61.not = icmp eq ptr %9, null
  br i1 %tobool61.not, label %if.end60.if.end66_crit_edge, label %if.then62

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then62:                                        ; preds = %if.end60
  %hold.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then62.if.end.i_crit_edge, !prof !40

if.then62.if.end.i_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then62.if.end.i_crit_edge
  %transmitted_bss.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %9, i32 0, i32 9, i32 6
  %11 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool19.not.i = icmp eq ptr %12, null
  br i1 %tobool19.not.i, label %if.end.i.cfg80211_unhold_bss.exit_crit_edge, label %if.then20.i

if.end.i.cfg80211_unhold_bss.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg80211_unhold_bss.exit

if.then20.i:                                      ; preds = %if.end.i
  %hold24.i = getelementptr i8, ptr %12, i32 -24
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %hold24.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i, ptr %hold24.i, i32 1, ptr elementtype(i32) %hold24.i) #7, !srcloc !42
  %asmresult.i.i.i.i65.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i)
  %cmp27.i = icmp slt i32 %asmresult.i.i.i.i65.i, 0
  br i1 %cmp27.i, label %do.end43.i, label %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, !prof !40

if.then20.i.cfg80211_unhold_bss.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg80211_unhold_bss.exit

do.end43.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef null) #7
  br label %cfg80211_unhold_bss.exit

cfg80211_unhold_bss.exit:                         ; preds = %do.end43.i, %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, %if.end.i.cfg80211_unhold_bss.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %17, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %15, ptr noundef %pub) #7
  br label %if.end66

if.end66:                                         ; preds = %cfg80211_unhold_bss.exit, %if.end60.if.end66_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call, i32 -72
  %hold.i96 = getelementptr i8, ptr %call, i32 -24
  %call.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i96, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hold.i96, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i96, ptr %hold.i96, i32 1, ptr elementtype(i32) %hold.i96) #7, !srcloc !44
  %transmitted_bss.i98 = getelementptr i8, ptr %call, i32 24
  %19 = ptrtoint ptr %transmitted_bss.i98 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transmitted_bss.i98, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end66.cfg80211_hold_bss.exit_crit_edge, label %if.then.i

if.end66.cfg80211_hold_bss.exit_crit_edge:        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg80211_hold_bss.exit

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %hold3.i = getelementptr i8, ptr %20, i32 -24
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold3.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hold3.i, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold3.i, ptr %hold3.i, i32 1, ptr elementtype(i32) %hold3.i) #7, !srcloc !44
  br label %cfg80211_hold_bss.exit

cfg80211_hold_bss.exit:                           ; preds = %if.then.i, %if.end66.cfg80211_hold_bss.exit_crit_edge
  %22 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %current_bss, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 32
  %and = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %if.then72, label %cfg80211_hold_bss.exit.if.end73_crit_edge

cfg80211_hold_bss.exit.if.end73_crit_edge:        ; preds = %cfg80211_hold_bss.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then72:                                        ; preds = %cfg80211_hold_bss.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cfg80211_upload_connect_keys(ptr noundef %1) #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %1, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %cfg80211_hold_bss.exit.if.end73_crit_edge
  %28 = phi ptr [ %.pr, %if.then72 ], [ %24, %cfg80211_hold_bss.exit.if.end73_crit_edge ]
  %tobool.not.i101 = icmp eq ptr %28, null
  br i1 %tobool.not.i101, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i102 = getelementptr i8, ptr %28, i32 -1120
  tail call void @nl80211_send_ibss_bssid(ptr noundef %add.ptr.i102, ptr noundef %dev, ptr noundef %bssid, i32 noundef 3264) #7
  %29 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %sa_data, ptr %bssid, i32 6)
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %wiphy_to_rdev.exit, %do.end44, %if.end21.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_upload_connect_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_send_ibss_bssid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_ibss_joined(ptr noundef %dev, ptr noundef %bssid, ptr noundef %channel, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  tail call fastcc void @trace_cfg80211_ibss_joined(ptr noundef %dev, ptr noundef %bssid, ptr noundef %channel)
  %tobool.not = icmp eq ptr %channel, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !40

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %wiphy_to_rdev.exit
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end23.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !39

if.end23.kzalloc.exit_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end23
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end23.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end23.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 68) #10
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end27

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %kzalloc.exit
  %type = getelementptr inbounds %struct.cfg80211_event, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 8
  %7 = getelementptr inbounds %struct.cfg80211_event, ptr %call7.i.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %7, ptr %bssid, i32 6)
  %channel29 = getelementptr inbounds %struct.cfg80211_event, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %channel29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %channel, ptr %channel29, align 4
  %event_lock = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #7
  %event_list = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef %event_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_add_tail.exit_crit_edge

if.end27.list_add_tail.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %event_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end27.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call34) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cfg80211_wq to i32))
  %16 = load ptr, ptr @cfg80211_wq, align 4
  %event_work = getelementptr i8, ptr %3, i32 -716
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %event_work) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %kzalloc.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cfg80211_ibss_joined(ptr noundef %netdev, ptr noundef %bssid, ptr noundef %channel) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_ibss_joined, i32 0, i32 1), ptr blockaddress(@trace_cfg80211_ibss_joined, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %call42 = tail call i32 @__traceiter_cfg80211_ibss_joined(ptr noundef null, ptr noundef %netdev, ptr noundef %bssid, ptr noundef %channel) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_ibss_joined, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_ibss_joined, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cfg80211_ibss_joined.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cfg80211_ibss_joined.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 3128, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_join_ibss(ptr noundef %rdev, ptr noundef %dev, ptr noundef %params, ptr noundef %connkeys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end56_crit_edge, label %land.rhs27

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.rhs27:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i222 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp31.not = icmp eq i32 %call.i222, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs27.if.end56_crit_edge, !prof !40

land.rhs27.if.end56_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.end50:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #7
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs27.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool66.not = icmp eq i8 %4, 0
  br i1 %tobool66.not, label %if.end68, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.end56
  %basic_rates = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 7
  %5 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %basic_rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool69.not = icmp eq i32 %6, 0
  br i1 %tobool69.not, label %if.then70, label %if.end68.if.end83_crit_edge

if.end68.if.end83_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then70:                                        ; preds = %if.end68
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = add i32 %10, -1
  %switch.and = and i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %12 = select i1 %switch.selectcmp, i32 2, i32 4
  %arrayidx = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp77225 = icmp sgt i32 %16, 0
  br i1 %cmp77225, label %for.body.lr.ph, label %if.then70.if.end83_crit_edge

if.then70.if.end83_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

for.body.lr.ph:                                   ; preds = %if.then70
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0226 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitrates, align 4
  %arrayidx78 = getelementptr %struct.ieee80211_rate, ptr %18, i32 %j.0226
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx78, align 4
  %and = and i32 %20, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %for.body.for.inc_crit_edge, label %if.then80

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %j.0226
  %21 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %basic_rates, align 4
  %or = or i32 %22, %shl
  store i32 %or, ptr %basic_rates, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then80, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0226, 1
  %23 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_bitrates, align 4
  %cmp77 = icmp slt i32 %inc, %24
  br i1 %cmp77, label %for.inc.for.body_crit_edge, label %for.inc.if.end83_crit_edge

for.inc.if.end83_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end83:                                         ; preds = %for.inc.if.end83_crit_edge, %if.then70.if.end83_crit_edge, %if.end68.if.end83_crit_edge
  %tobool85.not = icmp eq ptr %connkeys, null
  br i1 %tobool85.not, label %if.end83.if.end120_crit_edge, label %land.rhs86

if.end83.if.end120_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.rhs86:                                       ; preds = %if.end83
  %def = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %connkeys, i32 0, i32 2
  %25 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp87 = icmp slt i32 %26, 0
  br i1 %cmp87, label %do.end104, label %land.rhs86.if.end120_crit_edge, !prof !40

land.rhs86.if.end120_crit_edge:                   ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end104:                                        ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end120:                                        ; preds = %land.rhs86.if.end120_crit_edge, %if.end83.if.end120_crit_edge
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connect_keys, align 4
  %tobool122.not = icmp eq ptr %28, null
  br i1 %tobool122.not, label %if.end120.if.end155_crit_edge, label %do.end138, !prof !39

if.end120.if.end155_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end138:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #7
  %29 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %connect_keys, align 4
  tail call void @kfree_sensitive(ptr noundef %30) #7
  br label %if.end155

if.end155:                                        ; preds = %do.end138, %if.end120.if.end155_crit_edge
  %31 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %connkeys, ptr %connect_keys, align 4
  %channel_fixed = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 8
  %32 = ptrtoint ptr %channel_fixed to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel_fixed, align 4, !range !51
  %ibss_fixed = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 28
  %34 = ptrtoint ptr %ibss_fixed to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ibss_fixed, align 4
  %userspace_handles_dfs = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 12
  %35 = ptrtoint ptr %userspace_handles_dfs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %userspace_handles_dfs, align 4, !range !51
  %ibss_dfs_possible = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 29
  %37 = ptrtoint ptr %ibss_dfs_possible to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %ibss_dfs_possible, align 1
  %chandef160 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 27
  %chandef161 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %chandef160, ptr %chandef161, i32 28)
  br i1 %tobool85.not, label %if.end155.if.end166_crit_edge, label %if.then163

if.end155.if.end166_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then163:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %wep_keys = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 16
  %39 = ptrtoint ptr %wep_keys to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %connkeys, ptr %wep_keys, align 4
  %def165 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %connkeys, i32 0, i32 2
  %40 = ptrtoint ptr %def165 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %def165, align 4
  %wep_tx_key = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 17
  %42 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %wep_tx_key, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end155.if.end166_crit_edge
  %chandef167 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 2
  %43 = call ptr @memcpy(ptr %chandef167, ptr %chandef161, i32 28)
  %wiphy.i = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  tail call fastcc void @trace_rdev_join_ibss(ptr noundef %wiphy.i, ptr noundef %dev, ptr noundef %params) #7
  %44 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rdev, align 32
  %join_ibss.i = getelementptr inbounds %struct.cfg80211_ops, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %join_ibss.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %join_ibss.i, align 4
  %call.i223 = tail call i32 %47(ptr noundef %wiphy.i, ptr noundef %dev, ptr noundef %params) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef %wiphy.i, i32 noundef %call.i223) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool170.not = icmp eq i32 %call.i223, 0
  br i1 %tobool170.not, label %if.end173, label %if.then171

if.then171:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %connect_keys, align 4
  br label %cleanup

if.end173:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %params, align 4
  %ssid_len176 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %51 = ptrtoint ptr %ssid_len176 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ssid_len176, align 4
  %conv = zext i8 %52 to i32
  %53 = call ptr @memcpy(ptr %ssid, ptr %50, i32 %conv)
  %54 = load i8, ptr %ssid_len176, align 4
  %55 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ssid_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %if.then171, %do.end104, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end104 ], [ %call.i223, %if.then171 ], [ 0, %if.end173 ], [ -114, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_clear_ibss(ptr noundef %dev, i1 noundef zeroext %nowext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  tail call fastcc void @__cfg80211_clear_ibss(ptr noundef %dev, i1 noundef zeroext %nowext)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cfg80211_clear_ibss(ptr noundef %dev, i1 noundef zeroext %nowext) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %connect_keys = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %connect_keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connect_keys, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #7
  %7 = ptrtoint ptr %connect_keys to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %connect_keys, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 32
  %set_qos_map.i = getelementptr inbounds %struct.cfg80211_ops, ptr %9, i32 0, i32 89
  %10 = ptrtoint ptr %set_qos_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_qos_map.i, align 4
  %tobool.not.i62 = icmp eq ptr %11, null
  br i1 %tobool.not.i62, label %if.end.rdev_set_qos_map.exit_crit_edge, label %if.then.i

if.end.rdev_set_qos_map.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdev_set_qos_map.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rdev_set_qos_map(ptr noundef nonnull %3, ptr noundef %dev) #7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 32
  %set_qos_map2.i = getelementptr inbounds %struct.cfg80211_ops, ptr %13, i32 0, i32 89
  %14 = ptrtoint ptr %set_qos_map2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_qos_map2.i, align 4
  %call.i63 = tail call i32 %15(ptr noundef nonnull %3, ptr noundef %dev, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i63) #7
  br label %rdev_set_qos_map.exit

rdev_set_qos_map.exit:                            ; preds = %if.then.i, %if.end.rdev_set_qos_map.exit_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 32
  %del_key = getelementptr inbounds %struct.cfg80211_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %del_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %del_key, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %rdev_set_qos_map.exit.if.end31_crit_edge, label %for.body.preheader

rdev_set_qos_map.exit.if.end31_crit_edge:         ; preds = %rdev_set_qos_map.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

for.body.preheader:                               ; preds = %rdev_set_qos_map.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 0) #7
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i = getelementptr inbounds %struct.cfg80211_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %del_key.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %del_key.i, align 4
  %call.i65 = tail call i32 %23(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65) #7
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 1) #7
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i.1 = getelementptr inbounds %struct.cfg80211_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %del_key.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %del_key.i.1, align 4
  %call.i65.1 = tail call i32 %27(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 1, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65.1) #7
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 2) #7
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i.2 = getelementptr inbounds %struct.cfg80211_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %del_key.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %del_key.i.2, align 4
  %call.i65.2 = tail call i32 %31(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 2, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65.2) #7
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 3) #7
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i.3 = getelementptr inbounds %struct.cfg80211_ops, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %del_key.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %del_key.i.3, align 4
  %call.i65.3 = tail call i32 %35(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 3, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65.3) #7
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 4) #7
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i.4 = getelementptr inbounds %struct.cfg80211_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %del_key.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %del_key.i.4, align 4
  %call.i65.4 = tail call i32 %39(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 4, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65.4) #7
  tail call fastcc void @trace_rdev_del_key(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 5) #7
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 32
  %del_key.i.5 = getelementptr inbounds %struct.cfg80211_ops, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %del_key.i.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %del_key.i.5, align 4
  %call.i65.5 = tail call i32 %43(ptr noundef nonnull %3, ptr noundef %dev, i8 noundef zeroext 5, i1 noundef zeroext false, ptr noundef null) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef nonnull %3, i32 noundef %call.i65.5) #7
  br label %if.end31

if.end31:                                         ; preds = %for.body.preheader, %rdev_set_qos_map.exit.if.end31_crit_edge
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %44 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_bss, align 4
  %tobool32.not = icmp eq ptr %45, null
  br i1 %tobool32.not, label %if.end31.if.end37_crit_edge, label %if.then33

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end31
  %hold.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %hold.i, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold.i, ptr %hold.i, i32 1, ptr elementtype(i32) %hold.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then33.if.end.i_crit_edge, !prof !40

if.then33.if.end.i_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then33.if.end.i_crit_edge
  %transmitted_bss.i = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %45, i32 0, i32 9, i32 6
  %47 = ptrtoint ptr %transmitted_bss.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %transmitted_bss.i, align 8
  %tobool19.not.i = icmp eq ptr %48, null
  br i1 %tobool19.not.i, label %if.end.i.cfg80211_unhold_bss.exit_crit_edge, label %if.then20.i

if.end.i.cfg80211_unhold_bss.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg80211_unhold_bss.exit

if.then20.i:                                      ; preds = %if.end.i
  %hold24.i = getelementptr i8, ptr %48, i32 -24
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hold24.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %hold24.i, i32 1, i32 3, i32 1) #7
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hold24.i, ptr %hold24.i, i32 1, ptr elementtype(i32) %hold24.i) #7, !srcloc !42
  %asmresult.i.i.i.i65.i = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i65.i)
  %cmp27.i = icmp slt i32 %asmresult.i.i.i.i65.i, 0
  br i1 %cmp27.i, label %do.end43.i, label %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, !prof !40

if.then20.i.cfg80211_unhold_bss.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg80211_unhold_bss.exit

do.end43.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef null) #7
  br label %cfg80211_unhold_bss.exit

cfg80211_unhold_bss.exit:                         ; preds = %do.end43.i, %if.then20.i.cfg80211_unhold_bss.exit_crit_edge, %if.end.i.cfg80211_unhold_bss.exit_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %53, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %51, ptr noundef %pub) #7
  br label %if.end37

if.end37:                                         ; preds = %cfg80211_unhold_bss.exit, %if.end31.if.end37_crit_edge
  %54 = ptrtoint ptr %current_bss to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %current_bss, align 4
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ssid_len, align 2
  %chandef = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 27
  %56 = call ptr @memset(ptr %chandef, i32 0, i32 28)
  br i1 %nowext, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %ssid_len41 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 4
  %57 = ptrtoint ptr %ssid_len41 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ssid_len41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  tail call void @cfg80211_sched_dfs_chan_update(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_leave_ibss(ptr noundef %rdev, ptr noundef %dev, i1 noundef zeroext %nowext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool24.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %wiphy.i = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  tail call fastcc void @trace_rdev_leave_ibss(ptr noundef %wiphy.i, ptr noundef %dev) #7
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 32
  %leave_ibss.i = getelementptr inbounds %struct.cfg80211_ops, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %leave_ibss.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %leave_ibss.i, align 4
  %call.i39 = tail call i32 %8(ptr noundef %wiphy.i, ptr noundef %dev) #7
  tail call fastcc void @trace_rdev_return_int(ptr noundef %wiphy.i, i32 noundef %call.i39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool28.not = icmp eq i32 %call.i39, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %conn_owner_nlportid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %conn_owner_nlportid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %conn_owner_nlportid, align 4
  tail call fastcc void @__cfg80211_clear_ibss(ptr noundef %dev, i1 noundef zeroext %nowext)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -67, %if.end.cleanup_crit_edge ], [ %call.i39, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_leave_ibss(ptr noundef %rdev, ptr noundef %dev, i1 noundef zeroext %nowext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %call = tail call i32 @__cfg80211_leave_ibss(ptr noundef %rdev, ptr noundef %dev, i1 noundef zeroext %nowext)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_join(ptr noundef %rdev, ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %wext = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39
  %beacon_interval = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 0, i32 6
  %1 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %beacon_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool24.not = icmp eq i16 %2, 0
  br i1 %tobool24.not, label %if.then25, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 100, ptr %beacon_interval, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end.if.end29_crit_edge
  %chandef = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 0, i32 2
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %tobool32.not = icmp eq ptr %5, null
  br i1 %tobool32.not, label %for.body.preheader, label %if.end29.if.end67_crit_edge

if.end29.if.end67_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

for.body.preheader:                               ; preds = %if.end29
  %arrayidx = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool36.not = icmp eq ptr %7, null
  br i1 %tobool36.not, label %for.body.preheader.for.inc55_crit_edge, label %for.cond39.preheader

for.body.preheader.for.inc55_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

for.cond39.preheader:                             ; preds = %for.body.preheader
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp40178 = icmp sgt i32 %9, 0
  br i1 %cmp40178, label %for.body41.lr.ph, label %for.cond39.preheader.for.inc55_crit_edge

for.cond39.preheader.for.inc55_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %for.body41

for.body41:                                       ; preds = %for.inc.for.body41_crit_edge, %for.body41.lr.ph
  %i.0179 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc, %for.inc.for.body41_crit_edge ]
  %flags = getelementptr %struct.ieee80211_channel, ptr %11, i32 %i.0179, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body41
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.inc55_crit_edge, label %for.inc.for.body41_crit_edge

for.inc.for.body41_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.inc.for.inc55_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

cleanup:                                          ; preds = %for.body41
  %arrayidx42.le = getelementptr %struct.ieee80211_channel, ptr %11, i32 %i.0179
  %tobool51.not.not = icmp eq ptr %arrayidx42.le, null
  br i1 %tobool51.not.not, label %cleanup.for.inc55_crit_edge, label %cleanup.if.end60_crit_edge

cleanup.if.end60_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.for.inc55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

for.inc55:                                        ; preds = %cleanup.for.inc55_crit_edge, %for.inc.for.inc55_crit_edge, %for.cond39.preheader.for.inc55_crit_edge, %for.body.preheader.for.inc55_crit_edge
  %arrayidx.1 = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool36.not.1 = icmp eq ptr %17, null
  br i1 %tobool36.not.1, label %for.inc55.for.inc55.1_crit_edge, label %for.cond39.preheader.1

for.inc55.for.inc55.1_crit_edge:                  ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.1

for.cond39.preheader.1:                           ; preds = %for.inc55
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp40178.1 = icmp sgt i32 %19, 0
  br i1 %cmp40178.1, label %for.body41.lr.ph.1, label %for.cond39.preheader.1.for.inc55.1_crit_edge

for.cond39.preheader.1.for.inc55.1_crit_edge:     ; preds = %for.cond39.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.1

for.body41.lr.ph.1:                               ; preds = %for.cond39.preheader.1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %for.body41.1

for.body41.1:                                     ; preds = %for.inc.1.for.body41.1_crit_edge, %for.body41.lr.ph.1
  %i.0179.1 = phi i32 [ 0, %for.body41.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body41.1_crit_edge ]
  %flags.1 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %i.0179.1, i32 4
  %22 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.1, align 4
  %24 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %cleanup.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body41.1
  %inc.1 = add nuw nsw i32 %i.0179.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %19
  br i1 %exitcond.1.not, label %for.inc.1.for.inc55.1_crit_edge, label %for.inc.1.for.body41.1_crit_edge

for.inc.1.for.body41.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.1

for.inc.1.for.inc55.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.1

cleanup.1:                                        ; preds = %for.body41.1
  %arrayidx42.le.1 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %i.0179.1
  %tobool51.not.not.1 = icmp eq ptr %arrayidx42.le.1, null
  br i1 %tobool51.not.not.1, label %cleanup.1.for.inc55.1_crit_edge, label %cleanup.1.if.end60_crit_edge

cleanup.1.if.end60_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.1.for.inc55.1_crit_edge:                  ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.1

for.inc55.1:                                      ; preds = %cleanup.1.for.inc55.1_crit_edge, %for.inc.1.for.inc55.1_crit_edge, %for.cond39.preheader.1.for.inc55.1_crit_edge, %for.inc55.for.inc55.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2, align 4
  %tobool36.not.2 = icmp eq ptr %27, null
  br i1 %tobool36.not.2, label %for.inc55.1.for.inc55.2_crit_edge, label %for.cond39.preheader.2

for.inc55.1.for.inc55.2_crit_edge:                ; preds = %for.inc55.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.2

for.cond39.preheader.2:                           ; preds = %for.inc55.1
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_channels.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp40178.2 = icmp sgt i32 %29, 0
  br i1 %cmp40178.2, label %for.body41.lr.ph.2, label %for.cond39.preheader.2.for.inc55.2_crit_edge

for.cond39.preheader.2.for.inc55.2_crit_edge:     ; preds = %for.cond39.preheader.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.2

for.body41.lr.ph.2:                               ; preds = %for.cond39.preheader.2
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %for.body41.2

for.body41.2:                                     ; preds = %for.inc.2.for.body41.2_crit_edge, %for.body41.lr.ph.2
  %i.0179.2 = phi i32 [ 0, %for.body41.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body41.2_crit_edge ]
  %flags.2 = getelementptr %struct.ieee80211_channel, ptr %31, i32 %i.0179.2, i32 4
  %32 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.2, align 4
  %34 = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %cleanup.2, label %for.inc.2

for.inc.2:                                        ; preds = %for.body41.2
  %inc.2 = add nuw nsw i32 %i.0179.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %29
  br i1 %exitcond.2.not, label %for.inc.2.for.inc55.2_crit_edge, label %for.inc.2.for.body41.2_crit_edge

for.inc.2.for.body41.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.2

for.inc.2.for.inc55.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.2

cleanup.2:                                        ; preds = %for.body41.2
  %arrayidx42.le.2 = getelementptr %struct.ieee80211_channel, ptr %31, i32 %i.0179.2
  %tobool51.not.not.2 = icmp eq ptr %arrayidx42.le.2, null
  br i1 %tobool51.not.not.2, label %cleanup.2.for.inc55.2_crit_edge, label %cleanup.2.if.end60_crit_edge

cleanup.2.if.end60_crit_edge:                     ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.2.for.inc55.2_crit_edge:                  ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.2

for.inc55.2:                                      ; preds = %cleanup.2.for.inc55.2_crit_edge, %for.inc.2.for.inc55.2_crit_edge, %for.cond39.preheader.2.for.inc55.2_crit_edge, %for.inc55.1.for.inc55.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  %tobool36.not.3 = icmp eq ptr %37, null
  br i1 %tobool36.not.3, label %for.inc55.2.for.inc55.3_crit_edge, label %for.cond39.preheader.3

for.inc55.2.for.inc55.3_crit_edge:                ; preds = %for.inc55.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.3

for.cond39.preheader.3:                           ; preds = %for.inc55.2
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp40178.3 = icmp sgt i32 %39, 0
  br i1 %cmp40178.3, label %for.body41.lr.ph.3, label %for.cond39.preheader.3.for.inc55.3_crit_edge

for.cond39.preheader.3.for.inc55.3_crit_edge:     ; preds = %for.cond39.preheader.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.3

for.body41.lr.ph.3:                               ; preds = %for.cond39.preheader.3
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %for.body41.3

for.body41.3:                                     ; preds = %for.inc.3.for.body41.3_crit_edge, %for.body41.lr.ph.3
  %i.0179.3 = phi i32 [ 0, %for.body41.lr.ph.3 ], [ %inc.3, %for.inc.3.for.body41.3_crit_edge ]
  %flags.3 = getelementptr %struct.ieee80211_channel, ptr %41, i32 %i.0179.3, i32 4
  %42 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.3, align 4
  %44 = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %cleanup.3, label %for.inc.3

for.inc.3:                                        ; preds = %for.body41.3
  %inc.3 = add nuw nsw i32 %i.0179.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, %39
  br i1 %exitcond.3.not, label %for.inc.3.for.inc55.3_crit_edge, label %for.inc.3.for.body41.3_crit_edge

for.inc.3.for.body41.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.3

for.inc.3.for.inc55.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.3

cleanup.3:                                        ; preds = %for.body41.3
  %arrayidx42.le.3 = getelementptr %struct.ieee80211_channel, ptr %41, i32 %i.0179.3
  %tobool51.not.not.3 = icmp eq ptr %arrayidx42.le.3, null
  br i1 %tobool51.not.not.3, label %cleanup.3.for.inc55.3_crit_edge, label %cleanup.3.if.end60_crit_edge

cleanup.3.if.end60_crit_edge:                     ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.3.for.inc55.3_crit_edge:                  ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.3

for.inc55.3:                                      ; preds = %cleanup.3.for.inc55.3_crit_edge, %for.inc.3.for.inc55.3_crit_edge, %for.cond39.preheader.3.for.inc55.3_crit_edge, %for.inc55.2.for.inc55.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.4, align 4
  %tobool36.not.4 = icmp eq ptr %47, null
  br i1 %tobool36.not.4, label %for.inc55.3.for.inc55.4_crit_edge, label %for.cond39.preheader.4

for.inc55.3.for.inc55.4_crit_edge:                ; preds = %for.inc55.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.4

for.cond39.preheader.4:                           ; preds = %for.inc55.3
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp40178.4 = icmp sgt i32 %49, 0
  br i1 %cmp40178.4, label %for.body41.lr.ph.4, label %for.cond39.preheader.4.for.inc55.4_crit_edge

for.cond39.preheader.4.for.inc55.4_crit_edge:     ; preds = %for.cond39.preheader.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.4

for.body41.lr.ph.4:                               ; preds = %for.cond39.preheader.4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  br label %for.body41.4

for.body41.4:                                     ; preds = %for.inc.4.for.body41.4_crit_edge, %for.body41.lr.ph.4
  %i.0179.4 = phi i32 [ 0, %for.body41.lr.ph.4 ], [ %inc.4, %for.inc.4.for.body41.4_crit_edge ]
  %flags.4 = getelementptr %struct.ieee80211_channel, ptr %51, i32 %i.0179.4, i32 4
  %52 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.4, align 4
  %54 = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %cleanup.4, label %for.inc.4

for.inc.4:                                        ; preds = %for.body41.4
  %inc.4 = add nuw nsw i32 %i.0179.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, %49
  br i1 %exitcond.4.not, label %for.inc.4.for.inc55.4_crit_edge, label %for.inc.4.for.body41.4_crit_edge

for.inc.4.for.body41.4_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.4

for.inc.4.for.inc55.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.4

cleanup.4:                                        ; preds = %for.body41.4
  %arrayidx42.le.4 = getelementptr %struct.ieee80211_channel, ptr %51, i32 %i.0179.4
  %tobool51.not.not.4 = icmp eq ptr %arrayidx42.le.4, null
  br i1 %tobool51.not.not.4, label %cleanup.4.for.inc55.4_crit_edge, label %cleanup.4.if.end60_crit_edge

cleanup.4.if.end60_crit_edge:                     ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.4.for.inc55.4_crit_edge:                  ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55.4

for.inc55.4:                                      ; preds = %cleanup.4.for.inc55.4_crit_edge, %for.inc.4.for.inc55.4_crit_edge, %for.cond39.preheader.4.for.inc55.4_crit_edge, %for.inc55.3.for.inc55.4_crit_edge
  %arrayidx.5 = getelementptr %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48, i32 53, i32 5
  %56 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.5, align 4
  %tobool36.not.5 = icmp eq ptr %57, null
  br i1 %tobool36.not.5, label %for.inc55.4.cleanup122_crit_edge, label %for.cond39.preheader.5

for.inc55.4.cleanup122_crit_edge:                 ; preds = %for.inc55.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

for.cond39.preheader.5:                           ; preds = %for.inc55.4
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_channels.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp40178.5 = icmp sgt i32 %59, 0
  br i1 %cmp40178.5, label %for.body41.lr.ph.5, label %for.cond39.preheader.5.cleanup122_crit_edge

for.cond39.preheader.5.cleanup122_crit_edge:      ; preds = %for.cond39.preheader.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

for.body41.lr.ph.5:                               ; preds = %for.cond39.preheader.5
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  br label %for.body41.5

for.body41.5:                                     ; preds = %for.inc.5.for.body41.5_crit_edge, %for.body41.lr.ph.5
  %i.0179.5 = phi i32 [ 0, %for.body41.lr.ph.5 ], [ %inc.5, %for.inc.5.for.body41.5_crit_edge ]
  %flags.5 = getelementptr %struct.ieee80211_channel, ptr %61, i32 %i.0179.5, i32 4
  %62 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.5, align 4
  %64 = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %cleanup.5, label %for.inc.5

for.inc.5:                                        ; preds = %for.body41.5
  %inc.5 = add nuw nsw i32 %i.0179.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, %59
  br i1 %exitcond.5.not, label %for.inc.5.cleanup122_crit_edge, label %for.inc.5.for.body41.5_crit_edge

for.inc.5.for.body41.5_crit_edge:                 ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.5

for.inc.5.cleanup122_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

cleanup.5:                                        ; preds = %for.body41.5
  %arrayidx42.le.5 = getelementptr %struct.ieee80211_channel, ptr %61, i32 %i.0179.5
  %tobool51.not.not.5 = icmp eq ptr %arrayidx42.le.5, null
  br i1 %tobool51.not.not.5, label %cleanup.5.cleanup122_crit_edge, label %cleanup.5.if.end60_crit_edge

cleanup.5.if.end60_crit_edge:                     ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.5.cleanup122_crit_edge:                   ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end60:                                         ; preds = %cleanup.5.if.end60_crit_edge, %cleanup.4.if.end60_crit_edge, %cleanup.3.if.end60_crit_edge, %cleanup.2.if.end60_crit_edge, %cleanup.1.if.end60_crit_edge, %cleanup.if.end60_crit_edge
  %new_chan.3.ph = phi ptr [ %arrayidx42.le.5, %cleanup.5.if.end60_crit_edge ], [ %arrayidx42.le.4, %cleanup.4.if.end60_crit_edge ], [ %arrayidx42.le.3, %cleanup.3.if.end60_crit_edge ], [ %arrayidx42.le.2, %cleanup.2.if.end60_crit_edge ], [ %arrayidx42.le.1, %cleanup.1.if.end60_crit_edge ], [ %arrayidx42.le, %cleanup.if.end60_crit_edge ]
  tail call void @cfg80211_chandef_create(ptr noundef %chandef, ptr noundef nonnull %new_chan.3.ph, i32 noundef 0) #7
  br label %if.end67

if.end67:                                         ; preds = %if.end60, %if.end29.if.end67_crit_edge
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 0, i32 4
  %66 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool70.not = icmp eq i8 %67, 0
  br i1 %tobool70.not, label %if.end67.cleanup122_crit_edge, label %if.end72

if.end67.cleanup122_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end72:                                         ; preds = %if.end67
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %68 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end72.cleanup122_crit_edge, label %if.end75

if.end72.cleanup122_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.end75:                                         ; preds = %if.end72
  %keys = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 2
  %72 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %keys, align 4
  %tobool77.not = icmp eq ptr %73, null
  %default_key84171 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 8
  %74 = ptrtoint ptr %default_key84171 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %default_key84171, align 4
  br i1 %tobool77.not, label %if.end82.thread, label %if.end82

if.end82.thread:                                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp86172 = icmp ne i8 %75, -1
  %privacy173 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 0, i32 9
  %frombool174 = zext i1 %cmp86172 to i8
  %76 = ptrtoint ptr %privacy173 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool174, ptr %privacy173, align 1
  br label %if.end114

if.end82:                                         ; preds = %if.end75
  %conv = sext i8 %75 to i32
  %def = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %73, i32 0, i32 2
  %77 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv, ptr %def, align 4
  %78 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load ptr, ptr %keys, align 4
  %79 = ptrtoint ptr %default_key84171 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %default_key84171, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp86 = icmp ne i8 %80, -1
  %privacy = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 0, i32 9
  %frombool = zext i1 %cmp86 to i8
  %81 = ptrtoint ptr %privacy to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool, ptr %privacy, align 1
  %tobool92.not = icmp eq ptr %.pr, null
  br i1 %tobool92.not, label %if.end82.if.end114_crit_edge, label %land.lhs.true

if.end82.if.end114_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end82
  %def95 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %.pr, i32 0, i32 2
  %82 = ptrtoint ptr %def95 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %def95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp96.not = icmp eq i32 %83, -1
  br i1 %cmp96.not, label %land.lhs.true.if.end114_crit_edge, label %if.then98

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then98:                                        ; preds = %land.lhs.true
  %call101 = tail call ptr @kmemdup(ptr noundef nonnull %.pr, i32 noundef 168, i32 noundef 3264) #7
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.then98.cleanup122_crit_edge, label %for.body108.preheader

if.then98.cleanup122_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

for.body108.preheader:                            ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx109 = getelementptr %struct.cfg80211_cached_keys, ptr %call101, i32 0, i32 1, i32 0
  %84 = ptrtoint ptr %call101 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx109, ptr %call101, align 4
  %arrayidx109.1 = getelementptr %struct.cfg80211_cached_keys, ptr %call101, i32 0, i32 1, i32 1
  %arrayidx110.1 = getelementptr [4 x %struct.key_params], ptr %call101, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx109.1, ptr %arrayidx110.1, align 4
  %arrayidx109.2 = getelementptr %struct.cfg80211_cached_keys, ptr %call101, i32 0, i32 1, i32 2
  %arrayidx110.2 = getelementptr [4 x %struct.key_params], ptr %call101, i32 0, i32 2
  %86 = ptrtoint ptr %arrayidx110.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx109.2, ptr %arrayidx110.2, align 4
  %arrayidx109.3 = getelementptr %struct.cfg80211_cached_keys, ptr %call101, i32 0, i32 1, i32 3
  %arrayidx110.3 = getelementptr [4 x %struct.key_params], ptr %call101, i32 0, i32 3
  %87 = ptrtoint ptr %arrayidx110.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx109.3, ptr %arrayidx110.3, align 4
  br label %if.end114

if.end114:                                        ; preds = %for.body108.preheader, %land.lhs.true.if.end114_crit_edge, %if.end82.if.end114_crit_edge, %if.end82.thread
  %ck.0 = phi ptr [ null, %land.lhs.true.if.end114_crit_edge ], [ null, %if.end82.if.end114_crit_edge ], [ null, %if.end82.thread ], [ %call101, %for.body108.preheader ]
  %88 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev, align 4
  %call118 = tail call i32 @__cfg80211_join_ibss(ptr noundef %rdev, ptr noundef %89, ptr noundef %wext, ptr noundef %ck.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end114.cleanup122_crit_edge, label %if.then120

if.end114.cleanup122_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup122

if.then120:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %ck.0) #7
  br label %cleanup122

cleanup122:                                       ; preds = %if.then120, %if.end114.cleanup122_crit_edge, %if.then98.cleanup122_crit_edge, %if.end72.cleanup122_crit_edge, %if.end67.cleanup122_crit_edge, %cleanup.5.cleanup122_crit_edge, %for.inc.5.cleanup122_crit_edge, %for.cond39.preheader.5.cleanup122_crit_edge, %for.inc55.4.cleanup122_crit_edge
  %retval.1 = phi i32 [ 0, %if.end67.cleanup122_crit_edge ], [ 0, %if.end72.cleanup122_crit_edge ], [ -12, %if.then98.cleanup122_crit_edge ], [ %call118, %if.then120 ], [ 0, %if.end114.cleanup122_crit_edge ], [ -22, %for.inc55.4.cleanup122_crit_edge ], [ -22, %cleanup.5.cleanup122_crit_edge ], [ -22, %for.cond39.preheader.5.cleanup122_crit_edge ], [ -22, %for.inc.5.cleanup122_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_siwfreq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef %wextfreq, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %wiphy_to_rdev.exit
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 32
  %join_ibss = getelementptr inbounds %struct.cfg80211_ops, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %join_ibss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %join_ibss, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = tail call i32 @cfg80211_wext_freq(ptr noundef %wextfreq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end28.if.end42_crit_edge, label %if.then30

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then30:                                        ; preds = %if.end28
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mul.i = mul i32 %call25, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %11, i32 noundef %mul.i) #7
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.then30.cleanup_crit_edge, label %if.end35

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.end35.if.end42_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %if.end35.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %chan.0 = phi ptr [ null, %if.end28.if.end42_crit_edge ], [ %call.i, %if.end35.if.end42_crit_edge ]
  %chandef = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 2
  %16 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chandef, align 4
  %cmp44 = icmp eq ptr %17, %chan.0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool47.not = icmp eq i8 %19, 0
  br i1 %tobool47.not, label %if.end50.thread, label %if.end50

if.end50.thread:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %if.end53

if.end50:                                         ; preds = %if.end46
  %call49 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %add.ptr.i, ptr noundef %dev, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool51.not = icmp eq i32 %call49, 0
  br i1 %tobool51.not, label %if.end50.if.end53_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end53:                                         ; preds = %if.end50.if.end53_crit_edge, %if.end50.thread
  %tobool54.not = icmp eq ptr %chan.0, null
  br i1 %tobool54.not, label %if.end53.if.end64_crit_edge, label %if.then55

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cfg80211_chandef_create(ptr noundef %chandef, ptr noundef nonnull %chan.0, i32 noundef 0) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.end53.if.end64_crit_edge
  %.sink = phi i8 [ 1, %if.then55 ], [ 0, %if.end53.if.end64_crit_edge ]
  %20 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %call65 = tail call i32 @cfg80211_ibss_wext_join(ptr noundef %add.ptr.i, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end50.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call65, %if.end64 ], [ -95, %if.end21.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ -22, %if.then30.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ %call49, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_giwfreq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %freq, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_bss, align 4
  %tobool22.not = icmp eq ptr %5, null
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %5, i32 0, i32 9
  %chandef = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 2
  %chan.0.in = select i1 %tobool22.not, ptr %chandef, ptr %pub
  %6 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  %tobool34.not = icmp eq ptr %chan.0, null
  br i1 %tobool34.not, label %if.end21.cleanup_crit_edge, label %if.then35

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %chan.0, i32 0, i32 1
  %7 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq, align 4
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %freq, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %freq, i32 0, i32 1
  %10 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 6, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then35 ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_siwessid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  %conv = zext i16 %5 to i32
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !39

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 405, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %wiphy_to_rdev.exit
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 32
  %join_ibss = getelementptr inbounds %struct.cfg80211_ops, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %join_ibss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %join_ibss, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %if.end29.thread, label %if.end29

if.end29.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %if.end32

if.end29:                                         ; preds = %if.end25
  %call28 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %add.ptr.i, ptr noundef %dev, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.end29.if.end32_crit_edge, %if.end29.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp33.not = icmp eq i16 %5, 0
  br i1 %cmp33.not, label %if.end32.if.end39_crit_edge, label %land.lhs.true

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i8, ptr %ssid, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp36 = icmp eq i8 %15, 0
  %spec.select = select i1 %cmp36, i32 %sub, i32 %conv
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.end32.if.end39_crit_edge
  %len.0 = phi i32 [ 0, %if.end32.if.end39_crit_edge ], [ %spec.select, %land.lhs.true ]
  %ssid40 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %16 = call ptr @memcpy(ptr %ssid40, ptr %ssid, i32 %len.0)
  %wext = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39
  %17 = ptrtoint ptr %wext to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ssid40, ptr %wext, align 4
  %conv44 = trunc i32 %len.0 to i8
  %ssid_len47 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 4
  %18 = ptrtoint ptr %ssid_len47 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv44, ptr %ssid_len47, align 4
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %call48 = tail call i32 @cfg80211_ibss_wext_join(ptr noundef %add.ptr.i, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call48, %if.end39 ], [ -95, %if.end22.cleanup_crit_edge ], [ %call28, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_giwessid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool22.not = icmp eq i8 %6, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags, align 2
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssid_len, align 2
  %conv = zext i8 %9 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %length, align 4
  %ssid26 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %conv28 = zext i8 %9 to i32
  %11 = call ptr @memcpy(ptr %ssid, ptr %ssid26, i32 %conv28)
  br label %if.end49

if.else:                                          ; preds = %if.end21
  %wext = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %wext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wext, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %if.else.if.end49_crit_edge, label %land.lhs.true

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true:                                    ; preds = %if.else
  %ssid_len33 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 4
  %14 = ptrtoint ptr %ssid_len33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid_len33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end49_crit_edge, label %if.then36

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags, align 2
  %17 = ptrtoint ptr %ssid_len33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ssid_len33, align 4
  %conv41 = zext i8 %18 to i16
  %length42 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %length42 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv41, ptr %length42, align 4
  %20 = ptrtoint ptr %wext to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wext, align 4
  %conv47 = zext i8 %18 to i32
  %22 = call ptr @memcpy(ptr %ssid, ptr %21, i32 %conv47)
  br label %if.end49

if.end49:                                         ; preds = %if.then36, %land.lhs.true.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.then23
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_siwap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef readonly %ap_addr, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !40

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %wiphy_to_rdev.exit
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 32
  %join_ibss = getelementptr inbounds %struct.cfg80211_ops, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %join_ibss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %join_ibss, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %10 = ptrtoint ptr %ap_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ap_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp25.not = icmp eq i16 %11, 1
  br i1 %cmp25.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %12 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sa_data, align 4
  %add.ptr.i114 = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i114, align 2
  %conv.i = zext i16 %15 to i32
  %or.i = or i32 %13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end28.land.lhs.true40.critedge_crit_edge, label %lor.lhs.false

if.end28.land.lhs.true40.critedge_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true40.critedge

lor.lhs.false:                                    ; preds = %if.end28
  %16 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %17, %15
  %and510.i = and i16 %and9.i, %19
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i115 = icmp eq i16 %and510.i, -1
  %tobool35.not = icmp eq ptr %sa_data, null
  %or.cond = select i1 %cmp.i115, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %lor.lhs.false.land.lhs.true40.critedge_crit_edge, label %land.lhs.true

lor.lhs.false.land.lhs.true40.critedge_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true40.critedge

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sa_data, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %23 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i114, align 2
  %conv.i.i = zext i16 %24 to i32
  %or.i.i = or i32 %21, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end44

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true40.critedge:                         ; preds = %lor.lhs.false.land.lhs.true40.critedge_crit_edge, %if.end28.land.lhs.true40.critedge_crit_edge
  %bssid41 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 1
  %25 = ptrtoint ptr %bssid41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bssid41, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %land.lhs.true40.critedge.cleanup_crit_edge, label %land.lhs.true40.critedge.if.end58_crit_edge

land.lhs.true40.critedge.if.end58_crit_edge:      ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true40.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %is_valid_ether_addr.exit
  %bssid47 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 1
  %27 = ptrtoint ptr %bssid47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bssid47, align 4
  %tobool48.not = icmp eq ptr %28, null
  br i1 %tobool48.not, label %if.end44.if.end58_crit_edge, label %land.lhs.true51

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true51:                                  ; preds = %if.end44
  %29 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sa_data, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %xor.i = xor i32 %32, %30
  %33 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i114, align 2
  %add.ptr1.i117 = getelementptr i8, ptr %28, i32 4
  %35 = ptrtoint ptr %add.ptr1.i117 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i117, align 2
  %xor37.i = xor i16 %36, %34
  %xor3.i = zext i16 %xor37.i to i32
  %or.i118 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i118)
  %cmp.i119 = icmp eq i32 %or.i118, 0
  br i1 %cmp.i119, label %land.lhs.true51.cleanup_crit_edge, label %land.lhs.true51.if.end58_crit_edge

land.lhs.true51.if.end58_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true51.if.end58_crit_edge, %if.end44.if.end58_crit_edge, %land.lhs.true40.critedge.if.end58_crit_edge
  %bssid47136 = phi ptr [ %bssid47, %if.end44.if.end58_crit_edge ], [ %bssid47, %land.lhs.true51.if.end58_crit_edge ], [ %bssid41, %land.lhs.true40.critedge.if.end58_crit_edge ]
  %bssid.0125135 = phi ptr [ %sa_data, %if.end44.if.end58_crit_edge ], [ %sa_data, %land.lhs.true51.if.end58_crit_edge ], [ null, %land.lhs.true40.critedge.if.end58_crit_edge ]
  %tobool35.not127134 = phi i1 [ false, %if.end44.if.end58_crit_edge ], [ false, %land.lhs.true51.if.end58_crit_edge ], [ true, %land.lhs.true40.critedge.if.end58_crit_edge ]
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool59.not = icmp eq i8 %38, 0
  br i1 %tobool59.not, label %if.end62.thread, label %if.end62

if.end62.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %if.end65

if.end62:                                         ; preds = %if.end58
  %call61 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %add.ptr.i, ptr noundef %dev, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool63.not = icmp eq i32 %call61, 0
  br i1 %tobool63.not, label %if.end62.if.end65_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62.if.end65_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end65:                                         ; preds = %if.end62.if.end65_crit_edge, %if.end62.thread
  br i1 %tobool35.not127134, label %if.end65.if.end80_crit_edge, label %if.then67

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %bssid69 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 5
  %39 = call ptr @memcpy(ptr %bssid69, ptr %bssid.0125135, i32 6)
  br label %if.end80

if.end80:                                         ; preds = %if.then67, %if.end65.if.end80_crit_edge
  %storemerge = phi ptr [ %bssid69, %if.then67 ], [ null, %if.end65.if.end80_crit_edge ]
  %40 = ptrtoint ptr %bssid47136 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %storemerge, ptr %bssid47136, align 4
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %call81 = tail call i32 @cfg80211_ibss_wext_join(ptr noundef %add.ptr.i, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end62.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %land.lhs.true40.critedge.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call81, %if.end80 ], [ -95, %if.end21.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %land.lhs.true40.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true51.cleanup_crit_edge ], [ %call61, %if.end62.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_ibss_wext_giwap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %ap_addr, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 526, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = ptrtoint ptr %ap_addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ap_addr, align 2
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_bss, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 11
  %7 = call ptr @memcpy(ptr %sa_data, ptr %bssid, i32 6)
  br label %if.end38

if.else:                                          ; preds = %if.end21
  %bssid26 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 0, i32 1
  %8 = ptrtoint ptr %bssid26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bssid26, align 4
  %tobool27.not = icmp eq ptr %9, null
  %sa_data35 = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %sa_data35, ptr %9, i32 6)
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memset(ptr %sa_data35, i32 0, i32 6)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then28, %if.then23
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_join_ibss(ptr noundef %wiphy, ptr noundef %netdev, ptr noundef %params) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_join_ibss, i32 0, i32 1), ptr blockaddress(@trace_rdev_join_ibss, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %call42 = tail call i32 @__traceiter_rdev_join_ibss(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, ptr noundef %params) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_join_ibss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_join_ibss, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_join_ibss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rdev_join_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1517, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
define internal fastcc void @trace_rdev_return_int(ptr noundef %wiphy, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), ptr blockaddress(@trace_rdev_return_int, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %call42 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %wiphy, i32 noundef %ret) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rdev_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
declare dso_local i32 @__traceiter_rdev_join_ibss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_dfs_chan_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_set_qos_map(ptr noundef %wiphy, ptr noundef %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), ptr blockaddress(@trace_rdev_set_qos_map, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %call42 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !39

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rdev_set_qos_map.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rdev_set_qos_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2295, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_del_key(ptr noundef %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 1), ptr blockaddress(@trace_rdev_del_key, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %call43 = tail call i32 @__traceiter_rdev_del_key(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext false, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !39

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_key, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rdev_del_key.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rdev_del_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @.str.3) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
declare dso_local i32 @__traceiter_rdev_del_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_leave_ibss(ptr noundef %wiphy, ptr noundef %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_leave_ibss, i32 0, i32 1), ptr blockaddress(@trace_rdev_leave_ibss, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !46

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %call42 = tail call i32 @__traceiter_rdev_leave_ibss(ptr noundef null, ptr noundef %wiphy, ptr noundef %netdev) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_leave_ibss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_leave_ibss, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_leave_ibss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rdev_leave_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 680, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
declare dso_local i32 @__traceiter_rdev_leave_ibss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/wireless/ibss.c", i32 28, i32 6}
!2 = !{ptr @__ksymtab_cfg80211_ibss_joined, !3, !"__ksymtab_cfg80211_ibss_joined", i1 false, i1 false}
!3 = !{!"../net/wireless/ibss.c", i32 86, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/wireless/core.h", i32 200, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/wireless/trace.h", i32 3112, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/wireless/trace.h", i32 1498, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/wireless/trace.h", i32 281, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/wireless/trace.h", i32 2279, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/wireless/trace.h", i32 465, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../net/wireless/trace.h", i32 677, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2148466862}
!42 = !{i64 2148381595, i64 2148381627, i64 2148381656, i64 2148381690, i64 2148381721, i64 2148381744}
!43 = !{i64 2148467091}
!44 = !{i64 2148378410, i64 2148378436, i64 2148378465, i64 2148378499, i64 2148378530, i64 2148378553}
!45 = !{i64 2157249916, i64 2157250400, i64 2157249953, i64 2157250009, i64 2157250043, i64 2157250067, i64 2157250108, i64 2157250129, i64 2157250157, i64 2157250191}
!46 = !{i64 2148860225, i64 2148860230, i64 2148860243, i64 2148860287, i64 2148860321, i64 2148860342}
!47 = !{i64 2160263806}
!48 = !{i64 2160264053}
!49 = !{i64 2149683606}
!50 = !{i64 2149684642}
!51 = !{i8 0, i8 2}
!52 = !{i64 2158599168}
!53 = !{i64 2158599401}
!54 = !{i64 2157500834}
!55 = !{i64 2157501047}
!56 = !{i64 2159375960}
!57 = !{i64 2159376199}
!58 = !{i64 2157713581}
!59 = !{i64 2157713856}
!60 = !{i64 2157912218}
!61 = !{i64 2157912437}
