; ModuleID = '/llk/IR_all_yes/sound/ac97_bus.c_pt.bc'
source_filename = "../sound/ac97_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_ac97_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_reset\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ac97_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_ac97_bus_type\09\09\09\09"
module asm "\09.long\09__crc_ac97_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ac97_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22ac97_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_ac97_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.74 = type { i32, [28 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_snd_ac97_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_reset to i32), ptr @__kstrtab_snd_ac97_reset, ptr @__kstrtabns_snd_ac97_reset }, section "___ksymtab_gpl+snd_ac97_reset", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@ac97_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ac97_bus__233_98_ac97_bus_init4 = internal global ptr @ac97_bus_init, section ".initcall4.init", align 4
@__exitcall_ac97_bus_exit = internal global ptr @ac97_bus_exit, section ".exitcall.exit", align 4
@__kstrtab_ac97_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_ac97_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_ac97_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ac97_bus_type to i32), ptr @__kstrtab_ac97_bus_type, ptr @__kstrtabns_ac97_bus_type }, section "___ksymtab+ac97_bus_type", align 4
@__UNIQUE_ID_file234 = internal constant [29 x i8] c"ac97_bus.file=sound/ac97_bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"ac97_bus.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"ac97_bus_type\00", align 1
@___asan_gen_.6 = private constant [20 x i8] c"../sound/ac97_bus.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 88, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ac97_bus_exit, ptr @__initcall__kmod_ac97_bus__233_98_ac97_bus_init4, ptr @__ksymtab_ac97_bus_type, ptr @__ksymtab_snd_ac97_reset, ptr @ac97_bus_exit, ptr @.str, ptr @ac97_bus_type], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_reset(ptr noundef %ac97, i1 noundef zeroext %try_warm, i32 noundef %id, i32 noundef %id_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %try_warm, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %warm_reset = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %warm_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %warm_reset, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  tail call void %5(ptr noundef %ac97) #4
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %ac97, i16 noundef zeroext 124) #4
  %conv.i = zext i16 %call.i to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %id1.i = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 13
  %12 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %id1.i, align 4
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read4.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %read4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read4.i, align 4
  %call5.i = tail call zeroext i16 %18(ptr noundef %ac97, i16 noundef zeroext 126) #4
  %conv6.i = zext i16 %call5.i to i32
  %19 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id1.i, align 4
  %or.i = or i32 %20, %conv6.i
  store i32 %or.i, ptr %id1.i, align 4
  %21 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i, label %snd_ac97_check_id.exit [
    i32 0, label %if.then.if.end5_crit_edge
    i32 -1, label %if.then.if.end5_crit_edge51
  ]

if.then.if.end5_crit_edge51:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

snd_ac97_check_id.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp13.not.i = icmp eq i32 %id, 0
  %and.i = and i32 %or.i, %id_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %id)
  %cmp16.not.i = icmp eq i32 %and.i, %id
  %or.cond.i = select i1 %cmp13.not.i, i1 true, i1 %cmp16.not.i
  br i1 %or.cond.i, label %snd_ac97_check_id.exit.cleanup_crit_edge, label %snd_ac97_check_id.exit.if.end5_crit_edge

snd_ac97_check_id.exit.if.end5_crit_edge:         ; preds = %snd_ac97_check_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

snd_ac97_check_id.exit.cleanup_crit_edge:         ; preds = %snd_ac97_check_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %snd_ac97_check_id.exit.if.end5_crit_edge, %if.then.if.end5_crit_edge, %if.then.if.end5_crit_edge51, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %23(ptr noundef %ac97) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %warm_reset10 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %warm_reset10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %warm_reset10, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %25(ptr noundef %ac97) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %read.i33 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %read.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i33, align 4
  %call.i34 = tail call zeroext i16 %31(ptr noundef %ac97, i16 noundef zeroext 124) #4
  %conv.i35 = zext i16 %call.i34 to i32
  %shl.i36 = shl nuw i32 %conv.i35, 16
  %id1.i37 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 13
  %32 = ptrtoint ptr %id1.i37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl.i36, ptr %id1.i37, align 4
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read4.i38 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %read4.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read4.i38, align 4
  %call5.i39 = tail call zeroext i16 %38(ptr noundef %ac97, i16 noundef zeroext 126) #4
  %conv6.i40 = zext i16 %call5.i39 to i32
  %39 = ptrtoint ptr %id1.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id1.i37, align 4
  %or.i41 = or i32 %40, %conv6.i40
  store i32 %or.i41, ptr %id1.i37, align 4
  %41 = zext i32 %or.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %or.i41, label %snd_ac97_check_id.exit48 [
    i32 0, label %if.end14.cleanup_crit_edge
    i32 -1, label %if.end14.cleanup_crit_edge52
  ]

if.end14.cleanup_crit_edge52:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_ac97_check_id.exit48:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp13.not.i42 = icmp eq i32 %id, 0
  %and.i43 = and i32 %or.i41, %id_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %id)
  %cmp16.not.i44 = icmp eq i32 %and.i43, %id
  %or.cond.i45 = select i1 %cmp13.not.i42, i1 true, i1 %cmp16.not.i44
  %spec.select = select i1 %or.cond.i45, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %snd_ac97_check_id.exit48, %if.end14.cleanup_crit_edge, %if.end14.cleanup_crit_edge52, %snd_ac97_check_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %snd_ac97_check_id.exit.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge52 ], [ %spec.select, %snd_ac97_check_id.exit48 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ac97_bus_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_bus_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @ac97_bus_type) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ac97_bus_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bus_unregister(ptr noundef nonnull @ac97_bus_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_snd_ac97_reset, !1, !"__ksymtab_snd_ac97_reset", i1 false, i1 false}
!1 = !{!"../sound/ac97_bus.c", i32 76, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/ac97_bus.c", i32 89, i32 11}
!4 = !{ptr @ac97_bus_type, !5, !"ac97_bus_type", i1 false, i1 false}
!5 = !{!"../sound/ac97_bus.c", i32 88, i32 17}
!6 = !{ptr @__initcall__kmod_ac97_bus__233_98_ac97_bus_init4, !7, !"__initcall__kmod_ac97_bus__233_98_ac97_bus_init4", i1 false, i1 false}
!7 = !{!"../sound/ac97_bus.c", i32 98, i32 1}
!8 = !{ptr @__exitcall_ac97_bus_exit, !9, !"__exitcall_ac97_bus_exit", i1 false, i1 false}
!9 = !{!"../sound/ac97_bus.c", i32 105, i32 1}
!10 = !{ptr @__ksymtab_ac97_bus_type, !11, !"__ksymtab_ac97_bus_type", i1 false, i1 false}
!11 = !{!"../sound/ac97_bus.c", i32 107, i32 1}
!12 = !{ptr @__UNIQUE_ID_file234, !13, !"__UNIQUE_ID_file234", i1 false, i1 false}
!13 = !{!"../sound/ac97_bus.c", i32 109, i32 1}
!14 = !{ptr @__UNIQUE_ID_license235, !13, !"__UNIQUE_ID_license235", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
