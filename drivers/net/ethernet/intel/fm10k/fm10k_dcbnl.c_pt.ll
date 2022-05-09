; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@fm10k_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @fm10k_dcbnl_ieee_getets, ptr @fm10k_dcbnl_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_dcbnl_ieee_getpfc, ptr @fm10k_dcbnl_ieee_setpfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_dcbnl_getdcbx, ptr @fm10k_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"fm10k_dcbnl_ops\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 130, i32 36 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @fm10k_dcbnl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fm10k_dcbnl_set_ops(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 15636
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 139
  %2 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fm10k_dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dcbnl_ieee_getets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %0 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %ets_cap, align 1
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 0
  %1 = call ptr @memset(ptr %cbs, i32 0, i32 25)
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx, align 1
  %arrayidx.i.1 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 1
  %5 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.1, align 1
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx.1, align 1
  %arrayidx.i.2 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 2
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.2, align 1
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx.2, align 1
  %arrayidx.i.3 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 3
  %11 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.3, align 1
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx.3, align 1
  %arrayidx.i.4 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 4
  %14 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.4, align 1
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx.4, align 1
  %arrayidx.i.5 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 5
  %17 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.5, align 1
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx.5, align 1
  %arrayidx.i.6 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 6
  %20 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.6, align 1
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.6, align 1
  %arrayidx.i.7 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 7
  %23 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.7, align 1
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx.7, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dcbnl_ieee_setets(ptr noundef %dev, ptr nocapture noundef readonly %ets) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup48_crit_edge

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup48_crit_edge

lor.lhs.false.cleanup48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6.not = icmp eq i8 %5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %if.end9.cleanup48_crit_edge

if.end9.cleanup48_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.1:                                  ; preds = %if.end9
  %arrayidx1.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.1 = icmp eq i8 %11, 0
  br i1 %tobool3.not.1, label %if.end.1, label %lor.lhs.false.1.cleanup48_crit_edge

lor.lhs.false.1.cleanup48_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.1:                                         ; preds = %lor.lhs.false.1
  %arrayidx4.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.not.1 = icmp eq i8 %13, 0
  br i1 %cmp6.not.1, label %if.end9.1, label %if.end.1.cleanup48_crit_edge

if.end.1.cleanup48_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.1:                                        ; preds = %if.end.1
  %arrayidx10.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.1, align 1
  %16 = tail call i8 @llvm.umax.i8(i8 %15, i8 %7)
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.2 = icmp eq i8 %18, 0
  br i1 %tobool.not.2, label %lor.lhs.false.2, label %if.end9.1.cleanup48_crit_edge

if.end9.1.cleanup48_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.2:                                  ; preds = %if.end9.1
  %arrayidx1.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.2 = icmp eq i8 %20, 0
  br i1 %tobool3.not.2, label %if.end.2, label %lor.lhs.false.2.cleanup48_crit_edge

lor.lhs.false.2.cleanup48_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.2:                                         ; preds = %lor.lhs.false.2
  %arrayidx4.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp6.not.2 = icmp eq i8 %22, 0
  br i1 %cmp6.not.2, label %if.end9.2, label %if.end.2.cleanup48_crit_edge

if.end.2.cleanup48_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.2:                                        ; preds = %if.end.2
  %arrayidx10.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx10.2, align 1
  %25 = tail call i8 @llvm.umax.i8(i8 %24, i8 %16)
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.3 = icmp eq i8 %27, 0
  br i1 %tobool.not.3, label %lor.lhs.false.3, label %if.end9.2.cleanup48_crit_edge

if.end9.2.cleanup48_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.3:                                  ; preds = %if.end9.2
  %arrayidx1.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.3 = icmp eq i8 %29, 0
  br i1 %tobool3.not.3, label %if.end.3, label %lor.lhs.false.3.cleanup48_crit_edge

lor.lhs.false.3.cleanup48_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.3:                                         ; preds = %lor.lhs.false.3
  %arrayidx4.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp6.not.3 = icmp eq i8 %31, 0
  br i1 %cmp6.not.3, label %if.end9.3, label %if.end.3.cleanup48_crit_edge

if.end.3.cleanup48_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.3:                                        ; preds = %if.end.3
  %arrayidx10.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx10.3, align 1
  %34 = tail call i8 @llvm.umax.i8(i8 %33, i8 %25)
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.4 = icmp eq i8 %36, 0
  br i1 %tobool.not.4, label %lor.lhs.false.4, label %if.end9.3.cleanup48_crit_edge

if.end9.3.cleanup48_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.4:                                  ; preds = %if.end9.3
  %arrayidx1.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.4 = icmp eq i8 %38, 0
  br i1 %tobool3.not.4, label %if.end.4, label %lor.lhs.false.4.cleanup48_crit_edge

lor.lhs.false.4.cleanup48_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.4:                                         ; preds = %lor.lhs.false.4
  %arrayidx4.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %39 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp6.not.4 = icmp eq i8 %40, 0
  br i1 %cmp6.not.4, label %if.end9.4, label %if.end.4.cleanup48_crit_edge

if.end.4.cleanup48_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.4:                                        ; preds = %if.end.4
  %arrayidx10.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %41 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx10.4, align 1
  %43 = tail call i8 @llvm.umax.i8(i8 %42, i8 %34)
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.5 = icmp eq i8 %45, 0
  br i1 %tobool.not.5, label %lor.lhs.false.5, label %if.end9.4.cleanup48_crit_edge

if.end9.4.cleanup48_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.5:                                  ; preds = %if.end9.4
  %arrayidx1.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool3.not.5 = icmp eq i8 %47, 0
  br i1 %tobool3.not.5, label %if.end.5, label %lor.lhs.false.5.cleanup48_crit_edge

lor.lhs.false.5.cleanup48_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.5:                                         ; preds = %lor.lhs.false.5
  %arrayidx4.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %48 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx4.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp6.not.5 = icmp eq i8 %49, 0
  br i1 %cmp6.not.5, label %if.end9.5, label %if.end.5.cleanup48_crit_edge

if.end.5.cleanup48_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.5:                                        ; preds = %if.end.5
  %arrayidx10.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %50 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx10.5, align 1
  %52 = tail call i8 @llvm.umax.i8(i8 %51, i8 %43)
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %53 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.6 = icmp eq i8 %54, 0
  br i1 %tobool.not.6, label %lor.lhs.false.6, label %if.end9.5.cleanup48_crit_edge

if.end9.5.cleanup48_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.6:                                  ; preds = %if.end9.5
  %arrayidx1.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool3.not.6 = icmp eq i8 %56, 0
  br i1 %tobool3.not.6, label %if.end.6, label %lor.lhs.false.6.cleanup48_crit_edge

lor.lhs.false.6.cleanup48_crit_edge:              ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.6:                                         ; preds = %lor.lhs.false.6
  %arrayidx4.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %57 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx4.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp6.not.6 = icmp eq i8 %58, 0
  br i1 %cmp6.not.6, label %if.end9.6, label %if.end.6.cleanup48_crit_edge

if.end.6.cleanup48_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.6:                                        ; preds = %if.end.6
  %arrayidx10.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %59 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx10.6, align 1
  %61 = tail call i8 @llvm.umax.i8(i8 %60, i8 %52)
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %62 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.7 = icmp eq i8 %63, 0
  br i1 %tobool.not.7, label %lor.lhs.false.7, label %if.end9.6.cleanup48_crit_edge

if.end9.6.cleanup48_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

lor.lhs.false.7:                                  ; preds = %if.end9.6
  %arrayidx1.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx1.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool3.not.7 = icmp eq i8 %65, 0
  br i1 %tobool3.not.7, label %if.end.7, label %lor.lhs.false.7.cleanup48_crit_edge

lor.lhs.false.7.cleanup48_crit_edge:              ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.7:                                         ; preds = %lor.lhs.false.7
  %arrayidx4.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %66 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp6.not.7 = icmp eq i8 %67, 0
  br i1 %cmp6.not.7, label %if.end9.7, label %if.end.7.cleanup48_crit_edge

if.end.7.cleanup48_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end9.7:                                        ; preds = %if.end.7
  %arrayidx10.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %68 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx10.7, align 1
  %70 = tail call i8 @llvm.umax.i8(i8 %69, i8 %61)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool19.not = icmp eq i8 %70, 0
  %inc21 = add i8 %70, 1
  %spec.select73 = select i1 %tobool19.not, i8 0, i8 %inc21
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.select73)
  %cmp24 = icmp ugt i8 %spec.select73, 8
  br i1 %cmp24, label %if.end9.7.cleanup48_crit_edge, label %if.end27

if.end9.7.cleanup48_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end27:                                         ; preds = %if.end9.7
  %conv23 = zext i8 %spec.select73 to i32
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %71 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %num_tc.i, align 4
  %conv.i = sext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv23)
  %cmp29.not = icmp eq i32 %conv.i, %conv23
  br i1 %cmp29.not, label %if.end27.if.end36_crit_edge, label %if.then31

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then31:                                        ; preds = %if.end27
  %call32 = tail call i32 @fm10k_setup_tc(ptr noundef %dev, i8 noundef zeroext %spec.select73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end36_crit_edge, label %if.then31.cleanup48_crit_edge

if.then31.cleanup48_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %if.then31.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %73 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_tc.i, align 4
  %conv1.i = sext i16 %74 to i32
  %75 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx10, align 1
  %conv.i74 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74, i32 %conv1.i)
  %cmp.not.i = icmp slt i32 %conv.i74, %conv1.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end36.netdev_set_prio_tc_map.exit_crit_edge

if.end36.netdev_set_prio_tc_map.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit

if.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i8 %76, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 0
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %and.i, ptr %arrayidx.i, align 1
  br label %netdev_set_prio_tc_map.exit

netdev_set_prio_tc_map.exit:                      ; preds = %if.end.i, %if.end36.netdev_set_prio_tc_map.exit_crit_edge
  %78 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10.1, align 1
  %conv.i74.1 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.1, i32 %conv1.i)
  %cmp.not.i.1 = icmp slt i32 %conv.i74.1, %conv1.i
  br i1 %cmp.not.i.1, label %if.end.i.1, label %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge

netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge: ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.1

if.end.i.1:                                       ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.1 = and i8 %79, 15
  %arrayidx.i.1 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 1
  %80 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %and.i.1, ptr %arrayidx.i.1, align 1
  br label %netdev_set_prio_tc_map.exit.1

netdev_set_prio_tc_map.exit.1:                    ; preds = %if.end.i.1, %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge
  %81 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx10.2, align 1
  %conv.i74.2 = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.2, i32 %conv1.i)
  %cmp.not.i.2 = icmp slt i32 %conv.i74.2, %conv1.i
  br i1 %cmp.not.i.2, label %if.end.i.2, label %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge

netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.2

if.end.i.2:                                       ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.2 = and i8 %82, 15
  %arrayidx.i.2 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 2
  %83 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %and.i.2, ptr %arrayidx.i.2, align 1
  br label %netdev_set_prio_tc_map.exit.2

netdev_set_prio_tc_map.exit.2:                    ; preds = %if.end.i.2, %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge
  %84 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx10.3, align 1
  %conv.i74.3 = zext i8 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.3, i32 %conv1.i)
  %cmp.not.i.3 = icmp slt i32 %conv.i74.3, %conv1.i
  br i1 %cmp.not.i.3, label %if.end.i.3, label %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge

netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.3

if.end.i.3:                                       ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.3 = and i8 %85, 15
  %arrayidx.i.3 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 3
  %86 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %and.i.3, ptr %arrayidx.i.3, align 1
  br label %netdev_set_prio_tc_map.exit.3

netdev_set_prio_tc_map.exit.3:                    ; preds = %if.end.i.3, %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge
  %87 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx10.4, align 1
  %conv.i74.4 = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.4, i32 %conv1.i)
  %cmp.not.i.4 = icmp slt i32 %conv.i74.4, %conv1.i
  br i1 %cmp.not.i.4, label %if.end.i.4, label %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge

netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.4

if.end.i.4:                                       ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.4 = and i8 %88, 15
  %arrayidx.i.4 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 4
  %89 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %and.i.4, ptr %arrayidx.i.4, align 1
  br label %netdev_set_prio_tc_map.exit.4

netdev_set_prio_tc_map.exit.4:                    ; preds = %if.end.i.4, %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge
  %90 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx10.5, align 1
  %conv.i74.5 = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.5, i32 %conv1.i)
  %cmp.not.i.5 = icmp slt i32 %conv.i74.5, %conv1.i
  br i1 %cmp.not.i.5, label %if.end.i.5, label %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge

netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.5

if.end.i.5:                                       ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.5 = and i8 %91, 15
  %arrayidx.i.5 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 5
  %92 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %and.i.5, ptr %arrayidx.i.5, align 1
  br label %netdev_set_prio_tc_map.exit.5

netdev_set_prio_tc_map.exit.5:                    ; preds = %if.end.i.5, %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge
  %93 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx10.6, align 1
  %conv.i74.6 = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.6, i32 %conv1.i)
  %cmp.not.i.6 = icmp slt i32 %conv.i74.6, %conv1.i
  br i1 %cmp.not.i.6, label %if.end.i.6, label %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge

netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_set_prio_tc_map.exit.6

if.end.i.6:                                       ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.6 = and i8 %94, 15
  %arrayidx.i.6 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 6
  %95 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %and.i.6, ptr %arrayidx.i.6, align 1
  br label %netdev_set_prio_tc_map.exit.6

netdev_set_prio_tc_map.exit.6:                    ; preds = %if.end.i.6, %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge
  %96 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx10.7, align 1
  %conv.i74.7 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i74.7, i32 %conv1.i)
  %cmp.not.i.7 = icmp slt i32 %conv.i74.7, %conv1.i
  br i1 %cmp.not.i.7, label %if.end.i.7, label %netdev_set_prio_tc_map.exit.6.cleanup48_crit_edge

netdev_set_prio_tc_map.exit.6.cleanup48_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end.i.7:                                       ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.7 = and i8 %97, 15
  %arrayidx.i.7 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 142, i32 7
  %98 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %and.i.7, ptr %arrayidx.i.7, align 1
  br label %cleanup48

cleanup48:                                        ; preds = %if.end.i.7, %netdev_set_prio_tc_map.exit.6.cleanup48_crit_edge, %if.then31.cleanup48_crit_edge, %if.end9.7.cleanup48_crit_edge, %if.end.7.cleanup48_crit_edge, %lor.lhs.false.7.cleanup48_crit_edge, %if.end9.6.cleanup48_crit_edge, %if.end.6.cleanup48_crit_edge, %lor.lhs.false.6.cleanup48_crit_edge, %if.end9.5.cleanup48_crit_edge, %if.end.5.cleanup48_crit_edge, %lor.lhs.false.5.cleanup48_crit_edge, %if.end9.4.cleanup48_crit_edge, %if.end.4.cleanup48_crit_edge, %lor.lhs.false.4.cleanup48_crit_edge, %if.end9.3.cleanup48_crit_edge, %if.end.3.cleanup48_crit_edge, %lor.lhs.false.3.cleanup48_crit_edge, %if.end9.2.cleanup48_crit_edge, %if.end.2.cleanup48_crit_edge, %lor.lhs.false.2.cleanup48_crit_edge, %if.end9.1.cleanup48_crit_edge, %if.end.1.cleanup48_crit_edge, %lor.lhs.false.1.cleanup48_crit_edge, %if.end9.cleanup48_crit_edge, %if.end.cleanup48_crit_edge, %lor.lhs.false.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.1 = phi i32 [ %call32, %if.then31.cleanup48_crit_edge ], [ -22, %if.end9.7.cleanup48_crit_edge ], [ 0, %if.end.i.7 ], [ 0, %netdev_set_prio_tc_map.exit.6.cleanup48_crit_edge ], [ -22, %if.end.7.cleanup48_crit_edge ], [ -22, %lor.lhs.false.7.cleanup48_crit_edge ], [ -22, %if.end9.6.cleanup48_crit_edge ], [ -22, %if.end.6.cleanup48_crit_edge ], [ -22, %lor.lhs.false.6.cleanup48_crit_edge ], [ -22, %if.end9.5.cleanup48_crit_edge ], [ -22, %if.end.5.cleanup48_crit_edge ], [ -22, %lor.lhs.false.5.cleanup48_crit_edge ], [ -22, %if.end9.4.cleanup48_crit_edge ], [ -22, %if.end.4.cleanup48_crit_edge ], [ -22, %lor.lhs.false.4.cleanup48_crit_edge ], [ -22, %if.end9.3.cleanup48_crit_edge ], [ -22, %if.end.3.cleanup48_crit_edge ], [ -22, %lor.lhs.false.3.cleanup48_crit_edge ], [ -22, %if.end9.2.cleanup48_crit_edge ], [ -22, %if.end.2.cleanup48_crit_edge ], [ -22, %lor.lhs.false.2.cleanup48_crit_edge ], [ -22, %if.end9.1.cleanup48_crit_edge ], [ -22, %if.end.1.cleanup48_crit_edge ], [ -22, %lor.lhs.false.1.cleanup48_crit_edge ], [ -22, %if.end9.cleanup48_crit_edge ], [ -22, %lor.lhs.false.cleanup48_crit_edge ], [ -22, %entry.cleanup48_crit_edge ], [ -22, %if.end.cleanup48_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %pfc, align 8
  %pfc_en = getelementptr i8, ptr %dev, i32 19028
  %1 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pfc_en, align 4
  %pfc_en1 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %3 = ptrtoint ptr %pfc_en1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %pfc_en1, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfc_en, align 1
  %pfc_en1 = getelementptr i8, ptr %dev, i32 19028
  %2 = ptrtoint ptr %pfc_en1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %pfc_en1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @fm10k_update_rx_drop_en(ptr noundef %add.ptr.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @fm10k_dcbnl_getdcbx(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @fm10k_dcbnl_setdcbx(ptr nocapture noundef readnone %dev, i8 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %mode)
  %cmp.not = icmp ne i8 %mode, 9
  %conv2 = zext i1 %cmp.not to i8
  ret i8 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_setup_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_update_rx_drop_en(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @fm10k_dcbnl_ops, !1, !"fm10k_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c", i32 130, i32 36}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
