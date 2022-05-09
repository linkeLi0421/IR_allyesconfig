; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-panic.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-panic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_ledtrig_panic__170_74_ledtrig_panic_init6 = internal global ptr @ledtrig_panic_init, section ".initcall6.init", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@led_trigger_panic_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @led_trigger_panic_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@trigger = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@panic_blink = external dso_local local_unnamed_addr global ptr, align 4
@leds_list = external dso_local global %struct.list_head, align 4
@trigger_list = external dso_local global %struct.list_head, align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"led_trigger_panic_nb\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 55, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 70, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@___asan_gen_.8 = private constant [40 x i8] c"../drivers/leds/trigger/ledtrig-panic.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 15, i32 28 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_ledtrig_panic__170_74_ledtrig_panic_init6, ptr @led_trigger_panic_nb, ptr @.str, ptr @trigger], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_trigger_panic_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_panic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @led_trigger_panic_nb) #4
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef nonnull @trigger) #4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @panic_blink to i32))
  store ptr @led_panic_blink, ptr @panic_blink, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_panic_blink(i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @trigger, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %0, i32 noundef %cond) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_trigger_panic_notifier(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @leds_list to i32))
  %.pn9 = load ptr, ptr @leds_list, align 4
  %cmp.not11 = icmp eq ptr %.pn9, @leds_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %led_cdev.013 = getelementptr i8, ptr %.pn12, i32 -52
  %flags = getelementptr i8, ptr %.pn12, i32 -40
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @trigger_list, %for.body.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @trigger_list
  br i1 %cmp.not.i, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %trig.0.i = getelementptr i8, ptr %.pn.i, i32 -68
  %3 = ptrtoint ptr %trig.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trig.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef %4) #7
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %trig.0.i.le = getelementptr i8, ptr %.pn.i, i32 -68
  %trigger.i = getelementptr i8, ptr %.pn12, i32 224
  %5 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trigger.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %trig_list.i = getelementptr i8, ptr %.pn12, i32 228
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %trig_list.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.i.list_del.exit.i_crit_edge

if.then2.i.list_del.exit.i_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr i8, ptr %.pn12, i32 232
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %trig_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trig_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then2.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %trig_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %trig_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn12, i32 232
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %list_del.exit.i, %if.end.i.if.end3.i_crit_edge
  %trig_list4.i = getelementptr i8, ptr %.pn12, i32 228
  %led_cdevs.i = getelementptr i8, ptr %.pn.i, i32 -8
  %prev.i27.i = getelementptr i8, ptr %.pn.i, i32 -4
  %15 = ptrtoint ptr %prev.i27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i27.i, align 4
  %call.i.i28.i = tail call zeroext i1 @__list_add_valid(ptr noundef %trig_list4.i, ptr noundef %16, ptr noundef %led_cdevs.i) #4
  br i1 %call.i.i28.i, label %if.end.i.i29.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i29.i:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %prev.i27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %trig_list4.i, ptr %prev.i27.i, align 4
  %18 = ptrtoint ptr %trig_list4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %led_cdevs.i, ptr %trig_list4.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn12, i32 232
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %trig_list4.i, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i29.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  %blink_delay_on.i = getelementptr i8, ptr %.pn12, i32 12
  %21 = ptrtoint ptr %blink_delay_on.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %blink_delay_on.i, align 4
  %blink_delay_off.i = getelementptr i8, ptr %.pn12, i32 16
  %22 = ptrtoint ptr %blink_delay_off.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %blink_delay_off.i, align 4
  %23 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %trig.0.i.le, ptr %trigger.i, align 4
  %activate.i = getelementptr i8, ptr %.pn.i, i32 -64
  %24 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %activate.i, align 4
  %tobool6.not.i = icmp eq ptr %25, null
  br i1 %tobool6.not.i, label %list_add_tail.exit.i.for.inc_crit_edge, label %if.then7.i

list_add_tail.exit.i.for.inc_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then7.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 %25(ptr noundef %led_cdev.013) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then7.i, %list_add_tail.exit.i.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, @leds_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__initcall__kmod_ledtrig_panic__170_74_ledtrig_panic_init6, !1, !"__initcall__kmod_ledtrig_panic__170_74_ledtrig_panic_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-panic.c", i32 74, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-panic.c", i32 70, i32 30}
!4 = !{ptr @led_trigger_panic_nb, !5, !"led_trigger_panic_nb", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-panic.c", i32 55, i32 30}
!6 = !{ptr @trigger, !7, !"trigger", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-panic.c", i32 15, i32 28}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
