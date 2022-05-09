; ModuleID = '/llk/IR_all_yes/virt/lib/irqbypass.c_pt.bc'
source_filename = "../virt/lib/irqbypass.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+irq_bypass_register_producer\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_bypass_register_producer\09\09\09\09"
module asm "\09.long\09__crc_irq_bypass_register_producer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_bypass_register_producer:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_bypass_register_producer\22\09\09\09\09\09"
module asm "__kstrtabns_irq_bypass_register_producer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_bypass_unregister_producer\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_bypass_unregister_producer\09\09\09\09"
module asm "\09.long\09__crc_irq_bypass_unregister_producer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_bypass_unregister_producer:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_bypass_unregister_producer\22\09\09\09\09\09"
module asm "__kstrtabns_irq_bypass_unregister_producer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_bypass_register_consumer\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_bypass_register_consumer\09\09\09\09"
module asm "\09.long\09__crc_irq_bypass_register_consumer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_bypass_register_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_bypass_register_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_irq_bypass_register_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_bypass_unregister_consumer\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_bypass_unregister_consumer\09\09\09\09"
module asm "\09.long\09__crc_irq_bypass_unregister_consumer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_bypass_unregister_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_bypass_unregister_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_irq_bypass_unregister_consumer:\09\09\09\09\09"
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
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_bypass_consumer = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file106 = internal constant [34 x i8] c"irqbypass.file=virt/lib/irqbypass\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [25 x i8] c"irqbypass.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [56 x i8] c"irqbypass.description=IRQ bypass manager utility module\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virt/lib/irqbypass.c\00", [43 x i8] zeroinitializer }, align 32
@lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lock, i64 52), ptr getelementptr (i8, ptr @lock, i64 52) }, ptr @lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@producers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @producers, ptr @producers }, [24 x i8] zeroinitializer }, align 32
@consumers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @consumers, ptr @consumers }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_irq_bypass_register_producer = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_bypass_register_producer = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_bypass_register_producer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_bypass_register_producer to i32), ptr @__kstrtab_irq_bypass_register_producer, ptr @__kstrtabns_irq_bypass_register_producer }, section "___ksymtab_gpl+irq_bypass_register_producer", align 4
@__kstrtab_irq_bypass_unregister_producer = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_bypass_unregister_producer = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_bypass_unregister_producer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_bypass_unregister_producer to i32), ptr @__kstrtab_irq_bypass_unregister_producer, ptr @__kstrtabns_irq_bypass_unregister_producer }, section "___ksymtab_gpl+irq_bypass_unregister_producer", align 4
@__kstrtab_irq_bypass_register_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_bypass_register_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_bypass_register_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_bypass_register_consumer to i32), ptr @__kstrtab_irq_bypass_register_consumer, ptr @__kstrtabns_irq_bypass_register_consumer }, section "___ksymtab_gpl+irq_bypass_register_consumer", align 4
@__kstrtab_irq_bypass_unregister_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_bypass_unregister_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_bypass_unregister_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_bypass_unregister_consumer to i32), ptr @__kstrtab_irq_bypass_unregister_consumer, ptr @__kstrtabns_irq_bypass_unregister_consumer }, section "___ksymtab_gpl+irq_bypass_unregister_consumer", align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lock.wait_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 93, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"producers\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 25, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"consumers\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 26, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [24 x i8] c"../virt/lib/irqbypass.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 27, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_irq_bypass_register_consumer, ptr @__ksymtab_irq_bypass_register_producer, ptr @__ksymtab_irq_bypass_unregister_consumer, ptr @__ksymtab_irq_bypass_unregister_producer, ptr @.str, ptr @lock, ptr @producers, ptr @consumers, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @producers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_bypass_register_producer(ptr noundef %producer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 1
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %token, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 93) #2
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #2
  br i1 %call, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end5:                                          ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %tmp.0.in = phi ptr [ @producers, %if.end5 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @producers
  br i1 %cmp.not, label %for.cond.for.cond19_crit_edge, label %for.body

for.cond.for.cond19_crit_edge:                    ; preds = %for.cond
  br label %for.cond19

for.body:                                         ; preds = %for.cond
  %token7 = getelementptr inbounds %struct.irq_bypass_producer, ptr %tmp.0, i32 0, i32 1
  %3 = ptrtoint ptr %token7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %token7, align 4
  %5 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %token, align 4
  %cmp9 = icmp eq ptr %4, %6
  br i1 %cmp9, label %for.body.out_err_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_err

for.cond19:                                       ; preds = %for.body23.for.cond19_crit_edge, %for.cond.for.cond19_crit_edge
  %consumer.0.in = phi ptr [ %consumer.0, %for.body23.for.cond19_crit_edge ], [ @consumers, %for.cond.for.cond19_crit_edge ]
  %7 = ptrtoint ptr %consumer.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %consumer.0 = load ptr, ptr %consumer.0.in, align 4
  %cmp21.not = icmp eq ptr %consumer.0, @consumers
  br i1 %cmp21.not, label %for.cond19.for.end39_crit_edge, label %for.body23

for.cond19.for.end39_crit_edge:                   ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end39

for.body23:                                       ; preds = %for.cond19
  %token24 = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 1
  %8 = ptrtoint ptr %token24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %token24, align 4
  %10 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %token, align 4
  %cmp26 = icmp eq ptr %9, %11
  br i1 %cmp26, label %if.then27, label %for.body23.for.cond19_crit_edge

for.body23.for.cond19_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond19

if.then27:                                        ; preds = %for.body23
  %stop.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 5
  %12 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then27.if.end.i_crit_edge, label %if.then.i

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %13(ptr noundef %producer) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then27.if.end.i_crit_edge
  %stop2.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 4
  %14 = ptrtoint ptr %stop2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop2.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %15(ptr noundef %consumer.0) #2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %add_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 3
  %16 = ptrtoint ptr %add_consumer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add_consumer.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then12.i_crit_edge, label %if.end10.i

if.end6.i.if.then12.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then12.i

if.end10.i:                                       ; preds = %if.end6.i
  %call.i = tail call i32 %17(ptr noundef %producer, ptr noundef %consumer.0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.then12.i_crit_edge, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

if.end10.i.if.then12.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i.if.then12.i_crit_edge, %if.end6.i.if.then12.i_crit_edge
  %add_producer.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 2
  %18 = ptrtoint ptr %add_producer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add_producer.i, align 4
  %call13.i = tail call i32 %19(ptr noundef %consumer.0, ptr noundef %producer) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.then12.i
  %del_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 4
  %20 = ptrtoint ptr %del_consumer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %del_consumer.i, align 4
  %tobool15.not.i = icmp eq ptr %21, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %if.then16.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %21(ptr noundef %producer, ptr noundef %consumer.0) #2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true.i.if.end19.i_crit_edge, %if.then12.i.if.end19.i_crit_edge, %if.end10.i.if.end19.i_crit_edge
  %ret.1.i = phi i32 [ %call.i, %if.end10.i.if.end19.i_crit_edge ], [ %call13.i, %if.then16.i ], [ %call13.i, %land.lhs.true.i.if.end19.i_crit_edge ], [ 0, %if.then12.i.if.end19.i_crit_edge ]
  %start.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 5
  %22 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start.i, align 4
  %tobool20.not.i = icmp eq ptr %23, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %23(ptr noundef %consumer.0) #2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %start24.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 6
  %24 = ptrtoint ptr %start24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %start24.i, align 4
  %tobool25.not.i = icmp eq ptr %25, null
  br i1 %tobool25.not.i, label %if.end23.i.__connect.exit_crit_edge, label %if.then26.i

if.end23.i.__connect.exit_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %__connect.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %25(ptr noundef %producer) #2
  br label %__connect.exit

__connect.exit:                                   ; preds = %if.then26.i, %if.end23.i.__connect.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool29.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool29.not, label %__connect.exit.for.end39_crit_edge, label %__connect.exit.out_err_crit_edge

__connect.exit.out_err_crit_edge:                 ; preds = %__connect.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_err

__connect.exit.for.end39_crit_edge:               ; preds = %__connect.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end39

for.end39:                                        ; preds = %__connect.exit.for.end39_crit_edge, %for.cond19.for.end39_crit_edge
  %26 = load ptr, ptr @producers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %producer, ptr noundef nonnull @producers, ptr noundef %26) #2
  br i1 %call.i.i, label %if.end.i.i, label %for.end39.list_add.exit_crit_edge

for.end39.list_add.exit_crit_edge:                ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %producer, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %producer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %producer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %producer, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @producers, ptr %prev3.i.i, align 4
  store volatile ptr %producer, ptr @producers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end39.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  br label %cleanup

out_err:                                          ; preds = %__connect.exit.out_err_crit_edge, %for.body.out_err_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %__connect.exit.out_err_crit_edge ], [ -16, %for.body.out_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  tail call void @module_put(ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %out_err, %list_add.exit, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ 0, %list_add.exit ], [ -22, %entry.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_bypass_unregister_producer(ptr noundef %producer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 1
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %token, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 143) #2
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #2
  br i1 %call, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end5:                                          ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %tmp.0.in = phi ptr [ @producers, %if.end5 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @producers
  br i1 %cmp.not, label %for.cond.for.end36_crit_edge, label %for.body

for.cond.for.end36_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end36

for.body:                                         ; preds = %for.cond
  %token7 = getelementptr inbounds %struct.irq_bypass_producer, ptr %tmp.0, i32 0, i32 1
  %3 = ptrtoint ptr %token7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %token7, align 4
  %5 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %token, align 4
  %cmp9.not = icmp eq ptr %4, %6
  br i1 %cmp9.not, label %for.body.for.cond15_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.body.for.cond15_crit_edge:                    ; preds = %for.body
  br label %for.cond15

for.cond15:                                       ; preds = %for.body19.for.cond15_crit_edge, %for.body.for.cond15_crit_edge
  %consumer.0.in = phi ptr [ %consumer.0, %for.body19.for.cond15_crit_edge ], [ @consumers, %for.body.for.cond15_crit_edge ]
  %7 = ptrtoint ptr %consumer.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %consumer.0 = load ptr, ptr %consumer.0.in, align 4
  %cmp17.not = icmp eq ptr %consumer.0, @consumers
  br i1 %cmp17.not, label %for.cond15.for.end_crit_edge, label %for.body19

for.cond15.for.end_crit_edge:                     ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body19:                                       ; preds = %for.cond15
  %token20 = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 1
  %8 = ptrtoint ptr %token20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %token20, align 4
  %cmp22 = icmp eq ptr %9, %4
  br i1 %cmp22, label %if.then23, label %for.body19.for.cond15_crit_edge

for.body19.for.cond15_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond15

if.then23:                                        ; preds = %for.body19
  %stop.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 5
  %10 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then23.if.end.i_crit_edge, label %if.then.i

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %11(ptr noundef %producer) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then23.if.end.i_crit_edge
  %stop2.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 4
  %12 = ptrtoint ptr %stop2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop2.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %13(ptr noundef %consumer.0) #2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %del_producer.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 3
  %14 = ptrtoint ptr %del_producer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %del_producer.i, align 4
  tail call void %15(ptr noundef %consumer.0, ptr noundef %producer) #2
  %del_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 4
  %16 = ptrtoint ptr %del_consumer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %del_consumer.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %17(ptr noundef %producer, ptr noundef %consumer.0) #2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %start.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer.0, i32 0, i32 5
  %18 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start.i, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then12.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %19(ptr noundef %consumer.0) #2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %start15.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer, i32 0, i32 6
  %20 = ptrtoint ptr %start15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start15.i, align 4
  %tobool16.not.i = icmp eq ptr %21, null
  br i1 %tobool16.not.i, label %if.end14.i.for.end_crit_edge, label %if.then17.i

if.end14.i.for.end_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %21(ptr noundef %producer) #2
  br label %for.end

for.end:                                          ; preds = %if.then17.i, %if.end14.i.for.end_crit_edge, %for.cond15.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %producer) #2
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %producer, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %producer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %28 = ptrtoint ptr %producer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %producer, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %producer, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @module_put(ptr noundef null) #2
  br label %for.end36

for.end36:                                        ; preds = %list_del.exit, %for.cond.for.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  tail call void @module_put(ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_bypass_register_consumer(ptr noundef %consumer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 1
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %token, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add_producer = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 2
  %2 = ptrtoint ptr %add_producer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add_producer, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %del_producer = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 3
  %4 = ptrtoint ptr %del_producer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_producer, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %do.body

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 189) #2
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #2
  br i1 %call, label %if.end8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end8:                                          ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end8
  %tmp.0.in = phi ptr [ @consumers, %if.end8 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @consumers
  br i1 %cmp.not, label %for.cond.for.cond24_crit_edge, label %for.body

for.cond.for.cond24_crit_edge:                    ; preds = %for.cond
  br label %for.cond24

for.body:                                         ; preds = %for.cond
  %token10 = getelementptr inbounds %struct.irq_bypass_consumer, ptr %tmp.0, i32 0, i32 1
  %7 = ptrtoint ptr %token10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %token10, align 4
  %9 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %token, align 4
  %cmp12 = icmp eq ptr %8, %10
  %cmp14 = icmp eq ptr %tmp.0, %consumer
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp14
  br i1 %or.cond, label %for.body.out_err_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_err

for.cond24:                                       ; preds = %for.body28.for.cond24_crit_edge, %for.cond.for.cond24_crit_edge
  %producer.0.in = phi ptr [ %producer.0, %for.body28.for.cond24_crit_edge ], [ @producers, %for.cond.for.cond24_crit_edge ]
  %11 = ptrtoint ptr %producer.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %producer.0 = load ptr, ptr %producer.0.in, align 4
  %cmp26.not = icmp eq ptr %producer.0, @producers
  br i1 %cmp26.not, label %for.cond24.for.end44_crit_edge, label %for.body28

for.cond24.for.end44_crit_edge:                   ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end44

for.body28:                                       ; preds = %for.cond24
  %token29 = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 1
  %12 = ptrtoint ptr %token29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %token29, align 4
  %14 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %token, align 4
  %cmp31 = icmp eq ptr %13, %15
  br i1 %cmp31, label %if.then32, label %for.body28.for.cond24_crit_edge

for.body28.for.cond24_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond24

if.then32:                                        ; preds = %for.body28
  %stop.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 5
  %16 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then32.if.end.i_crit_edge, label %if.then.i

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %17(ptr noundef %producer.0) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then32.if.end.i_crit_edge
  %stop2.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 4
  %18 = ptrtoint ptr %stop2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stop2.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %19(ptr noundef %consumer) #2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %add_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 3
  %20 = ptrtoint ptr %add_consumer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_consumer.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then12.i_crit_edge, label %if.end10.i

if.end6.i.if.then12.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then12.i

if.end10.i:                                       ; preds = %if.end6.i
  %call.i = tail call i32 %21(ptr noundef %producer.0, ptr noundef %consumer) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.then12.i_crit_edge, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

if.end10.i.if.then12.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i.if.then12.i_crit_edge, %if.end6.i.if.then12.i_crit_edge
  %22 = ptrtoint ptr %add_producer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add_producer, align 4
  %call13.i = tail call i32 %23(ptr noundef %consumer, ptr noundef %producer.0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.then12.i
  %del_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 4
  %24 = ptrtoint ptr %del_consumer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %del_consumer.i, align 4
  %tobool15.not.i = icmp eq ptr %25, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %if.then16.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %25(ptr noundef %producer.0, ptr noundef %consumer) #2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %land.lhs.true.i.if.end19.i_crit_edge, %if.then12.i.if.end19.i_crit_edge, %if.end10.i.if.end19.i_crit_edge
  %ret.1.i = phi i32 [ %call.i, %if.end10.i.if.end19.i_crit_edge ], [ %call13.i, %if.then16.i ], [ %call13.i, %land.lhs.true.i.if.end19.i_crit_edge ], [ 0, %if.then12.i.if.end19.i_crit_edge ]
  %start.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 5
  %26 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %start.i, align 4
  %tobool20.not.i = icmp eq ptr %27, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %27(ptr noundef %consumer) #2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %start24.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 6
  %28 = ptrtoint ptr %start24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start24.i, align 4
  %tobool25.not.i = icmp eq ptr %29, null
  br i1 %tobool25.not.i, label %if.end23.i.__connect.exit_crit_edge, label %if.then26.i

if.end23.i.__connect.exit_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %__connect.exit

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %29(ptr noundef %producer.0) #2
  br label %__connect.exit

__connect.exit:                                   ; preds = %if.then26.i, %if.end23.i.__connect.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool34.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool34.not, label %__connect.exit.for.end44_crit_edge, label %__connect.exit.out_err_crit_edge

__connect.exit.out_err_crit_edge:                 ; preds = %__connect.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_err

__connect.exit.for.end44_crit_edge:               ; preds = %__connect.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end44

for.end44:                                        ; preds = %__connect.exit.for.end44_crit_edge, %for.cond24.for.end44_crit_edge
  %30 = load ptr, ptr @consumers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %consumer, ptr noundef nonnull @consumers, ptr noundef %30) #2
  br i1 %call.i.i, label %if.end.i.i, label %for.end44.list_add.exit_crit_edge

for.end44.list_add.exit_crit_edge:                ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %consumer, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %consumer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %consumer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %consumer, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @consumers, ptr %prev3.i.i, align 4
  store volatile ptr %consumer, ptr @consumers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end44.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  br label %cleanup

out_err:                                          ; preds = %__connect.exit.out_err_crit_edge, %for.body.out_err_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %__connect.exit.out_err_crit_edge ], [ -16, %for.body.out_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  tail call void @module_put(ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %out_err, %list_add.exit, %do.body.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ 0, %list_add.exit ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_bypass_unregister_consumer(ptr noundef %consumer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 1
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %token, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 239) #2
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #2
  br i1 %call, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end5:                                          ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %tmp.0.in = phi ptr [ @consumers, %if.end5 ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @consumers
  br i1 %cmp.not, label %for.cond.for.end34_crit_edge, label %for.body

for.cond.for.end34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end34

for.body:                                         ; preds = %for.cond
  %cmp7.not = icmp eq ptr %tmp.0, %consumer
  br i1 %cmp7.not, label %for.body.for.cond13_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.body.for.cond13_crit_edge:                    ; preds = %for.body
  br label %for.cond13

for.cond13:                                       ; preds = %for.body17.for.cond13_crit_edge, %for.body.for.cond13_crit_edge
  %producer.0.in = phi ptr [ %producer.0, %for.body17.for.cond13_crit_edge ], [ @producers, %for.body.for.cond13_crit_edge ]
  %3 = ptrtoint ptr %producer.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %producer.0 = load ptr, ptr %producer.0.in, align 4
  %cmp15.not = icmp eq ptr %producer.0, @producers
  br i1 %cmp15.not, label %for.cond13.for.end_crit_edge, label %for.body17

for.cond13.for.end_crit_edge:                     ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body17:                                       ; preds = %for.cond13
  %token18 = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 1
  %4 = ptrtoint ptr %token18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %token18, align 4
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %token, align 4
  %cmp20 = icmp eq ptr %5, %7
  br i1 %cmp20, label %if.then21, label %for.body17.for.cond13_crit_edge

for.body17.for.cond13_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond13

if.then21:                                        ; preds = %for.body17
  %stop.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 5
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then21.if.end.i_crit_edge, label %if.then.i

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %9(ptr noundef %producer.0) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then21.if.end.i_crit_edge
  %stop2.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 4
  %10 = ptrtoint ptr %stop2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop2.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %11(ptr noundef %consumer) #2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %del_producer.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 3
  %12 = ptrtoint ptr %del_producer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_producer.i, align 4
  tail call void %13(ptr noundef %consumer, ptr noundef %producer.0) #2
  %del_consumer.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 4
  %14 = ptrtoint ptr %del_consumer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %del_consumer.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %15(ptr noundef %producer.0, ptr noundef %consumer) #2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %start.i = getelementptr inbounds %struct.irq_bypass_consumer, ptr %consumer, i32 0, i32 5
  %16 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %start.i, align 4
  %tobool11.not.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then12.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %17(ptr noundef %consumer) #2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %start15.i = getelementptr inbounds %struct.irq_bypass_producer, ptr %producer.0, i32 0, i32 6
  %18 = ptrtoint ptr %start15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start15.i, align 4
  %tobool16.not.i = icmp eq ptr %19, null
  br i1 %tobool16.not.i, label %if.end14.i.for.end_crit_edge, label %if.then17.i

if.end14.i.for.end_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %19(ptr noundef %producer.0) #2
  br label %for.end

for.end:                                          ; preds = %if.then17.i, %if.end14.i.for.end_crit_edge, %for.cond13.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %consumer) #2
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %consumer, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %consumer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %26 = ptrtoint ptr %consumer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %consumer, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %consumer, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @module_put(ptr noundef null) #2
  br label %for.end34

for.end34:                                        ; preds = %list_del.exit, %for.cond.for.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #2
  tail call void @module_put(ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_file106, !1, !"__UNIQUE_ID_file106", i1 false, i1 false}
!1 = !{!"../virt/lib/irqbypass.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_license107, !1, !"__UNIQUE_ID_license107", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description108, !4, !"__UNIQUE_ID_description108", i1 false, i1 false}
!4 = !{!"../virt/lib/irqbypass.c", i32 23, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../virt/lib/irqbypass.c", i32 93, i32 2}
!7 = !{ptr @__ksymtab_irq_bypass_register_producer, !8, !"__ksymtab_irq_bypass_register_producer", i1 false, i1 false}
!8 = !{!"../virt/lib/irqbypass.c", i32 126, i32 1}
!9 = !{ptr @__ksymtab_irq_bypass_unregister_producer, !10, !"__ksymtab_irq_bypass_unregister_producer", i1 false, i1 false}
!10 = !{!"../virt/lib/irqbypass.c", i32 170, i32 1}
!11 = !{ptr @__ksymtab_irq_bypass_register_consumer, !12, !"__ksymtab_irq_bypass_register_consumer", i1 false, i1 false}
!12 = !{!"../virt/lib/irqbypass.c", i32 222, i32 1}
!13 = !{ptr @__ksymtab_irq_bypass_unregister_consumer, !14, !"__ksymtab_irq_bypass_unregister_consumer", i1 false, i1 false}
!14 = !{!"../virt/lib/irqbypass.c", i32 266, i32 1}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../virt/lib/irqbypass.c", i32 27, i32 8}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lock, !16, !"lock", i1 false, i1 false}
!19 = !{ptr @producers, !20, !"producers", i1 false, i1 false}
!20 = !{!"../virt/lib/irqbypass.c", i32 25, i32 8}
!21 = !{ptr @consumers, !22, !"consumers", i1 false, i1 false}
!22 = !{!"../virt/lib/irqbypass.c", i32 26, i32 8}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
