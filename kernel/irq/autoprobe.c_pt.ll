; ModuleID = '/llk/IR_all_yes/kernel/irq/autoprobe.c_pt.bc'
source_filename = "../kernel/irq/autoprobe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+probe_irq_on\22, \22a\22\09"
module asm "\09.weak\09__crc_probe_irq_on\09\09\09\09"
module asm "\09.long\09__crc_probe_irq_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_on\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+probe_irq_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_probe_irq_mask\09\09\09\09"
module asm "\09.long\09__crc_probe_irq_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+probe_irq_off\22, \22a\22\09"
module asm "\09.weak\09__crc_probe_irq_off\09\09\09\09"
module asm "\09.long\09__crc_probe_irq_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_probe_irq_off:\09\09\09\09\09"
module asm "\09.asciz \09\22probe_irq_off\22\09\09\09\09\09"
module asm "__kstrtabns_probe_irq_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@probing_active = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probing_active, i64 52), ptr getelementptr (i8, ptr @probing_active, i64 52) }, ptr @probing_active, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_probe_irq_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_on = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_on to i32), ptr @__kstrtab_probe_irq_on, ptr @__kstrtabns_probe_irq_on }, section "___ksymtab+probe_irq_on", align 4
@__kstrtab_probe_irq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_mask to i32), ptr @__kstrtab_probe_irq_mask, ptr @__kstrtabns_probe_irq_mask }, section "___ksymtab+probe_irq_mask", align 4
@__kstrtab_probe_irq_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_probe_irq_off = external dso_local constant [0 x i8], align 1
@__ksymtab_probe_irq_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @probe_irq_off to i32), ptr @__kstrtab_probe_irq_off, ptr @__kstrtabns_probe_irq_off }, section "___ksymtab+probe_irq_off", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"probing_active.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"probing_active\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"probing_active\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [26 x i8] c"../kernel/irq/autoprobe.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 21, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_probe_irq_mask, ptr @__ksymtab_probe_irq_off, ptr @__ksymtab_probe_irq_on, ptr @probing_active, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probing_active to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @probe_irq_on() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @async_synchronize_full() #2
  tail call void @mutex_lock_nested(ptr noundef nonnull @probing_active, i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  %sub = add i32 %0, -1
  %call = tail call ptr @irq_to_desc(i32 noundef %sub) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp112 = icmp sgt i32 %sub, -1
  br i1 %cmp112, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0115 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %sub, %entry.for.body_crit_edge ]
  %desc.0113 = phi ptr [ %call15, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.0113, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc.0113, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #2
  %action = getelementptr inbounds %struct.irq_desc, ptr %desc.0113, i32 0, i32 4
  %1 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %action, align 64
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc.0113, i32 0, i32 5
  %3 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then3:                                         ; preds = %land.lhs.true
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc.0113, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_set_type, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then3.if.end_crit_edge, label %if.then5

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc.0113, i32 0, i32 1
  %call10 = tail call i32 %8(ptr noundef %irq_data, i32 noundef 16) #2
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  %call11 = tail call i32 @irq_activate_and_startup(ptr noundef nonnull %desc.0113, i1 noundef zeroext false) #2
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.0115, -1
  %call15 = tail call ptr @irq_to_desc(i32 noundef %dec) #2
  %cmp = icmp sgt i32 %i.0115, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @msleep(i32 noundef 20) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %9 = load i32, ptr @nr_irqs, align 4
  %sub16 = add i32 %9, -1
  %call17 = tail call ptr @irq_to_desc(i32 noundef %sub16) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub16)
  %cmp19116 = icmp sgt i32 %sub16, -1
  br i1 %cmp19116, label %for.end.for.body20_crit_edge, label %for.end.for.end42_crit_edge

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end42

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.body20:                                       ; preds = %for.inc39.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %i.1118 = phi i32 [ %dec40, %for.inc39.for.body20_crit_edge ], [ %sub16, %for.end.for.body20_crit_edge ]
  %desc.1117 = phi ptr [ %call41, %for.inc39.for.body20_crit_edge ], [ %call17, %for.end.for.body20_crit_edge ]
  %tobool21.not = icmp eq ptr %desc.1117, null
  br i1 %tobool21.not, label %for.body20.for.inc39_crit_edge, label %if.else23

for.body20.for.inc39_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39

if.else23:                                        ; preds = %for.body20
  %lock24 = getelementptr inbounds %struct.irq_desc, ptr %desc.1117, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock24) #2
  %action25 = getelementptr inbounds %struct.irq_desc, ptr %desc.1117, i32 0, i32 4
  %10 = ptrtoint ptr %action25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %action25, align 64
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %land.lhs.true27, label %if.else23.if.end36_crit_edge

if.else23.if.end36_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

land.lhs.true27:                                  ; preds = %if.else23
  %status_use_accessors.i109 = getelementptr inbounds %struct.irq_desc, ptr %desc.1117, i32 0, i32 5
  %12 = ptrtoint ptr %status_use_accessors.i109 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_use_accessors.i109, align 4
  %and.i110 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool.not.i111, label %if.then29, label %land.lhs.true27.if.end36_crit_edge

land.lhs.true27.if.end36_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.then29:                                        ; preds = %land.lhs.true27
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc.1117, i32 0, i32 6
  %14 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or = or i32 %15, 129
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it, align 8
  %call30 = tail call i32 @irq_activate_and_startup(ptr noundef nonnull %desc.1117, i1 noundef zeroext false) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end36_crit_edge, label %if.then32

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  %16 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or34 = or i32 %17, 512
  store i32 %or34, ptr %core_internal_state__do_not_mess_with_it, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then29.if.end36_crit_edge, %land.lhs.true27.if.end36_crit_edge, %if.else23.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock24) #2
  br label %for.inc39

for.inc39:                                        ; preds = %if.end36, %for.body20.for.inc39_crit_edge
  %dec40 = add nsw i32 %i.1118, -1
  %call41 = tail call ptr @irq_to_desc(i32 noundef %dec40) #2
  %cmp19 = icmp sgt i32 %i.1118, 0
  br i1 %cmp19, label %for.inc39.for.body20_crit_edge, label %for.inc39.for.end42_crit_edge

for.inc39.for.end42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end42

for.inc39.for.body20_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body20

for.end42:                                        ; preds = %for.inc39.for.end42_crit_edge, %for.end.for.end42_crit_edge
  tail call void @msleep(i32 noundef 100) #2
  %call43 = tail call ptr @irq_to_desc(i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %18 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp45119 = icmp sgt i32 %18, 0
  br i1 %cmp45119, label %for.end42.for.body46_crit_edge, label %for.end42.for.end71_crit_edge

for.end42.for.end71_crit_edge:                    ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end71

for.end42.for.body46_crit_edge:                   ; preds = %for.end42
  br label %for.body46

for.body46:                                       ; preds = %for.inc69.for.body46_crit_edge, %for.end42.for.body46_crit_edge
  %i.2122 = phi i32 [ %inc, %for.inc69.for.body46_crit_edge ], [ 0, %for.end42.for.body46_crit_edge ]
  %mask.0121 = phi i32 [ %mask.2, %for.inc69.for.body46_crit_edge ], [ 0, %for.end42.for.body46_crit_edge ]
  %desc.2120 = phi ptr [ %call70, %for.inc69.for.body46_crit_edge ], [ %call43, %for.end42.for.body46_crit_edge ]
  %tobool47.not = icmp eq ptr %desc.2120, null
  br i1 %tobool47.not, label %for.body46.for.inc69_crit_edge, label %if.else49

for.body46.for.inc69_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc69

if.else49:                                        ; preds = %for.body46
  %lock50 = getelementptr inbounds %struct.irq_desc, ptr %desc.2120, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock50) #2
  %core_internal_state__do_not_mess_with_it51 = getelementptr inbounds %struct.irq_desc, ptr %desc.2120, i32 0, i32 6
  %19 = ptrtoint ptr %core_internal_state__do_not_mess_with_it51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_internal_state__do_not_mess_with_it51, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.else49.if.end66_crit_edge, label %if.then53

if.else49.if.end66_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end66

if.then53:                                        ; preds = %if.else49
  %and55 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #4
  %and59 = and i32 %20, -2
  %21 = ptrtoint ptr %core_internal_state__do_not_mess_with_it51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and59, ptr %core_internal_state__do_not_mess_with_it51, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %desc.2120) #2
  br label %if.end66

if.else60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.2122)
  %cmp61 = icmp ult i32 %i.2122, 32
  br i1 %cmp61, label %if.then62, label %if.else60.if.end66_crit_edge

if.else60.if.end66_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end66

if.then62:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #4
  %shl = shl nuw i32 1, %i.2122
  %or63 = or i32 %shl, %mask.0121
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.else60.if.end66_crit_edge, %if.then57, %if.else49.if.end66_crit_edge
  %mask.1 = phi i32 [ %or63, %if.then62 ], [ %mask.0121, %if.else60.if.end66_crit_edge ], [ %mask.0121, %if.then57 ], [ %mask.0121, %if.else49.if.end66_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock50) #2
  br label %for.inc69

for.inc69:                                        ; preds = %if.end66, %for.body46.for.inc69_crit_edge
  %mask.2 = phi i32 [ %mask.1, %if.end66 ], [ %mask.0121, %for.body46.for.inc69_crit_edge ]
  %inc = add nuw nsw i32 %i.2122, 1
  %call70 = tail call ptr @irq_to_desc(i32 noundef %inc) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %22 = load i32, ptr @nr_irqs, align 4
  %cmp45 = icmp slt i32 %inc, %22
  br i1 %cmp45, label %for.inc69.for.body46_crit_edge, label %for.inc69.for.end71_crit_edge

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end71

for.inc69.for.body46_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body46

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %for.end42.for.end71_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %for.end42.for.end71_crit_edge ], [ %mask.2, %for.inc69.for.end71_crit_edge ]
  ret i32 %mask.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_activate_and_startup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @probe_irq_mask(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp27 = icmp sgt i32 %0, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %desc.029 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %mask.028 = phi i32 [ %mask.3, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.029, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc.029, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #2
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc.029, i32 0, i32 6
  %1 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else.if.end10_crit_edge, label %if.then2

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.030)
  %cmp3 = icmp ult i32 %i.030, 16
  %and5 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %cmp3, i1 %tobool6.not, i1 false
  %shl = shl nuw i32 1, %i.030
  %or = select i1 %or.cond, i32 %shl, i32 0
  %mask.1 = or i32 %or, %mask.028
  %and9 = and i32 %2, -2
  %3 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and9, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %desc.029) #2
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.else.if.end10_crit_edge
  %mask.2 = phi i32 [ %mask.1, %if.then2 ], [ %mask.028, %if.else.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %mask.3 = phi i32 [ %mask.2, %if.end10 ], [ %mask.028, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.030, 1
  %call13 = tail call ptr @irq_to_desc(i32 noundef %inc) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %4 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.3, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  %and14 = and i32 %mask.0.lcssa, %val
  ret i32 %and14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @probe_irq_off(i32 %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef 0) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp34 = icmp sgt i32 %0, 0
  br i1 %cmp34, label %entry.for.body_crit_edge, label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  br label %7

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %desc.040 = phi ptr [ %call16, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %nr_of_irqs.039 = phi i32 [ %nr_of_irqs.3, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %irq_found.038 = phi i32 [ %irq_found.4, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc15, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.040, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc.040, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #2
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc.040, i32 0, i32 6
  %1 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else.if.end12_crit_edge, label %if.then2

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %and4 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_of_irqs.039)
  %tobool7.not = icmp eq i32 %nr_of_irqs.039, 0
  %3 = select i1 %tobool5.not, i1 %tobool7.not, i1 false
  %irq_found.2 = select i1 %3, i32 %i.035, i32 %irq_found.038
  %and4.lobit = lshr exact i32 %and4, 7
  %4 = xor i32 %and4.lobit, 1
  %nr_of_irqs.1 = add i32 %4, %nr_of_irqs.039
  %and11 = and i32 %2, -2
  %5 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and11, ptr %core_internal_state__do_not_mess_with_it, align 8
  tail call void @irq_shutdown_and_deactivate(ptr noundef nonnull %desc.040) #2
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.else.if.end12_crit_edge
  %irq_found.3 = phi i32 [ %irq_found.2, %if.then2 ], [ %irq_found.038, %if.else.if.end12_crit_edge ]
  %nr_of_irqs.2 = phi i32 [ %nr_of_irqs.1, %if.then2 ], [ %nr_of_irqs.039, %if.else.if.end12_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %irq_found.4 = phi i32 [ %irq_found.3, %if.end12 ], [ %irq_found.038, %for.body.for.inc_crit_edge ]
  %nr_of_irqs.3 = phi i32 [ %nr_of_irqs.2, %if.end12 ], [ %nr_of_irqs.039, %for.body.for.inc_crit_edge ]
  %inc15 = add nuw nsw i32 %i.035, 1
  %call16 = tail call ptr @irq_to_desc(i32 noundef %inc15) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %6 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %inc15, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mutex_unlock(ptr noundef nonnull @probing_active) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_of_irqs.3)
  %cmp17 = icmp sgt i32 %nr_of_irqs.3, 1
  %sub = sub i32 0, %irq_found.4
  %spec.select = select i1 %cmp17, i32 %sub, i32 %irq_found.4
  br label %7

7:                                                ; preds = %for.end, %for.end.thread
  %8 = phi i32 [ 0, %for.end.thread ], [ %spec.select, %for.end ]
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_probe_irq_on, !1, !"__ksymtab_probe_irq_on", i1 false, i1 false}
!1 = !{!"../kernel/irq/autoprobe.c", i32 103, i32 1}
!2 = !{ptr @__ksymtab_probe_irq_mask, !3, !"__ksymtab_probe_irq_mask", i1 false, i1 false}
!3 = !{!"../kernel/irq/autoprobe.c", i32 138, i32 1}
!4 = !{ptr @__ksymtab_probe_irq_off, !5, !"__ksymtab_probe_irq_off", i1 false, i1 false}
!5 = !{!"../kernel/irq/autoprobe.c", i32 183, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/irq/autoprobe.c", i32 21, i32 8}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @probing_active, !7, !"probing_active", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
