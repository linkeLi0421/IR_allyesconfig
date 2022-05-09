; ModuleID = '/llk/IR_all_yes/net/wireless/wext-spy.c_pt.bc'
source_filename = "../net/wireless/wext-spy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iw_handler_set_spy\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_handler_set_spy\09\09\09\09"
module asm "\09.long\09__crc_iw_handler_set_spy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_handler_set_spy:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_handler_set_spy\22\09\09\09\09\09"
module asm "__kstrtabns_iw_handler_set_spy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_handler_get_spy\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_handler_get_spy\09\09\09\09"
module asm "\09.long\09__crc_iw_handler_get_spy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_handler_get_spy:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_handler_get_spy\22\09\09\09\09\09"
module asm "__kstrtabns_iw_handler_get_spy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_handler_set_thrspy\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_handler_set_thrspy\09\09\09\09"
module asm "\09.long\09__crc_iw_handler_set_thrspy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_handler_set_thrspy:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_handler_set_thrspy\22\09\09\09\09\09"
module asm "__kstrtabns_iw_handler_set_thrspy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_handler_get_thrspy\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_handler_get_thrspy\09\09\09\09"
module asm "\09.long\09__crc_iw_handler_get_thrspy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_handler_get_thrspy:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_handler_get_thrspy\22\09\09\09\09\09"
module asm "__kstrtabns_iw_handler_get_thrspy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wireless_spy_update\22, \22a\22\09"
module asm "\09.weak\09__crc_wireless_spy_update\09\09\09\09"
module asm "\09.long\09__crc_wireless_spy_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wireless_spy_update:\09\09\09\09\09"
module asm "\09.asciz \09\22wireless_spy_update\22\09\09\09\09\09"
module asm "__kstrtabns_wireless_spy_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_thrspy = type { %struct.sockaddr, %struct.iw_quality, %struct.iw_quality, %struct.iw_quality }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }

@__kstrtab_iw_handler_set_spy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_handler_set_spy = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_handler_set_spy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_handler_set_spy to i32), ptr @__kstrtab_iw_handler_set_spy, ptr @__kstrtabns_iw_handler_set_spy }, section "___ksymtab+iw_handler_set_spy", align 4
@__kstrtab_iw_handler_get_spy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_handler_get_spy = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_handler_get_spy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_handler_get_spy to i32), ptr @__kstrtab_iw_handler_get_spy, ptr @__kstrtabns_iw_handler_get_spy }, section "___ksymtab+iw_handler_get_spy", align 4
@__kstrtab_iw_handler_set_thrspy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_handler_set_thrspy = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_handler_set_thrspy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_handler_set_thrspy to i32), ptr @__kstrtab_iw_handler_set_thrspy, ptr @__kstrtabns_iw_handler_set_thrspy }, section "___ksymtab+iw_handler_set_thrspy", align 4
@__kstrtab_iw_handler_get_thrspy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_handler_get_thrspy = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_handler_get_thrspy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_handler_get_thrspy to i32), ptr @__kstrtab_iw_handler_get_thrspy, ptr @__kstrtabns_iw_handler_get_thrspy }, section "___ksymtab+iw_handler_get_thrspy", align 4
@__kstrtab_wireless_spy_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_wireless_spy_update = external dso_local constant [0 x i8], align 1
@__ksymtab_wireless_spy_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wireless_spy_update to i32), ptr @__kstrtab_wireless_spy_update, ptr @__kstrtabns_wireless_spy_update }, section "___ksymtab+wireless_spy_update", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_iw_handler_get_spy, ptr @__ksymtab_iw_handler_get_thrspy, ptr @__ksymtab_iw_handler_set_spy, ptr @__ksymtab_iw_handler_set_thrspy, ptr @__ksymtab_wireless_spy_update], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_handler_set_spy(ptr nocapture noundef readonly %dev, ptr nocapture readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %wireless_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_spydata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_spydata.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_spydata.exit.cleanup_crit_edge, label %if.end

get_spydata.exit.cleanup_crit_edge:               ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_spydata.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not = icmp eq i16 %6, 0
  br i1 %cmp.not, label %if.end.do.end17_crit_edge, label %for.cond.preheader

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp837.not = icmp eq i16 %8, 0
  br i1 %cmp837.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 1, i32 %i.038
  %sa_data = getelementptr %struct.sockaddr, ptr %extra, i32 %i.038, i32 1
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %sa_data, i32 6)
  %inc = add nuw nsw i32 %i.038, 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 4
  %conv7 = zext i16 %11 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %spy_stat = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 2
  %12 = call ptr @memset(ptr %spy_stat, i32 0, i32 32)
  br label %do.end17

do.end17:                                         ; preds = %for.end, %if.end.do.end17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !20
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %length, align 4
  %conv21 = zext i16 %14 to i32
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv21, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %get_spydata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end17 ], [ -95, %get_spydata.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_handler_get_spy(ptr nocapture noundef readonly %dev, ptr nocapture readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %wireless_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_spydata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_spydata.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_spydata.exit.cleanup_crit_edge, label %if.end

get_spydata.exit.cleanup_crit_edge:               ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_spydata.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = trunc i32 %5 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %length, align 4
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp49 = icmp sgt i32 %7, 0
  br i1 %cmp49, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sockaddr, ptr %extra, i32 %i.050
  %sa_data = getelementptr %struct.sockaddr, ptr %extra, i32 %i.050, i32 1
  %arrayidx3 = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 1, i32 %i.050
  %8 = call ptr @memcpy(ptr %sa_data, ptr %arrayidx3, i32 6)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.050, 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %if.then9, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %11, 4
  %add.ptr = getelementptr i8, ptr %extra, i32 %mul
  %spy_stat = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 2
  %mul13 = shl i32 %11, 2
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %spy_stat, i32 %mul13)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %3, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %for.end.if.end14_crit_edge
  %14 = phi i32 [ %.pr, %if.then9 ], [ %11, %for.end.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1751 = icmp sgt i32 %14, 0
  br i1 %cmp1751, label %if.end14.for.body19_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.for.body19_crit_edge:                    ; preds = %if.end14
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.end14.for.body19_crit_edge
  %i.152 = phi i32 [ %inc25, %for.body19.for.body19_crit_edge ], [ 0, %if.end14.for.body19_crit_edge ]
  %updated = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 2, i32 %i.152, i32 3
  %15 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %updated, align 1
  %17 = and i8 %16, -8
  store i8 %17, ptr %updated, align 1
  %inc25 = add nuw nsw i32 %i.152, 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %cmp17 = icmp slt i32 %inc25, %19
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_spydata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %get_spydata.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iw_handler_set_thrspy(ptr nocapture noundef readonly %dev, ptr nocapture readnone %info, ptr nocapture readnone %wrqu, ptr nocapture noundef readonly %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %wireless_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_spydata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_spydata.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_spydata.exit.cleanup_crit_edge, label %if.end

get_spydata.exit.cleanup_crit_edge:               ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %spy_thr_low = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 3
  %low = getelementptr inbounds %struct.iw_thrspy, ptr %extra, i32 0, i32 2
  %4 = ptrtoint ptr %low to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %low, align 2
  %6 = ptrtoint ptr %spy_thr_low to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %spy_thr_low, align 4
  %spy_thr_high = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 4
  %high = getelementptr inbounds %struct.iw_thrspy, ptr %extra, i32 0, i32 3
  %7 = ptrtoint ptr %high to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %high, align 2
  %9 = ptrtoint ptr %spy_thr_high to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %spy_thr_high, align 4
  %spy_thr_under = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %spy_thr_under to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %spy_thr_under, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_spydata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %get_spydata.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iw_handler_get_thrspy(ptr nocapture noundef readonly %dev, ptr nocapture readnone %info, ptr nocapture readnone %wrqu, ptr nocapture noundef writeonly %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %wireless_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_spydata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_spydata.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_spydata.exit.cleanup_crit_edge, label %if.end

get_spydata.exit.cleanup_crit_edge:               ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %low = getelementptr inbounds %struct.iw_thrspy, ptr %extra, i32 0, i32 2
  %spy_thr_low = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %spy_thr_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spy_thr_low, align 4
  %6 = ptrtoint ptr %low to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %low, align 2
  %high = getelementptr inbounds %struct.iw_thrspy, ptr %extra, i32 0, i32 3
  %spy_thr_high = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %spy_thr_high to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spy_thr_high, align 4
  %9 = ptrtoint ptr %high to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %high, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_spydata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %get_spydata.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wireless_spy_update(ptr noundef %dev, ptr nocapture noundef readonly %address, ptr nocapture noundef readonly %wstats) #0 align 64 {
entry:
  %wrqu.i57 = alloca %union.iwreq_data, align 4
  %threshold.i58 = alloca %struct.iw_thrspy, align 2
  %wrqu.i = alloca %union.iwreq_data, align 4
  %threshold.i = alloca %struct.iw_thrspy, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %wireless_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_spydata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

get_spydata.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_spydata.exit.cleanup_crit_edge, label %for.cond.preheader

get_spydata.exit.cleanup_crit_edge:               ; preds = %get_spydata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %get_spydata.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp63 = icmp sgt i32 %5, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr.i = getelementptr i8, ptr %address, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %match.066 = phi i32 [ -1, %for.body.lr.ph ], [ %match.1, %for.inc.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 1, i32 %i.064
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %xor.i = xor i32 %9, %7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then2, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 2, i32 %i.064
  %14 = ptrtoint ptr %wstats to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %wstats, align 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %match.1 = phi i32 [ %i.064, %if.then2 ], [ %match.066, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.064, 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match.1)
  %cmp5 = icmp sgt i32 %match.1, -1
  br i1 %cmp5, label %if.then6, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %for.end
  %arrayidx7 = getelementptr %struct.iw_spy_data, ptr %3, i32 0, i32 5, i32 %match.1
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  %level18 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 1
  %21 = ptrtoint ptr %level18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %level18, align 1
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  %level10 = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %level10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %level10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp12 = icmp ugt i8 %22, %24
  br i1 %cmp12, label %if.then14, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #5
  %26 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i, i32 0, i32 2
  %28 = call ptr @memset(ptr %wrqu.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %threshold.i) #5
  %29 = getelementptr inbounds %struct.sockaddr, ptr %threshold.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i, i32 0, i32 3
  %33 = getelementptr inbounds i8, ptr %threshold.i, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 -1, ptr %33, align 2
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %26, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %27, align 2
  %37 = call ptr @memcpy(ptr %29, ptr %address, i32 6)
  %38 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %threshold.i, align 2
  %39 = ptrtoint ptr %wstats to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %wstats, align 1
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %30, align 2
  %spy_thr_low.i = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %spy_thr_low.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spy_thr_low.i, align 4
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %31, align 2
  %spy_thr_high.i = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %spy_thr_high.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %spy_thr_high.i, align 4
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %32, align 2
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35603, ptr noundef nonnull %wrqu.i, ptr noundef nonnull %threshold.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %threshold.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %level20 = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %level20 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %level20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %49)
  %cmp22 = icmp ult i8 %22, %49
  br i1 %cmp22, label %if.then24, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i57) #5
  %51 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i57, i32 0, i32 1
  %52 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i57, i32 0, i32 2
  %53 = call ptr @memset(ptr %wrqu.i57, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %threshold.i58) #5
  %54 = getelementptr inbounds %struct.sockaddr, ptr %threshold.i58, i32 0, i32 1
  %55 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i58, i32 0, i32 1
  %56 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i58, i32 0, i32 2
  %57 = getelementptr inbounds %struct.iw_thrspy, ptr %threshold.i58, i32 0, i32 3
  %58 = getelementptr inbounds i8, ptr %threshold.i58, i32 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 -1, ptr %58, align 2
  %60 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %51, align 4
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %52, align 2
  %62 = call ptr @memcpy(ptr %54, ptr %address, i32 6)
  %63 = ptrtoint ptr %threshold.i58 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %threshold.i58, align 2
  %64 = ptrtoint ptr %wstats to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %wstats, align 1
  %66 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %55, align 2
  %spy_thr_low.i59 = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %spy_thr_low.i59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %spy_thr_low.i59, align 4
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %56, align 2
  %spy_thr_high.i60 = getelementptr inbounds %struct.iw_spy_data, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %spy_thr_high.i60 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %spy_thr_high.i60, align 4
  %72 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %57, align 2
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35603, ptr noundef nonnull %wrqu.i57, ptr noundef nonnull %threshold.i58) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %threshold.i58) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i57) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else.cleanup_crit_edge, %if.then14, %if.then9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %get_spydata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_iw_handler_set_spy, !1, !"__ksymtab_iw_handler_set_spy", i1 false, i1 false}
!1 = !{!"../net/wireless/wext-spy.c", i32 72, i32 1}
!2 = !{ptr @__ksymtab_iw_handler_get_spy, !3, !"__ksymtab_iw_handler_get_spy", i1 false, i1 false}
!3 = !{!"../net/wireless/wext-spy.c", i32 104, i32 1}
!4 = !{ptr @__ksymtab_iw_handler_set_thrspy, !5, !"__ksymtab_iw_handler_set_thrspy", i1 false, i1 false}
!5 = !{!"../net/wireless/wext-spy.c", i32 131, i32 1}
!6 = !{ptr @__ksymtab_iw_handler_get_thrspy, !7, !"__ksymtab_iw_handler_get_thrspy", i1 false, i1 false}
!7 = !{!"../net/wireless/wext-spy.c", i32 155, i32 1}
!8 = !{ptr @__ksymtab_wireless_spy_update, !9, !"__ksymtab_wireless_spy_update", i1 false, i1 false}
!9 = !{!"../net/wireless/wext-spy.c", i32 232, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2156216866}
!20 = !{i64 2156217026}
