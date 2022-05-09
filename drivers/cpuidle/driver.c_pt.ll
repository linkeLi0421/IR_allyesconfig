; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/driver.c_pt.bc'
source_filename = "../drivers/cpuidle/driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpuidle_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuidle_register_driver\09\09\09\09"
module asm "\09.long\09__crc_cpuidle_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpuidle_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuidle_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_cpuidle_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpuidle_get_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuidle_get_driver\09\09\09\09"
module asm "\09.long\09__crc_cpuidle_get_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_get_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_get_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_get_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpuidle_get_cpu_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuidle_get_cpu_driver\09\09\09\09"
module asm "\09.long\09__crc_cpuidle_get_cpu_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuidle_get_cpu_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuidle_get_cpu_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpuidle_get_cpu_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpuidle_driver_lock\00", [44 x i8] zeroinitializer }, align 32
@cpuidle_driver_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@param_governor = external dso_local local_unnamed_addr global [0 x i8], align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@cpuidle_curr_governor = external dso_local local_unnamed_addr global ptr, align 4
@cpuidle_prev_governor = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_cpuidle_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_register_driver to i32), ptr @__kstrtab_cpuidle_register_driver, ptr @__kstrtabns_cpuidle_register_driver }, section "___ksymtab_gpl+cpuidle_register_driver", align 4
@__kstrtab_cpuidle_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_unregister_driver to i32), ptr @__kstrtab_cpuidle_unregister_driver, ptr @__kstrtabns_cpuidle_unregister_driver }, section "___ksymtab_gpl+cpuidle_unregister_driver", align 4
@__kstrtab_cpuidle_get_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_get_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_get_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_get_driver to i32), ptr @__kstrtab_cpuidle_get_driver, ptr @__kstrtabns_cpuidle_get_driver }, section "___ksymtab_gpl+cpuidle_get_driver", align 4
@__kstrtab_cpuidle_get_cpu_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuidle_get_cpu_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuidle_get_cpu_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuidle_get_cpu_driver to i32), ptr @__kstrtab_cpuidle_get_cpu_driver, ptr @__kstrtabns_cpuidle_get_cpu_driver }, section "___ksymtab_gpl+cpuidle_get_cpu_driver", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__pcpu_unique_cpuidle_drivers = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpuidle_drivers = weak dso_local global ptr null, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"cpuidle_driver_lock\00", align 1
@___asan_gen_.5 = private constant [28 x i8] c"../drivers/cpuidle/driver.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 22, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_cpuidle_get_cpu_driver, ptr @__ksymtab_cpuidle_get_driver, ptr @__ksymtab_cpuidle_register_driver, ptr @__ksymtab_cpuidle_unregister_driver, ptr @.str, ptr @cpuidle_driver_lock], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_driver_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %tobool.not.i = icmp eq ptr %drv, null
  br i1 %tobool.not.i, label %entry.__cpuidle_register_driver.exit.thread_crit_edge, label %lor.lhs.false.i

entry.__cpuidle_register_driver.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_register_driver.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %state_count.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %0 = ptrtoint ptr %state_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.__cpuidle_register_driver.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.__cpuidle_register_driver.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_register_driver.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @cpuidle_coupled_state_verify(ptr noundef nonnull %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__cpuidle_register_driver.exit.thread_crit_edge

if.end.i.__cpuidle_register_driver.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_register_driver.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @cpuidle_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.__cpuidle_register_driver.exit.thread_crit_edge

if.end4.i.__cpuidle_register_driver.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_register_driver.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %cpumask.i.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %2 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpumask.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end8.i.if.end.i.i_crit_edge

if.end8.i.if.end.i.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @__cpu_possible_mask, ptr %cpumask.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end8.i.if.end.i.i_crit_edge
  %5 = ptrtoint ptr %state_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp46.i.i = icmp sgt i32 %6, 0
  br i1 %cmp46.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.__cpuidle_driver_init.exit.i_crit_edge

if.end.i.i.__cpuidle_driver_init.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_driver_init.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %bctimer.i.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end28.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.047.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end28.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 4
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end4.i.i_crit_edge, label %if.then3.i.i

for.body.i.i.if.end4.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %bctimer.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %bctimer.i.i, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %bctimer.i.i, align 8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %for.body.i.i.if.end4.i.i_crit_edge
  %target_residency.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 7
  %10 = ptrtoint ptr %target_residency.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_residency.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp5.not.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = mul i32 %11, 1000
  %conv.i.i = zext i32 %mul.i.i to i64
  %target_residency_ns.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 3
  %12 = ptrtoint ptr %target_residency_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i.i, ptr %target_residency_ns.i.i, align 8
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  %target_residency_ns8.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 3
  %13 = ptrtoint ptr %target_residency_ns8.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %target_residency_ns8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp9.i.i = icmp slt i64 %14, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else.i.i.if.end14.i.i_crit_edge

if.else.i.i.if.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %target_residency_ns8.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %target_residency_ns8.i.i, align 8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.else.i.i.if.end14.i.i_crit_edge, %if.then6.i.i
  %exit_latency.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 5
  %16 = ptrtoint ptr %exit_latency.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exit_latency.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp15.not.i.i, label %if.else21.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i.i = mul i32 %17, 1000
  %conv20.i.i = zext i32 %mul19.i.i to i64
  %exit_latency_ns.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 2
  %18 = ptrtoint ptr %exit_latency_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv20.i.i, ptr %exit_latency_ns.i.i, align 8
  br label %if.end28.i.i

if.else21.i.i:                                    ; preds = %if.end14.i.i
  %exit_latency_ns22.i.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.047.i.i, i32 2
  %19 = ptrtoint ptr %exit_latency_ns22.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %exit_latency_ns22.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp23.i.i = icmp slt i64 %20, 0
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.else21.i.i.if.end28.i.i_crit_edge

if.else21.i.i.if.end28.i.i_crit_edge:             ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %exit_latency_ns22.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %exit_latency_ns22.i.i, align 8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %if.else21.i.i.if.end28.i.i_crit_edge, %if.then17.i.i
  %inc.i.i = add nuw nsw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %6
  br i1 %exitcond.not.i.i, label %if.end28.i.i.__cpuidle_driver_init.exit.i_crit_edge, label %if.end28.i.i.for.body.i.i_crit_edge

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end28.i.i.__cpuidle_driver_init.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_driver_init.exit.i

__cpuidle_driver_init.exit.i:                     ; preds = %if.end28.i.i.__cpuidle_driver_init.exit.i_crit_edge, %if.end.i.i.__cpuidle_driver_init.exit.i_crit_edge
  %22 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpumask.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i27.i.for.cond.i.i_crit_edge, %__cpuidle_driver_init.exit.i
  %cpu.0.i.i = phi i32 [ -1, %__cpuidle_driver_init.exit.i ], [ %call.i.i, %for.body.i27.i.for.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i.i, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %24)
  %cmp.i.i = icmp ult i32 %call.i.i, %24
  br i1 %cmp.i.i, label %for.body.i27.i, label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.cond.i.i
  %call522.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call522.i.i, i32 %24)
  %cmp623.i.i = icmp ult i32 %call522.i.i, %24
  br i1 %cmp623.i.i, label %for.cond3.preheader.i.i.for.body7.i.i_crit_edge, label %for.cond3.preheader.i.i.if.end12.i_crit_edge

for.cond3.preheader.i.i.if.end12.i_crit_edge:     ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

for.cond3.preheader.i.i.for.body7.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  br label %for.body7.i.i

for.body.i27.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %26, ptrtoint (ptr @cpuidle_drivers to i32)
  %27 = inttoptr i32 %add.i.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i26.i = icmp eq ptr %29, null
  %cmp2.not.i.i = icmp eq ptr %29, %drv
  %or.cond.i.i = or i1 %tobool.not.i26.i, %cmp2.not.i.i
  br i1 %or.cond.i.i, label %for.body.i27.i.for.cond.i.i_crit_edge, label %for.body.i27.i.__cpuidle_register_driver.exit.thread_crit_edge

for.body.i27.i.__cpuidle_register_driver.exit.thread_crit_edge: ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_register_driver.exit.thread

for.body.i27.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond3.preheader.i.i.for.body7.i.i_crit_edge
  %call524.i.i = phi i32 [ %call5.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %call522.i.i, %for.cond3.preheader.i.i.for.body7.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call524.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %31, ptrtoint (ptr @cpuidle_drivers to i32)
  %32 = inttoptr i32 %add.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %drv, ptr %32, align 4
  %34 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpumask.i.i, align 8
  %call5.i.i = tail call i32 @cpumask_next(i32 noundef %call524.i.i, ptr noundef %35) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp6.i.i = icmp ult i32 %call5.i.i, %36
  br i1 %cmp6.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.if.end12.i_crit_edge

for.body7.i.i.if.end12.i_crit_edge:               ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.i.i

if.end12.i:                                       ; preds = %for.body7.i.i.if.end12.i_crit_edge, %for.cond3.preheader.i.i.if.end12.i_crit_edge
  %bctimer.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 2
  %37 = ptrtoint ptr %bctimer.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %bctimer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool13.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool13.not.i, label %if.end12.i.land.lhs.true_crit_edge, label %if.then14.i

if.end12.i.land.lhs.true_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpumask.i.i, align 8
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @cpuidle_setup_broadcast_timer, ptr noundef nonnull inttoptr (i32 1 to ptr), i1 noundef zeroext true, ptr noundef %39) #5
  br label %land.lhs.true

__cpuidle_register_driver.exit.thread:            ; preds = %for.body.i27.i.__cpuidle_register_driver.exit.thread_crit_edge, %if.end4.i.__cpuidle_register_driver.exit.thread_crit_edge, %if.end.i.__cpuidle_register_driver.exit.thread_crit_edge, %lor.lhs.false.i.__cpuidle_register_driver.exit.thread_crit_edge, %entry.__cpuidle_register_driver.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end4.i.__cpuidle_register_driver.exit.thread_crit_edge ], [ %call.i, %if.end.i.__cpuidle_register_driver.exit.thread_crit_edge ], [ -22, %entry.__cpuidle_register_driver.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.__cpuidle_register_driver.exit.thread_crit_edge ], [ -16, %for.body.i27.i.__cpuidle_register_driver.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #5
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then14.i, %if.end12.i.land.lhs.true_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @param_governor to i32))
  %char0 = load i8, ptr @param_governor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool2.not = icmp eq i8 %char0, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true3:                                   ; preds = %land.lhs.true
  %governor = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 7
  %40 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %governor, align 4
  %tobool4.not = icmp eq ptr %41, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end15_crit_edge, label %land.lhs.true5

land.lhs.true3.if.end15_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %42 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i21 = add i32 %45, 1
  store volatile i32 %add.i.i21, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  %46 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i22 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i22 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu1.i, align 4
  %arrayidx.i.i23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i23, align 4
  %add.i8.i = add i32 %51, ptrtoint (ptr @cpuidle_drivers to i32)
  %52 = inttoptr i32 %add.i8.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %55 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i6.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  %cmp = icmp eq ptr %54, %drv
  br i1 %cmp, label %if.then, label %land.lhs.true5.if.end15_crit_edge

land.lhs.true5.if.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true5
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #5
  %59 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %governor, align 4
  %call8 = tail call ptr @cpuidle_find_governor(ptr noundef %60) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %if.then10

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_curr_governor to i32))
  %61 = load ptr, ptr @cpuidle_curr_governor, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpuidle_prev_governor to i32))
  store ptr %61, ptr @cpuidle_prev_governor, align 4
  %call11 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %call8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpuidle_prev_governor to i32))
  store ptr null, ptr @cpuidle_prev_governor, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10.if.end14_crit_edge, %if.then.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true5.if.end15_crit_edge, %land.lhs.true3.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %__cpuidle_register_driver.exit.thread
  %retval.0.i26 = phi i32 [ %retval.0.i.ph, %__cpuidle_register_driver.exit.thread ], [ 0, %if.end14 ], [ 0, %land.lhs.true5.if.end15_crit_edge ], [ 0, %land.lhs.true3.if.end15_crit_edge ], [ 0, %land.lhs.true.if.end15_crit_edge ]
  ret i32 %retval.0.i26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpuidle_get_driver() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  %4 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i8 = add i32 %9, ptrtoint (ptr @cpuidle_drivers to i32)
  %10 = inttoptr i32 %add.i8 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i6 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_find_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_switch_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  %4 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %add.i8.i = add i32 %9, ptrtoint (ptr @cpuidle_drivers to i32)
  %10 = inttoptr i32 %add.i8.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %13 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i.i.i6.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  %cmp = icmp eq ptr %12, %drv
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %bctimer.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 2
  %17 = ptrtoint ptr %bctimer.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %bctimer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear.i = and i8 %bf.load.i, 127
  %18 = ptrtoint ptr %bctimer.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.clear.i, ptr %bctimer.i, align 8
  %cpumask.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %19 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpumask.i, align 8
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @cpuidle_setup_broadcast_timer, ptr noundef null, i1 noundef zeroext true, ptr noundef %20) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cpumask.i.i = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %21 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpumask.i.i, align 8
  %call8.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i.i, i32 %23)
  %cmp9.i.i = icmp ult i32 %call8.i.i, %23
  br i1 %cmp9.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.__cpuidle_unregister_driver.exit_crit_edge

if.end.i.__cpuidle_unregister_driver.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_unregister_driver.exit

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %call10.i.i = phi i32 [ %call.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ], [ %call8.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %25, ptrtoint (ptr @cpuidle_drivers to i32)
  %26 = inttoptr i32 %add.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %cmp2.not.i.i = icmp eq ptr %28, %drv
  br i1 %cmp2.not.i.i, label %do.body.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %26, align 4
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %do.body.i.i, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %30 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpumask.i.i, align 8
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %call10.i.i, ptr noundef %31) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call.i.i, %32
  br i1 %cmp.i.i, label %for.cond.backedge.i.i.for.body.i.i_crit_edge, label %for.cond.backedge.i.i.__cpuidle_unregister_driver.exit_crit_edge

for.cond.backedge.i.i.__cpuidle_unregister_driver.exit_crit_edge: ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__cpuidle_unregister_driver.exit

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

__cpuidle_unregister_driver.exit:                 ; preds = %for.cond.backedge.i.i.__cpuidle_unregister_driver.exit_crit_edge, %if.end.i.__cpuidle_unregister_driver.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #5
  br i1 %cmp, label %if.end, label %__cpuidle_unregister_driver.exit.cleanup_crit_edge

__cpuidle_unregister_driver.exit.cleanup_crit_edge: ; preds = %__cpuidle_unregister_driver.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %__cpuidle_unregister_driver.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_prev_governor to i32))
  %33 = load ptr, ptr @cpuidle_prev_governor, align 4
  %tobool1.not = icmp eq ptr %33, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpuidle_prev_governor to i32))
  store ptr null, ptr @cpuidle_prev_governor, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %__cpuidle_unregister_driver.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cpuidle_get_cpu_driver(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @cpuidle_drivers to i32)
  %4 = inttoptr i32 %add.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_driver_state_disabled(ptr nocapture noundef %drv, i32 noundef %idx, i1 noundef zeroext %disable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #5
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpumask, align 8
  %call24 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24, i32 %4)
  %cmp25 = icmp ult i32 %call24, %4
  br i1 %cmp25, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.unlock_crit_edge

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %idx, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %or = or i32 %6, 8
  store i32 %or, ptr %flags, align 8
  br label %unlock

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call26 = phi i32 [ %call, %cleanup.for.body_crit_edge ], [ %call24, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx3 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call26
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %8, ptrtoint (ptr @cpuidle_devices to i32)
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr %struct.cpuidle_device, ptr %11, i32 0, i32 7, i32 %idx
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx9, align 8
  %or11 = or i64 %13, 2
  %and = and i64 %13, 4294967293
  %or11.sink = select i1 %disable, i64 %or11, i64 %and
  store i64 %or11.sink, ptr %arrayidx9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpumask, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call26, ptr noundef %15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %16
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.unlock_crit_edge

cleanup.unlock_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

unlock:                                           ; preds = %cleanup.unlock_crit_edge, %if.then, %for.cond.preheader.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpuidle_driver_lock) #5
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_coupled_state_verify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_disabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuidle_setup_broadcast_timer(ptr noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %arg, null
  %. = zext i1 %tobool.not to i32
  tail call void @tick_broadcast_control(i32 noundef %.) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_control(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/driver.c", i32 22, i32 1}
!2 = !{ptr @cpuidle_driver_lock, !1, !"cpuidle_driver_lock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_cpuidle_register_driver, !4, !"__ksymtab_cpuidle_register_driver", i1 false, i1 false}
!4 = !{!"../drivers/cpuidle/driver.c", i32 287, i32 1}
!5 = !{ptr @__ksymtab_cpuidle_unregister_driver, !6, !"__ksymtab_cpuidle_unregister_driver", i1 false, i1 false}
!6 = !{!"../drivers/cpuidle/driver.c", i32 315, i32 1}
!7 = !{ptr @__ksymtab_cpuidle_get_driver, !8, !"__ksymtab_cpuidle_get_driver", i1 false, i1 false}
!8 = !{!"../drivers/cpuidle/driver.c", i32 333, i32 1}
!9 = !{ptr @__ksymtab_cpuidle_get_cpu_driver, !10, !"__ksymtab_cpuidle_get_cpu_driver", i1 false, i1 false}
!10 = !{!"../drivers/cpuidle/driver.c", i32 349, i32 1}
!11 = !{ptr @__pcpu_unique_cpuidle_drivers, !12, !"__pcpu_unique_cpuidle_drivers", i1 false, i1 false}
!12 = !{!"../drivers/cpuidle/driver.c", i32 26, i32 8}
!13 = !{ptr @cpuidle_drivers, !12, !"cpuidle_drivers", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2152547981}
!25 = !{i64 2152548148}
