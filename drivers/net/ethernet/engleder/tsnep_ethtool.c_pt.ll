; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/engleder/tsnep_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/engleder/tsnep_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.tsnep_adapter = type { ptr, [6 x i8], ptr, i8, i32, ptr, i32, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, [2 x %struct.tsnep_gcl], i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.spinlock, i32, [8 x %struct.tsnep_tx], i32, [8 x %struct.tsnep_rx], i32, [8 x %struct.tsnep_queue] }
%struct.tsnep_gcl = type { ptr, i64, i64, i64, [256 x %struct.tsnep_gcl_operation], i32, i64, i64, i8 }
%struct.tsnep_gcl_operation = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsnep_tx = type { ptr, ptr, [16 x ptr], [16 x i32], %struct.spinlock, [256 x %struct.tsnep_tx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_tx_entry = type { ptr, ptr, i32, i8, i32, ptr, i32, i32 }
%struct.tsnep_rx = type { ptr, ptr, [16 x ptr], [16 x i32], [256 x %struct.tsnep_rx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_rx_entry = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tsnep_queue = type { ptr, ptr, ptr, %struct.napi_struct, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@tsnep_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @tsnep_ethtool_get_drvinfo, ptr @tsnep_ethtool_get_regs_len, ptr @tsnep_ethtool_get_regs, ptr null, ptr null, ptr @tsnep_ethtool_get_msglevel, ptr @tsnep_ethtool_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsnep_ethtool_self_test, ptr @tsnep_ethtool_get_strings, ptr null, ptr @tsnep_ethtool_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @tsnep_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsnep_ethtool_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsnep\00", [26 x i8] zeroinitializer }, align 32
@tsnep_stats_strings = internal constant { [10 x [32 x i8]], [64 x i8] } { [10 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_phy_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_forwarded_phy_errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_invalid_frame_errors\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@tsnep_rx_queue_stats_strings = internal constant { [8 x [32 x i8]], [64 x i8] } { [8 x [32 x i8]] [[32 x i8] c"rx_%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_%d_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_%d_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_%d_no_descriptor_errors\00\00\00\00\00\00", [32 x i8] c"rx_%d_buffer_too_small_errors\00\00\00", [32 x i8] c"rx_%d_fifo_overflow_errors\00\00\00\00\00\00", [32 x i8] c"rx_%d_invalid_frame_errors\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@tsnep_tx_queue_stats_strings = internal constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"tx_%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_%d_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"tsnep_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 278, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 79, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"tsnep_stats_strings\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 6, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant [29 x i8] c"tsnep_rx_queue_stats_strings\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 34, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"tsnep_tx_queue_stats_strings\00", align 1
@___asan_gen_.15 = private constant [49 x i8] c"../drivers/net/ethernet/engleder/tsnep_ethtool.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 59, i32 19 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @tsnep_ethtool_ops, ptr @.str, ptr @tsnep_stats_strings, ptr @tsnep_rx_queue_stats_strings, ptr @tsnep_tx_queue_stats_strings], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_stats_strings to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_rx_queue_stats_strings to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_tx_queue_stats_strings to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_ethtool_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #6
  %pdev = getelementptr i8, ptr %netdev, i32 2336
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsnep_ethtool_get_regs_len(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 8
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %sub = shl i32 %4, 12
  %add = add i32 %sub, 12288
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_ethtool_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %regs, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %addr = getelementptr i8, ptr %netdev, i32 2344
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr, align 8
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void @mmiocpy(ptr noundef %p, ptr noundef %2, i32 noundef %4) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsnep_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tsnep_ethtool_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_ethtool_self_test(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_ethtool_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 4
  %4 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = call ptr @memcpy(ptr %data, ptr @tsnep_stats_strings, i32 320)
  %add.ptr = getelementptr i8, ptr %data, i32 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45 = icmp sgt i32 %1, 0
  br i1 %cmp45, label %sw.bb.for.cond1.preheader_crit_edge, label %sw.bb.for.cond9.preheader_crit_edge

sw.bb.for.cond9.preheader_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader

sw.bb.for.cond1.preheader_crit_edge:              ; preds = %sw.bb
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %sw.bb.for.cond1.preheader_crit_edge
  %i.047 = phi i32 [ %inc7, %for.cond1.preheader.for.cond1.preheader_crit_edge ], [ 0, %sw.bb.for.cond1.preheader_crit_edge ]
  %data.addr.046 = phi ptr [ %add.ptr5.7, %for.cond1.preheader.for.cond1.preheader_crit_edge ], [ %add.ptr, %sw.bb.for.cond1.preheader_crit_edge ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.addr.046, i32 noundef 32, ptr noundef nonnull @tsnep_rx_queue_stats_strings, i32 noundef %i.047)
  %add.ptr5 = getelementptr i8, ptr %data.addr.046, i32 32
  %call4.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 1), i32 noundef %i.047)
  %add.ptr5.1 = getelementptr i8, ptr %data.addr.046, i32 64
  %call4.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.1, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 2), i32 noundef %i.047)
  %add.ptr5.2 = getelementptr i8, ptr %data.addr.046, i32 96
  %call4.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.2, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 3), i32 noundef %i.047)
  %add.ptr5.3 = getelementptr i8, ptr %data.addr.046, i32 128
  %call4.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.3, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 4), i32 noundef %i.047)
  %add.ptr5.4 = getelementptr i8, ptr %data.addr.046, i32 160
  %call4.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.4, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 5), i32 noundef %i.047)
  %add.ptr5.5 = getelementptr i8, ptr %data.addr.046, i32 192
  %call4.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.5, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 6), i32 noundef %i.047)
  %add.ptr5.6 = getelementptr i8, ptr %data.addr.046, i32 224
  %call4.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5.6, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @tsnep_rx_queue_stats_strings, i32 0, i32 7), i32 noundef %i.047)
  %add.ptr5.7 = getelementptr i8, ptr %data.addr.046, i32 256
  %inc7 = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc7, %1
  br i1 %exitcond.not, label %for.cond1.preheader.for.cond9.preheader_crit_edge, label %for.cond1.preheader.for.cond1.preheader_crit_edge

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.cond1.preheader.for.cond9.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond1.preheader.for.cond9.preheader_crit_edge, %sw.bb.for.cond9.preheader_crit_edge
  %data.addr.0.lcssa = phi ptr [ %add.ptr, %sw.bb.for.cond9.preheader_crit_edge ], [ %add.ptr5.7, %for.cond1.preheader.for.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1050 = icmp sgt i32 %3, 0
  br i1 %cmp1050, label %for.cond9.preheader.for.cond12.preheader_crit_edge, label %for.cond9.preheader.sw.epilog_crit_edge

for.cond9.preheader.sw.epilog_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond9.preheader.for.cond12.preheader_crit_edge: ; preds = %for.cond9.preheader
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader.for.cond12.preheader_crit_edge, %for.cond9.preheader.for.cond12.preheader_crit_edge
  %i.152 = phi i32 [ %inc23, %for.cond12.preheader.for.cond12.preheader_crit_edge ], [ 0, %for.cond9.preheader.for.cond12.preheader_crit_edge ]
  %data.addr.251 = phi ptr [ %add.ptr18.2, %for.cond12.preheader.for.cond12.preheader_crit_edge ], [ %data.addr.0.lcssa, %for.cond9.preheader.for.cond12.preheader_crit_edge ]
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.addr.251, i32 noundef 32, ptr noundef nonnull @tsnep_tx_queue_stats_strings, i32 noundef %i.152)
  %add.ptr18 = getelementptr i8, ptr %data.addr.251, i32 32
  %call17.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr18, i32 noundef 32, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @tsnep_tx_queue_stats_strings, i32 0, i32 1), i32 noundef %i.152)
  %add.ptr18.1 = getelementptr i8, ptr %data.addr.251, i32 64
  %call17.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr18.1, i32 noundef 32, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @tsnep_tx_queue_stats_strings, i32 0, i32 2), i32 noundef %i.152)
  %add.ptr18.2 = getelementptr i8, ptr %data.addr.251, i32 96
  %inc23 = add nuw nsw i32 %i.152, 1
  %exitcond54.not = icmp eq i32 %inc23, %3
  br i1 %exitcond54.not, label %for.cond12.preheader.sw.epilog_crit_edge, label %for.cond12.preheader.for.cond12.preheader_crit_edge

for.cond12.preheader.for.cond12.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond12.preheader

for.cond12.preheader.sw.epilog_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tsnep_ethtool_get_test_strings(ptr noundef %data) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %for.cond12.preheader.sw.epilog_crit_edge, %for.cond9.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_ethtool_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp198 = icmp sgt i32 %1, 0
  br i1 %cmp198, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0203 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tsnep_stats.sroa.11.0202 = phi i64 [ %add13, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tsnep_stats.sroa.9.0201 = phi i64 [ %add9, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tsnep_stats.sroa.7.0200 = phi i64 [ %add5, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tsnep_stats.sroa.0.0199 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %packets = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0203, i32 8
  %4 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packets, align 4
  %conv = zext i32 %5 to i64
  %add = add i64 %tsnep_stats.sroa.0.0199, %conv
  %bytes = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0203, i32 9
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  %conv4 = zext i32 %7 to i64
  %add5 = add i64 %tsnep_stats.sroa.7.0200, %conv4
  %dropped = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0203, i32 10
  %8 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dropped, align 4
  %conv8 = zext i32 %9 to i64
  %add9 = add i64 %tsnep_stats.sroa.9.0201, %conv8
  %multicast = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.0203, i32 11
  %10 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multicast, align 4
  %conv12 = zext i32 %11 to i64
  %add13 = add i64 %tsnep_stats.sroa.11.0202, %conv12
  %inc = add nuw nsw i32 %i.0203, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tsnep_stats.sroa.0.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tsnep_stats.sroa.7.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add5, %for.body.for.end_crit_edge ]
  %tsnep_stats.sroa.9.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add9, %for.body.for.end_crit_edge ]
  %tsnep_stats.sroa.11.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add13, %for.body.for.end_crit_edge ]
  %addr = getelementptr i8, ptr %netdev, i32 2344
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 176
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !19
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  %and = and i32 %15, 255
  %conv15 = zext i32 %and to i64
  %and16 = lshr i32 %15, 16
  %shr17 = and i32 %and16, 255
  %conv18 = zext i32 %shr17 to i64
  %and19 = lshr i32 %15, 8
  %shr20 = and i32 %and19, 255
  %conv21 = zext i32 %shr20 to i64
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24207 = icmp sgt i32 %17, 0
  br i1 %cmp24207, label %for.end.for.body26_crit_edge, label %for.end.for.end43_crit_edge

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %i.1211 = phi i32 [ %inc42, %for.body26.for.body26_crit_edge ], [ 0, %for.end.for.body26_crit_edge ]
  %tsnep_stats.sroa.20.0210 = phi i64 [ %add40, %for.body26.for.body26_crit_edge ], [ 0, %for.end.for.body26_crit_edge ]
  %tsnep_stats.sroa.18.0209 = phi i64 [ %add35, %for.body26.for.body26_crit_edge ], [ 0, %for.end.for.body26_crit_edge ]
  %tsnep_stats.sroa.16.0208 = phi i64 [ %add30, %for.body26.for.body26_crit_edge ], [ 0, %for.end.for.body26_crit_edge ]
  %packets28 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.1211, i32 10
  %18 = ptrtoint ptr %packets28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packets28, align 4
  %conv29 = zext i32 %19 to i64
  %add30 = add i64 %tsnep_stats.sroa.16.0208, %conv29
  %bytes33 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.1211, i32 11
  %20 = ptrtoint ptr %bytes33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes33, align 8
  %conv34 = zext i32 %21 to i64
  %add35 = add i64 %tsnep_stats.sroa.18.0209, %conv34
  %dropped38 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.1211, i32 12
  %22 = ptrtoint ptr %dropped38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dropped38, align 4
  %conv39 = zext i32 %23 to i64
  %add40 = add i64 %tsnep_stats.sroa.20.0210, %conv39
  %inc42 = add nuw nsw i32 %i.1211, 1
  %exitcond222.not = icmp eq i32 %inc42, %17
  br i1 %exitcond222.not, label %for.body26.for.end43_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.body26.for.end43_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.end43:                                        ; preds = %for.body26.for.end43_crit_edge, %for.end.for.end43_crit_edge
  %tsnep_stats.sroa.16.0.lcssa = phi i64 [ 0, %for.end.for.end43_crit_edge ], [ %add30, %for.body26.for.end43_crit_edge ]
  %tsnep_stats.sroa.18.0.lcssa = phi i64 [ 0, %for.end.for.end43_crit_edge ], [ %add35, %for.body26.for.end43_crit_edge ]
  %tsnep_stats.sroa.20.0.lcssa = phi i64 [ 0, %for.end.for.end43_crit_edge ], [ %add40, %for.body26.for.end43_crit_edge ]
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %tsnep_stats.sroa.0.0.lcssa, ptr %data, align 8
  %tsnep_stats.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 8
  %25 = ptrtoint ptr %tsnep_stats.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %tsnep_stats.sroa.7.0.lcssa, ptr %tsnep_stats.sroa.7.0..sroa_idx, align 8
  %tsnep_stats.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 16
  %26 = ptrtoint ptr %tsnep_stats.sroa.9.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %tsnep_stats.sroa.9.0.lcssa, ptr %tsnep_stats.sroa.9.0..sroa_idx, align 8
  %tsnep_stats.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 24
  %27 = ptrtoint ptr %tsnep_stats.sroa.11.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %tsnep_stats.sroa.11.0.lcssa, ptr %tsnep_stats.sroa.11.0..sroa_idx, align 8
  %tsnep_stats.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 32
  %28 = ptrtoint ptr %tsnep_stats.sroa.13.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv15, ptr %tsnep_stats.sroa.13.0..sroa_idx, align 8
  %tsnep_stats.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 40
  %29 = ptrtoint ptr %tsnep_stats.sroa.14.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv18, ptr %tsnep_stats.sroa.14.0..sroa_idx, align 8
  %tsnep_stats.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 48
  %30 = ptrtoint ptr %tsnep_stats.sroa.15.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv21, ptr %tsnep_stats.sroa.15.0..sroa_idx, align 8
  %tsnep_stats.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 56
  %31 = ptrtoint ptr %tsnep_stats.sroa.16.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %tsnep_stats.sroa.16.0.lcssa, ptr %tsnep_stats.sroa.16.0..sroa_idx, align 8
  %tsnep_stats.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 64
  %32 = ptrtoint ptr %tsnep_stats.sroa.18.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %tsnep_stats.sroa.18.0.lcssa, ptr %tsnep_stats.sroa.18.0..sroa_idx, align 8
  %tsnep_stats.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %data, i32 72
  %33 = ptrtoint ptr %tsnep_stats.sroa.20.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %tsnep_stats.sroa.20.0.lcssa, ptr %tsnep_stats.sroa.20.0..sroa_idx, align 8
  %add.ptr44 = getelementptr i64, ptr %data, i32 10
  br i1 %cmp198, label %for.end43.for.body48_crit_edge, label %for.end43.for.cond93.preheader_crit_edge

for.end43.for.cond93.preheader_crit_edge:         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond93.preheader

for.end43.for.body48_crit_edge:                   ; preds = %for.end43
  br label %for.body48

for.cond93.preheader:                             ; preds = %for.body48.for.cond93.preheader_crit_edge, %for.end43.for.cond93.preheader_crit_edge
  %data.addr.0.lcssa = phi ptr [ %add.ptr44, %for.end43.for.cond93.preheader_crit_edge ], [ %add.ptr89, %for.body48.for.cond93.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp94219 = icmp sgt i32 %3, 0
  br i1 %cmp94219, label %for.cond93.preheader.for.body96_crit_edge, label %for.cond93.preheader.for.end118_crit_edge

for.cond93.preheader.for.end118_crit_edge:        ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end118

for.cond93.preheader.for.body96_crit_edge:        ; preds = %for.cond93.preheader
  br label %for.body96

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.end43.for.body48_crit_edge
  %data.addr.0217 = phi ptr [ %add.ptr89, %for.body48.for.body48_crit_edge ], [ %add.ptr44, %for.end43.for.body48_crit_edge ]
  %i.2216 = phi i32 [ %inc91, %for.body48.for.body48_crit_edge ], [ 0, %for.end43.for.body48_crit_edge ]
  %packets51 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.2216, i32 8
  %34 = ptrtoint ptr %packets51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packets51, align 4
  %conv52 = zext i32 %35 to i64
  %bytes56 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.2216, i32 9
  %36 = ptrtoint ptr %bytes56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes56, align 4
  %conv57 = zext i32 %37 to i64
  %dropped61 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.2216, i32 10
  %38 = ptrtoint ptr %dropped61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dropped61, align 4
  %conv62 = zext i32 %39 to i64
  %multicast66 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.2216, i32 11
  %40 = ptrtoint ptr %multicast66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %multicast66, align 4
  %conv67 = zext i32 %41 to i64
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2216)
  %cmp70 = icmp eq i32 %i.2216, 0
  %sub = shl i32 %i.2216, 12
  %add72 = add i32 %sub, 12288
  %cond = select i1 %cmp70, i32 0, i32 %add72
  %add.ptr73 = getelementptr i8, ptr %43, i32 400
  %add.ptr74 = getelementptr i8, ptr %add.ptr73, i32 %cond
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !19
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  %and76 = and i32 %45, 255
  %conv78 = zext i32 %and76 to i64
  %and79 = lshr i32 %45, 8
  %shr80 = and i32 %and79, 255
  %conv81 = zext i32 %shr80 to i64
  %and82 = lshr i32 %45, 16
  %shr83 = and i32 %and82, 255
  %conv84 = zext i32 %shr83 to i64
  %shr86 = lshr i32 %45, 24
  %conv87 = zext i32 %shr86 to i64
  %46 = ptrtoint ptr %data.addr.0217 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv52, ptr %data.addr.0217, align 8
  %tsnep_rx_queue_stats.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 8
  %47 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.6.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv57, ptr %tsnep_rx_queue_stats.sroa.6.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 16
  %48 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv62, ptr %tsnep_rx_queue_stats.sroa.7.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 24
  %49 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.8.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv67, ptr %tsnep_rx_queue_stats.sroa.8.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 32
  %50 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.9.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv78, ptr %tsnep_rx_queue_stats.sroa.9.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 40
  %51 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.10.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv81, ptr %tsnep_rx_queue_stats.sroa.10.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 48
  %52 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.11.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv84, ptr %tsnep_rx_queue_stats.sroa.11.0..sroa_idx, align 8
  %tsnep_rx_queue_stats.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.0217, i32 56
  %53 = ptrtoint ptr %tsnep_rx_queue_stats.sroa.12.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv87, ptr %tsnep_rx_queue_stats.sroa.12.0..sroa_idx, align 8
  %add.ptr89 = getelementptr i64, ptr %data.addr.0217, i32 8
  %inc91 = add nuw nsw i32 %i.2216, 1
  %exitcond223.not = icmp eq i32 %inc91, %1
  br i1 %exitcond223.not, label %for.body48.for.cond93.preheader_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.body48.for.cond93.preheader_crit_edge:        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond93.preheader

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.cond93.preheader.for.body96_crit_edge
  %data.addr.1221 = phi ptr [ %add.ptr115, %for.body96.for.body96_crit_edge ], [ %data.addr.0.lcssa, %for.cond93.preheader.for.body96_crit_edge ]
  %i.3220 = phi i32 [ %inc117, %for.body96.for.body96_crit_edge ], [ 0, %for.cond93.preheader.for.body96_crit_edge ]
  %packets99 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.3220, i32 10
  %54 = ptrtoint ptr %packets99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %packets99, align 4
  %conv100 = zext i32 %55 to i64
  %bytes105 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.3220, i32 11
  %56 = ptrtoint ptr %bytes105 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bytes105, align 8
  %conv106 = zext i32 %57 to i64
  %dropped111 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.3220, i32 12
  %58 = ptrtoint ptr %dropped111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dropped111, align 4
  %conv112 = zext i32 %59 to i64
  %60 = ptrtoint ptr %data.addr.1221 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv100, ptr %data.addr.1221, align 8
  %tsnep_tx_queue_stats.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.1221, i32 8
  %61 = ptrtoint ptr %tsnep_tx_queue_stats.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv106, ptr %tsnep_tx_queue_stats.sroa.7.0..sroa_idx, align 8
  %tsnep_tx_queue_stats.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %data.addr.1221, i32 16
  %62 = ptrtoint ptr %tsnep_tx_queue_stats.sroa.10.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv112, ptr %tsnep_tx_queue_stats.sroa.10.0..sroa_idx, align 8
  %add.ptr115 = getelementptr i64, ptr %data.addr.1221, i32 3
  %inc117 = add nuw nsw i32 %i.3220, 1
  %exitcond224.not = icmp eq i32 %inc117, %3
  br i1 %exitcond224.not, label %for.body96.for.end118_crit_edge, label %for.body96.for.body96_crit_edge

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body96

for.body96.for.end118_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end118

for.end118:                                       ; preds = %for.body96.for.end118_crit_edge, %for.cond93.preheader.for.end118_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ethtool_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %sset, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %1 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_rx_queues, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 4
  %mul = shl i32 %2, 3
  %add = add i32 %mul, 10
  %mul1 = mul i32 %4, 3
  %add2 = add i32 %add, %mul1
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @tsnep_ethtool_get_test_count() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ %add2, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ethtool_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %dev, i32 6696
  %1 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ptp_clock_index(ptr noundef nonnull %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.sink = phi i32 [ %call2, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2.sink, ptr %3, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_ethtool_get_test_strings(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_ethtool_get_test_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @tsnep_ethtool_ops, !1, !"tsnep_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/engleder/tsnep_ethtool.c", i32 278, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/engleder/tsnep_ethtool.c", i32 79, i32 27}
!4 = !{ptr @tsnep_stats_strings, !5, !"tsnep_stats_strings", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/engleder/tsnep_ethtool.c", i32 6, i32 19}
!6 = !{ptr @tsnep_rx_queue_stats_strings, !7, !"tsnep_rx_queue_stats_strings", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/engleder/tsnep_ethtool.c", i32 34, i32 19}
!8 = !{ptr @tsnep_tx_queue_stats_strings, !9, !"tsnep_tx_queue_stats_strings", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/engleder/tsnep_ethtool.c", i32 59, i32 19}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 6248263}
!20 = !{i64 2153788612}
