; ModuleID = '/llk/IR_all_yes/sound/firewire/packets-buffer.c_pt.bc'
source_filename = "../sound/firewire/packets-buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iso_packets_buffer_init\22, \22a\22\09"
module asm "\09.weak\09__crc_iso_packets_buffer_init\09\09\09\09"
module asm "\09.long\09__crc_iso_packets_buffer_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iso_packets_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iso_packets_buffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_iso_packets_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iso_packets_buffer_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_iso_packets_buffer_destroy\09\09\09\09"
module asm "\09.long\09__crc_iso_packets_buffer_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iso_packets_buffer_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22iso_packets_buffer_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_iso_packets_buffer_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.anon.67 = type { ptr, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/firewire/packets-buffer.c\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_iso_packets_buffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iso_packets_buffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iso_packets_buffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iso_packets_buffer_init to i32), ptr @__kstrtab_iso_packets_buffer_init, ptr @__kstrtabns_iso_packets_buffer_init }, section "___ksymtab+iso_packets_buffer_init", align 4
@__kstrtab_iso_packets_buffer_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iso_packets_buffer_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_iso_packets_buffer_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iso_packets_buffer_destroy to i32), ptr @__kstrtab_iso_packets_buffer_destroy, ptr @__kstrtabns_iso_packets_buffer_destroy }, section "___ksymtab+iso_packets_buffer_destroy", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../sound/firewire/packets-buffer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_iso_packets_buffer_destroy, ptr @__ksymtab_iso_packets_buffer_init, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iso_packets_buffer_init(ptr noundef %b, ptr nocapture noundef readonly %unit, i32 noundef %count, i32 noundef %packet_size, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 8) #4
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !15

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %packets76 = getelementptr inbounds %struct.iso_packets_buffer, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %packets76 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %packets76, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #7
  %packets = getelementptr inbounds %struct.iso_packets_buffer, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i, ptr %packets, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %add = add i32 %packet_size, 127
  %and = and i32 %add, -128
  %div = udiv i32 4096, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %tobool2.not = icmp ugt i32 %and, 4096
  br i1 %tobool2.not, label %do.end, label %if.end27, !prof !15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #4
  br label %err_packets

if.end27:                                         ; preds = %if.end
  %add28 = add nsw i32 %count, -1
  %sub = add nsw i32 %add28, %div
  %div29 = udiv i32 %sub, %div
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %call31 = tail call i32 @fw_iso_buffer_init(ptr noundef %b, ptr noundef %8, i32 noundef %div29, i32 noundef %direction) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end27.err_packets_crit_edge, label %for.cond.preheader

if.end27.err_packets_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_packets

for.cond.preheader:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3483.not = icmp eq i32 %count, 0
  br i1 %cmp3483.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pages37 = getelementptr inbounds %struct.fw_iso_buffer, ptr %b, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %i.084.frozen = freeze i32 %i.084
  %div35 = udiv i32 %i.084.frozen, %div
  %9 = ptrtoint ptr %pages37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages37, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %div35
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call38 = tail call ptr @page_address(ptr noundef %12) #4
  %13 = mul i32 %div35, %div
  %rem.decomposed = sub i32 %i.084.frozen, %13
  %mul = mul i32 %rem.decomposed, %and
  %add.ptr = getelementptr i8, ptr %call38, i32 %mul
  %14 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %packets, align 4
  %arrayidx40 = getelementptr %struct.anon.67, ptr %15, i32 %i.084
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %arrayidx40, align 4
  %mul41 = shl i32 %div35, 12
  %add42 = add i32 %mul, %mul41
  %17 = load ptr, ptr %packets, align 4
  %offset = getelementptr %struct.anon.67, ptr %17, i32 %i.084, i32 1
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add42, ptr %offset, align 4
  %inc = add nuw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_packets:                                      ; preds = %if.end27.err_packets_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %call31, %if.end27.err_packets_crit_edge ]
  %19 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %packets, align 4
  tail call void @kfree(ptr noundef %20) #4
  br label %cleanup

cleanup:                                          ; preds = %err_packets, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ %err.0, %err_packets ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iso_packets_buffer_destroy(ptr noundef %b, ptr nocapture noundef readonly %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  tail call void @fw_iso_buffer_destroy(ptr noundef %b, ptr noundef %3) #4
  %packets = getelementptr inbounds %struct.iso_packets_buffer, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %packets, align 4
  tail call void @kfree(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_buffer_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/packets-buffer.c", i32 38, i32 6}
!2 = !{ptr @__ksymtab_iso_packets_buffer_init, !3, !"__ksymtab_iso_packets_buffer_init", i1 false, i1 false}
!3 = !{!"../sound/firewire/packets-buffer.c", i32 64, i32 1}
!4 = !{ptr @__ksymtab_iso_packets_buffer_destroy, !5, !"__ksymtab_iso_packets_buffer_destroy", i1 false, i1 false}
!5 = !{!"../sound/firewire/packets-buffer.c", i32 77, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
