; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/sched.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.196, i32 }
%struct.atomic_t = type { i32 }
%union.anon.196 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.sched_table = type { i8, [0 x %struct.sched_class] }
%struct.sched_class = type { i8, i8, %struct.ch_sched_params, i32, %struct.list_head, %struct.atomic_t }
%struct.ch_sched_params = type { i8, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.sched_queue_entry = type { %struct.list_head, i32, %struct.ch_sched_queue }
%struct.ch_sched_queue = type { i8, i8 }
%struct.ch_sched_flowc = type { i32, i8 }
%struct.port_info = type { ptr, i16, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.link_config, ptr, %struct.port_stats, %struct.port_dcb_info, %struct.cxgb_fcoe, i8, %struct.hwtstamp_config, i8, ptr, i32, i8, i8, i8, i8, i8, i16, i16, i32, %struct.mutex, %struct.cxgb4_ethtool_lb_test }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.port_dcb_info = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x %struct.app_priority] }
%struct.app_priority = type { i8, i8, i16 }
%struct.cxgb_fcoe = type { i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cxgb4_ethtool_lb_test = type { %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sched_flowc_entry = type { %struct.list_head, %struct.ch_sched_flowc }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_sched_queue_lookup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p, align 1
  %conv = sext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nqsets = getelementptr i8, ptr %dev, i32 2328
  %4 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nqsets, align 8
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp5.not = icmp slt i32 %conv, %conv4
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %first_qset = getelementptr i8, ptr %dev, i32 2329
  %6 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset, align 1
  %conv7 = zext i8 %7 to i32
  %add = add nsw i32 %conv7, %conv
  %cntxt_id = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 0, i32 7
  %8 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cntxt_id, align 4
  %sched_tbl.i = getelementptr i8, ptr %dev, i32 2956
  %10 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched_tbl.i, align 4
  %tab.i = getelementptr inbounds %struct.sched_table, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %idxprom.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr %struct.sched_table, ptr %11, i32 0, i32 1, i32 %idxprom.i
  %cmp.not76.i = icmp eq ptr %tab.i, %arrayidx.i
  br i1 %cmp.not76.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc47.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %e.077.i = phi ptr [ %incdec.ptr.i, %for.inc47.i.for.body.i_crit_edge ], [ %tab.i, %if.end.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %e.077.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %e.077.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp3.i = icmp eq i8 %15, 1
  br i1 %cmp3.i, label %for.body.i.for.inc47.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc47.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bind_type.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 3
  %16 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bind_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc47.i_crit_edge

lor.lhs.false.i.for.inc47.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %entry_list.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 4
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %for.body11.i.for.cond7.i_crit_edge, %if.end.i
  %qe.0.in.i = phi ptr [ %entry_list.i, %if.end.i ], [ %qe.0.i, %for.body11.i.for.cond7.i_crit_edge ]
  %18 = ptrtoint ptr %qe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %qe.0.i = load ptr, ptr %qe.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %qe.0.i, %entry_list.i
  br i1 %cmp9.not.i, label %for.cond7.i.for.inc47.i_crit_edge, label %for.body11.i

for.cond7.i.for.inc47.i_crit_edge:                ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.body11.i:                                     ; preds = %for.cond7.i
  %cntxt_id.i = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cntxt_id.i, align 4
  %cmp12.i = icmp eq i32 %20, %9
  br i1 %cmp12.i, label %sw.epilog.i, label %for.body11.i.for.cond7.i_crit_edge

for.body11.i.for.cond7.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.i

sw.epilog.i:                                      ; preds = %for.body11.i
  %tobool.not.i = icmp eq ptr %qe.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.for.inc47.i_crit_edge, label %cond.true

sw.epilog.i.for.inc47.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %sw.epilog.i.for.inc47.i_crit_edge, %for.cond7.i.for.inc47.i_crit_edge, %lor.lhs.false.i.for.inc47.i_crit_edge, %for.body.i.for.inc47.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sched_class, ptr %e.077.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc47.i.cleanup_crit_edge, label %for.inc47.i.for.body.i_crit_edge

for.inc47.i.for.body.i_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc47.i.cleanup_crit_edge:                    ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %class = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.0.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %class, align 1
  %idxprom = sext i8 %22 to i32
  %arrayidx11 = getelementptr %struct.sched_table, ptr %11, i32 0, i32 1, i32 %idxprom
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %for.inc47.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %arrayidx11, %cond.true ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc47.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_sched_class_bind(ptr nocapture noundef readonly %dev, ptr noundef %arg, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %sched_tbl.i = getelementptr i8, ptr %dev, i32 2956
  %0 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_tbl.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %class = getelementptr inbounds %struct.ch_sched_queue, ptr %arg, i32 0, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %class5 = getelementptr inbounds %struct.ch_sched_flowc, ptr %arg, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %class_id.0.in = phi ptr [ %class5, %sw.bb4 ], [ %class, %sw.bb ]
  %3 = ptrtoint ptr %class_id.0.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %class_id.0 = load i8, ptr %class_id.0.in, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %class_id.0)
  %cmp.not.i = icmp ugt i8 %5, %class_id.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %class_id.0)
  %cmp4.not.i = icmp eq i8 %class_id.0, -1
  %or.cond.i = or i1 %cmp4.not.i, %cmp.not.i
  %cmp.not.i.not = xor i1 %cmp.not.i, true
  %brmerge = or i1 %cmp4.not.i, %cmp.not.i.not
  %.mux = select i1 %or.cond.i, i32 -524, i32 -22
  br i1 %brmerge, label %sw.epilog.cleanup_crit_edge, label %if.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @t4_sched_class_bind_unbind_op(ptr noundef %add.ptr.i.i, ptr noundef nonnull %arg, i32 noundef %type, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.epilog.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end3.cleanup_crit_edge ], [ %.mux, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_sched_class_bind_unbind_op(ptr nocapture noundef readonly %pi, ptr noundef readonly %arg, i32 noundef %type, i1 noundef zeroext %bind) unnamed_addr #2 align 64 {
entry:
  %fw_class.i.i = alloca i32, align 4
  %fw_param.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  br i1 %bind, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  %sched_tbl.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 21
  %1 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sched_tbl.i, align 4
  %3 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi, align 8
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp slt i8 %6, 0
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %lor.lhs.false.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then2
  %nqsets.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 10
  %7 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nqsets.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp5.not.i = icmp ult i8 %6, %8
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i49.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i49.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %sge.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 22
  %first_qset.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 11
  %9 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %first_qset.i, align 1
  %conv9.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 1
  %conv11.i = sext i8 %12 to i32
  %add.i = add nsw i32 %conv11.i, %conv9.i
  %cntxt_id.i = getelementptr [32 x %struct.sge_eth_txq], ptr %sge.i, i32 0, i32 %add.i, i32 0, i32 7
  %13 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cntxt_id.i, align 4
  %call12.i = tail call fastcc i32 @t4_sched_queue_unbind(ptr noundef %pi, ptr noundef nonnull %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end8.i.out_err.i_crit_edge

if.end8.i.out_err.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err.i

if.end15.i:                                       ; preds = %if.end8.i
  %cntxt_id16.i = getelementptr inbounds %struct.sched_queue_entry, ptr %call.i.i49.i, i32 0, i32 1
  %15 = ptrtoint ptr %cntxt_id16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cntxt_id16.i, align 4
  %param.i = getelementptr inbounds %struct.sched_queue_entry, ptr %call.i.i49.i, i32 0, i32 2
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arg, align 1
  %18 = ptrtoint ptr %param.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %param.i, align 4
  %19 = zext i16 %17 to i32
  %20 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_class.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_param.i.i) #8
  %pf1.i.i = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 7
  %sext.i = shl i32 %19, 24
  %conv.i.i = ashr exact i32 %sext.i, 24
  %22 = ptrtoint ptr %fw_class.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i.i, ptr %fw_class.i.i, align 4
  %or.i.i = or i32 %14, 68288512
  %23 = ptrtoint ptr %fw_param.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %fw_param.i.i, align 4
  %24 = ptrtoint ptr %pf1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pf1.i.i, align 4
  %mbox.i.i = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbox.i.i, align 8
  %call.i.i = call i32 @t4_set_params(ptr noundef %21, i32 noundef %27, i32 noundef %25, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %fw_param.i.i, ptr noundef nonnull %fw_class.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_param.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_class.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end15.i.out_err.i_crit_edge

if.end15.i.out_err.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err.i

if.end22.i:                                       ; preds = %if.end15.i
  %entry_list.i = getelementptr %struct.sched_table, ptr %2, i32 0, i32 1, i32 %conv.i.i, i32 4
  %prev.i.i = getelementptr %struct.sched_table, ptr %2, i32 0, i32 1, i32 %conv.i.i, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i50.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i49.i, ptr noundef %29, ptr noundef %entry_list.i) #8
  br i1 %call.i.i50.i, label %if.end.i.i.i, label %if.end22.i.list_add_tail.exit.i_crit_edge

if.end22.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i49.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %call.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry_list.i, ptr %call.i.i49.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i49.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call.i.i49.i, ptr %29, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end22.i.list_add_tail.exit.i_crit_edge
  %bind_type.i = getelementptr %struct.sched_table, ptr %2, i32 0, i32 1, i32 %conv.i.i, i32 3
  %34 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bind_type.i, align 4
  %refcnt.i = getelementptr %struct.sched_table, ptr %2, i32 0, i32 1, i32 %conv.i.i, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !9
  br label %cleanup

out_err.i:                                        ; preds = %if.end15.i.out_err.i_crit_edge, %if.end8.i.out_err.i_crit_edge
  %err.0.i = phi i32 [ %call12.i, %if.end8.i.out_err.i_crit_edge ], [ %call.i.i, %if.end15.i.out_err.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i49.i) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @t4_sched_queue_unbind(ptr noundef %pi, ptr noundef nonnull %arg)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  br i1 %bind, label %if.then7, label %if.else9

if.then7:                                         ; preds = %sw.bb5
  %sched_tbl.i20 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 21
  %36 = ptrtoint ptr %sched_tbl.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sched_tbl.i20, align 4
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i21 = icmp slt i32 %39, 0
  br i1 %cmp.i21, label %if.then7.cleanup_crit_edge, label %lor.lhs.false.i22

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i22:                                ; preds = %if.then7
  %40 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pi, align 8
  %neotids.i = getelementptr inbounds %struct.adapter, ptr %41, i32 0, i32 48, i32 35
  %42 = ptrtoint ptr %neotids.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %neotids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp2.not.i = icmp ult i32 %39, %43
  br i1 %cmp2.not.i, label %if.end.i24, label %lor.lhs.false.i22.cleanup_crit_edge

lor.lhs.false.i22.cleanup_crit_edge:              ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i24:                                       ; preds = %lor.lhs.false.i22
  %call.i.i34.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i23 = icmp eq ptr %call.i.i34.i, null
  br i1 %tobool.not.i23, label %if.end.i24.cleanup_crit_edge, label %if.end4.i

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i24
  %call5.i = tail call fastcc i32 @t4_sched_flowc_unbind(ptr noundef %pi, ptr noundef nonnull %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i26, label %if.end4.i.out_err.i36_crit_edge

if.end4.i.out_err.i36_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err.i36

if.end8.i26:                                      ; preds = %if.end4.i
  %param.i25 = getelementptr inbounds %struct.sched_flowc_entry, ptr %call.i.i34.i, i32 0, i32 1
  %44 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %arg, align 4
  %46 = ptrtoint ptr %param.i25 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %param.i25, align 4
  %47 = trunc i64 %45 to i32
  %48 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pi, align 8
  %conv9.i.i = ashr i32 %47, 24
  %port_id.i.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %50 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_id.i.i, align 1
  %idxprom.i.i = zext i8 %51 to i32
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %49, i32 0, i32 23, i32 %idxprom.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  %54 = lshr i64 %45, 32
  %55 = trunc i64 %54 to i32
  %call14.i.i = tail call i32 @cxgb4_ethofld_send_flowc(ptr noundef %53, i32 noundef %55, i32 noundef %conv9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool11.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i26.out_err.i36_crit_edge

if.end8.i26.out_err.i36_crit_edge:                ; preds = %if.end8.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err.i36

if.end13.i:                                       ; preds = %if.end8.i26
  %entry_list.i27 = getelementptr %struct.sched_table, ptr %37, i32 0, i32 1, i32 %conv9.i.i, i32 4
  %prev.i.i28 = getelementptr %struct.sched_table, ptr %37, i32 0, i32 1, i32 %conv9.i.i, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i28, align 4
  %call.i.i35.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i34.i, ptr noundef %57, ptr noundef %entry_list.i27) #8
  br i1 %call.i.i35.i, label %if.end.i.i.i30, label %if.end13.i.list_add_tail.exit.i34_crit_edge

if.end13.i.list_add_tail.exit.i34_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i34

if.end.i.i.i30:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i34.i, ptr %prev.i.i28, align 4
  %59 = ptrtoint ptr %call.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry_list.i27, ptr %call.i.i34.i, align 4
  %prev3.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %call.i.i34.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i29, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call.i.i34.i, ptr %57, align 4
  br label %list_add_tail.exit.i34

list_add_tail.exit.i34:                           ; preds = %if.end.i.i.i30, %if.end13.i.list_add_tail.exit.i34_crit_edge
  %bind_type.i31 = getelementptr %struct.sched_table, ptr %37, i32 0, i32 1, i32 %conv9.i.i, i32 3
  %62 = ptrtoint ptr %bind_type.i31 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %bind_type.i31, align 4
  %refcnt.i32 = getelementptr %struct.sched_table, ptr %37, i32 0, i32 1, i32 %conv9.i.i, i32 5
  %call.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i32, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i32, i32 1, i32 3, i32 1) #8
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i32, ptr %refcnt.i32, i32 1, ptr elementtype(i32) %refcnt.i32) #8, !srcloc !9
  br label %cleanup

out_err.i36:                                      ; preds = %if.end8.i26.out_err.i36_crit_edge, %if.end4.i.out_err.i36_crit_edge
  %err.0.i35 = phi i32 [ %call5.i, %if.end4.i.out_err.i36_crit_edge ], [ %call14.i.i, %if.end8.i26.out_err.i36_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i34.i) #8
  br label %cleanup

if.else9:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call fastcc i32 @t4_sched_flowc_unbind(ptr noundef %pi, ptr noundef nonnull %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.else9, %out_err.i36, %list_add_tail.exit.i34, %if.end.i24.cleanup_crit_edge, %lor.lhs.false.i22.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.else, %out_err.i, %list_add_tail.exit.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.else ], [ %call10, %if.else9 ], [ -524, %if.end.cleanup_crit_edge ], [ %err.0.i, %out_err.i ], [ 0, %list_add_tail.exit.i ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %if.then2.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %err.0.i35, %out_err.i36 ], [ 0, %list_add_tail.exit.i34 ], [ -34, %lor.lhs.false.i22.cleanup_crit_edge ], [ -34, %if.then7.cleanup_crit_edge ], [ -12, %if.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_sched_class_unbind(ptr nocapture noundef readonly %dev, ptr noundef readonly %arg, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %sched_tbl.i = getelementptr i8, ptr %dev, i32 2956
  %0 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_tbl.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %class = getelementptr inbounds %struct.ch_sched_queue, ptr %arg, i32 0, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %class5 = getelementptr inbounds %struct.ch_sched_flowc, ptr %arg, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %class_id.0.in = phi ptr [ %class5, %sw.bb4 ], [ %class, %sw.bb ]
  %3 = ptrtoint ptr %class_id.0.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %class_id.0 = load i8, ptr %class_id.0.in, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %class_id.0)
  %cmp.not.i = icmp ugt i8 %5, %class_id.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %class_id.0)
  %cmp4.not.i = icmp eq i8 %class_id.0, -1
  %or.cond.i = or i1 %cmp4.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call fastcc i32 @t4_sched_queue_unbind(ptr noundef %add.ptr.i.i, ptr noundef nonnull %arg) #8
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call fastcc i32 @t4_sched_flowc_unbind(ptr noundef %add.ptr.i.i, ptr noundef nonnull %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5.i, %sw.bb.i, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end3.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call3.i, %sw.bb.i ], [ %call10.i, %sw.bb5.i ], [ -524, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_sched_class_alloc(ptr nocapture noundef readonly %dev, ptr noundef readonly %p) local_unnamed_addr #2 align 64 {
entry:
  %info.i.i = alloca %struct.ch_sched_params, align 4
  %tp.i.i = alloca %struct.ch_sched_params, align 4
  %np.sroa.7.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %sched_tbl.i = getelementptr i8, ptr %dev, i32 2956
  %0 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_tbl.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.ch_sched_params, ptr %p, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %class, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp.not.i = icmp ugt i8 %5, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp4.not.i = icmp eq i8 %3, -1
  %or.cond.i = or i1 %cmp4.not.i, %cmp.not.i
  %or.cond.i.not = xor i1 %or.cond.i, true
  %tobool.not.i = icmp eq ptr %p, null
  %or.cond = or i1 %tobool.not.i, %or.cond.i.not
  %cmp4.not.i.not = xor i1 %cmp4.not.i, true
  %brmerge = select i1 %or.cond, i1 true, i1 %cmp4.not.i.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.end3.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end
  %mode.i = getelementptr inbounds %struct.ch_sched_params, ptr %p, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp6.i = icmp eq i8 %7, 1
  br i1 %cmp6.i, label %if.else.i.i, label %if.end3.i.if.then11.i_crit_edge

if.end3.i.if.then11.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.else.i.i:                                      ; preds = %if.end3.i
  %8 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sched_tbl.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i.i) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tp.i.i) #8
  %10 = call ptr @memcpy(ptr %tp.i.i, ptr %p, i32 28)
  %u.i.i = getelementptr inbounds %struct.ch_sched_params, ptr %tp.i.i, i32 0, i32 1
  %class.i.i = getelementptr inbounds %struct.ch_sched_params, ptr %tp.i.i, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %class.i.i, align 1
  %tab6.i.i = getelementptr inbounds %struct.sched_table, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 4
  %idxprom8.i.i = zext i8 %13 to i32
  %arrayidx9.i.i = getelementptr %struct.sched_table, ptr %9, i32 0, i32 1, i32 %idxprom8.i.i
  %u23.i.i = getelementptr inbounds %struct.ch_sched_params, ptr %info.i.i, i32 0, i32 1
  %cmp13.not54.i.i = icmp eq ptr %tab6.i.i, %arrayidx9.i.i
  br i1 %cmp13.not54.i.i, label %if.else.i.i.if.end9.thread86.i_crit_edge, label %for.body15.lr.ph.i.i

if.else.i.i.if.end9.thread86.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.thread86.i

for.body15.lr.ph.i.i:                             ; preds = %if.else.i.i
  %class24.i.i = getelementptr inbounds %struct.ch_sched_params, ptr %info.i.i, i32 0, i32 1, i32 0, i32 5
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.inc35.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %e.155.i.i = phi ptr [ %tab6.i.i, %for.body15.lr.ph.i.i ], [ %incdec.ptr36.i.i, %for.inc35.i.i.for.body15.i.i_crit_edge ]
  %14 = ptrtoint ptr %e.155.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %e.155.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp18.i.i = icmp eq i8 %15, 1
  br i1 %cmp18.i.i, label %for.body15.i.i.for.inc35.i.i_crit_edge, label %if.end21.i.i

for.body15.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35.i.i

if.end21.i.i:                                     ; preds = %for.body15.i.i
  %info22.i.i = getelementptr inbounds %struct.sched_class, ptr %e.155.i.i, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %info.i.i, ptr %info22.i.i, i32 28)
  %17 = ptrtoint ptr %class24.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %class24.i.i, align 1
  %18 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %info.i.i, align 4
  %20 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp28.i.i = icmp eq i8 %19, %21
  br i1 %cmp28.i.i, label %land.lhs.true.i.i, label %if.end21.i.i.for.inc35.i.i_crit_edge

if.end21.i.i.for.inc35.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35.i.i

land.lhs.true.i.i:                                ; preds = %if.end21.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(24) %u23.i.i, ptr noundef dereferenceable(24) %u.i.i, i32 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool32.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end9.i, label %land.lhs.true.i.i.for.inc35.i.i_crit_edge

land.lhs.true.i.i.for.inc35.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %land.lhs.true.i.i.for.inc35.i.i_crit_edge, %if.end21.i.i.for.inc35.i.i_crit_edge, %for.body15.i.i.for.inc35.i.i_crit_edge
  %incdec.ptr36.i.i = getelementptr %struct.sched_class, ptr %e.155.i.i, i32 1
  %cmp13.not.i.i = icmp eq ptr %incdec.ptr36.i.i, %arrayidx9.i.i
  br i1 %cmp13.not.i.i, label %for.inc35.i.i.if.end9.thread86.i_crit_edge, label %for.inc35.i.i.for.body15.i.i_crit_edge

for.inc35.i.i.for.body15.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i.i

for.inc35.i.i.if.end9.thread86.i_crit_edge:       ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.thread86.i

if.end9.thread86.i:                               ; preds = %for.inc35.i.i.if.end9.thread86.i_crit_edge, %if.else.i.i.if.end9.thread86.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i.i) #8
  br label %if.then11.i

if.end9.i:                                        ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i.i) #8
  %tobool10.not.i = icmp eq ptr %e.155.i.i, null
  br i1 %tobool10.not.i, label %if.end9.i.if.then11.i_crit_edge, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i.if.then11.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i.if.then11.i_crit_edge, %if.end9.thread86.i, %if.end3.i.if.then11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %np.sroa.7.i)
  %22 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sched_tbl.i, align 4
  %tab.i41.i = getelementptr inbounds %struct.sched_table, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %idxprom.i42.i = zext i8 %25 to i32
  %arrayidx.i43.i = getelementptr %struct.sched_table, ptr %23, i32 0, i32 1, i32 %idxprom.i42.i
  %cmp.not58.i44.i = icmp eq ptr %tab.i41.i, %arrayidx.i43.i
  br i1 %cmp.not58.i44.i, label %if.then11.i.cleanup.i_crit_edge, label %if.then11.i.for.body.i48.i_crit_edge

if.then11.i.for.body.i48.i_crit_edge:             ; preds = %if.then11.i
  br label %for.body.i48.i

if.then11.i.cleanup.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.i48.i:                                   ; preds = %for.inc.i51.i.for.body.i48.i_crit_edge, %if.then11.i.for.body.i48.i_crit_edge
  %e.059.i46.i = phi ptr [ %incdec.ptr.i49.i, %for.inc.i51.i.for.body.i48.i_crit_edge ], [ %tab.i41.i, %if.then11.i.for.body.i48.i_crit_edge ]
  %26 = ptrtoint ptr %e.059.i46.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %e.059.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp3.i47.i = icmp eq i8 %27, 1
  br i1 %cmp3.i47.i, label %t4_sched_class_lookup.exit53.i, label %for.inc.i51.i

for.inc.i51.i:                                    ; preds = %for.body.i48.i
  %incdec.ptr.i49.i = getelementptr %struct.sched_class, ptr %e.059.i46.i, i32 1
  %cmp.not.i50.i = icmp eq ptr %incdec.ptr.i49.i, %arrayidx.i43.i
  br i1 %cmp.not.i50.i, label %for.inc.i51.i.cleanup.i_crit_edge, label %for.inc.i51.i.for.body.i48.i_crit_edge

for.inc.i51.i.for.body.i48.i_crit_edge:           ; preds = %for.inc.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i48.i

for.inc.i51.i.cleanup.i_crit_edge:                ; preds = %for.inc.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

t4_sched_class_lookup.exit53.i:                   ; preds = %for.body.i48.i
  %tobool13.not.i = icmp eq ptr %e.059.i46.i, null
  br i1 %tobool13.not.i, label %t4_sched_class_lookup.exit53.i.cleanup.i_crit_edge, label %if.end15.i

t4_sched_class_lookup.exit53.i.cleanup.i_crit_edge: ; preds = %t4_sched_class_lookup.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end15.i:                                       ; preds = %t4_sched_class_lookup.exit53.i
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %28)
  %np.sroa.0.0.copyload58.i = load i8, ptr %p, align 4
  %np.sroa.7.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 1
  %29 = call ptr @memcpy(ptr %np.sroa.7.i, ptr %np.sroa.7.0.p.sroa_idx.i, i32 3)
  %np.sroa.760.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 4
  %30 = ptrtoint ptr %np.sroa.760.0.p.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %np.sroa.760.0.copyload61.i = load i8, ptr %np.sroa.760.0.p.sroa_idx.i, align 4
  %np.sroa.9.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 6
  %31 = ptrtoint ptr %np.sroa.9.0.p.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %np.sroa.9.0.copyload65.i = load i8, ptr %np.sroa.9.0.p.sroa_idx.i, align 2
  %np.sroa.10.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 7
  %32 = ptrtoint ptr %np.sroa.10.0.p.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %np.sroa.10.0.copyload67.i = load i8, ptr %np.sroa.10.0.p.sroa_idx.i, align 1
  %np.sroa.11.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 8
  %33 = ptrtoint ptr %np.sroa.11.0.p.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %np.sroa.11.0.copyload69.i = load i8, ptr %np.sroa.11.0.p.sroa_idx.i, align 4
  %np.sroa.14.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 10
  %34 = ptrtoint ptr %np.sroa.14.0.p.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %np.sroa.14.0.p.sroa_idx.i, align 2
  %np.sroa.1473.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 12
  %36 = ptrtoint ptr %np.sroa.1473.0.p.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %np.sroa.1473.0.copyload74.i = load i32, ptr %np.sroa.1473.0.p.sroa_idx.i, align 4
  %np.sroa.15.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 16
  %37 = ptrtoint ptr %np.sroa.15.0.p.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %np.sroa.15.0.copyload76.i = load i32, ptr %np.sroa.15.0.p.sroa_idx.i, align 4
  %np.sroa.16.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 20
  %38 = ptrtoint ptr %np.sroa.16.0.p.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %np.sroa.16.0.copyload78.i = load i16, ptr %np.sroa.16.0.p.sroa_idx.i, align 4
  %np.sroa.17.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 22
  %39 = ptrtoint ptr %np.sroa.17.0.p.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %np.sroa.17.0.copyload80.i = load i16, ptr %np.sroa.17.0.p.sroa_idx.i, align 2
  %np.sroa.18.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 24
  %40 = ptrtoint ptr %np.sroa.18.0.p.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %np.sroa.18.0.copyload82.i = load i16, ptr %np.sroa.18.0.p.sroa_idx.i, align 4
  %np.sroa.19.0.p.sroa_idx.i = getelementptr inbounds i8, ptr %p, i32 26
  %41 = ptrtoint ptr %np.sroa.19.0.p.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %np.sroa.19.0.p.sroa_idx.i, align 2
  %idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 1
  %43 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %idx.i, align 1
  %idxprom.i55.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i, align 8
  %idx.i.i = getelementptr %struct.sched_table, ptr %23, i32 0, i32 1, i32 %idxprom.i55.i, i32 1
  %47 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %idx.i.i, align 1
  %call.i.i = tail call i32 @t4_sched_params(ptr noundef %46, i8 noundef zeroext %np.sroa.0.0.copyload58.i, i8 noundef zeroext %np.sroa.760.0.copyload61.i, i8 noundef zeroext %7, i8 noundef zeroext %np.sroa.9.0.copyload65.i, i8 noundef zeroext %np.sroa.10.0.copyload67.i, i8 noundef zeroext %np.sroa.11.0.copyload69.i, i8 noundef zeroext %48, i32 noundef %np.sroa.1473.0.copyload74.i, i32 noundef %np.sroa.15.0.copyload76.i, i16 noundef zeroext %np.sroa.16.0.copyload78.i, i16 noundef zeroext %np.sroa.17.0.copyload80.i, i16 noundef zeroext %np.sroa.18.0.copyload82.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %info.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2
  %49 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %np.sroa.0.0.copyload58.i, ptr %info.i, align 4
  %np.sroa.7.0.info.sroa_idx.i = getelementptr inbounds i8, ptr %info.i, i32 1
  %50 = call ptr @memcpy(ptr %np.sroa.7.0.info.sroa_idx.i, ptr %np.sroa.7.i, i32 3)
  %np.sroa.760.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %np.sroa.760.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %np.sroa.760.0.copyload61.i, ptr %np.sroa.760.0.info.sroa_idx.i, align 4
  %np.sroa.8.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %np.sroa.8.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %7, ptr %np.sroa.8.0.info.sroa_idx.i, align 1
  %np.sroa.9.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %np.sroa.9.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %np.sroa.9.0.copyload65.i, ptr %np.sroa.9.0.info.sroa_idx.i, align 2
  %np.sroa.10.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 3
  %54 = ptrtoint ptr %np.sroa.10.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %np.sroa.10.0.copyload67.i, ptr %np.sroa.10.0.info.sroa_idx.i, align 1
  %np.sroa.11.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %np.sroa.11.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %np.sroa.11.0.copyload69.i, ptr %np.sroa.11.0.info.sroa_idx.i, align 4
  %np.sroa.12.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %np.sroa.12.0.info.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %44, ptr %np.sroa.12.0.info.sroa_idx.i, align 1
  %np.sroa.14.0.info.sroa_idx.i = getelementptr inbounds i8, ptr %info.i, i32 10
  %57 = ptrtoint ptr %np.sroa.14.0.info.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %35, ptr %np.sroa.14.0.info.sroa_idx.i, align 2
  %np.sroa.1473.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 6
  %58 = ptrtoint ptr %np.sroa.1473.0.info.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %np.sroa.1473.0.copyload74.i, ptr %np.sroa.1473.0.info.sroa_idx.i, align 4
  %np.sroa.15.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 7
  %59 = ptrtoint ptr %np.sroa.15.0.info.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %np.sroa.15.0.copyload76.i, ptr %np.sroa.15.0.info.sroa_idx.i, align 4
  %np.sroa.16.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 8
  %60 = ptrtoint ptr %np.sroa.16.0.info.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %np.sroa.16.0.copyload78.i, ptr %np.sroa.16.0.info.sroa_idx.i, align 4
  %np.sroa.17.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 9
  %61 = ptrtoint ptr %np.sroa.17.0.info.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %np.sroa.17.0.copyload80.i, ptr %np.sroa.17.0.info.sroa_idx.i, align 2
  %np.sroa.18.0.info.sroa_idx.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 2, i32 1, i32 0, i32 10
  %62 = ptrtoint ptr %np.sroa.18.0.info.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %np.sroa.18.0.copyload82.i, ptr %np.sroa.18.0.info.sroa_idx.i, align 4
  %np.sroa.19.0.info.sroa_idx.i = getelementptr inbounds i8, ptr %info.i, i32 26
  %63 = ptrtoint ptr %np.sroa.19.0.info.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %42, ptr %np.sroa.19.0.info.sroa_idx.i, align 2
  %refcnt.i = getelementptr inbounds %struct.sched_class, ptr %e.059.i46.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  %64 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %refcnt.i, align 4
  %65 = ptrtoint ptr %e.059.i46.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %e.059.i46.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %np.sroa.7.i)
  br label %cleanup

cleanup.i:                                        ; preds = %if.end15.i.cleanup.i_crit_edge, %t4_sched_class_lookup.exit53.i.cleanup.i_crit_edge, %for.inc.i51.i.cleanup.i_crit_edge, %if.then11.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %np.sroa.7.i)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i, %if.end21.i, %if.end9.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %cleanup.i ], [ %e.155.i.i, %if.end9.i.cleanup_crit_edge ], [ %e.059.i46.i, %if.end21.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_sched_class_free(ptr noundef %dev, i8 noundef zeroext %classid) local_unnamed_addr #2 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %sched_tbl = getelementptr i8, ptr %dev, i32 2956
  %0 = ptrtoint ptr %sched_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_tbl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %speed, align 4, !annotation !10
  %idxprom = zext i8 %classid to i32
  %arrayidx = getelementptr %struct.sched_table, ptr %1, i32 0, i32 1, i32 %idxprom
  %refcnt = getelementptr %struct.sched_table, ptr %1, i32 0, i32 1, i32 %idxprom, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %land.lhs.true.if.end14_crit_edge, label %if.then

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %info = getelementptr %struct.sched_table, ptr %1, i32 0, i32 1, i32 %idxprom, i32 2
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %7)
  %p.sroa.0.0.copyload21 = load i8, ptr %info, align 4
  %p.sroa.522.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 4
  %8 = ptrtoint ptr %p.sroa.522.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %p.sroa.522.0.copyload23 = load i8, ptr %p.sroa.522.0.info.sroa_idx, align 4
  %p.sroa.8.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 6
  %9 = ptrtoint ptr %p.sroa.8.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %p.sroa.8.0.copyload25 = load i8, ptr %p.sroa.8.0.info.sroa_idx, align 2
  %p.sroa.9.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 7
  %10 = ptrtoint ptr %p.sroa.9.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %p.sroa.9.0.copyload26 = load i8, ptr %p.sroa.9.0.info.sroa_idx, align 1
  %p.sroa.10.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 8
  %11 = ptrtoint ptr %p.sroa.10.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %p.sroa.10.0.copyload27 = load i8, ptr %p.sroa.10.0.info.sroa_idx, align 4
  %p.sroa.11.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 9
  %12 = ptrtoint ptr %p.sroa.11.0.info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %p.sroa.11.0.copyload28 = load i8, ptr %p.sroa.11.0.info.sroa_idx, align 1
  %p.sroa.17.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 20
  %13 = ptrtoint ptr %p.sroa.17.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %p.sroa.17.0.copyload32 = load i16, ptr %p.sroa.17.0.info.sroa_idx, align 4
  %p.sroa.20.0.info.sroa_idx = getelementptr inbounds i8, ptr %info, i32 24
  %14 = ptrtoint ptr %p.sroa.20.0.info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %p.sroa.20.0.copyload34 = load i16, ptr %p.sroa.20.0.info.sroa_idx, align 4
  %call5 = call i32 @t4_get_link_params(ptr noundef %add.ptr.i.i, ptr noundef null, ptr noundef nonnull %speed, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 4
  %mul = mul i32 %16, 1000
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %p.sroa.14.0 = phi i32 [ %mul, %if.then7 ], [ 100000000, %if.then.if.end_crit_edge ]
  %idxprom.i = zext i8 %p.sroa.11.0.copyload28 to i32
  %17 = ptrtoint ptr %sched_tbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sched_tbl, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 8
  %idx.i = getelementptr %struct.sched_table, ptr %18, i32 0, i32 1, i32 %idxprom.i, i32 1
  %21 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %idx.i, align 1
  %call.i = call i32 @t4_sched_params(ptr noundef %20, i8 noundef zeroext %p.sroa.0.0.copyload21, i8 noundef zeroext %p.sroa.522.0.copyload23, i8 noundef zeroext 0, i8 noundef zeroext %p.sroa.8.0.copyload25, i8 noundef zeroext %p.sroa.9.0.copyload26, i8 noundef zeroext %p.sroa.10.0.copyload27, i8 noundef zeroext %22, i32 noundef 0, i32 noundef %p.sroa.14.0, i16 noundef zeroext %p.sroa.17.0.copyload32, i16 noundef zeroext 0, i16 noundef zeroext %p.sroa.20.0.copyload34) #8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx, align 4
  %24 = call ptr @memset(ptr %info, i32 0, i32 28)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_link_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_init_sched(i32 noundef %sched_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sched_size, i32 48) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = or i32 %2, 4
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i.i32 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i32, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %sched_size to i8
  %4 = ptrtoint ptr %call.i.i32 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call.i.i32, align 4
  %conv433 = and i32 %sched_size, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv433)
  %cmp34.not = icmp eq i32 %conv433, 0
  br i1 %cmp34.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sched_table, ptr %call.i.i32, i32 0, i32 1, i32 %i.035
  %5 = call ptr @memset(ptr %arrayidx, i32 0, i32 48)
  %conv6 = trunc i32 %i.035 to i8
  %idx = getelementptr %struct.sched_table, ptr %call.i.i32, i32 0, i32 1, i32 %i.035, i32 1
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %idx, align 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx, align 4
  %entry_list = getelementptr %struct.sched_table, ptr %call.i.i32, i32 0, i32 1, i32 %i.035, i32 4
  %8 = ptrtoint ptr %entry_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry_list, ptr %entry_list, align 4
  %prev.i = getelementptr %struct.sched_table, ptr %call.i.i32, i32 0, i32 1, i32 %i.035, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry_list, ptr %prev.i, align 4
  %refcnt = getelementptr %struct.sched_table, ptr %call.i.i32, i32 0, i32 1, i32 %i.035, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %refcnt, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %11 = ptrtoint ptr %call.i.i32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i.i32, align 4
  %conv4 = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_cleanup_sched(ptr nocapture noundef readonly %adap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp36.not = icmp eq i8 %1, 0
  br i1 %cmp36.not, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %j.037 = phi i32 [ %inc16, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %j.037
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %sched_tbl = getelementptr i8, ptr %3, i32 2956
  %4 = ptrtoint ptr %sched_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched_tbl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond2.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp431.not = icmp eq i8 %7, 0
  br i1 %cmp431.not, label %for.cond2.preheader.for.end_crit_edge, label %for.cond2.preheader.for.body6_crit_edge

for.cond2.preheader.for.body6_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body6

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6:                                        ; preds = %if.end14.for.body6_crit_edge, %for.cond2.preheader.for.body6_crit_edge
  %i.032 = phi i32 [ %inc, %if.end14.for.body6_crit_edge ], [ 0, %for.cond2.preheader.for.body6_crit_edge ]
  %arrayidx7 = getelementptr %struct.sched_table, ptr %5, i32 0, i32 1, i32 %i.032
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9 = icmp eq i8 %9, 0
  br i1 %cmp9, label %if.then11, label %for.body6.if.end14_crit_edge

for.body6.if.end14_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %for.body6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 2304
  %tobool.not.i.i = icmp eq ptr %arrayidx7, null
  br i1 %tobool.not.i.i, label %if.then11.t4_sched_class_free.exit_crit_edge, label %if.end.i.i

if.then11.t4_sched_class_free.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

if.end.i.i:                                       ; preds = %if.then11
  %bind_type.i = getelementptr %struct.sched_table, ptr %5, i32 0, i32 1, i32 %i.032, i32 3
  %12 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bind_type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %13, label %if.end.i.i.t4_sched_class_free.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb7.i.i
  ]

if.end.i.i.t4_sched_class_free.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %entry_list.i.i = getelementptr %struct.sched_table, ptr %5, i32 0, i32 1, i32 %i.032, i32 4
  %15 = ptrtoint ptr %entry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %qe.041.i.i = load ptr, ptr %entry_list.i.i, align 4
  %cmp.not42.i.i = icmp eq ptr %qe.041.i.i, %entry_list.i.i
  br i1 %cmp.not42.i.i, label %sw.bb.i.i.t4_sched_class_free.exit_crit_edge, label %sw.bb.i.i.for.body.i.i_crit_edge

sw.bb.i.i.for.body.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  br label %for.body.i.i

sw.bb.i.i.t4_sched_class_free.exit_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.i.i.for.body.i.i_crit_edge
  %qe.043.i.i = phi ptr [ %qe.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %qe.041.i.i, %sw.bb.i.i.for.body.i.i_crit_edge ]
  %param.i.i = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.043.i.i, i32 0, i32 2
  %call.i.i = tail call fastcc i32 @t4_sched_queue_unbind(ptr noundef %add.ptr.i.i.i, ptr noundef %param.i.i) #8
  %16 = ptrtoint ptr %qe.043.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %qe.0.i.i = load ptr, ptr %qe.043.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %qe.0.i.i, %entry_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.t4_sched_class_free.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.t4_sched_class_free.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

sw.bb7.i.i:                                       ; preds = %if.end.i.i
  %entry_list9.i.i = getelementptr %struct.sched_table, ptr %5, i32 0, i32 1, i32 %i.032, i32 4
  %17 = ptrtoint ptr %entry_list9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %fe.038.i.i = load ptr, ptr %entry_list9.i.i, align 4
  %cmp16.not39.i.i = icmp eq ptr %fe.038.i.i, %entry_list9.i.i
  br i1 %cmp16.not39.i.i, label %sw.bb7.i.i.t4_sched_class_free.exit_crit_edge, label %sw.bb7.i.i.for.body18.i.i_crit_edge

sw.bb7.i.i.for.body18.i.i_crit_edge:              ; preds = %sw.bb7.i.i
  br label %for.body18.i.i

sw.bb7.i.i.t4_sched_class_free.exit_crit_edge:    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

for.body18.i.i:                                   ; preds = %for.body18.i.i.for.body18.i.i_crit_edge, %sw.bb7.i.i.for.body18.i.i_crit_edge
  %fe.040.i.i = phi ptr [ %fe.0.i.i, %for.body18.i.i.for.body18.i.i_crit_edge ], [ %fe.038.i.i, %sw.bb7.i.i.for.body18.i.i_crit_edge ]
  %param19.i.i = getelementptr inbounds %struct.sched_flowc_entry, ptr %fe.040.i.i, i32 0, i32 1
  %call20.i.i = tail call fastcc i32 @t4_sched_flowc_unbind(ptr noundef %add.ptr.i.i.i, ptr noundef %param19.i.i) #8
  %18 = ptrtoint ptr %fe.040.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %fe.0.i.i = load ptr, ptr %fe.040.i.i, align 4
  %cmp16.not.i.i = icmp eq ptr %fe.0.i.i, %entry_list9.i.i
  br i1 %cmp16.not.i.i, label %for.body18.i.i.t4_sched_class_free.exit_crit_edge, label %for.body18.i.i.for.body18.i.i_crit_edge

for.body18.i.i.for.body18.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18.i.i

for.body18.i.i.t4_sched_class_free.exit_crit_edge: ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %t4_sched_class_free.exit

t4_sched_class_free.exit:                         ; preds = %for.body18.i.i.t4_sched_class_free.exit_crit_edge, %sw.bb7.i.i.t4_sched_class_free.exit_crit_edge, %for.body.i.i.t4_sched_class_free.exit_crit_edge, %sw.bb.i.i.t4_sched_class_free.exit_crit_edge, %if.end.i.i.t4_sched_class_free.exit_crit_edge, %if.then11.t4_sched_class_free.exit_crit_edge
  %idx.i = getelementptr %struct.sched_table, ptr %5, i32 0, i32 1, i32 %i.032, i32 1
  %19 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %idx.i, align 1
  tail call void @cxgb4_sched_class_free(ptr noundef %11, i8 noundef zeroext %20) #8
  br label %if.end14

if.end14:                                         ; preds = %t4_sched_class_free.exit, %for.body6.if.end14_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 4
  %conv3 = zext i8 %22 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %if.end14.for.body6_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end14.for.body6_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  tail call void @kvfree(ptr noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %inc16 = add nuw nsw i32 %j.037, 1
  %23 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nports, align 4
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc16, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end17_crit_edge

cleanup.for.end17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end17:                                        ; preds = %cleanup.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_sched_queue_unbind(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  %fw_class.i = alloca i32, align 4
  %fw_param.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p, align 1
  %conv = sext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nqsets = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 10
  %4 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nqsets, align 8
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp5.not = icmp slt i32 %conv, %conv4
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %first_qset = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 11
  %6 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_qset, align 1
  %conv7 = zext i8 %7 to i32
  %add = add nsw i32 %conv7, %conv
  %cntxt_id = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %add, i32 0, i32 7
  %8 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cntxt_id, align 4
  %sched_tbl.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 21
  %10 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched_tbl.i, align 4
  %tab.i = getelementptr inbounds %struct.sched_table, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %idxprom.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr %struct.sched_table, ptr %11, i32 0, i32 1, i32 %idxprom.i
  %cmp.not76.i = icmp eq ptr %tab.i, %arrayidx.i
  br i1 %cmp.not76.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc47.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %e.077.i = phi ptr [ %incdec.ptr.i, %for.inc47.i.for.body.i_crit_edge ], [ %tab.i, %if.end.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %e.077.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %e.077.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp3.i = icmp eq i8 %15, 1
  br i1 %cmp3.i, label %for.body.i.for.inc47.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc47.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bind_type.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 3
  %16 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bind_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc47.i_crit_edge

lor.lhs.false.i.for.inc47.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %entry_list.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 4
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %for.body11.i.for.cond7.i_crit_edge, %if.end.i
  %qe.0.in.i = phi ptr [ %entry_list.i, %if.end.i ], [ %qe.0.i, %for.body11.i.for.cond7.i_crit_edge ]
  %18 = ptrtoint ptr %qe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %qe.0.i = load ptr, ptr %qe.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %qe.0.i, %entry_list.i
  br i1 %cmp9.not.i, label %for.cond7.i.for.inc47.i_crit_edge, label %for.body11.i

for.cond7.i.for.inc47.i_crit_edge:                ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.body11.i:                                     ; preds = %for.cond7.i
  %cntxt_id.i = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cntxt_id.i, align 4
  %cmp12.i = icmp eq i32 %20, %9
  br i1 %cmp12.i, label %sw.epilog.i, label %for.body11.i.for.cond7.i_crit_edge

for.body11.i.for.cond7.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.i

sw.epilog.i:                                      ; preds = %for.body11.i
  %tobool.not.i = icmp eq ptr %qe.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.for.inc47.i_crit_edge, label %if.then10

sw.epilog.i.for.inc47.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %sw.epilog.i.for.inc47.i_crit_edge, %for.cond7.i.for.inc47.i_crit_edge, %lor.lhs.false.i.for.inc47.i_crit_edge, %for.body.i.for.inc47.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sched_class, ptr %e.077.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc47.i.cleanup_crit_edge, label %for.inc47.i.for.body.i_crit_edge

for.inc47.i.for.body.i_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc47.i.cleanup_crit_edge:                    ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %sw.epilog.i
  %cntxt_id.i.le.le = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.0.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_class.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_param.i) #8
  %pf1.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %fw_class.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %fw_class.i, align 4
  %22 = ptrtoint ptr %cntxt_id.i.le.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cntxt_id.i.le.le, align 4
  %or.i = or i32 %23, 68288512
  %24 = ptrtoint ptr %fw_param.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %fw_param.i, align 4
  %25 = ptrtoint ptr %pf1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pf1.i, align 4
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox.i, align 8
  %call.i = call i32 @t4_set_params(ptr noundef %1, i32 noundef %28, i32 noundef %26, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %fw_param.i, ptr noundef nonnull %fw_class.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_param.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_class.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %29 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sched_tbl.i, align 4
  %class = getelementptr inbounds %struct.sched_queue_entry, ptr %qe.0.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %class, align 1
  %idxprom = sext i8 %32 to i32
  %call.i.i44 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %qe.0.i) #8
  br i1 %call.i.i44, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qe.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %qe.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qe.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %39 = ptrtoint ptr %qe.0.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %qe.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %qe.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kvfree(ptr noundef nonnull %qe.0.i) #8
  %refcnt = getelementptr %struct.sched_table, ptr %30, i32 0, i32 1, i32 %idxprom, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !11
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !12
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %42 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_id, align 1
  %idxprom18 = zext i8 %43 to i32
  %arrayidx19 = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %idxprom18
  %44 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx19, align 4
  %idx = getelementptr %struct.sched_table, ptr %30, i32 0, i32 1, i32 %idxprom, i32 1
  %46 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %idx, align 1
  call void @cxgb4_sched_class_free(ptr noundef %45, i8 noundef zeroext %47)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %list_del.exit.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %for.inc47.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ %call.i, %if.then10.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc47.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_sched_flowc_unbind(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %neotids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 35
  %4 = ptrtoint ptr %neotids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %neotids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp ult i32 %3, %5
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sched_tbl.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 21
  %6 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_tbl.i, align 4
  %tab.i = getelementptr inbounds %struct.sched_table, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.sched_table, ptr %7, i32 0, i32 1, i32 %idxprom.i
  %cmp.not76.i = icmp eq ptr %tab.i, %arrayidx.i
  br i1 %cmp.not76.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc47.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %e.077.i = phi ptr [ %incdec.ptr.i, %for.inc47.i.for.body.i_crit_edge ], [ %tab.i, %if.end.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %e.077.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %e.077.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp3.i = icmp eq i8 %11, 1
  br i1 %cmp3.i, label %for.body.i.for.inc47.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc47.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bind_type.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 3
  %12 = ptrtoint ptr %bind_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bind_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5.not.i = icmp eq i32 %13, 1
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc47.i_crit_edge

lor.lhs.false.i.for.inc47.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %entry_list23.i = getelementptr inbounds %struct.sched_class, ptr %e.077.i, i32 0, i32 4
  br label %for.cond27.i

for.cond27.i:                                     ; preds = %for.body33.i.for.cond27.i_crit_edge, %if.end.i
  %fe.0.in.i = phi ptr [ %entry_list23.i, %if.end.i ], [ %fe.0.i, %for.body33.i.for.cond27.i_crit_edge ]
  %14 = ptrtoint ptr %fe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %fe.0.i = load ptr, ptr %fe.0.in.i, align 4
  %cmp30.not.i = icmp eq ptr %fe.0.i, %entry_list23.i
  br i1 %cmp30.not.i, label %for.cond27.i.for.inc47.i_crit_edge, label %for.body33.i

for.cond27.i.for.inc47.i_crit_edge:               ; preds = %for.cond27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.body33.i:                                     ; preds = %for.cond27.i
  %param.i = getelementptr inbounds %struct.sched_flowc_entry, ptr %fe.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %param.i, align 4
  %cmp34.i = icmp eq i32 %16, %3
  br i1 %cmp34.i, label %sw.epilog.i, label %for.body33.i.for.cond27.i_crit_edge

for.body33.i.for.cond27.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond27.i

sw.epilog.i:                                      ; preds = %for.body33.i
  %tobool.not.i = icmp eq ptr %fe.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.for.inc47.i_crit_edge, label %if.then4

sw.epilog.i.for.inc47.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %sw.epilog.i.for.inc47.i_crit_edge, %for.cond27.i.for.inc47.i_crit_edge, %lor.lhs.false.i.for.inc47.i_crit_edge, %for.body.i.for.inc47.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sched_class, ptr %e.077.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.inc47.i.cleanup_crit_edge, label %for.inc47.i.for.body.i_crit_edge

for.inc47.i.for.body.i_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc47.i.cleanup_crit_edge:                    ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %sw.epilog.i
  %port_id.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %17 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id.i, align 1
  %idxprom.i32 = zext i8 %18 to i32
  %arrayidx.i33 = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %idxprom.i32
  %19 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i33, align 4
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %param.i, align 4
  %call14.i = tail call i32 @cxgb4_ethofld_send_flowc(ptr noundef %20, i32 noundef %22, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool6.not = icmp eq i32 %call14.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %23 = ptrtoint ptr %sched_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sched_tbl.i, align 4
  %class = getelementptr inbounds %struct.sched_flowc_entry, ptr %fe.0.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %class, align 4
  %idxprom = sext i8 %26 to i32
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %fe.0.i) #8
  br i1 %call.i.i35, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fe.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %fe.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fe.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %33 = ptrtoint ptr %fe.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %fe.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fe.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef nonnull %fe.0.i) #8
  %refcnt = getelementptr %struct.sched_table, ptr %24, i32 0, i32 1, i32 %idxprom, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !12
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then10, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port_id.i, align 1
  %idxprom11 = zext i8 %37 to i32
  %arrayidx12 = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %idxprom11
  %38 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx12, align 4
  %idx = getelementptr %struct.sched_table, ptr %24, i32 0, i32 1, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %idx, align 1
  tail call void @cxgb4_sched_class_free(ptr noundef %39, i8 noundef zeroext %41)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %list_del.exit.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %for.inc47.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ %call14.i, %if.then4.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc47.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ethofld_send_flowc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sched_params(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin nounwind }

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
!9 = !{i64 2148354512, i64 2148354538, i64 2148354567, i64 2148354601, i64 2148354632, i64 2148354655}
!10 = !{!"auto-init"}
!11 = !{i64 2148442988}
!12 = !{i64 2148357697, i64 2148357729, i64 2148357758, i64 2148357792, i64 2148357823, i64 2148357846}
!13 = !{i64 2148443217}
