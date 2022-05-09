; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/wil_crash_dump.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/wil_crash_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_map = type { i32, i32, i32, ptr, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }

@__func__.wil_fw_copy_crash_dump = private unnamed_addr constant [23 x i8] c"wil_fw_copy_crash_dump\00", align 1
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: not enough space for dump. Need %d have %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: suspend/resume in progress. cannot copy crash dump\0A\00", [40 x i8] zeroinitializer }, align 32
@fw_mapping = external dso_local local_unnamed_addr global [19 x %struct.fw_map], align 4
@wil_fw_copy_crash_dump.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @__func__.wil_fw_copy_crash_dump, ptr @.str.4, ptr @.str.5, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/ath/wil6210/wil_crash_dump.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DBG[MISC]fw_copy_crash_dump: - dump %s, size %d, offset %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wil_fw_core_dump = private unnamed_addr constant [17 x i8] c"wil_fw_core_dump\00", align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: fw core dumped, size %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 60, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 69, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 86, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [53 x i8] c"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 121, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_fw_copy_crash_dump(ptr noundef %wil, ptr noundef %dest, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_mapping to i32))
  %2 = load i32, ptr @fw_mapping, align 4
  %sub.i = add i32 %1, %0
  %add.i = sub i32 %sub.i, %2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %host_max.06.i = phi i32 [ %add.i, %entry ], [ %host_max.1.i, %for.inc.i.for.body.i_crit_edge ]
  %host_min.05.i = phi i32 [ %0, %entry ], [ %host_min.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %crash_dump.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 5
  %3 = ptrtoint ptr %crash_dump.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crash_dump.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i
  %host5.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 2
  %5 = ptrtoint ptr %host5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host5.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %host_min.05.i) #4
  %to11.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 1
  %8 = ptrtoint ptr %to11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to11.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub13.i = add i32 %9, %6
  %add14.i = sub i32 %sub13.i, %11
  %12 = tail call i32 @llvm.umax.i32(i32 %add14.i, i32 %host_max.06.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %host_min.2.i = phi i32 [ %host_min.05.i, %for.body.i.for.inc.i_crit_edge ], [ %7, %if.end4.i ]
  %host_max.1.i = phi i32 [ %host_max.06.i, %for.body.i.for.inc.i_crit_edge ], [ %12, %if.end4.i ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  %sub18.i = sub i32 %host_max.1.i, %host_min.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %size)
  %cmp = icmp ugt i32 %sub18.i, %size
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.wil_fw_copy_crash_dump, i32 noundef %sub18.i, i32 noundef %size) #4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mem_lock = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 70
  tail call void @down_write(ptr noundef %mem_lock) #4
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end2.if.then9_crit_edge

if.end2.if.then9_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

for.cond.preheader:                               ; preds = %lor.lhs.false
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %for.body

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end2.if.then9_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wil_fw_copy_crash_dump) #4
  tail call void @up_write(ptr noundef %mem_lock) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.071 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %crash_dump = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071, i32 5
  %19 = ptrtoint ptr %crash_dump to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crash_dump, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %arrayidx = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071
  %21 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr, align 4
  %host = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071, i32 2
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host, align 4
  %sub = add i32 %24, -8912896
  %add.ptr = getelementptr i8, ptr %22, i32 %sub
  %to = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071, i32 1
  %25 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %to, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %sub16 = sub i32 %26, %28
  %sub18 = sub i32 %24, %host_min.2.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_fw_copy_crash_dump.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_fw_copy_crash_dump, %if.then25)) #4
          to label %do.end29 [label %if.then25], !srcloc !27

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_ndev, align 4
  %name = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071, i32 3
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_fw_copy_crash_dump.__UNIQUE_ID_ddebug344, ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef %sub16, i32 noundef %sub18) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %if.end15
  %name31 = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.071, i32 3
  %33 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name31, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.5, ptr noundef %34, i32 noundef %sub16, i32 noundef %sub18) #4
  %add.ptr34 = getelementptr i8, ptr %dest, i32 %sub18
  tail call void @wil_memcpy_fromio_32(ptr noundef %add.ptr34, ptr noundef %add.ptr, i32 noundef %sub16) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end29, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_write(ptr noundef %mem_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.then1
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -16, %if.then9 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_memcpy_fromio_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_fw_core_dump(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds ([19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_mapping to i32))
  %2 = load i32, ptr @fw_mapping, align 4
  %sub.i = add i32 %1, %0
  %add.i = sub i32 %sub.i, %2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %host_max.06.i = phi i32 [ %add.i, %entry ], [ %host_max.1.i, %for.inc.i.for.body.i_crit_edge ]
  %host_min.05.i = phi i32 [ %0, %entry ], [ %host_min.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 1, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %crash_dump.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 5
  %3 = ptrtoint ptr %crash_dump.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crash_dump.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i
  %host5.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 2
  %5 = ptrtoint ptr %host5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host5.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %host_min.05.i) #4
  %to11.i = getelementptr [19 x %struct.fw_map], ptr @fw_mapping, i32 0, i32 %i.03.i, i32 1
  %8 = ptrtoint ptr %to11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to11.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub13.i = add i32 %9, %6
  %add14.i = sub i32 %sub13.i, %11
  %12 = tail call i32 @llvm.umax.i32(i32 %add14.i, i32 %host_max.06.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %host_min.2.i = phi i32 [ %host_min.05.i, %for.body.i.for.inc.i_crit_edge ], [ %7, %if.end4.i ]
  %host_max.1.i = phi i32 [ %host_max.06.i, %for.body.i.for.inc.i_crit_edge ], [ %12, %if.end4.i ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  %sub18.i = sub i32 %host_max.1.i, %host_min.2.i
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %sub18.i) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wil_fw_copy_crash_dump(ptr noundef %wil, ptr noundef nonnull %call1, i32 noundef %sub18.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfree(ptr noundef nonnull %call1) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  tail call void @dev_coredumpv(ptr noundef %16, ptr noundef nonnull %call1, i32 noundef %sub18.i, i32 noundef 3264) #4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.wil_fw_core_dump, i32 noundef %sub18.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 55, i32 3}
!2 = !{ptr @__func__.wil_fw_copy_crash_dump, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 60, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 69, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 86, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wil_fw_copy_crash_dump.__UNIQUE_ID_ddebug344, !8, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 105, i32 3}
!14 = !{ptr @__func__.wil_fw_core_dump, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wil6210/wil_crash_dump.c", i32 121, i32 2}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{i64 2148900298, i64 2148900303, i64 2148900316, i64 2148900360, i64 2148900394, i64 2148900415}
