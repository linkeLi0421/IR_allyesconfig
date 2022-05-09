; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_tsn.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_tsn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.131] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.127, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.127 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.131 = type { %struct.timespec64, %struct.timespec64 }
%struct.igc_ring = type { ptr, ptr, ptr, %union.anon.117, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.123, [24 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.117 = type { ptr }
%union.anon.123 = type { %struct.anon.125 }
%struct.anon.125 = type { %struct.igc_rx_queue_stats, %struct.igc_rx_packet_stats, %struct.u64_stats_sync, ptr }
%struct.igc_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.igc_rx_packet_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_tsn_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, -393217
  %base_time.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 32
  %2 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %base_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  %or.i = or i32 %and.i, 131072
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  %num_tx_queues.i.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i.i = icmp sgt i32 %5, 0
  br i1 %cmp5.i.i, label %for.body.i.preheader.i, label %entry.igc_tsn_new_flags.exit_crit_edge

entry.igc_tsn_new_flags.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

for.body.i.preheader.i:                           ; preds = %entry
  %arrayidx.i31.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 0
  %6 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i31.i, align 4
  %launchtime_enable.i32.i = getelementptr inbounds %struct.igc_ring, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %launchtime_enable.i32.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %launchtime_enable.i32.i, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i33.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i33.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge

for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i24.preheader.i

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.06.i34.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.06.i34.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %5)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge, label %for.body.i.i

for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_any_launchtime.exit.loopexit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %inc.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %launchtime_enable.i.i = getelementptr inbounds %struct.igc_ring, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %launchtime_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %launchtime_enable.i.i, align 8, !range !9
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge

for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_any_launchtime.exit.loopexit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

is_any_launchtime.exit.loopexit.i:                ; preds = %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge, %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge
  %inc.i.i.lcssa = phi i32 [ %inc.i.i, %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge ], [ %5, %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.lcssa, i32 %5)
  %cmp.i.le.i = icmp slt i32 %inc.i.i.lcssa, %5
  %phi.sel.i = select i1 %cmp.i.le.i, i32 %or.i, i32 %spec.select.i
  br label %for.body.i24.preheader.i

for.body.i24.preheader.i:                         ; preds = %is_any_launchtime.exit.loopexit.i, %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge
  %cmp.lcssa.i.i = phi i32 [ %or.i, %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge ], [ %phi.sel.i, %is_any_launchtime.exit.loopexit.i ]
  %cbs_enable.i37.i = getelementptr inbounds %struct.igc_ring, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %cbs_enable.i37.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cbs_enable.i37.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i2338.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i2338.i, label %for.body.i24.preheader.i.for.cond.i19.i_crit_edge, label %for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge

for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge: ; preds = %for.body.i24.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_cbs_enabled.exit.thread42.i

for.body.i24.preheader.i.for.cond.i19.i_crit_edge: ; preds = %for.body.i24.preheader.i
  br label %for.cond.i19.i

for.cond.i19.i:                                   ; preds = %for.body.i24.i.for.cond.i19.i_crit_edge, %for.body.i24.preheader.i.for.cond.i19.i_crit_edge
  %i.06.i2139.i = phi i32 [ %inc.i16.i, %for.body.i24.i.for.cond.i19.i_crit_edge ], [ 0, %for.body.i24.preheader.i.for.cond.i19.i_crit_edge ]
  %inc.i16.i = add nuw nsw i32 %i.06.i2139.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i16.i, i32 %5)
  %exitcond.not.i18.i = icmp eq i32 %inc.i16.i, %5
  br i1 %exitcond.not.i18.i, label %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge, label %for.body.i24.i

for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge:  ; preds = %for.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

for.body.i24.i:                                   ; preds = %for.cond.i19.i
  %arrayidx.i22.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %inc.i16.i
  %16 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i22.i, align 4
  %cbs_enable.i.i = getelementptr inbounds %struct.igc_ring, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %cbs_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cbs_enable.i.i, align 4, !range !9
  %tobool.not.i23.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i23.i, label %for.body.i24.i.for.cond.i19.i_crit_edge, label %is_cbs_enabled.exit.i

for.body.i24.i.for.cond.i19.i_crit_edge:          ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i19.i

is_cbs_enabled.exit.i:                            ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i16.i, i32 %5)
  %cmp.i17.le.i = icmp slt i32 %inc.i16.i, %5
  br i1 %cmp.i17.le.i, label %is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge, label %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge

is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge: ; preds = %is_cbs_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge: ; preds = %is_cbs_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_cbs_enabled.exit.thread42.i

is_cbs_enabled.exit.thread42.i:                   ; preds = %is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge, %for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge
  %or645.i = or i32 %cmp.lcssa.i.i, 262144
  br label %igc_tsn_new_flags.exit

igc_tsn_new_flags.exit:                           ; preds = %is_cbs_enabled.exit.thread42.i, %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge, %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge, %entry.igc_tsn_new_flags.exit_crit_edge
  %20 = phi i32 [ %spec.select.i, %entry.igc_tsn_new_flags.exit_crit_edge ], [ %or645.i, %is_cbs_enabled.exit.thread42.i ], [ %cmp.lcssa.i.i, %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge ], [ %cmp.lcssa.i.i, %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge ]
  %and = and i32 %20, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %igc_tsn_new_flags.exit
  %hw1.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %hw_addr3.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr i8, ptr %22, i32 13316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 335544324) #4, !srcloc !11
  %23 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %arrayidx19.i = getelementptr i8, ptr %24, i32 13660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19.i, i32 -1744830464) #4, !srcloc !11
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 13680) #4
  %and.i12 = and i32 %call.i, -10
  %25 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i12) #4
  %arrayidx32.i = getelementptr i8, ptr %26, i32 13680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32.i, i32 %27) #4, !srcloc !11
  %28 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i = icmp sgt i32 %29, 0
  br i1 %cmp1.i, label %if.then.do.body35.i_crit_edge, label %if.then.igc_tsn_disable_offload.exit_crit_edge

if.then.igc_tsn_disable_offload.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_disable_offload.exit

if.then.do.body35.i_crit_edge:                    ; preds = %if.then
  br label %do.body35.i

do.body35.i:                                      ; preds = %do.body35.i.do.body35.i_crit_edge, %if.then.do.body35.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %do.body35.i.do.body35.i_crit_edge ], [ 0, %if.then.do.body35.i_crit_edge ]
  %30 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %mul.i = shl i32 %i.02.i, 2
  %add.i = add i32 %mul.i, 13124
  %arrayidx45.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx45.i, i32 0) #4, !srcloc !11
  %32 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %add59.i = add i32 %mul.i, 13092
  %arrayidx60.i = getelementptr i8, ptr %33, i32 %add59.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx60.i, i32 0) #4, !srcloc !11
  %34 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %add74.i = add i32 %mul.i, 13108
  %arrayidx75.i = getelementptr i8, ptr %35, i32 %add74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx75.i, i32 13277755) #4, !srcloc !11
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %36 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues.i.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %do.body35.i.do.body35.i_crit_edge, label %do.body35.i.igc_tsn_disable_offload.exit_crit_edge

do.body35.i.igc_tsn_disable_offload.exit_crit_edge: ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_disable_offload.exit

do.body35.i.do.body35.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body35.i

igc_tsn_disable_offload.exit:                     ; preds = %do.body35.i.igc_tsn_disable_offload.exit_crit_edge, %if.then.igc_tsn_disable_offload.exit_crit_edge
  %38 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %arrayidx88.i = getelementptr i8, ptr %39, i32 13088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx88.i, i32 0) #4, !srcloc !11
  %40 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %arrayidx101.i = getelementptr i8, ptr %41, i32 13084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx101.i, i32 13277755) #4, !srcloc !11
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %and104.i = and i32 %43, -131073
  br label %cleanup

if.end:                                           ; preds = %igc_tsn_new_flags.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @igc_tsn_enable_offload(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %igc_tsn_disable_offload.exit
  %storemerge = phi i32 [ %20, %if.end ], [ %and104.i, %igc_tsn_disable_offload.exit ]
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %flags.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igc_tsn_enable_offload(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %baset_l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baset_l) #4
  %0 = ptrtoint ptr %baset_l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %baset_l, align 4, !annotation !19
  %cycle_time = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 33
  %1 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cycle_time, align 8
  %conv = trunc i64 %2 to i32
  %base_time2 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 32
  %3 = ptrtoint ptr %base_time2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %base_time2, align 8
  %hw_addr4 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i8, ptr %6, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #4, !srcloc !11
  %7 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %arrayidx20 = getelementptr i8, ptr %8, i32 13660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 419430400) #4, !srcloc !11
  %9 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %arrayidx33 = getelementptr i8, ptr %10, i32 13316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx33, i32 1162941444) #4, !srcloc !11
  %call = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 13680) #4
  %or = or i32 %call, 9
  %11 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx46 = getelementptr i8, ptr %12, i32 13680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46, i32 %13) #4, !srcloc !11
  %14 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx59 = getelementptr i8, ptr %15, i32 13088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx59, i32 %16) #4, !srcloc !11
  %17 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %arrayidx72 = getelementptr i8, ptr %18, i32 13084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx72, i32 %16) #4, !srcloc !11
  %num_tx_queues = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %19 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2 = icmp sgt i32 %20, 0
  br i1 %cmp2, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.body396.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %do.body396.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx76 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %i.03
  %21 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx76, align 4
  %23 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %start_time = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 13
  %25 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_time, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %mul = shl i32 %i.03, 2
  %add = add i32 %mul, 13092
  %arrayidx87 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx87, i32 %27) #4, !srcloc !11
  %28 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %end_time = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 14
  %30 = ptrtoint ptr %end_time to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end_time, align 16
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %add101 = add i32 %mul, 13108
  %arrayidx102 = getelementptr i8, ptr %29, i32 %add101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx102, i32 %32) #4, !srcloc !11
  %33 = ptrtoint ptr %base_time2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %base_time2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not = icmp eq i64 %34, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 6
  %launchtime_enable = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 12
  %35 = ptrtoint ptr %launchtime_enable to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %launchtime_enable, align 8, !range !9
  %37 = zext i8 %36 to i32
  %txqctl.1 = or i32 %spec.select, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.03)
  %cmp111 = icmp ugt i32 %i.03, 1
  br i1 %cmp111, label %for.body.do.body396_crit_edge, label %if.end114

for.body.do.body396_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body396

if.end114:                                        ; preds = %for.body
  %cbs_enable = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 15
  %38 = ptrtoint ptr %cbs_enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cbs_enable, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool115.not = icmp eq i8 %39, 0
  br i1 %tobool115.not, label %if.else359, label %if.then116

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03)
  %cmp117 = icmp eq i32 %i.03, 0
  %txqctl.2.v = select i1 %cmp117, i32 128, i32 192
  %txqctl.2 = or i32 %txqctl.1, %txqctl.2.v
  %idleslope = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 16
  %40 = ptrtoint ptr %idleslope to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idleslope, align 8
  %conv123 = sext i32 %41 to i64
  %mul124 = mul nsw i64 %conv123, 61036
  %sub = add nsw i64 %mul124, 2499999
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub) #7, !srcloc !28
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub, i64 %42, i32 0) #7, !srcloc !29
  %asmresult10.i = extractvalue { i64, i32 } %43, 0
  %div2961 = lshr i64 %asmresult10.i, 21
  %conv319 = trunc i64 %div2961 to i32
  %mul320 = shl nuw nsw i32 %i.03, 6
  %add321 = add nuw nsw i32 %mul320, 12292
  %call322 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %add321) #4
  %and323 = and i32 %call322, -1073807360
  %conv324 = and i32 %conv319, 65535
  %or325 = or i32 %and323, %conv324
  %or326 = or i32 %or325, 1073741824
  %44 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %or326)
  %arrayidx339 = getelementptr i8, ptr %45, i32 %add321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx339, i32 %46) #4, !srcloc !11
  %47 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %hicredit = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 18
  %49 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hicredit, align 64
  %mul352 = mul i32 %50, 30517
  %add353 = xor i32 %mul352, -2147483648
  %51 = tail call i32 @llvm.bswap.i32(i32 %add353)
  %add355 = add nuw nsw i32 %mul320, 12300
  %arrayidx356 = getelementptr i8, ptr %48, i32 %add355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx356, i32 %51) #4, !srcloc !11
  br label %do.body396

if.else359:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  %mul361 = shl nuw nsw i32 %i.03, 6
  %add362 = add nuw nsw i32 %mul361, 12292
  %call363 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %add362) #4
  %and364 = and i32 %call363, -1073807360
  %52 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %54 = tail call i32 @llvm.bswap.i32(i32 %and364)
  %arrayidx377 = getelementptr i8, ptr %53, i32 %add362
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx377, i32 %54) #4, !srcloc !11
  %55 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %add391 = add nuw nsw i32 %mul361, 12300
  %arrayidx392 = getelementptr i8, ptr %56, i32 %add391
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx392, i32 0) #4, !srcloc !11
  br label %do.body396

do.body396:                                       ; preds = %if.else359, %if.then116, %for.body.do.body396_crit_edge
  %txqctl.3 = phi i32 [ %txqctl.1, %for.body.do.body396_crit_edge ], [ %txqctl.2, %if.then116 ], [ %txqctl.1, %if.else359 ]
  %57 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %hw_addr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %59 = tail call i32 @llvm.bswap.i32(i32 %txqctl.3)
  %add407 = add i32 %mul, 13124
  %arrayidx408 = getelementptr i8, ptr %58, i32 %add407
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx408, i32 %59) #4, !srcloc !11
  %inc = add nuw nsw i32 %i.03, 1
  %60 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_tx_queues, align 8
  %cmp = icmp slt i32 %inc, %61
  br i1 %cmp, label %do.body396.for.body_crit_edge, label %do.body396.for.end_crit_edge

do.body396.for.end_crit_edge:                     ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body396.for.body_crit_edge:                    ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %do.body396.for.end_crit_edge, %entry.for.end_crit_edge
  %call411 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46592) #4
  %call412 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46596) #4
  %conv413 = zext i32 %call412 to i64
  %mul.i = mul nuw nsw i64 %conv413, 1000000000
  %conv.i = zext i32 %call411 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %4)
  %cmp3.i = icmp sgt i64 %add.i, %4
  br i1 %cmp3.i, label %if.then418, label %for.end.if.end426_crit_edge

for.end.if.end426_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end426

if.then418:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub419 = sub i64 %add.i, %4
  %conv420 = and i64 %2, 4294967295
  %call421 = tail call i64 @div64_s64(i64 noundef %sub419, i64 noundef %conv420) #4
  %add422 = add i64 %call421, 1
  %mul424 = mul i64 %add422, %conv420
  %add425 = add i64 %mul424, %4
  br label %if.end426

if.end426:                                        ; preds = %if.then418, %for.end.if.end426_crit_edge
  %base_time.0 = phi i64 [ %add425, %if.then418 ], [ %4, %for.end.if.end426_crit_edge ]
  %call427 = call i64 @div_s64_rem(i64 noundef %base_time.0, i32 noundef 1000000000, ptr noundef nonnull %baset_l) #4
  %conv428 = trunc i64 %call427 to i32
  %62 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %hw_addr4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @arm_heavy_mb() #4
  %64 = call i32 @llvm.bswap.i32(i32 %conv428)
  %arrayidx439 = getelementptr i8, ptr %63, i32 13080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx439, i32 %64) #4, !srcloc !11
  %65 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %hw_addr4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %baset_l to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %baset_l, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %arrayidx452 = getelementptr i8, ptr %66, i32 13076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx452, i32 %69) #4, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baset_l) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_tsn_offload_apply(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reset_task = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %reset_task) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @igc_tsn_enable_offload(ptr noundef %adapter)
  %flags.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, -393217
  %base_time.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 32
  %7 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %base_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  %or.i = or i32 %and.i, 131072
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  %num_tx_queues.i.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %9 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i.i = icmp sgt i32 %10, 0
  br i1 %cmp5.i.i, label %for.body.i.preheader.i, label %if.end.igc_tsn_new_flags.exit_crit_edge

if.end.igc_tsn_new_flags.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

for.body.i.preheader.i:                           ; preds = %if.end
  %arrayidx.i31.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 0
  %11 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i31.i, align 4
  %launchtime_enable.i32.i = getelementptr inbounds %struct.igc_ring, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %launchtime_enable.i32.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %launchtime_enable.i32.i, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i33.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i33.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge

for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i24.preheader.i

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.06.i34.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.06.i34.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %10)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge, label %for.body.i.i

for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_any_launchtime.exit.loopexit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %inc.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %launchtime_enable.i.i = getelementptr inbounds %struct.igc_ring, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %launchtime_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %launchtime_enable.i.i, align 8, !range !9
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge

for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_any_launchtime.exit.loopexit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

is_any_launchtime.exit.loopexit.i:                ; preds = %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge, %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge
  %inc.i.i.lcssa = phi i32 [ %inc.i.i, %for.body.i.i.is_any_launchtime.exit.loopexit.i_crit_edge ], [ %10, %for.cond.i.i.is_any_launchtime.exit.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.lcssa, i32 %10)
  %cmp.i.le.i = icmp slt i32 %inc.i.i.lcssa, %10
  %phi.sel.i = select i1 %cmp.i.le.i, i32 %or.i, i32 %spec.select.i
  br label %for.body.i24.preheader.i

for.body.i24.preheader.i:                         ; preds = %is_any_launchtime.exit.loopexit.i, %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge
  %cmp.lcssa.i.i = phi i32 [ %or.i, %for.body.i.preheader.i.for.body.i24.preheader.i_crit_edge ], [ %phi.sel.i, %is_any_launchtime.exit.loopexit.i ]
  %cbs_enable.i37.i = getelementptr inbounds %struct.igc_ring, ptr %12, i32 0, i32 15
  %19 = ptrtoint ptr %cbs_enable.i37.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cbs_enable.i37.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i2338.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i2338.i, label %for.body.i24.preheader.i.for.cond.i19.i_crit_edge, label %for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge

for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge: ; preds = %for.body.i24.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_cbs_enabled.exit.thread42.i

for.body.i24.preheader.i.for.cond.i19.i_crit_edge: ; preds = %for.body.i24.preheader.i
  br label %for.cond.i19.i

for.cond.i19.i:                                   ; preds = %for.body.i24.i.for.cond.i19.i_crit_edge, %for.body.i24.preheader.i.for.cond.i19.i_crit_edge
  %i.06.i2139.i = phi i32 [ %inc.i16.i, %for.body.i24.i.for.cond.i19.i_crit_edge ], [ 0, %for.body.i24.preheader.i.for.cond.i19.i_crit_edge ]
  %inc.i16.i = add nuw nsw i32 %i.06.i2139.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i16.i, i32 %10)
  %exitcond.not.i18.i = icmp eq i32 %inc.i16.i, %10
  br i1 %exitcond.not.i18.i, label %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge, label %for.body.i24.i

for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge:  ; preds = %for.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

for.body.i24.i:                                   ; preds = %for.cond.i19.i
  %arrayidx.i22.i = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %inc.i16.i
  %21 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i22.i, align 4
  %cbs_enable.i.i = getelementptr inbounds %struct.igc_ring, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %cbs_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cbs_enable.i.i, align 4, !range !9
  %tobool.not.i23.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i23.i, label %for.body.i24.i.for.cond.i19.i_crit_edge, label %is_cbs_enabled.exit.i

for.body.i24.i.for.cond.i19.i_crit_edge:          ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i19.i

is_cbs_enabled.exit.i:                            ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i16.i, i32 %10)
  %cmp.i17.le.i = icmp slt i32 %inc.i16.i, %10
  br i1 %cmp.i17.le.i, label %is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge, label %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge

is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge: ; preds = %is_cbs_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_tsn_new_flags.exit

is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge: ; preds = %is_cbs_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_cbs_enabled.exit.thread42.i

is_cbs_enabled.exit.thread42.i:                   ; preds = %is_cbs_enabled.exit.i.is_cbs_enabled.exit.thread42.i_crit_edge, %for.body.i24.preheader.i.is_cbs_enabled.exit.thread42.i_crit_edge
  %or645.i = or i32 %cmp.lcssa.i.i, 262144
  br label %igc_tsn_new_flags.exit

igc_tsn_new_flags.exit:                           ; preds = %is_cbs_enabled.exit.thread42.i, %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge, %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge, %if.end.igc_tsn_new_flags.exit_crit_edge
  %25 = phi i32 [ %spec.select.i, %if.end.igc_tsn_new_flags.exit_crit_edge ], [ %or645.i, %is_cbs_enabled.exit.thread42.i ], [ %cmp.lcssa.i.i, %is_cbs_enabled.exit.i.igc_tsn_new_flags.exit_crit_edge ], [ %cmp.lcssa.i.i, %for.cond.i19.i.igc_tsn_new_flags.exit_crit_edge ]
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %igc_tsn_new_flags.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2156575757}
!11 = !{i64 5001732}
!12 = !{i64 2156579171}
!13 = !{i64 2156586686}
!14 = !{i64 2156590131}
!15 = !{i64 2156593571}
!16 = !{i64 2156597043}
!17 = !{i64 2156600464}
!18 = !{i64 2156603871}
!19 = !{!"auto-init"}
!20 = !{i64 2156607363}
!21 = !{i64 2156610750}
!22 = !{i64 2156614166}
!23 = !{i64 2156617639}
!24 = !{i64 2156621043}
!25 = !{i64 2156624438}
!26 = !{i64 2156627904}
!27 = !{i64 2156631415}
!28 = !{i64 886324, i64 886351}
!29 = !{i64 887019, i64 887046, i64 887079, i64 887100, i64 887127, i64 887153}
!30 = !{i64 2156640478}
!31 = !{i64 2156644015}
!32 = !{i64 2156647757}
!33 = !{i64 2156651224}
!34 = !{i64 2156654677}
!35 = !{i64 2156658256}
!36 = !{i64 2156661661}
