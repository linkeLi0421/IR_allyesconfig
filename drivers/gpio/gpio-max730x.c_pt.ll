; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-max730x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-max730x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__max730x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc___max730x_probe\09\09\09\09"
module asm "\09.long\09__crc___max730x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___max730x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22__max730x_probe\22\09\09\09\09\09"
module asm "__kstrtabns___max730x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__max730x_remove\22, \22a\22\09"
module asm "\09.weak\09__crc___max730x_remove\09\09\09\09"
module asm "\09.long\09__crc___max730x_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___max730x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22__max730x_remove\22\09\09\09\09\09"
module asm "__kstrtabns___max730x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.max7301 = type { %struct.mutex, [8 x i8], i32, i32, %struct.gpio_chip, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.max7301_platform_data = type { i32, i32 }

@__max730x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->lock\00", [22 x i8] zeroinitializer }, align 32
@__max730x_probe.lock_key = internal global %struct.lock_class_key zeroinitializer, align 4
@__max730x_probe.request_key = internal global %struct.lock_class_key zeroinitializer, align 4
@__kstrtab___max730x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns___max730x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab___max730x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__max730x_probe to i32), ptr @__kstrtab___max730x_probe, ptr @__kstrtabns___max730x_probe }, section "___ksymtab_gpl+__max730x_probe", align 4
@__kstrtab___max730x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns___max730x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab___max730x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__max730x_remove to i32), ptr @__kstrtab___max730x_remove, ptr @__kstrtabns___max730x_remove }, section "___ksymtab_gpl+__max730x_remove", align 4
@__UNIQUE_ID_author223 = internal constant [50 x i8] c"gpio_max730x.author=Juergen Beisert, Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file224 = internal constant [44 x i8] c"gpio_max730x.file=drivers/gpio/gpio-max730x\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [28 x i8] c"gpio_max730x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [63 x i8] c"gpio_max730x.description=MAX730x GPIO-Expanders, generic parts\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../drivers/gpio/gpio-max730x.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 168, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__ksymtab___max730x_probe, ptr @__ksymtab___max730x_remove, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__max730x_probe(ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr %struct.max7301, ptr %ts, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  tail call void @__mutex_init(ptr noundef %ts, ptr noundef nonnull @.str, ptr noundef nonnull @__max730x_probe.__key) #2
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ts, ptr %driver_data.i, align 4
  %write = getelementptr %struct.max7301, ptr %ts, i32 0, i32 6
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %call2 = tail call i32 %6(ptr noundef %1, i32 noundef 4, i32 noundef 1) #2
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %input_pullup_active = getelementptr inbounds %struct.max7301_platform_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %input_pullup_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input_pullup_active, align 4
  %input_pullup_active3 = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 3
  %9 = ptrtoint ptr %input_pullup_active3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %input_pullup_active3, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %11, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 19
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %chip7 = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4
  %18 = ptrtoint ptr %chip7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %chip7, align 4
  %direction_input = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @max7301_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 10
  %20 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @max7301_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 9
  %21 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @max7301_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 12
  %22 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @max7301_set, ptr %set, align 4
  %ngpio = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 20
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 28, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 23
  %24 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.max7301, ptr %ts, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner, align 4
  %input_pullup_active.i = getelementptr %struct.max7301, ptr %ts, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond16.3.for.body_crit_edge, %if.end
  %i.079 = phi i32 [ 1, %if.end ], [ %inc28, %for.cond16.3.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max7301, ptr %ts, i32 0, i32 1, i32 %i.079
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -86, ptr %arrayidx, align 1
  %sub = shl i32 %i.079, 2
  %28 = ptrtoint ptr %input_pullup_active.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input_pullup_active.i, align 4
  %shl1.i = shl nuw i32 1, %sub
  %and2.i = and i32 %29, %shl1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 3
  %shr.i = and i32 %i.079, 1073741823
  %arrayidx.i = getelementptr %struct.max7301, ptr %ts, i32 0, i32 1, i32 %shr.i
  tail call void @mutex_lock_nested(ptr noundef %ts, i32 noundef 0) #2
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %32 = and i8 %31, -4
  %and6.i = zext i8 %32 to i32
  %or.i = or i32 %..i, %and6.i
  %conv10.i = trunc i32 %or.i to i8
  store i8 %conv10.i, ptr %arrayidx.i, align 1
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  %add12.i = add nuw nsw i32 %shr.i, 8
  %call.i = tail call i32 %34(ptr noundef %36, i32 noundef %add12.i, i32 noundef %or.i) #2
  tail call void @mutex_unlock(ptr noundef %ts) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %for.cond16, label %for.body.exit_destroy_crit_edge

for.body.exit_destroy_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit_destroy

for.cond16:                                       ; preds = %for.body
  %add.i.1 = or i32 %sub, 1
  %37 = ptrtoint ptr %input_pullup_active.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %input_pullup_active.i, align 4
  %shl1.i.1 = shl nuw i32 1, %add.i.1
  %and2.i.1 = and i32 %38, %shl1.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.1)
  %tobool.not.i.1 = icmp eq i32 %and2.i.1, 0
  %..i.1 = select i1 %tobool.not.i.1, i32 8, i32 12
  %shr.i.1 = and i32 %i.079, 1073741823
  %arrayidx.i.1 = getelementptr %struct.max7301, ptr %ts, i32 0, i32 1, i32 %shr.i.1
  tail call void @mutex_lock_nested(ptr noundef %ts, i32 noundef 0) #2
  %39 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.1, align 1
  %41 = and i8 %40, -13
  %and6.i.1 = zext i8 %41 to i32
  %or.i.1 = or i32 %..i.1, %and6.i.1
  %conv10.i.1 = trunc i32 %or.i.1 to i8
  store i8 %conv10.i.1, ptr %arrayidx.i.1, align 1
  %42 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write, align 4
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  %add12.i.1 = add nuw nsw i32 %shr.i.1, 8
  %call.i.1 = tail call i32 %43(ptr noundef %45, i32 noundef %add12.i.1, i32 noundef %or.i.1) #2
  tail call void @mutex_unlock(ptr noundef %ts) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool21.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool21.not.1, label %for.cond16.1, label %for.cond16.exit_destroy_crit_edge

for.cond16.exit_destroy_crit_edge:                ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit_destroy

for.cond16.1:                                     ; preds = %for.cond16
  %add.i.2 = or i32 %sub, 2
  %46 = ptrtoint ptr %input_pullup_active.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %input_pullup_active.i, align 4
  %shl1.i.2 = shl nuw i32 1, %add.i.2
  %and2.i.2 = and i32 %47, %shl1.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.2)
  %tobool.not.i.2 = icmp eq i32 %and2.i.2, 0
  %..i.2 = select i1 %tobool.not.i.2, i32 32, i32 48
  %shr.i.2 = and i32 %i.079, 1073741823
  %arrayidx.i.2 = getelementptr %struct.max7301, ptr %ts, i32 0, i32 1, i32 %shr.i.2
  tail call void @mutex_lock_nested(ptr noundef %ts, i32 noundef 0) #2
  %48 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.2, align 1
  %50 = and i8 %49, -49
  %and6.i.2 = zext i8 %50 to i32
  %or.i.2 = or i32 %..i.2, %and6.i.2
  %conv10.i.2 = trunc i32 %or.i.2 to i8
  store i8 %conv10.i.2, ptr %arrayidx.i.2, align 1
  %51 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write, align 4
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  %add12.i.2 = add nuw nsw i32 %shr.i.2, 8
  %call.i.2 = tail call i32 %52(ptr noundef %54, i32 noundef %add12.i.2, i32 noundef %or.i.2) #2
  tail call void @mutex_unlock(ptr noundef %ts) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool21.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool21.not.2, label %for.cond16.2, label %for.cond16.1.exit_destroy_crit_edge

for.cond16.1.exit_destroy_crit_edge:              ; preds = %for.cond16.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit_destroy

for.cond16.2:                                     ; preds = %for.cond16.1
  %add.i.3 = or i32 %sub, 3
  %55 = ptrtoint ptr %input_pullup_active.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %input_pullup_active.i, align 4
  %shl1.i.3 = shl nuw i32 1, %add.i.3
  %and2.i.3 = and i32 %56, %shl1.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.3)
  %tobool.not.i.3 = icmp eq i32 %and2.i.3, 0
  %..i.3 = select i1 %tobool.not.i.3, i32 128, i32 192
  %shr.i.3 = and i32 %i.079, 1073741823
  %arrayidx.i.3 = getelementptr %struct.max7301, ptr %ts, i32 0, i32 1, i32 %shr.i.3
  tail call void @mutex_lock_nested(ptr noundef %ts, i32 noundef 0) #2
  %57 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.3, align 1
  %59 = and i8 %58, 63
  %and6.i.3 = zext i8 %59 to i32
  %or.i.3 = or i32 %..i.3, %and6.i.3
  %conv10.i.3 = trunc i32 %or.i.3 to i8
  store i8 %conv10.i.3, ptr %arrayidx.i.3, align 1
  %60 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write, align 4
  %62 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1, align 4
  %add12.i.3 = add nuw nsw i32 %shr.i.3, 8
  %call.i.3 = tail call i32 %61(ptr noundef %63, i32 noundef %add12.i.3, i32 noundef %or.i.3) #2
  tail call void @mutex_unlock(ptr noundef %ts) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool21.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool21.not.3, label %for.cond16.3, label %for.cond16.2.exit_destroy_crit_edge

for.cond16.2.exit_destroy_crit_edge:              ; preds = %for.cond16.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit_destroy

for.cond16.3:                                     ; preds = %for.cond16.2
  %inc28 = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc28, 8
  br i1 %exitcond.not, label %for.end29, label %for.cond16.3.for.body_crit_edge

for.cond16.3.for.body_crit_edge:                  ; preds = %for.cond16.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end29:                                        ; preds = %for.cond16.3
  %call31 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip7, ptr noundef %ts, ptr noundef nonnull @__max730x_probe.lock_key, ptr noundef nonnull @__max730x_probe.request_key) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.end29.cleanup36_crit_edge, label %for.end29.exit_destroy_crit_edge

for.end29.exit_destroy_crit_edge:                 ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %exit_destroy

for.end29.cleanup36_crit_edge:                    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup36

exit_destroy:                                     ; preds = %for.end29.exit_destroy_crit_edge, %for.cond16.2.exit_destroy_crit_edge, %for.cond16.1.exit_destroy_crit_edge, %for.cond16.exit_destroy_crit_edge, %for.body.exit_destroy_crit_edge
  %ret.3 = phi i32 [ %call31, %for.end29.exit_destroy_crit_edge ], [ %call.i.3, %for.cond16.2.exit_destroy_crit_edge ], [ %call.i.2, %for.cond16.1.exit_destroy_crit_edge ], [ %call.i.1, %for.cond16.exit_destroy_crit_edge ], [ %call.i, %for.body.exit_destroy_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %ts) #2
  br label %cleanup36

cleanup36:                                        ; preds = %exit_destroy, %for.end29.cleanup36_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit_destroy ], [ 0, %for.end29.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7301_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 4
  %input_pullup_active = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %input_pullup_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_pullup_active, align 4
  %shl1 = shl nuw i32 1, %add
  %and2 = and i32 %1, %shl1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  %add.ptr = getelementptr i8, ptr %chip, i32 -108
  %port_config = getelementptr i8, ptr %chip, i32 -16
  %shr = lshr i32 %add, 2
  %arrayidx = getelementptr [8 x i8], ptr %port_config, i32 0, i32 %shr
  %2 = shl i32 %offset, 1
  %conv = and i32 %2, 6
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %shl5 = shl nuw nsw i32 3, %conv
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %conv3, %neg
  %shl9 = shl nuw nsw i32 %., %conv
  %or = or i32 %and6, %shl9
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, ptr %arrayidx, align 1
  %write = getelementptr i8, ptr %chip, i32 352
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %dev = getelementptr i8, ptr %chip, i32 348
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %add12 = add nuw nsw i32 %shr, 8
  %call = tail call i32 %6(ptr noundef %8, i32 noundef %add12, i32 noundef %or) #2
  tail call void @mutex_unlock(ptr noundef %add.ptr) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7301_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %add = add i32 %offset, 4
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #2
  %shr = lshr i32 %add, 2
  %arrayidx = getelementptr %struct.max7301, ptr %call, i32 0, i32 1, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = shl i32 %offset, 1
  %shl = and i32 %and, 6
  %shr1 = lshr i32 %conv, %shl
  %and2 = and i32 %shr1, 3
  %2 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge20
  ]

entry.sw.bb6_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb6

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %out_level = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %out_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out_level, align 4
  %5 = lshr i32 %4, %add
  %6 = and i32 %5, 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge20
  %read = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %dev = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %add7 = add i32 %offset, 36
  %call8 = tail call i32 %8(ptr noundef %10, i32 noundef %add7) #2
  %and9 = and i32 %call8, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  %level.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %and9, %sw.bb6 ], [ %6, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %call) #2
  ret i32 %level.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max7301_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -108
  %add = add i32 %offset, 4
  %0 = shl i32 %offset, 1
  %conv = and i32 %0, 6
  %port_config = getelementptr i8, ptr %chip, i32 -16
  %shr = lshr i32 %add, 2
  %arrayidx = getelementptr [8 x i8], ptr %port_config, i32 0, i32 %shr
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %2 to i32
  %shl3 = shl nuw nsw i32 3, %conv
  %neg = xor i32 %shl3, -1
  %and4 = and i32 %conv1, %neg
  %shl6 = shl nuw nsw i32 1, %conv
  %or = or i32 %and4, %shl6
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %add
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %out_level.i = getelementptr i8, ptr %chip, i32 -8
  %3 = ptrtoint ptr %out_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out_level.i, align 4
  %or.i = or i32 %4, %shl1.i
  store i32 %or.i, ptr %out_level.i, align 4
  br label %__max7301_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %neg.i = xor i32 %shl1.i, -1
  %out_level2.i = getelementptr i8, ptr %chip, i32 -8
  %5 = ptrtoint ptr %out_level2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_level2.i, align 4
  %and.i = and i32 %6, %neg.i
  store i32 %and.i, ptr %out_level2.i, align 4
  br label %__max7301_set.exit

__max7301_set.exit:                               ; preds = %if.else.i, %if.then.i
  %.sink15.i = phi i32 [ 0, %if.else.i ], [ 1, %if.then.i ]
  %write3.i = getelementptr i8, ptr %chip, i32 352
  %7 = ptrtoint ptr %write3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write3.i, align 4
  %dev4.i = getelementptr i8, ptr %chip, i32 348
  %9 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4.i, align 4
  %add5.i = add i32 %offset, 36
  %call6.i = tail call i32 %8(ptr noundef %10, i32 noundef %add5.i, i32 noundef %.sink15.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.then, label %__max7301_set.exit.if.end_crit_edge

__max7301_set.exit.if.end_crit_edge:              ; preds = %__max7301_set.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %__max7301_set.exit
  call void @__sanitizer_cov_trace_pc() #4
  %11 = ptrtoint ptr %write3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write3.i, align 4
  %13 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4.i, align 4
  %add9 = add nuw nsw i32 %shr, 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %16 to i32
  %call11 = tail call i32 %12(ptr noundef %14, i32 noundef %add9, i32 noundef %conv10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %__max7301_set.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call6.i, %__max7301_set.exit.if.end_crit_edge ], [ %call11, %if.then ]
  tail call void @mutex_unlock(ptr noundef %add.ptr) #2
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max7301_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #2
  %add = add i32 %offset, 4
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %add
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %out_level.i = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %out_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_level.i, align 4
  %or.i = or i32 %1, %shl1.i
  store i32 %or.i, ptr %out_level.i, align 4
  br label %__max7301_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %neg.i = xor i32 %shl1.i, -1
  %out_level2.i = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %out_level2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_level2.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %out_level2.i, align 4
  br label %__max7301_set.exit

__max7301_set.exit:                               ; preds = %if.else.i, %if.then.i
  %.sink15.i = phi i32 [ 0, %if.else.i ], [ 1, %if.then.i ]
  %write3.i = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %write3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write3.i, align 4
  %dev4.i = getelementptr inbounds %struct.max7301, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4.i, align 4
  %add5.i = add i32 %offset, 36
  %call6.i = tail call i32 %5(ptr noundef %7, i32 noundef %add5.i, i32 noundef %.sink15.i) #2
  tail call void @mutex_unlock(ptr noundef %call) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__max730x_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %write = getelementptr inbounds %struct.max7301, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %call1 = tail call i32 %3(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #2
  %chip = getelementptr inbounds %struct.max7301, ptr %1, i32 0, i32 4
  tail call void @gpiochip_remove(ptr noundef %chip) #2
  tail call void @mutex_destroy(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__max730x_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-max730x.c", i32 168, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__max730x_probe.lock_key, !4, !"lock_key", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-max730x.c", i32 213, i32 8}
!5 = !{ptr @__max730x_probe.request_key, !4, !"request_key", i1 false, i1 false}
!6 = !{ptr @__ksymtab___max730x_probe, !7, !"__ksymtab___max730x_probe", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-max730x.c", i32 221, i32 1}
!8 = !{ptr @__ksymtab___max730x_remove, !9, !"__ksymtab___max730x_remove", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-max730x.c", i32 232, i32 1}
!10 = !{ptr @__UNIQUE_ID_author223, !11, !"__UNIQUE_ID_author223", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-max730x.c", i32 234, i32 1}
!12 = !{ptr @__UNIQUE_ID_file224, !13, !"__UNIQUE_ID_file224", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-max730x.c", i32 235, i32 1}
!14 = !{ptr @__UNIQUE_ID_license225, !13, !"__UNIQUE_ID_license225", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description226, !16, !"__UNIQUE_ID_description226", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-max730x.c", i32 236, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
