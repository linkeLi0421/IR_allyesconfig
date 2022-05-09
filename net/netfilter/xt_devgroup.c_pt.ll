; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_devgroup.c_pt.bc'
source_filename = "../net/netfilter/xt_devgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_devgroup_info = type { i32, i32, i32, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_author354 = internal constant [53 x i8] c"xt_devgroup.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [43 x i8] c"xt_devgroup.file=net/netfilter/xt_devgroup\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [24 x i8] c"xt_devgroup.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [52 x i8] c"xt_devgroup.description=Xtables: Device group match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [31 x i8] c"xt_devgroup.alias=ipt_devgroup\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [32 x i8] c"xt_devgroup.alias=ip6t_devgroup\00", section ".modinfo", align 1
@devgroup_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"devgroup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @devgroup_mt, ptr @devgroup_mt_checkentry, ptr null, ptr null, ptr null, i32 20, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_devgroup__360_78_devgroup_mt_init6 = internal global ptr @devgroup_mt_init, section ".initcall6.init", align 4
@__exitcall_devgroup_mt_exit = internal global ptr @devgroup_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_devgroup_mt_exit, ptr @__initcall__kmod_xt_devgroup__360_78_devgroup_mt_init6, ptr @devgroup_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @devgroup_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @devgroup_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @devgroup_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @devgroup_mt_reg) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @devgroup_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %src_group = getelementptr inbounds %struct.xt_devgroup_info, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %src_group to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_group, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in.i, align 4
  %group = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %group, align 4
  %xor = xor i32 %12, %6
  %src_mask = getelementptr inbounds %struct.xt_devgroup_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_mask, align 4
  %and1 = and i32 %xor, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %15 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp ne i32 %15, 0
  %tobool8.not = xor i1 %16, %tobool2.not
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and10 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end26_crit_edge, label %land.lhs.true12

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true12:                                  ; preds = %if.end
  %dst_group = getelementptr inbounds %struct.xt_devgroup_info, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %dst_group to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_group, align 4
  %state.i36 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %19 = ptrtoint ptr %state.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i36, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out.i, align 4
  %group14 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 35
  %23 = ptrtoint ptr %group14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %group14, align 4
  %xor15 = xor i32 %24, %18
  %dst_mask = getelementptr inbounds %struct.xt_devgroup_info, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %dst_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_mask, align 4
  %and16 = and i32 %xor15, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %27 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp ne i32 %27, 0
  %tobool24.not = xor i1 %28, %tobool17.not
  br i1 %tobool24.not, label %land.lhs.true12.if.end26_crit_edge, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true12.if.end26_crit_edge, %if.end.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end26 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %land.lhs.true12.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devgroup_mt_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %tobool.not = icmp ult i32 %3, 16
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %hook_mask = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %4 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hook_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %tobool5.not = icmp ult i32 %5, 8
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and9 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %land.lhs.true11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.end7
  %hook_mask12 = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %6 = ptrtoint ptr %hook_mask12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hook_mask12, align 4
  %and13 = and i32 %7, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true11.if.end16_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_devgroup.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_file355, !3, !"__UNIQUE_ID_file355", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_devgroup.c", i32 14, i32 1}
!4 = !{ptr @__UNIQUE_ID_license356, !3, !"__UNIQUE_ID_license356", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_devgroup.c", i32 15, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_devgroup.c", i32 16, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_devgroup.c", i32 17, i32 1}
!11 = !{ptr @__initcall__kmod_xt_devgroup__360_78_devgroup_mt_init6, !12, !"__initcall__kmod_xt_devgroup__360_78_devgroup_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_devgroup.c", i32 78, i32 1}
!13 = !{ptr @__exitcall_devgroup_mt_exit, !14, !"__exitcall_devgroup_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_devgroup.c", i32 79, i32 1}
!15 = !{ptr @devgroup_mt_reg, !16, !"devgroup_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_devgroup.c", i32 59, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
