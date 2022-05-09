; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vchiq_add_connected_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_vchiq_add_connected_callback\09\09\09\09"
module asm "\09.long\09__crc_vchiq_add_connected_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchiq_add_connected_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22vchiq_add_connected_callback\22\09\09\09\09\09"
module asm "__kstrtabns_vchiq_add_connected_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@g_connected_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @g_connected_mutex, i64 52), ptr getelementptr (i8, ptr @g_connected_mutex, i64 52) }, ptr @g_connected_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@g_connected = internal global { i1, [31 x i8] } zeroinitializer, align 32
@g_num_deferred_callbacks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vchiq_core_log_level = external dso_local local_unnamed_addr global i32, align 4
@vchiq_add_connected_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016vchiq: There already %d callback registered - please increase MAX_CALLBACKS\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vchiq_add_connected_callback\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c\00", [60 x i8] zeroinitializer }, align 32
@vchiq_add_connected_callback._entry_ptr = internal global ptr @vchiq_add_connected_callback._entry, section ".printk_index", align 4
@g_deferred_callback = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@__kstrtab_vchiq_add_connected_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchiq_add_connected_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_vchiq_add_connected_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchiq_add_connected_callback to i32), ptr @__kstrtab_vchiq_add_connected_callback, ptr @__kstrtabns_vchiq_add_connected_callback }, section "___ksymtab+vchiq_add_connected_callback", align 4
@g_once_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"g_connected_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"g_connected_mutex\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"g_connected_mutex\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"g_connected\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"g_num_deferred_callbacks\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 12, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 42, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"g_deferred_callback\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 13, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"g_once_init\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [71 x i8] c"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 15, i32 10 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_vchiq_add_connected_callback, ptr @vchiq_add_connected_callback._entry, ptr @vchiq_add_connected_callback._entry_ptr, ptr @g_connected_mutex, ptr @g_connected, ptr @g_num_deferred_callbacks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @g_deferred_callback, ptr @g_once_init, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_connected_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_connected to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_num_deferred_callbacks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchiq_add_connected_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_deferred_callback to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_once_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vchiq_add_connected_callback(ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @g_once_init, align 4
  br i1 %.b.i, label %entry.connected_init.exit_crit_edge, label %if.then.i

entry.connected_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %connected_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @g_once_init, align 4
  br label %connected_init.exit

connected_init.exit:                              ; preds = %if.then.i, %entry.connected_init.exit_crit_edge
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @g_connected_mutex, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %connected_init.exit.return_crit_edge

connected_init.exit.return_crit_edge:             ; preds = %connected_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %connected_init.exit
  %.b = load i1, ptr @g_connected, align 4
  br i1 %.b, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %callback() #3
  br label %if.end12

if.else:                                          ; preds = %if.end
  %0 = load i32, ptr @g_num_deferred_callbacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %cmp = icmp sgt i32 %0, 9
  br i1 %cmp, label %do.body, label %if.else10

do.body:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vchiq_core_log_level to i32))
  %1 = load i32, ptr @vchiq_core_log_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp4 = icmp sgt i32 %1, 2
  br i1 %cmp4, label %do.end, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #6
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [10 x ptr], ptr @g_deferred_callback, i32 0, i32 %0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %callback, ptr %arrayidx, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @g_num_deferred_callbacks, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %do.end, %do.body.if.end12_crit_edge, %if.then2
  tail call void @mutex_unlock(ptr noundef nonnull @g_connected_mutex) #3
  br label %return

return:                                           ; preds = %if.end12, %connected_init.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vchiq_call_connected_callbacks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @g_once_init, align 4
  br i1 %.b.i, label %entry.connected_init.exit_crit_edge, label %if.then.i

entry.connected_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %connected_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @g_once_init, align 4
  br label %connected_init.exit

connected_init.exit:                              ; preds = %if.then.i, %entry.connected_init.exit_crit_edge
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @g_connected_mutex, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %connected_init.exit.cleanup_crit_edge

connected_init.exit.cleanup_crit_edge:            ; preds = %connected_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %connected_init.exit
  %0 = load i32, ptr @g_num_deferred_callbacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr @g_deferred_callback, i32 0, i32 %i.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void %2() #3
  %inc = add nuw nsw i32 %i.04, 1
  %3 = load i32, ptr @g_num_deferred_callbacks, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store i32 0, ptr @g_num_deferred_callbacks, align 4
  store i1 true, ptr @g_connected, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @g_connected_mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %connected_init.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 42, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vchiq_add_connected_callback._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vchiq_add_connected_callback._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_vchiq_add_connected_callback, !7, !"__ksymtab_vchiq_add_connected_callback", i1 false, i1 false}
!7 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 53, i32 1}
!8 = distinct !{null, !9, !"g_connected", i1 false, i1 false}
!9 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 11, i32 37}
!10 = !{ptr @g_num_deferred_callbacks, !11, !"g_num_deferred_callbacks", i1 false, i1 false}
!11 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 12, i32 37}
!12 = !{ptr @g_deferred_callback, !13, !"g_deferred_callback", i1 false, i1 false}
!13 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 13, i32 17}
!14 = distinct !{null, !15, !"g_once_init", i1 false, i1 false}
!15 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 14, i32 37}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c", i32 15, i32 10}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @g_connected_mutex, !17, !"g_connected_mutex", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
