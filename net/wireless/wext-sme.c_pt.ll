; ModuleID = '/llk/IR_all_yes/net/wireless/wext-sme.c_pt.bc'
source_filename = "../net/wireless/wext-sme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.124, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.125 }
%union.anon.125 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_point = type { ptr, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.element = type { i8, i8, [0 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_mlme = type { i16, i16, %struct.sockaddr }

@cfg80211_mgd_wext_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/wireless/wext-sme.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [27 x i8] c"../net/wireless/wext-sme.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 25, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_connect(ptr noundef %rdev, ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b175 = load i1, ptr @cfg80211_mgd_wext_connect.__already_done, align 1
  br i1 %.b175, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !21

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cfg80211_mgd_wext_connect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 25) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool39.not = icmp eq i32 %0, 0
  br i1 %tobool39.not, label %if.end29.if.end66_crit_edge, label %land.rhs40

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.rhs40:                                       ; preds = %if.end29
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end60, label %land.rhs40.if.end66_crit_edge, !prof !22

land.rhs40.if.end66_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.end60:                                         ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef null) #5
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %land.rhs40.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end66.cleanup_crit_edge, label %if.end78

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %ie = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 3
  %5 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ie, align 4
  %connect = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1
  %ie80 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1, i32 7
  %7 = ptrtoint ptr %ie80 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ie80, align 4
  %ie_len = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 4
  %8 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ie_len, align 4
  %ie_len84 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1, i32 8
  %10 = ptrtoint ptr %ie_len84 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ie_len84, align 4
  %bg_scan_period = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1, i32 16
  %11 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %bg_scan_period, align 4
  %keys = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 2
  %12 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keys, align 4
  %tobool88.not = icmp eq ptr %13, null
  br i1 %tobool88.not, label %if.end78.if.end102_crit_edge, label %if.then89

if.end78.if.end102_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then89:                                        ; preds = %if.end78
  %default_key = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 8
  %14 = ptrtoint ptr %default_key to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %default_key, align 4
  %conv = sext i8 %15 to i32
  %def = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %def, align 4
  %17 = load i8, ptr %default_key, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp96.not = icmp eq i8 %17, -1
  br i1 %cmp96.not, label %if.then89.if.end102_crit_edge, label %if.then98

if.then89.if.end102_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then98:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %privacy = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1, i32 9
  %18 = ptrtoint ptr %privacy to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %privacy, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then89.if.end102_crit_edge, %if.end78.if.end102_crit_edge
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 1, i32 5
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool105.not = icmp eq i32 %20, 0
  br i1 %tobool105.not, label %if.end102.cleanup_crit_edge, label %if.end107

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %21 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %keys, align 4
  %tobool110.not = icmp eq ptr %22, null
  br i1 %tobool110.not, label %if.end107.if.end126_crit_edge, label %land.lhs.true

if.end107.if.end126_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

land.lhs.true:                                    ; preds = %if.end107
  %def113 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %def113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %def113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp114.not = icmp eq i32 %24, -1
  br i1 %cmp114.not, label %land.lhs.true.if.end126_crit_edge, label %if.then116

land.lhs.true.if.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then116:                                       ; preds = %land.lhs.true
  %call119 = tail call ptr @kmemdup(ptr noundef nonnull %22, i32 noundef 168, i32 noundef 3264) #5
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %if.then116.cleanup_crit_edge, label %for.body.preheader

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.cfg80211_cached_keys, ptr %call119, i32 0, i32 1, i32 0
  %25 = ptrtoint ptr %call119 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %call119, align 4
  %arrayidx.1 = getelementptr %struct.cfg80211_cached_keys, ptr %call119, i32 0, i32 1, i32 1
  %arrayidx125.1 = getelementptr [4 x %struct.key_params], ptr %call119, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.1, ptr %arrayidx125.1, align 4
  %arrayidx.2 = getelementptr %struct.cfg80211_cached_keys, ptr %call119, i32 0, i32 1, i32 2
  %arrayidx125.2 = getelementptr [4 x %struct.key_params], ptr %call119, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx125.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.2, ptr %arrayidx125.2, align 4
  %arrayidx.3 = getelementptr %struct.cfg80211_cached_keys, ptr %call119, i32 0, i32 1, i32 3
  %arrayidx125.3 = getelementptr [4 x %struct.key_params], ptr %call119, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx125.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.3, ptr %arrayidx125.3, align 4
  br label %if.end126

if.end126:                                        ; preds = %for.body.preheader, %land.lhs.true.if.end126_crit_edge, %if.end107.if.end126_crit_edge
  %ck.0 = phi ptr [ null, %land.lhs.true.if.end126_crit_edge ], [ null, %if.end107.if.end126_crit_edge ], [ %call119, %for.body.preheader ]
  %prev_bssid_valid = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 10
  %29 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %prev_bssid_valid, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool128.not = icmp eq i8 %30, 0
  %prev_bssid131 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 39, i32 6
  %spec.select = select i1 %tobool128.not, ptr null, ptr %prev_bssid131
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev, align 4
  %call137 = tail call i32 @cfg80211_connect(ptr noundef %rdev, ptr noundef %32, ptr noundef %connect, ptr noundef %ck.0, ptr noundef %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end126.cleanup_crit_edge, label %if.then139

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then139:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_sensitive(ptr noundef %ck.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end126.cleanup_crit_edge, %if.then116.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ], [ -12, %if.then116.cleanup_crit_edge ], [ %call137, %if.then139 ], [ 0, %if.end126.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_siwfreq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef %wextfreq, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !21

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #5
  br label %cleanup57

if.end21:                                         ; preds = %wiphy_to_rdev.exit
  %call22 = tail call i32 @cfg80211_wext_freq(ptr noundef %wextfreq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup57_crit_edge, label %if.end25

if.end21.cleanup57_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  br i1 %tobool26.not, label %if.end25.if.end36_crit_edge, label %if.then27

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then27:                                        ; preds = %if.end25
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %mul.i = mul i32 %call22, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %7, i32 noundef %mul.i) #5
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.then27.cleanup57_crit_edge, label %if.end32

if.then27.cleanup57_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end32:                                         ; preds = %if.then27
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.end32.cleanup57_crit_edge

if.end32.cleanup57_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %if.end32.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %chan.0 = phi ptr [ %call.i, %if.end32.if.end36_crit_edge ], [ null, %if.end25.if.end36_crit_edge ]
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end36.if.end52_crit_edge, label %if.then38

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then38:                                        ; preds = %if.end36
  %connect = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1
  %12 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connect, align 4
  %cmp39 = icmp eq ptr %13, %chan.0
  br i1 %cmp39, label %if.then38.out_crit_edge, label %if.end41

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %if.then38
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 5
  %14 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool44.not = icmp eq i32 %15, 0
  %call48 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext 3, i1 noundef zeroext %tobool44.not) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end41.if.end52_crit_edge, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end52:                                         ; preds = %if.end41.if.end52_crit_edge, %if.end36.if.end52_crit_edge
  %connect54 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1
  %16 = ptrtoint ptr %connect54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chan.0, ptr %connect54, align 4
  %call56 = tail call i32 @cfg80211_mgd_wext_connect(ptr noundef %add.ptr.i, ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end52, %if.end41.out_crit_edge, %if.then38.out_crit_edge
  %err.1 = phi i32 [ %call56, %if.end52 ], [ %call48, %if.end41.out_crit_edge ], [ 0, %if.then38.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup57

cleanup57:                                        ; preds = %out, %if.end32.cleanup57_crit_edge, %if.then27.cleanup57_crit_edge, %if.end21.cleanup57_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.1, %out ], [ %call22, %if.end21.cleanup57_crit_edge ], [ -22, %if.then27.cleanup57_crit_edge ], [ -22, %if.end32.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_giwfreq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %freq, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_bss, align 4
  %tobool22.not = icmp eq ptr %5, null
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %5, i32 0, i32 9
  %connect = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1
  %chan.0.in = select i1 %tobool22.not, ptr %connect, ptr %pub
  %6 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  %tobool33.not = icmp eq ptr %chan.0, null
  br i1 %tobool33.not, label %if.end21.cleanup_crit_edge, label %if.then34

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
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

cleanup:                                          ; preds = %if.then34, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then34 ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_siwessid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !21

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #5
  br label %cleanup80

if.end22:                                         ; preds = %wiphy_to_rdev.exit
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool23.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp26.not122 = icmp eq i16 %7, 0
  %cmp26.not = select i1 %tobool23.not, i1 true, i1 %cmp26.not122
  br i1 %cmp26.not, label %if.end22.if.end32_crit_edge, label %land.lhs.true

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select = zext i16 %7 to i32
  %sub = add nsw i32 %spec.select, -1
  %arrayidx = getelementptr i8, ptr %ssid, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp29 = icmp eq i8 %11, 0
  %spec.select114 = select i1 %cmp29, i32 %sub, i32 %spec.select
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %if.end22.if.end32_crit_edge
  %len.1 = phi i32 [ 0, %if.end22.if.end32_crit_edge ], [ %spec.select114, %land.lhs.true ]
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end32.if.end61_crit_edge, label %if.then34

if.end32.if.end61_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then34:                                        ; preds = %if.end32
  %ssid35 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 4
  %14 = ptrtoint ptr %ssid35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssid35, align 4
  %tobool36.not = icmp eq ptr %15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool38.not = icmp eq i32 %len.1, 0
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %if.then34.if.end52_crit_edge, label %land.lhs.true39

if.then34.if.end52_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true39:                                  ; preds = %if.then34
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 5
  %16 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %17)
  %cmp42 = icmp eq i32 %len.1, %17
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true39.if.end52_crit_edge

land.lhs.true39.if.end52_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %bcmp = tail call i32 @bcmp(ptr nonnull %15, ptr %ssid, i32 %len.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp49 = icmp eq i32 %bcmp, 0
  br i1 %cmp49, label %land.lhs.true44.out_crit_edge, label %land.lhs.true44.if.end52_crit_edge

land.lhs.true44.if.end52_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true44.out_crit_edge:                    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end52:                                         ; preds = %land.lhs.true44.if.end52_crit_edge, %land.lhs.true39.if.end52_crit_edge, %if.then34.if.end52_crit_edge
  %call57 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext 3, i1 noundef zeroext %tobool38.not) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end52.if.end61_crit_edge, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.end61:                                         ; preds = %if.end52.if.end61_crit_edge, %if.end32.if.end61_crit_edge
  %prev_bssid_valid = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 10
  %18 = ptrtoint ptr %prev_bssid_valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %prev_bssid_valid, align 2
  %ssid64 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 7
  %ssid67 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 4
  %19 = ptrtoint ptr %ssid67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ssid64, ptr %ssid67, align 4
  %20 = call ptr @memcpy(ptr %ssid64, ptr %ssid, i32 %len.1)
  %ssid_len73 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 5
  %21 = ptrtoint ptr %ssid_len73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %len.1, ptr %ssid_len73, align 4
  %control_port = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 11, i32 6
  %22 = ptrtoint ptr %control_port to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %control_port, align 4
  %control_port_ethertype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 11, i32 7
  %23 = ptrtoint ptr %control_port_ethertype to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -30578, ptr %control_port_ethertype, align 2
  %call79 = tail call i32 @cfg80211_mgd_wext_connect(ptr noundef %add.ptr.i, ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end61, %if.end52.out_crit_edge, %land.lhs.true44.out_crit_edge
  %err.1 = phi i32 [ %call79, %if.end61 ], [ %call57, %if.end52.out_crit_edge ], [ 0, %land.lhs.true44.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup80

cleanup80:                                        ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_giwessid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_bss, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %if.else38, label %if.then23

if.then23:                                        ; preds = %if.end21
  %7 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.then23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then23.rcu_read_lock.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then23.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_bss, align 4
  %pub = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %12, i32 0, i32 9
  %call = tail call ptr @ieee80211_bss_get_elem(ptr noundef %pub, i8 noundef zeroext 0) #5
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %rcu_read_lock.exit.if.end37_crit_edge, label %if.then26

rcu_read_lock.exit.if.end37_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then26:                                        ; preds = %rcu_read_lock.exit
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags, align 2
  %datalen = getelementptr inbounds %struct.element, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %datalen, align 1
  %conv = zext i8 %15 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp30 = icmp ugt i8 %15, 32
  br i1 %cmp30, label %if.then26.if.end37_crit_edge, label %if.else

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = zext i8 %15 to i32
  %data33 = getelementptr inbounds %struct.element, ptr %call, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %ssid, ptr %data33, i32 %conv29)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then26.if.end37_crit_edge, %rcu_read_lock.exit.if.end37_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ 0, %rcu_read_lock.exit.if.end37_crit_edge ], [ -22, %if.then26.if.end37_crit_edge ]
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i78, label %if.end37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

if.end37.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %if.end37
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %if.end37.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %18 = tail call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i.i.i.i.i85 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %if.end57

if.else38:                                        ; preds = %if.end21
  %ssid39 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 4
  %22 = ptrtoint ptr %ssid39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssid39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %if.else38.if.end57_crit_edge, label %land.lhs.true

if.else38.if.end57_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true:                                    ; preds = %if.else38
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 5
  %24 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43.not = icmp eq i32 %25, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end57_crit_edge, label %if.then44

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags, align 2
  %27 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ssid_len, align 4
  %conv49 = trunc i32 %28 to i16
  %length50 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %length50 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv49, ptr %length50, align 4
  %30 = ptrtoint ptr %ssid39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ssid39, align 4
  %conv55 = and i32 %28, 65535
  %32 = call ptr @memcpy(ptr %ssid, ptr %31, i32 %conv55)
  br label %if.end57

if.end57:                                         ; preds = %if.then44, %land.lhs.true.if.end57_crit_edge, %if.else38.if.end57_crit_edge, %rcu_read_unlock.exit
  %ret.1 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 0, %if.then44 ], [ 0, %land.lhs.true.if.end57_crit_edge ], [ 0, %if.else38.if.end57_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_siwap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef readonly %ap_addr, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !21

do.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %wiphy_to_rdev.exit
  %6 = ptrtoint ptr %ap_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ap_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp22.not = icmp eq i16 %7, 1
  br i1 %cmp22.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sa_data, align 4
  %add.ptr.i100 = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i100, align 2
  %conv.i = zext i16 %11 to i32
  %or.i = or i32 %9, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end25.if.then30_crit_edge, label %lor.lhs.false

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end25
  %12 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %13, %11
  %and510.i = and i16 %and9.i, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i101 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i101, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end25.if.then30_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false.if.end31_crit_edge
  %bssid.0 = phi ptr [ null, %if.then30 ], [ %sa_data, %lor.lhs.false.if.end31_crit_edge ]
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.end31.if.end57_crit_edge, label %if.then33

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then33:                                        ; preds = %if.end31
  %tobool34.not = icmp eq ptr %bssid.0, null
  %bssid35 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 2
  %18 = ptrtoint ptr %bssid35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bssid35, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then33
  br i1 %tobool36.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end38:                                         ; preds = %if.then33
  br i1 %tobool36.not, label %if.end38.if.end52_crit_edge, label %land.lhs.true45

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true45:                                  ; preds = %if.end38
  %20 = ptrtoint ptr %bssid.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bssid.0, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %xor.i = xor i32 %23, %21
  %add.ptr.i102 = getelementptr i8, ptr %bssid.0, i32 4
  %24 = ptrtoint ptr %add.ptr.i102 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i102, align 2
  %add.ptr1.i103 = getelementptr i8, ptr %19, i32 4
  %26 = ptrtoint ptr %add.ptr1.i103 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i103, align 2
  %xor37.i = xor i16 %27, %25
  %xor3.i = zext i16 %xor37.i to i32
  %or.i104 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i104)
  %cmp.i105 = icmp eq i32 %or.i104, 0
  br i1 %cmp.i105, label %land.lhs.true45.out_crit_edge, label %land.lhs.true45.if.end52_crit_edge

land.lhs.true45.if.end52_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true45.out_crit_edge:                    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end52:                                         ; preds = %land.lhs.true45.if.end52_crit_edge, %if.end38.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge
  %call53 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext 3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.end57:                                         ; preds = %if.end52.if.end57_crit_edge, %if.end31.if.end57_crit_edge
  %tobool58.not = icmp eq ptr %bssid.0, null
  br i1 %tobool58.not, label %if.end57.if.end72_crit_edge, label %if.then59

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %bssid61 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 5
  %28 = call ptr @memcpy(ptr %bssid61, ptr %bssid.0, i32 6)
  br label %if.end72

if.end72:                                         ; preds = %if.then59, %if.end57.if.end72_crit_edge
  %bssid61.sink = phi ptr [ %bssid61, %if.then59 ], [ null, %if.end57.if.end72_crit_edge ]
  %29 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 1, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bssid61.sink, ptr %29, align 4
  %call73 = tail call i32 @cfg80211_mgd_wext_connect(ptr noundef %add.ptr.i, ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end72, %if.end52.out_crit_edge, %land.lhs.true45.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true45.out_crit_edge ], [ %call53, %if.end52.out_crit_edge ], [ %call73, %if.end72 ], [ 0, %land.lhs.true.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %out ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_mgd_wext_giwap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %ap_addr, ptr nocapture noundef readnone %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = ptrtoint ptr %ap_addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %ap_addr, align 2
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_bss, align 4
  %tobool22.not = icmp eq ptr %6, null
  %sa_data26 = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %bssid = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %6, i32 0, i32 9, i32 11
  %7 = call ptr @memcpy(ptr %sa_data26, ptr %bssid, i32 6)
  br label %if.end28

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memset(ptr %sa_data26, i32 0, i32 6)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_wext_siwgenie(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr noundef %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !24
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end, label %wiphy_to_rdev.exit.cleanup_crit_edge

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %ie_len4 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 4
  %8 = ptrtoint ptr %ie_len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ie_len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5 = icmp eq i32 %9, %conv
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %spec.select = select i1 %tobool.not, ptr null, ptr %extra
  %ie8 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 3
  %10 = ptrtoint ptr %ie8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ie8, align 4
  %bcmp = tail call i32 @bcmp(ptr %11, ptr %spec.select, i32 %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp10 = icmp eq i32 %bcmp, 0
  br i1 %cmp10, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br i1 %tobool.not, label %if.end13.if.end20_crit_edge, label %if.then15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @kmemdup(ptr noundef %extra, i32 noundef %conv, i32 noundef 3264) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.out_crit_edge, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %ie.1 = phi ptr [ %call16, %if.then15.if.end20_crit_edge ], [ null, %if.end13.if.end20_crit_edge ]
  %ie22 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 39, i32 3
  %12 = ptrtoint ptr %ie22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ie22, align 4
  tail call void @kfree(ptr noundef %13) #5
  %14 = ptrtoint ptr %ie22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ie.1, ptr %ie22, align 4
  %15 = ptrtoint ptr %ie_len4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %ie_len4, align 4
  %conn = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %if.end20.if.end33_crit_edge, label %if.then28

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then28:                                        ; preds = %if.end20
  %call29 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext 3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  br label %out

out:                                              ; preds = %if.end33, %if.then28.out_crit_edge, %if.then15.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ %call29, %if.then28.out_crit_edge ], [ 0, %if.end33 ], [ -12, %if.then15.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %wiphy_to_rdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %wiphy_to_rdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg80211_wext_siwmlme(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !22

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

wiphy_to_rdev.exit:                               ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1120
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end2, label %wiphy_to_rdev.exit.cleanup_crit_edge

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %wiphy_to_rdev.exit
  %addr = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp3.not = icmp eq i16 %7, 1
  br i1 %cmp3.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  tail call void @mutex_lock_nested(ptr noundef nonnull %3, i32 noundef 0) #5
  %mtx.i = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #5
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %extra, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %switch = icmp ult i16 %9, 2
  br i1 %switch, label %sw.bb, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %reason_code = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 1
  %10 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reason_code, align 2
  %call9 = tail call i32 @cfg80211_disconnect(ptr noundef %add.ptr.i, ptr noundef %dev, i16 noundef zeroext %11, i1 noundef zeroext true) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end6.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call9, %sw.bb ], [ -95, %if.end6.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #5
  tail call void @mutex_unlock(ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end2.cleanup_crit_edge, %wiphy_to_rdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -22, %wiphy_to_rdev.exit.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/wireless/wext-sme.c", i32 25, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i8 0, i8 2}
!24 = !{i64 2157248195, i64 2157248679, i64 2157248232, i64 2157248288, i64 2157248322, i64 2157248346, i64 2157248387, i64 2157248408, i64 2157248436, i64 2157248470}
!25 = !{i64 2149671471}
!26 = !{i64 2149671737}
