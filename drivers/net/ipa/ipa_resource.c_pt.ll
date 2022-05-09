; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_resource.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipa_resource_data = type { i32, i32, i32, ptr, i32, ptr }
%struct.ipa_resource = type { [8 x %struct.ipa_resource_limits] }
%struct.ipa_resource_limits = type { i32, i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_resource_config(ptr nocapture noundef readonly %ipa, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %2)
  %3 = icmp ult i32 %2, -8
  br i1 %3, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %resource_src_count.i = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %resource_src_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.not.i = icmp eq i32 %5, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.for.end15.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end15.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %resource_src.i = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %resource_src.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp37.i = icmp ult i32 %1, 8
  %inc.i = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %inc.i.1 = add i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.1)
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 8
  %inc.i.2 = add i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.2)
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 8
  %inc.i.3 = add i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.3)
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, 8
  %inc.i.4 = add i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.4)
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, 8
  %inc.i.5 = add i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.5)
  %exitcond.not.i.5 = icmp eq i32 %inc.i.5, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc13.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc14.i, %for.inc13.critedge.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ipa_resource, ptr %7, i32 %i.010.i
  br i1 %cmp37.i, label %for.body4.i, label %for.body.i.for.inc13.critedge.i_crit_edge

for.body.i.for.inc13.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.cond2.i:                                      ; preds = %lor.lhs.false7.i
  br i1 %exitcond.not.i, label %for.cond2.i.for.inc13.critedge.i_crit_edge, label %for.body4.i.1

for.cond2.i.for.inc13.critedge.i_crit_edge:       ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.1:                                    ; preds = %for.cond2.i
  %arrayidx5.i.1 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i.1 = icmp eq i32 %9, 0
  br i1 %tobool6.not.i.1, label %lor.lhs.false7.i.1, label %for.body4.i.1.cleanup_crit_edge

for.body4.i.1.cleanup_crit_edge:                  ; preds = %for.body4.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.1:                               ; preds = %for.body4.i.1
  %max.i.1 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.1, i32 0, i32 1
  %10 = ptrtoint ptr %max.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not.i.1 = icmp eq i32 %11, 0
  br i1 %tobool10.not.i.1, label %for.cond2.i.1, label %lor.lhs.false7.i.1.cleanup_crit_edge

lor.lhs.false7.i.1.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond2.i.1:                                    ; preds = %lor.lhs.false7.i.1
  br i1 %exitcond.not.i.1, label %for.cond2.i.1.for.inc13.critedge.i_crit_edge, label %for.body4.i.2

for.cond2.i.1.for.inc13.critedge.i_crit_edge:     ; preds = %for.cond2.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.2:                                    ; preds = %for.cond2.i.1
  %arrayidx5.i.2 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i.1
  %12 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i.2 = icmp eq i32 %13, 0
  br i1 %tobool6.not.i.2, label %lor.lhs.false7.i.2, label %for.body4.i.2.cleanup_crit_edge

for.body4.i.2.cleanup_crit_edge:                  ; preds = %for.body4.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.2:                               ; preds = %for.body4.i.2
  %max.i.2 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.2, i32 0, i32 1
  %14 = ptrtoint ptr %max.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i.2 = icmp eq i32 %15, 0
  br i1 %tobool10.not.i.2, label %for.cond2.i.2, label %lor.lhs.false7.i.2.cleanup_crit_edge

lor.lhs.false7.i.2.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond2.i.2:                                    ; preds = %lor.lhs.false7.i.2
  br i1 %exitcond.not.i.2, label %for.cond2.i.2.for.inc13.critedge.i_crit_edge, label %for.body4.i.3

for.cond2.i.2.for.inc13.critedge.i_crit_edge:     ; preds = %for.cond2.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.3:                                    ; preds = %for.cond2.i.2
  %arrayidx5.i.3 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i.2
  %16 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i.3 = icmp eq i32 %17, 0
  br i1 %tobool6.not.i.3, label %lor.lhs.false7.i.3, label %for.body4.i.3.cleanup_crit_edge

for.body4.i.3.cleanup_crit_edge:                  ; preds = %for.body4.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.3:                               ; preds = %for.body4.i.3
  %max.i.3 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.3, i32 0, i32 1
  %18 = ptrtoint ptr %max.i.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i.3 = icmp eq i32 %19, 0
  br i1 %tobool10.not.i.3, label %for.cond2.i.3, label %lor.lhs.false7.i.3.cleanup_crit_edge

lor.lhs.false7.i.3.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond2.i.3:                                    ; preds = %lor.lhs.false7.i.3
  br i1 %exitcond.not.i.3, label %for.cond2.i.3.for.inc13.critedge.i_crit_edge, label %for.body4.i.4

for.cond2.i.3.for.inc13.critedge.i_crit_edge:     ; preds = %for.cond2.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.4:                                    ; preds = %for.cond2.i.3
  %arrayidx5.i.4 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i.3
  %20 = ptrtoint ptr %arrayidx5.i.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i.4 = icmp eq i32 %21, 0
  br i1 %tobool6.not.i.4, label %lor.lhs.false7.i.4, label %for.body4.i.4.cleanup_crit_edge

for.body4.i.4.cleanup_crit_edge:                  ; preds = %for.body4.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.4:                               ; preds = %for.body4.i.4
  %max.i.4 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.4, i32 0, i32 1
  %22 = ptrtoint ptr %max.i.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.i.4 = icmp eq i32 %23, 0
  br i1 %tobool10.not.i.4, label %for.cond2.i.4, label %lor.lhs.false7.i.4.cleanup_crit_edge

lor.lhs.false7.i.4.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond2.i.4:                                    ; preds = %lor.lhs.false7.i.4
  br i1 %exitcond.not.i.4, label %for.cond2.i.4.for.inc13.critedge.i_crit_edge, label %for.body4.i.5

for.cond2.i.4.for.inc13.critedge.i_crit_edge:     ; preds = %for.cond2.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.5:                                    ; preds = %for.cond2.i.4
  %arrayidx5.i.5 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i.4
  %24 = ptrtoint ptr %arrayidx5.i.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i.5 = icmp eq i32 %25, 0
  br i1 %tobool6.not.i.5, label %lor.lhs.false7.i.5, label %for.body4.i.5.cleanup_crit_edge

for.body4.i.5.cleanup_crit_edge:                  ; preds = %for.body4.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.5:                               ; preds = %for.body4.i.5
  %max.i.5 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.5, i32 0, i32 1
  %26 = ptrtoint ptr %max.i.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i.5 = icmp eq i32 %27, 0
  br i1 %tobool10.not.i.5, label %for.cond2.i.5, label %lor.lhs.false7.i.5.cleanup_crit_edge

lor.lhs.false7.i.5.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond2.i.5:                                    ; preds = %lor.lhs.false7.i.5
  br i1 %exitcond.not.i.5, label %for.cond2.i.5.for.inc13.critedge.i_crit_edge, label %for.body4.i.6

for.cond2.i.5.for.inc13.critedge.i_crit_edge:     ; preds = %for.cond2.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i.6:                                    ; preds = %for.cond2.i.5
  %arrayidx5.i.6 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %inc.i.5
  %28 = ptrtoint ptr %arrayidx5.i.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.not.i.6 = icmp eq i32 %29, 0
  br i1 %tobool6.not.i.6, label %lor.lhs.false7.i.6, label %for.body4.i.6.cleanup_crit_edge

for.body4.i.6.cleanup_crit_edge:                  ; preds = %for.body4.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.6:                               ; preds = %for.body4.i.6
  %max.i.6 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i.6, i32 0, i32 1
  %30 = ptrtoint ptr %max.i.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not.i.6 = icmp eq i32 %31, 0
  br i1 %tobool10.not.i.6, label %lor.lhs.false7.i.6.for.inc13.critedge.i_crit_edge, label %lor.lhs.false7.i.6.cleanup_crit_edge

lor.lhs.false7.i.6.cleanup_crit_edge:             ; preds = %lor.lhs.false7.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i.6.for.inc13.critedge.i_crit_edge: ; preds = %lor.lhs.false7.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc13.critedge.i

for.body4.i:                                      ; preds = %for.body.i
  %arrayidx5.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i, i32 0, i32 %1
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.i = icmp eq i32 %33, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %for.body4.i.cleanup_crit_edge

for.body4.i.cleanup_crit_edge:                    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false7.i:                                 ; preds = %for.body4.i
  %max.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx5.i, i32 0, i32 1
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not.i = icmp eq i32 %35, 0
  br i1 %tobool10.not.i, label %for.cond2.i, label %lor.lhs.false7.i.cleanup_crit_edge

lor.lhs.false7.i.cleanup_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc13.critedge.i:                             ; preds = %lor.lhs.false7.i.6.for.inc13.critedge.i_crit_edge, %for.cond2.i.5.for.inc13.critedge.i_crit_edge, %for.cond2.i.4.for.inc13.critedge.i_crit_edge, %for.cond2.i.3.for.inc13.critedge.i_crit_edge, %for.cond2.i.2.for.inc13.critedge.i_crit_edge, %for.cond2.i.1.for.inc13.critedge.i_crit_edge, %for.cond2.i.for.inc13.critedge.i_crit_edge, %for.body.i.for.inc13.critedge.i_crit_edge
  %inc14.i = add nuw i32 %i.010.i, 1
  %exitcond17.not.i = icmp eq i32 %inc14.i, %5
  br i1 %exitcond17.not.i, label %for.inc13.critedge.i.for.end15.i_crit_edge, label %for.inc13.critedge.i.for.body.i_crit_edge

for.inc13.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc13.critedge.i.for.end15.i_crit_edge:       ; preds = %for.inc13.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15.i

for.end15.i:                                      ; preds = %for.inc13.critedge.i.for.end15.i_crit_edge, %for.cond.preheader.i.for.end15.i_crit_edge
  %rsrc_group_dst_count.i = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %rsrc_group_dst_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rsrc_group_dst_count.i, align 4
  %38 = add i32 %37, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %38)
  %39 = icmp ult i32 %38, -8
  br i1 %39, label %for.end15.i.cleanup_crit_edge, label %for.cond21.preheader.i

for.end15.i.cleanup_crit_edge:                    ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond21.preheader.i:                           ; preds = %for.end15.i
  %resource_dst_count.i = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 4
  %40 = ptrtoint ptr %resource_dst_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resource_dst_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2213.not.i = icmp eq i32 %41, 0
  br i1 %cmp2213.not.i, label %for.cond21.preheader.i.ipa_resource_limits_valid.exit_crit_edge, label %for.body23.lr.ph.i

for.cond21.preheader.i.ipa_resource_limits_valid.exit_crit_edge: ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_limits_valid.exit

for.body23.lr.ph.i:                               ; preds = %for.cond21.preheader.i
  %resource_dst.i = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 5
  %42 = ptrtoint ptr %resource_dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resource_dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp2711.i = icmp ult i32 %37, 8
  %inc41.i = add i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i)
  %exitcond18.not.i = icmp eq i32 %inc41.i, 8
  %inc41.i.1 = add i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i.1)
  %exitcond18.not.i.1 = icmp eq i32 %inc41.i.1, 8
  %inc41.i.2 = add i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i.2)
  %exitcond18.not.i.2 = icmp eq i32 %inc41.i.2, 8
  %inc41.i.3 = add i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i.3)
  %exitcond18.not.i.3 = icmp eq i32 %inc41.i.3, 8
  %inc41.i.4 = add i32 %37, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i.4)
  %exitcond18.not.i.4 = icmp eq i32 %inc41.i.4, 8
  %inc41.i.5 = add i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc41.i.5)
  %exitcond18.not.i.5 = icmp eq i32 %inc41.i.5, 8
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc46.critedge.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.114.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc47.i, %for.inc46.critedge.i.for.body23.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.ipa_resource, ptr %43, i32 %i.114.i
  br i1 %cmp2711.i, label %for.body28.i, label %for.body23.i.for.inc46.critedge.i_crit_edge

for.body23.i.for.inc46.critedge.i_crit_edge:      ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.cond26.i:                                     ; preds = %lor.lhs.false33.i
  br i1 %exitcond18.not.i, label %for.cond26.i.for.inc46.critedge.i_crit_edge, label %for.body28.i.1

for.cond26.i.for.inc46.critedge.i_crit_edge:      ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.1:                                   ; preds = %for.cond26.i
  %arrayidx30.i.1 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i
  %44 = ptrtoint ptr %arrayidx30.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx30.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool32.not.i.1 = icmp eq i32 %45, 0
  br i1 %tobool32.not.i.1, label %lor.lhs.false33.i.1, label %for.body28.i.1.cleanup_crit_edge

for.body28.i.1.cleanup_crit_edge:                 ; preds = %for.body28.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.1:                              ; preds = %for.body28.i.1
  %max36.i.1 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.1, i32 0, i32 1
  %46 = ptrtoint ptr %max36.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max36.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool37.not.i.1 = icmp eq i32 %47, 0
  br i1 %tobool37.not.i.1, label %for.cond26.i.1, label %lor.lhs.false33.i.1.cleanup_crit_edge

lor.lhs.false33.i.1.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond26.i.1:                                   ; preds = %lor.lhs.false33.i.1
  br i1 %exitcond18.not.i.1, label %for.cond26.i.1.for.inc46.critedge.i_crit_edge, label %for.body28.i.2

for.cond26.i.1.for.inc46.critedge.i_crit_edge:    ; preds = %for.cond26.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.2:                                   ; preds = %for.cond26.i.1
  %arrayidx30.i.2 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i.1
  %48 = ptrtoint ptr %arrayidx30.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx30.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool32.not.i.2 = icmp eq i32 %49, 0
  br i1 %tobool32.not.i.2, label %lor.lhs.false33.i.2, label %for.body28.i.2.cleanup_crit_edge

for.body28.i.2.cleanup_crit_edge:                 ; preds = %for.body28.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.2:                              ; preds = %for.body28.i.2
  %max36.i.2 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.2, i32 0, i32 1
  %50 = ptrtoint ptr %max36.i.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max36.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool37.not.i.2 = icmp eq i32 %51, 0
  br i1 %tobool37.not.i.2, label %for.cond26.i.2, label %lor.lhs.false33.i.2.cleanup_crit_edge

lor.lhs.false33.i.2.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond26.i.2:                                   ; preds = %lor.lhs.false33.i.2
  br i1 %exitcond18.not.i.2, label %for.cond26.i.2.for.inc46.critedge.i_crit_edge, label %for.body28.i.3

for.cond26.i.2.for.inc46.critedge.i_crit_edge:    ; preds = %for.cond26.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.3:                                   ; preds = %for.cond26.i.2
  %arrayidx30.i.3 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i.2
  %52 = ptrtoint ptr %arrayidx30.i.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx30.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not.i.3 = icmp eq i32 %53, 0
  br i1 %tobool32.not.i.3, label %lor.lhs.false33.i.3, label %for.body28.i.3.cleanup_crit_edge

for.body28.i.3.cleanup_crit_edge:                 ; preds = %for.body28.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.3:                              ; preds = %for.body28.i.3
  %max36.i.3 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.3, i32 0, i32 1
  %54 = ptrtoint ptr %max36.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max36.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool37.not.i.3 = icmp eq i32 %55, 0
  br i1 %tobool37.not.i.3, label %for.cond26.i.3, label %lor.lhs.false33.i.3.cleanup_crit_edge

lor.lhs.false33.i.3.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond26.i.3:                                   ; preds = %lor.lhs.false33.i.3
  br i1 %exitcond18.not.i.3, label %for.cond26.i.3.for.inc46.critedge.i_crit_edge, label %for.body28.i.4

for.cond26.i.3.for.inc46.critedge.i_crit_edge:    ; preds = %for.cond26.i.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.4:                                   ; preds = %for.cond26.i.3
  %arrayidx30.i.4 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i.3
  %56 = ptrtoint ptr %arrayidx30.i.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx30.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool32.not.i.4 = icmp eq i32 %57, 0
  br i1 %tobool32.not.i.4, label %lor.lhs.false33.i.4, label %for.body28.i.4.cleanup_crit_edge

for.body28.i.4.cleanup_crit_edge:                 ; preds = %for.body28.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.4:                              ; preds = %for.body28.i.4
  %max36.i.4 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.4, i32 0, i32 1
  %58 = ptrtoint ptr %max36.i.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max36.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool37.not.i.4 = icmp eq i32 %59, 0
  br i1 %tobool37.not.i.4, label %for.cond26.i.4, label %lor.lhs.false33.i.4.cleanup_crit_edge

lor.lhs.false33.i.4.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond26.i.4:                                   ; preds = %lor.lhs.false33.i.4
  br i1 %exitcond18.not.i.4, label %for.cond26.i.4.for.inc46.critedge.i_crit_edge, label %for.body28.i.5

for.cond26.i.4.for.inc46.critedge.i_crit_edge:    ; preds = %for.cond26.i.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.5:                                   ; preds = %for.cond26.i.4
  %arrayidx30.i.5 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i.4
  %60 = ptrtoint ptr %arrayidx30.i.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx30.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool32.not.i.5 = icmp eq i32 %61, 0
  br i1 %tobool32.not.i.5, label %lor.lhs.false33.i.5, label %for.body28.i.5.cleanup_crit_edge

for.body28.i.5.cleanup_crit_edge:                 ; preds = %for.body28.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.5:                              ; preds = %for.body28.i.5
  %max36.i.5 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.5, i32 0, i32 1
  %62 = ptrtoint ptr %max36.i.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max36.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool37.not.i.5 = icmp eq i32 %63, 0
  br i1 %tobool37.not.i.5, label %for.cond26.i.5, label %lor.lhs.false33.i.5.cleanup_crit_edge

lor.lhs.false33.i.5.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond26.i.5:                                   ; preds = %lor.lhs.false33.i.5
  br i1 %exitcond18.not.i.5, label %for.cond26.i.5.for.inc46.critedge.i_crit_edge, label %for.body28.i.6

for.cond26.i.5.for.inc46.critedge.i_crit_edge:    ; preds = %for.cond26.i.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i.6:                                   ; preds = %for.cond26.i.5
  %arrayidx30.i.6 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %inc41.i.5
  %64 = ptrtoint ptr %arrayidx30.i.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx30.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool32.not.i.6 = icmp eq i32 %65, 0
  br i1 %tobool32.not.i.6, label %lor.lhs.false33.i.6, label %for.body28.i.6.cleanup_crit_edge

for.body28.i.6.cleanup_crit_edge:                 ; preds = %for.body28.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.6:                              ; preds = %for.body28.i.6
  %max36.i.6 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i.6, i32 0, i32 1
  %66 = ptrtoint ptr %max36.i.6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max36.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool37.not.i.6 = icmp eq i32 %67, 0
  br i1 %tobool37.not.i.6, label %lor.lhs.false33.i.6.for.inc46.critedge.i_crit_edge, label %lor.lhs.false33.i.6.cleanup_crit_edge

lor.lhs.false33.i.6.cleanup_crit_edge:            ; preds = %lor.lhs.false33.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i.6.for.inc46.critedge.i_crit_edge: ; preds = %lor.lhs.false33.i.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc46.critedge.i

for.body28.i:                                     ; preds = %for.body23.i
  %arrayidx30.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx25.i, i32 0, i32 %37
  %68 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool32.not.i = icmp eq i32 %69, 0
  br i1 %tobool32.not.i, label %lor.lhs.false33.i, label %for.body28.i.cleanup_crit_edge

for.body28.i.cleanup_crit_edge:                   ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false33.i:                                ; preds = %for.body28.i
  %max36.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx30.i, i32 0, i32 1
  %70 = ptrtoint ptr %max36.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool37.not.i = icmp eq i32 %71, 0
  br i1 %tobool37.not.i, label %for.cond26.i, label %lor.lhs.false33.i.cleanup_crit_edge

lor.lhs.false33.i.cleanup_crit_edge:              ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc46.critedge.i:                             ; preds = %lor.lhs.false33.i.6.for.inc46.critedge.i_crit_edge, %for.cond26.i.5.for.inc46.critedge.i_crit_edge, %for.cond26.i.4.for.inc46.critedge.i_crit_edge, %for.cond26.i.3.for.inc46.critedge.i_crit_edge, %for.cond26.i.2.for.inc46.critedge.i_crit_edge, %for.cond26.i.1.for.inc46.critedge.i_crit_edge, %for.cond26.i.for.inc46.critedge.i_crit_edge, %for.body23.i.for.inc46.critedge.i_crit_edge
  %inc47.i = add nuw i32 %i.114.i, 1
  %exitcond19.not.i = icmp eq i32 %inc47.i, %41
  br i1 %exitcond19.not.i, label %for.inc46.critedge.i.ipa_resource_limits_valid.exit_crit_edge, label %for.inc46.critedge.i.for.body23.i_crit_edge

for.inc46.critedge.i.for.body23.i_crit_edge:      ; preds = %for.inc46.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body23.i

for.inc46.critedge.i.ipa_resource_limits_valid.exit_crit_edge: ; preds = %for.inc46.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_limits_valid.exit

ipa_resource_limits_valid.exit:                   ; preds = %for.inc46.critedge.i.ipa_resource_limits_valid.exit_crit_edge, %for.cond21.preheader.i.ipa_resource_limits_valid.exit_crit_edge
  %72 = ptrtoint ptr %resource_src_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %resource_src_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp174.not = icmp eq i32 %73, 0
  br i1 %cmp174.not, label %ipa_resource_limits_valid.exit.for.cond1.preheader_crit_edge, label %for.body.lr.ph

ipa_resource_limits_valid.exit.for.cond1.preheader_crit_edge: ; preds = %ipa_resource_limits_valid.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %ipa_resource_limits_valid.exit
  %resource_src.i18 = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 3
  %reg_virt.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  br label %for.body

for.cond1.preheader:                              ; preds = %ipa_resource_config_src.exit.for.cond1.preheader_crit_edge, %ipa_resource_limits_valid.exit.for.cond1.preheader_crit_edge
  %74 = ptrtoint ptr %resource_dst_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resource_dst_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp2176.not = icmp eq i32 %75, 0
  br i1 %cmp2176.not, label %for.cond1.preheader.cleanup_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %resource_dst.i22 = getelementptr inbounds %struct.ipa_resource_data, ptr %data, i32 0, i32 5
  %reg_virt.i.i57 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  br label %for.body3

for.body:                                         ; preds = %ipa_resource_config_src.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ipa_resource_config_src.exit.for.body_crit_edge ]
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data, align 4
  %78 = ptrtoint ptr %resource_src.i18 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resource_src.i18, align 4
  %arrayidx.i19 = getelementptr %struct.ipa_resource, ptr %79, i32 %i.0175
  %mul.i = shl i32 %i.0175, 5
  %add.i = add i32 %mul.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i = icmp eq i32 %77, 1
  %arrayidx1.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 1
  %max.i.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx.i19, i32 0, i32 1
  %80 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max.i.i, align 4
  %82 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i19, align 4
  %84 = and i32 %83, 63
  %85 = shl i32 %81, 8
  %86 = and i32 %85, 16128
  %or.i.i = or i32 %86, %84
  %tobool.not.i.i184 = icmp eq ptr %arrayidx1.i, null
  %tobool.not.i.i = or i1 %cmp.i, %tobool.not.i.i184
  br i1 %tobool.not.i.i, label %for.body.ipa_resource_config_common.exit.i_crit_edge, label %u32_encode_bits.exit46.i.i

for.body.ipa_resource_config_common.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit.i

u32_encode_bits.exit46.i.i:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx1.i, i32 0, i32 1
  %87 = ptrtoint ptr %max5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max5.i.i, align 4
  %89 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx1.i, align 4
  %91 = shl i32 %90, 16
  %92 = and i32 %91, 4128768
  %or4.i.i = or i32 %92, %or.i.i
  %93 = shl i32 %88, 24
  %94 = and i32 %93, 1056964608
  %or7.i.i = or i32 %or4.i.i, %94
  br label %ipa_resource_config_common.exit.i

ipa_resource_config_common.exit.i:                ; preds = %u32_encode_bits.exit46.i.i, %for.body.ipa_resource_config_common.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %or7.i.i, %u32_encode_bits.exit46.i.i ], [ %or.i.i, %for.body.ipa_resource_config_common.exit.i_crit_edge ]
  %95 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %96, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %97 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %97) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp4.i = icmp ult i32 %77, 3
  br i1 %cmp4.i, label %ipa_resource_config_common.exit.i.ipa_resource_config_src.exit_crit_edge, label %if.end.i

ipa_resource_config_common.exit.i.ipa_resource_config_src.exit_crit_edge: ; preds = %ipa_resource_config_common.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_src.exit

if.end.i:                                         ; preds = %ipa_resource_config_common.exit.i
  %add6.i = add i32 %mul.i, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp7.i = icmp eq i32 %77, 3
  %arrayidx11.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 3
  %arrayidx15.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 2
  %max.i81.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx15.i, i32 0, i32 1
  %98 = ptrtoint ptr %max.i81.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max.i81.i, align 4
  %100 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx15.i, align 4
  %102 = and i32 %101, 63
  %103 = shl i32 %99, 8
  %104 = and i32 %103, 16128
  %or.i87.i = or i32 %104, %102
  %tobool.not.i88.i185 = icmp eq ptr %arrayidx11.i, null
  %tobool.not.i88.i = or i1 %cmp7.i, %tobool.not.i88.i185
  br i1 %tobool.not.i88.i, label %if.end.i.ipa_resource_config_common.exit107.i_crit_edge, label %u32_encode_bits.exit46.i103.i

if.end.i.ipa_resource_config_common.exit107.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit107.i

u32_encode_bits.exit46.i103.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i96.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx11.i, i32 0, i32 1
  %105 = ptrtoint ptr %max5.i96.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max5.i96.i, align 4
  %107 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx11.i, align 4
  %109 = shl i32 %108, 16
  %110 = and i32 %109, 4128768
  %or4.i95.i = or i32 %110, %or.i87.i
  %111 = shl i32 %106, 24
  %112 = and i32 %111, 1056964608
  %or7.i102.i = or i32 %or4.i95.i, %112
  br label %ipa_resource_config_common.exit107.i

ipa_resource_config_common.exit107.i:             ; preds = %u32_encode_bits.exit46.i103.i, %if.end.i.ipa_resource_config_common.exit107.i_crit_edge
  %val.0.i104.i = phi i32 [ %or7.i102.i, %u32_encode_bits.exit46.i103.i ], [ %or.i87.i, %if.end.i.ipa_resource_config_common.exit107.i_crit_edge ]
  %113 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %114, i32 %add6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %115 = tail call i32 @llvm.bswap.i32(i32 %val.0.i104.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %115) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp16.i = icmp ult i32 %77, 5
  br i1 %cmp16.i, label %ipa_resource_config_common.exit107.i.ipa_resource_config_src.exit_crit_edge, label %if.end18.i

ipa_resource_config_common.exit107.i.ipa_resource_config_src.exit_crit_edge: ; preds = %ipa_resource_config_common.exit107.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_src.exit

if.end18.i:                                       ; preds = %ipa_resource_config_common.exit107.i
  %add20.i = add i32 %mul.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp21.i = icmp eq i32 %77, 5
  %arrayidx25.i20 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 5
  %arrayidx29.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 4
  %max.i112.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx29.i, i32 0, i32 1
  %116 = ptrtoint ptr %max.i112.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max.i112.i, align 4
  %118 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx29.i, align 4
  %120 = and i32 %119, 63
  %121 = shl i32 %117, 8
  %122 = and i32 %121, 16128
  %or.i118.i = or i32 %122, %120
  %tobool.not.i119.i186 = icmp eq ptr %arrayidx25.i20, null
  %tobool.not.i119.i = or i1 %cmp21.i, %tobool.not.i119.i186
  br i1 %tobool.not.i119.i, label %if.end18.i.ipa_resource_config_common.exit138.i_crit_edge, label %u32_encode_bits.exit46.i134.i

if.end18.i.ipa_resource_config_common.exit138.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit138.i

u32_encode_bits.exit46.i134.i:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i127.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx25.i20, i32 0, i32 1
  %123 = ptrtoint ptr %max5.i127.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max5.i127.i, align 4
  %125 = ptrtoint ptr %arrayidx25.i20 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx25.i20, align 4
  %127 = shl i32 %126, 16
  %128 = and i32 %127, 4128768
  %or4.i126.i = or i32 %128, %or.i118.i
  %129 = shl i32 %124, 24
  %130 = and i32 %129, 1056964608
  %or7.i133.i = or i32 %or4.i126.i, %130
  br label %ipa_resource_config_common.exit138.i

ipa_resource_config_common.exit138.i:             ; preds = %u32_encode_bits.exit46.i134.i, %if.end18.i.ipa_resource_config_common.exit138.i_crit_edge
  %val.0.i135.i = phi i32 [ %or7.i133.i, %u32_encode_bits.exit46.i134.i ], [ %or.i118.i, %if.end18.i.ipa_resource_config_common.exit138.i_crit_edge ]
  %131 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %132, i32 %add20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %133 = tail call i32 @llvm.bswap.i32(i32 %val.0.i135.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 %133) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %cmp30.i = icmp ult i32 %77, 7
  br i1 %cmp30.i, label %ipa_resource_config_common.exit138.i.ipa_resource_config_src.exit_crit_edge, label %if.end32.i

ipa_resource_config_common.exit138.i.ipa_resource_config_src.exit_crit_edge: ; preds = %ipa_resource_config_common.exit138.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_src.exit

if.end32.i:                                       ; preds = %ipa_resource_config_common.exit138.i
  %add34.i = add i32 %mul.i, 1036
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %cmp35.i = icmp eq i32 %77, 7
  %arrayidx39.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 7
  %arrayidx43.i = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i19, i32 0, i32 6
  %max.i143.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx43.i, i32 0, i32 1
  %134 = ptrtoint ptr %max.i143.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max.i143.i, align 4
  %136 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx43.i, align 4
  %138 = and i32 %137, 63
  %139 = shl i32 %135, 8
  %140 = and i32 %139, 16128
  %or.i149.i = or i32 %140, %138
  %tobool.not.i150.i187 = icmp eq ptr %arrayidx39.i, null
  %tobool.not.i150.i = or i1 %cmp35.i, %tobool.not.i150.i187
  br i1 %tobool.not.i150.i, label %if.end32.i.ipa_resource_config_common.exit169.i_crit_edge, label %u32_encode_bits.exit46.i165.i

if.end32.i.ipa_resource_config_common.exit169.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit169.i

u32_encode_bits.exit46.i165.i:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i158.i = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx39.i, i32 0, i32 1
  %141 = ptrtoint ptr %max5.i158.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max5.i158.i, align 4
  %143 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx39.i, align 4
  %145 = shl i32 %144, 16
  %146 = and i32 %145, 4128768
  %or4.i157.i = or i32 %146, %or.i149.i
  %147 = shl i32 %142, 24
  %148 = and i32 %147, 1056964608
  %or7.i164.i = or i32 %or4.i157.i, %148
  br label %ipa_resource_config_common.exit169.i

ipa_resource_config_common.exit169.i:             ; preds = %u32_encode_bits.exit46.i165.i, %if.end32.i.ipa_resource_config_common.exit169.i_crit_edge
  %val.0.i166.i = phi i32 [ %or7.i164.i, %u32_encode_bits.exit46.i165.i ], [ %or.i149.i, %if.end32.i.ipa_resource_config_common.exit169.i_crit_edge ]
  %149 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %150, i32 %add34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %151 = tail call i32 @llvm.bswap.i32(i32 %val.0.i166.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 %151) #3, !srcloc !10
  br label %ipa_resource_config_src.exit

ipa_resource_config_src.exit:                     ; preds = %ipa_resource_config_common.exit169.i, %ipa_resource_config_common.exit138.i.ipa_resource_config_src.exit_crit_edge, %ipa_resource_config_common.exit107.i.ipa_resource_config_src.exit_crit_edge, %ipa_resource_config_common.exit.i.ipa_resource_config_src.exit_crit_edge
  %inc = add nuw i32 %i.0175, 1
  %152 = ptrtoint ptr %resource_src_count.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %resource_src_count.i, align 4
  %cmp = icmp ult i32 %inc, %153
  br i1 %cmp, label %ipa_resource_config_src.exit.for.body_crit_edge, label %ipa_resource_config_src.exit.for.cond1.preheader_crit_edge

ipa_resource_config_src.exit.for.cond1.preheader_crit_edge: ; preds = %ipa_resource_config_src.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

ipa_resource_config_src.exit.for.body_crit_edge:  ; preds = %ipa_resource_config_src.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body3:                                        ; preds = %ipa_resource_config_dst.exit.for.body3_crit_edge, %for.body3.lr.ph
  %i.1177 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc5, %ipa_resource_config_dst.exit.for.body3_crit_edge ]
  %154 = ptrtoint ptr %rsrc_group_dst_count.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rsrc_group_dst_count.i, align 4
  %156 = ptrtoint ptr %resource_dst.i22 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %resource_dst.i22, align 4
  %arrayidx.i23 = getelementptr %struct.ipa_resource, ptr %157, i32 %i.1177
  %mul.i24 = shl i32 %i.1177, 5
  %add.i25 = add i32 %mul.i24, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp.i26 = icmp eq i32 %155, 1
  %arrayidx1.i27 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 1
  %max.i.i33 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx.i23, i32 0, i32 1
  %158 = ptrtoint ptr %max.i.i33 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max.i.i33, align 4
  %160 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i23, align 4
  %162 = and i32 %161, 63
  %163 = shl i32 %159, 8
  %164 = and i32 %163, 16128
  %or.i.i39 = or i32 %164, %162
  %tobool.not.i.i40188 = icmp eq ptr %arrayidx1.i27, null
  %tobool.not.i.i40 = or i1 %cmp.i26, %tobool.not.i.i40188
  br i1 %tobool.not.i.i40, label %for.body3.ipa_resource_config_common.exit.i60_crit_edge, label %u32_encode_bits.exit46.i.i55

for.body3.ipa_resource_config_common.exit.i60_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit.i60

u32_encode_bits.exit46.i.i55:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i.i48 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx1.i27, i32 0, i32 1
  %165 = ptrtoint ptr %max5.i.i48 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %max5.i.i48, align 4
  %167 = ptrtoint ptr %arrayidx1.i27 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx1.i27, align 4
  %169 = shl i32 %168, 16
  %170 = and i32 %169, 4128768
  %or4.i.i47 = or i32 %170, %or.i.i39
  %171 = shl i32 %166, 24
  %172 = and i32 %171, 1056964608
  %or7.i.i54 = or i32 %or4.i.i47, %172
  br label %ipa_resource_config_common.exit.i60

ipa_resource_config_common.exit.i60:              ; preds = %u32_encode_bits.exit46.i.i55, %for.body3.ipa_resource_config_common.exit.i60_crit_edge
  %val.0.i.i56 = phi i32 [ %or7.i.i54, %u32_encode_bits.exit46.i.i55 ], [ %or.i.i39, %for.body3.ipa_resource_config_common.exit.i60_crit_edge ]
  %173 = ptrtoint ptr %reg_virt.i.i57 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg_virt.i.i57, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %174, i32 %add.i25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %175 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i56) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %175) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %155)
  %cmp4.i59 = icmp ult i32 %155, 3
  br i1 %cmp4.i59, label %ipa_resource_config_common.exit.i60.ipa_resource_config_dst.exit_crit_edge, label %if.end.i69

ipa_resource_config_common.exit.i60.ipa_resource_config_dst.exit_crit_edge: ; preds = %ipa_resource_config_common.exit.i60
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_dst.exit

if.end.i69:                                       ; preds = %ipa_resource_config_common.exit.i60
  %add6.i61 = add i32 %mul.i24, 1284
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %155)
  %cmp7.i62 = icmp eq i32 %155, 3
  %arrayidx11.i63 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 3
  %arrayidx15.i65 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 2
  %max.i81.i71 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx15.i65, i32 0, i32 1
  %176 = ptrtoint ptr %max.i81.i71 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max.i81.i71, align 4
  %178 = ptrtoint ptr %arrayidx15.i65 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx15.i65, align 4
  %180 = and i32 %179, 63
  %181 = shl i32 %177, 8
  %182 = and i32 %181, 16128
  %or.i87.i77 = or i32 %182, %180
  %tobool.not.i88.i78189 = icmp eq ptr %arrayidx11.i63, null
  %tobool.not.i88.i78 = or i1 %cmp7.i62, %tobool.not.i88.i78189
  br i1 %tobool.not.i88.i78, label %if.end.i69.ipa_resource_config_common.exit107.i97_crit_edge, label %u32_encode_bits.exit46.i103.i93

if.end.i69.ipa_resource_config_common.exit107.i97_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit107.i97

u32_encode_bits.exit46.i103.i93:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i96.i86 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx11.i63, i32 0, i32 1
  %183 = ptrtoint ptr %max5.i96.i86 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max5.i96.i86, align 4
  %185 = ptrtoint ptr %arrayidx11.i63 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx11.i63, align 4
  %187 = shl i32 %186, 16
  %188 = and i32 %187, 4128768
  %or4.i95.i85 = or i32 %188, %or.i87.i77
  %189 = shl i32 %184, 24
  %190 = and i32 %189, 1056964608
  %or7.i102.i92 = or i32 %or4.i95.i85, %190
  br label %ipa_resource_config_common.exit107.i97

ipa_resource_config_common.exit107.i97:           ; preds = %u32_encode_bits.exit46.i103.i93, %if.end.i69.ipa_resource_config_common.exit107.i97_crit_edge
  %val.0.i104.i94 = phi i32 [ %or7.i102.i92, %u32_encode_bits.exit46.i103.i93 ], [ %or.i87.i77, %if.end.i69.ipa_resource_config_common.exit107.i97_crit_edge ]
  %191 = ptrtoint ptr %reg_virt.i.i57 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %reg_virt.i.i57, align 4
  %add.ptr.i106.i95 = getelementptr i8, ptr %192, i32 %add6.i61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %193 = tail call i32 @llvm.bswap.i32(i32 %val.0.i104.i94) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i95, i32 %193) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %155)
  %cmp16.i96 = icmp ult i32 %155, 5
  br i1 %cmp16.i96, label %ipa_resource_config_common.exit107.i97.ipa_resource_config_dst.exit_crit_edge, label %if.end18.i106

ipa_resource_config_common.exit107.i97.ipa_resource_config_dst.exit_crit_edge: ; preds = %ipa_resource_config_common.exit107.i97
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_dst.exit

if.end18.i106:                                    ; preds = %ipa_resource_config_common.exit107.i97
  %add20.i98 = add i32 %mul.i24, 1288
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %155)
  %cmp21.i99 = icmp eq i32 %155, 5
  %arrayidx25.i100 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 5
  %arrayidx29.i102 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 4
  %max.i112.i108 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx29.i102, i32 0, i32 1
  %194 = ptrtoint ptr %max.i112.i108 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %max.i112.i108, align 4
  %196 = ptrtoint ptr %arrayidx29.i102 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx29.i102, align 4
  %198 = and i32 %197, 63
  %199 = shl i32 %195, 8
  %200 = and i32 %199, 16128
  %or.i118.i114 = or i32 %200, %198
  %tobool.not.i119.i115190 = icmp eq ptr %arrayidx25.i100, null
  %tobool.not.i119.i115 = or i1 %cmp21.i99, %tobool.not.i119.i115190
  br i1 %tobool.not.i119.i115, label %if.end18.i106.ipa_resource_config_common.exit138.i134_crit_edge, label %u32_encode_bits.exit46.i134.i130

if.end18.i106.ipa_resource_config_common.exit138.i134_crit_edge: ; preds = %if.end18.i106
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit138.i134

u32_encode_bits.exit46.i134.i130:                 ; preds = %if.end18.i106
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i127.i123 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx25.i100, i32 0, i32 1
  %201 = ptrtoint ptr %max5.i127.i123 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %max5.i127.i123, align 4
  %203 = ptrtoint ptr %arrayidx25.i100 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx25.i100, align 4
  %205 = shl i32 %204, 16
  %206 = and i32 %205, 4128768
  %or4.i126.i122 = or i32 %206, %or.i118.i114
  %207 = shl i32 %202, 24
  %208 = and i32 %207, 1056964608
  %or7.i133.i129 = or i32 %or4.i126.i122, %208
  br label %ipa_resource_config_common.exit138.i134

ipa_resource_config_common.exit138.i134:          ; preds = %u32_encode_bits.exit46.i134.i130, %if.end18.i106.ipa_resource_config_common.exit138.i134_crit_edge
  %val.0.i135.i131 = phi i32 [ %or7.i133.i129, %u32_encode_bits.exit46.i134.i130 ], [ %or.i118.i114, %if.end18.i106.ipa_resource_config_common.exit138.i134_crit_edge ]
  %209 = ptrtoint ptr %reg_virt.i.i57 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg_virt.i.i57, align 4
  %add.ptr.i137.i132 = getelementptr i8, ptr %210, i32 %add20.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %211 = tail call i32 @llvm.bswap.i32(i32 %val.0.i135.i131) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i132, i32 %211) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %155)
  %cmp30.i133 = icmp ult i32 %155, 7
  br i1 %cmp30.i133, label %ipa_resource_config_common.exit138.i134.ipa_resource_config_dst.exit_crit_edge, label %if.end32.i143

ipa_resource_config_common.exit138.i134.ipa_resource_config_dst.exit_crit_edge: ; preds = %ipa_resource_config_common.exit138.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_dst.exit

if.end32.i143:                                    ; preds = %ipa_resource_config_common.exit138.i134
  %add34.i135 = add i32 %mul.i24, 1292
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %155)
  %cmp35.i136 = icmp eq i32 %155, 7
  %arrayidx39.i137 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 7
  %arrayidx43.i139 = getelementptr [8 x %struct.ipa_resource_limits], ptr %arrayidx.i23, i32 0, i32 6
  %max.i143.i145 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx43.i139, i32 0, i32 1
  %212 = ptrtoint ptr %max.i143.i145 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %max.i143.i145, align 4
  %214 = ptrtoint ptr %arrayidx43.i139 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx43.i139, align 4
  %216 = and i32 %215, 63
  %217 = shl i32 %213, 8
  %218 = and i32 %217, 16128
  %or.i149.i151 = or i32 %218, %216
  %tobool.not.i150.i152191 = icmp eq ptr %arrayidx39.i137, null
  %tobool.not.i150.i152 = or i1 %cmp35.i136, %tobool.not.i150.i152191
  br i1 %tobool.not.i150.i152, label %if.end32.i143.ipa_resource_config_common.exit169.i170_crit_edge, label %u32_encode_bits.exit46.i165.i167

if.end32.i143.ipa_resource_config_common.exit169.i170_crit_edge: ; preds = %if.end32.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %ipa_resource_config_common.exit169.i170

u32_encode_bits.exit46.i165.i167:                 ; preds = %if.end32.i143
  call void @__sanitizer_cov_trace_pc() #5
  %max5.i158.i160 = getelementptr inbounds %struct.ipa_resource_limits, ptr %arrayidx39.i137, i32 0, i32 1
  %219 = ptrtoint ptr %max5.i158.i160 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max5.i158.i160, align 4
  %221 = ptrtoint ptr %arrayidx39.i137 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx39.i137, align 4
  %223 = shl i32 %222, 16
  %224 = and i32 %223, 4128768
  %or4.i157.i159 = or i32 %224, %or.i149.i151
  %225 = shl i32 %220, 24
  %226 = and i32 %225, 1056964608
  %or7.i164.i166 = or i32 %or4.i157.i159, %226
  br label %ipa_resource_config_common.exit169.i170

ipa_resource_config_common.exit169.i170:          ; preds = %u32_encode_bits.exit46.i165.i167, %if.end32.i143.ipa_resource_config_common.exit169.i170_crit_edge
  %val.0.i166.i168 = phi i32 [ %or7.i164.i166, %u32_encode_bits.exit46.i165.i167 ], [ %or.i149.i151, %if.end32.i143.ipa_resource_config_common.exit169.i170_crit_edge ]
  %227 = ptrtoint ptr %reg_virt.i.i57 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %reg_virt.i.i57, align 4
  %add.ptr.i168.i169 = getelementptr i8, ptr %228, i32 %add34.i135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %229 = tail call i32 @llvm.bswap.i32(i32 %val.0.i166.i168) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i169, i32 %229) #3, !srcloc !10
  br label %ipa_resource_config_dst.exit

ipa_resource_config_dst.exit:                     ; preds = %ipa_resource_config_common.exit169.i170, %ipa_resource_config_common.exit138.i134.ipa_resource_config_dst.exit_crit_edge, %ipa_resource_config_common.exit107.i97.ipa_resource_config_dst.exit_crit_edge, %ipa_resource_config_common.exit.i60.ipa_resource_config_dst.exit_crit_edge
  %inc5 = add nuw i32 %i.1177, 1
  %230 = ptrtoint ptr %resource_dst_count.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %resource_dst_count.i, align 4
  %cmp2 = icmp ult i32 %inc5, %231
  br i1 %cmp2, label %ipa_resource_config_dst.exit.for.body3_crit_edge, label %ipa_resource_config_dst.exit.cleanup_crit_edge

ipa_resource_config_dst.exit.cleanup_crit_edge:   ; preds = %ipa_resource_config_dst.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ipa_resource_config_dst.exit.for.body3_crit_edge: ; preds = %ipa_resource_config_dst.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

cleanup:                                          ; preds = %ipa_resource_config_dst.exit.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge, %lor.lhs.false33.i.cleanup_crit_edge, %for.body28.i.cleanup_crit_edge, %lor.lhs.false33.i.6.cleanup_crit_edge, %for.body28.i.6.cleanup_crit_edge, %lor.lhs.false33.i.5.cleanup_crit_edge, %for.body28.i.5.cleanup_crit_edge, %lor.lhs.false33.i.4.cleanup_crit_edge, %for.body28.i.4.cleanup_crit_edge, %lor.lhs.false33.i.3.cleanup_crit_edge, %for.body28.i.3.cleanup_crit_edge, %lor.lhs.false33.i.2.cleanup_crit_edge, %for.body28.i.2.cleanup_crit_edge, %lor.lhs.false33.i.1.cleanup_crit_edge, %for.body28.i.1.cleanup_crit_edge, %for.end15.i.cleanup_crit_edge, %lor.lhs.false7.i.cleanup_crit_edge, %for.body4.i.cleanup_crit_edge, %lor.lhs.false7.i.6.cleanup_crit_edge, %for.body4.i.6.cleanup_crit_edge, %lor.lhs.false7.i.5.cleanup_crit_edge, %for.body4.i.5.cleanup_crit_edge, %lor.lhs.false7.i.4.cleanup_crit_edge, %for.body4.i.4.cleanup_crit_edge, %lor.lhs.false7.i.3.cleanup_crit_edge, %for.body4.i.3.cleanup_crit_edge, %lor.lhs.false7.i.2.cleanup_crit_edge, %for.body4.i.2.cleanup_crit_edge, %lor.lhs.false7.i.1.cleanup_crit_edge, %for.body4.i.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end15.i.cleanup_crit_edge ], [ 0, %for.cond1.preheader.cleanup_crit_edge ], [ 0, %ipa_resource_config_dst.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.6.cleanup_crit_edge ], [ -22, %for.body28.i.6.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.5.cleanup_crit_edge ], [ -22, %for.body28.i.5.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.4.cleanup_crit_edge ], [ -22, %for.body28.i.4.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.3.cleanup_crit_edge ], [ -22, %for.body28.i.3.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.2.cleanup_crit_edge ], [ -22, %for.body28.i.2.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.1.cleanup_crit_edge ], [ -22, %for.body28.i.1.cleanup_crit_edge ], [ -22, %for.body28.i.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.6.cleanup_crit_edge ], [ -22, %for.body4.i.6.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.5.cleanup_crit_edge ], [ -22, %for.body4.i.5.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.4.cleanup_crit_edge ], [ -22, %for.body4.i.4.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.3.cleanup_crit_edge ], [ -22, %for.body4.i.3.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.2.cleanup_crit_edge ], [ -22, %for.body4.i.2.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.1.cleanup_crit_edge ], [ -22, %for.body4.i.1.cleanup_crit_edge ], [ -22, %for.body4.i.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{i64 2154494140}
!10 = !{i64 6952018}
