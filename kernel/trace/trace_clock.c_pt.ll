; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_clock.c_pt.bc'
source_filename = "../kernel/trace/trace_clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+trace_clock_local\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_clock_local\09\09\09\09"
module asm "\09.long\09__crc_trace_clock_local\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_local:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_local\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_local:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+trace_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_clock\09\09\09\09"
module asm "\09.long\09__crc_trace_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+trace_clock_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_clock_jiffies\09\09\09\09"
module asm "\09.long\09__crc_trace_clock_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+trace_clock_global\22, \22a\22\09"
module asm "\09.weak\09__crc_trace_clock_global\09\09\09\09"
module asm "\09.long\09__crc_trace_clock_global\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_global:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_global\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_global:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.40 = type { i64, %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__raw_tickets = type { i16, i16 }

@__kstrtab_trace_clock_local = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_local = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_local = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_local to i32), ptr @__kstrtab_trace_clock_local, ptr @__kstrtabns_trace_clock_local }, section "___ksymtab_gpl+trace_clock_local", align 4
@__kstrtab_trace_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock to i32), ptr @__kstrtab_trace_clock, ptr @__kstrtabns_trace_clock }, section "___ksymtab_gpl+trace_clock", align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 128
@__kstrtab_trace_clock_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_jiffies to i32), ptr @__kstrtab_trace_clock_jiffies, ptr @__kstrtabns_trace_clock_jiffies }, section "___ksymtab_gpl+trace_clock_jiffies", align 4
@trace_clock_struct = internal global %struct.anon.40 zeroinitializer, align 128
@__kstrtab_trace_clock_global = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_global = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_global = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_global to i32), ptr @__kstrtab_trace_clock_global, ptr @__kstrtabns_trace_clock_global }, section "___ksymtab_gpl+trace_clock_global", align 4
@trace_counter = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_clock.gcda\00", [33 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [22 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -268085577, i32 1704508969 }, %emit_function_args_ty { i32 1, i32 -1567486560, i32 1704508969 }, %emit_function_args_ty { i32 2, i32 1333844298, i32 1704508969 }, %emit_function_args_ty { i32 3, i32 -1502470803, i32 1704508969 }, %emit_function_args_ty { i32 4, i32 -1348324608, i32 1704508969 }, %emit_function_args_ty { i32 5, i32 1669525777, i32 1704508969 }, %emit_function_args_ty { i32 6, i32 1957385101, i32 1704508969 }, %emit_function_args_ty { i32 7, i32 1403380823, i32 1704508969 }, %emit_function_args_ty { i32 8, i32 288547376, i32 1704508969 }, %emit_function_args_ty { i32 9, i32 -1543658690, i32 1704508969 }, %emit_function_args_ty { i32 10, i32 -1814186421, i32 1704508969 }, %emit_function_args_ty { i32 11, i32 916651515, i32 1704508969 }, %emit_function_args_ty { i32 12, i32 -743251458, i32 1704508969 }, %emit_function_args_ty { i32 13, i32 -1208743970, i32 1704508969 }, %emit_function_args_ty { i32 14, i32 -2138448152, i32 1704508969 }, %emit_function_args_ty { i32 15, i32 -1120651917, i32 1704508969 }, %emit_function_args_ty { i32 16, i32 -1111025999, i32 1704508969 }, %emit_function_args_ty { i32 17, i32 -1651547464, i32 1704508969 }, %emit_function_args_ty { i32 18, i32 81157262, i32 1704508969 }, %emit_function_args_ty { i32 19, i32 835031753, i32 1704508969 }, %emit_function_args_ty { i32 20, i32 47165945, i32 1704508969 }, %emit_function_args_ty { i32 21, i32 -1672745738, i32 1704508969 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [22 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.1 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.2 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.3 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.4 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"trace_counter\00", align 1
@___asan_gen_.23 = private constant [30 x i8] c"../kernel/trace/trace_clock.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 148, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_trace_clock, ptr @__ksymtab_trace_clock_global, ptr @__ksymtab_trace_clock_jiffies, ptr @__ksymtab_trace_clock_local, ptr @trace_counter], section "llvm.metadata"
@1 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_counter to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @trace_clock_local() #0 align 64 !dbg !25 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !28
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.1, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.1, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !29
  %1 = add i64 %gcov_ctr.i.i, 1, !dbg !29
  store i64 %1, ptr @__llvm_gcov_ctr.16, align 8, !dbg !29
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !35
  %2 = add i64 %gcov_ctr.i.i.i, 1, !dbg !35
  store i64 %2, ptr @__llvm_gcov_ctr.8, align 8, !dbg !35
  %3 = tail call i32 @llvm.read_register.i32(metadata !14) #9, !dbg !35
  %and.i.i.i = and i32 %3, -16384, !dbg !39
  %4 = inttoptr i32 %and.i.i.i to ptr, !dbg !40
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1, !dbg !41
  %5 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !42
  call void @__asan_load4_noabort(i32 %5), !dbg !42
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !42
  %add.i = add i32 %6, 1, !dbg !42
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !42
  tail call void asm sideeffect "", "~{memory}"() #9, !dbg !43, !srcloc !44
  %call = tail call i64 @sched_clock() #9, !dbg !45
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !46
  %7 = add i64 %gcov_ctr, 1, !dbg !46
  store i64 %7, ptr @__llvm_gcov_ctr, align 8, !dbg !46
  tail call void asm sideeffect "", "~{memory}"() #9, !dbg !46, !srcloc !47
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.2, align 8
  %8 = add i64 %gcov_ctr.i4, 1
  store i64 %8, ptr @__llvm_gcov_ctr.2, align 8
  %gcov_ctr.i.i5 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !48
  %9 = add i64 %gcov_ctr.i.i5, 1, !dbg !48
  store i64 %9, ptr @__llvm_gcov_ctr.16, align 8, !dbg !48
  %gcov_ctr.i.i.i6 = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !52
  %10 = add i64 %gcov_ctr.i.i.i6, 1, !dbg !52
  store i64 %10, ptr @__llvm_gcov_ctr.8, align 8, !dbg !52
  %11 = tail call i32 @llvm.read_register.i32(metadata !14) #9, !dbg !52
  %and.i.i.i7 = and i32 %11, -16384, !dbg !54
  %12 = inttoptr i32 %and.i.i.i7 to ptr, !dbg !55
  %preempt_count.i.i8 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1, !dbg !56
  %13 = ptrtoint ptr %preempt_count.i.i8 to i32, !dbg !57
  call void @__asan_load4_noabort(i32 %13), !dbg !57
  %14 = load volatile i32, ptr %preempt_count.i.i8, align 4, !dbg !57
  %sub.i = add i32 %14, -1, !dbg !57
  store volatile i32 %sub.i, ptr %preempt_count.i.i8, align 4, !dbg !57
  ret i64 %call, !dbg !58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @trace_clock() #0 align 64 !dbg !59 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !60
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.3, align 8, !dbg !61
  %0 = add i64 %gcov_ctr, 1, !dbg !61
  store i64 %0, ptr @__llvm_gcov_ctr.3, align 8, !dbg !61
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.4, align 8, !dbg !62
  %1 = add i64 %gcov_ctr.i, 1, !dbg !62
  store i64 %1, ptr @__llvm_gcov_ctr.4, align 8, !dbg !62
  %call.i = tail call i64 @sched_clock() #9, !dbg !62
  ret i64 %call.i, !dbg !66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @trace_clock_jiffies() #0 align 64 !dbg !67 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !68
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.5, align 8, !dbg !69
  %0 = add i64 %gcov_ctr, 1, !dbg !69
  store i64 %0, ptr @__llvm_gcov_ctr.5, align 8, !dbg !69
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32)), !dbg !69
  %1 = load i64, ptr @jiffies_64, align 128, !dbg !69
  %sub = add i64 %1, -4294937296, !dbg !70
  %call = tail call i64 @jiffies_64_to_clock_t(i64 noundef %sub) #9, !dbg !71
  ret i64 %call, !dbg !72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @trace_clock_global() #0 align 64 !dbg !73 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !74
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %0 = add i64 %gcov_ctr.i67, 1
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 8
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !dbg !75, !srcloc !79
  %gcov_ctr.i68 = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !80
  %2 = add i64 %gcov_ctr.i68, 1, !dbg !80
  store i64 %2, ptr @__llvm_gcov_ctr.8, align 8, !dbg !80
  %3 = tail call i32 @llvm.read_register.i32(metadata !14) #9, !dbg !80
  %and.i = and i32 %3, -16384, !dbg !82
  %4 = inttoptr i32 %and.i to ptr, !dbg !83
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3, !dbg !84
  %5 = ptrtoint ptr %cpu to i32, !dbg !84
  call void @__asan_load4_noabort(i32 %5), !dbg !84
  %6 = load i32, ptr %cpu, align 4, !dbg !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !dbg !85, !srcloc !86
  %7 = load volatile i64, ptr @trace_clock_struct, align 128, !dbg !87
  %call12 = tail call i64 @sched_clock_cpu(i32 noundef %6) #9, !dbg !88
  %sub = sub i64 %call12, %7, !dbg !89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub), !dbg !90
  %cmp13 = icmp slt i64 %sub, 0, !dbg !90
  br i1 %cmp13, label %if.then, label %entry.if.end_crit_edge, !dbg !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !91
  br label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8, !dbg !92
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.6, align 16, !dbg !92
  %8 = add i64 %gcov_ctr, 1, !dbg !92
  store i64 %8, ptr @__llvm_gcov_ctr.6, align 16, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %now.0 = phi i64 [ %7, %if.then ], [ %call12, %entry.if.end_crit_edge ], !dbg !94
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.9, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !95
  %10 = add i64 %gcov_ctr.i.i, 1, !dbg !95
  store i64 %10, ptr @__llvm_gcov_ctr.8, align 8, !dbg !95
  %11 = tail call i32 @llvm.read_register.i32(metadata !14) #9, !dbg !95
  %and.i.i = and i32 %11, -16384, !dbg !99
  %12 = inttoptr i32 %and.i.i to ptr, !dbg !100
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1, !dbg !101
  %13 = ptrtoint ptr %preempt_count.i to i32, !dbg !101
  call void @__asan_load4_noabort(i32 %13), !dbg !101
  %14 = load volatile i32, ptr %preempt_count.i, align 4, !dbg !101
  %and = and i32 %14, 15728640, !dbg !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !102
  %tobool.not = icmp eq i32 %and, 0, !dbg !102
  br i1 %tobool.not, label %if.end19, label %if.then18, !dbg !102, !prof !103

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8, !dbg !104
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8, !dbg !104
  %15 = add i64 %gcov_ctr56, 1, !dbg !104
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 1), align 8, !dbg !104
  br label %do.body33, !dbg !104

if.end19:                                         ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.anon.40, ptr @trace_clock_struct, i32 0, i32 1), i32 1, i32 3, i32 1) #9, !dbg !105
  br label %do.body.i, !dbg !109

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end19
  %gcov_ctr.i69 = load i64, ptr @__llvm_gcov_ctr.10, align 16, !dbg !110
  %16 = add i64 %gcov_ctr.i69, 1, !dbg !110
  store i64 %16, ptr @__llvm_gcov_ctr.10, align 16, !dbg !110
  %17 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr getelementptr inbounds (%struct.anon.40, ptr @trace_clock_struct, i32 0, i32 1), i32 65536) #9, !dbg !111, !srcloc !112
  %asmresult2.i = extractvalue { i32, i32, i32 } %17, 2, !dbg !111
  %tobool.not.i = icmp eq i32 %asmresult2.i, 0, !dbg !113
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge, !dbg !113, !llvm.loop !114

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !113
  br label %do.body.i, !dbg !113

do.end.i:                                         ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32, i32 } %17, 1, !dbg !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i), !dbg !116
  %tobool3.not.i = icmp eq i32 %asmresult1.i, 0, !dbg !116
  br i1 %tobool3.not.i, label %do.end25, label %arch_spin_trylock.exit.thread, !dbg !117

arch_spin_trylock.exit.thread:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8, !dbg !118
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !118
  %18 = add i64 %gcov_ctr13.i, 1, !dbg !118
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 2), align 16, !dbg !118
  br label %if.end32, !dbg !119

do.end25:                                         ; preds = %do.end.i
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !120
  %19 = add i64 %gcov_ctr12.i, 1, !dbg !120
  store i64 %19, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !dbg !120, !srcloc !121
  %20 = load volatile i64, ptr @trace_clock_struct, align 128, !dbg !122
  %sub27 = sub i64 %now.0, %20, !dbg !123
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub27), !dbg !124
  %cmp28 = icmp slt i64 %sub27, 0, !dbg !124
  br i1 %cmp28, label %if.then30, label %do.end25.if.end31_crit_edge, !dbg !125

do.end25.if.end31_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8, !dbg !125
  br label %if.end31, !dbg !125

if.then30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8, !dbg !126
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16, !dbg !126
  %21 = add i64 %gcov_ctr57, 1, !dbg !126
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 2), align 16, !dbg !126
  br label %if.end31, !dbg !127

if.end31:                                         ; preds = %if.then30, %do.end25.if.end31_crit_edge
  %now.1 = phi i64 [ %20, %if.then30 ], [ %now.0, %do.end25.if.end31_crit_edge ], !dbg !94
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !128
  %22 = add i64 %gcov_ctr58, 1, !dbg !128
  store i64 %22, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 3), align 8, !dbg !128
  store i64 %now.1, ptr @trace_clock_struct, align 128, !dbg !129
  %gcov_ctr.i70 = load i64, ptr @__llvm_gcov_ctr.11, align 8, !dbg !130
  %23 = add i64 %gcov_ctr.i70, 1, !dbg !130
  store i64 %23, ptr @__llvm_gcov_ctr.11, align 8, !dbg !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !dbg !130, !srcloc !133
  %24 = load i16, ptr getelementptr (%struct.__raw_tickets, ptr getelementptr inbounds (%struct.anon.40, ptr @trace_clock_struct, i32 0, i32 1), i32 0, i32 1), align 2, !dbg !134
  %inc.i = add i16 %24, 1, !dbg !134
  store i16 %inc.i, ptr getelementptr (%struct.__raw_tickets, ptr getelementptr inbounds (%struct.anon.40, ptr @trace_clock_struct, i32 0, i32 1), i32 0, i32 1), align 2, !dbg !134
  %gcov_ctr.i.i71 = load i64, ptr @__llvm_gcov_ctr.17, align 8, !dbg !135
  %25 = add i64 %gcov_ctr.i.i71, 1, !dbg !135
  store i64 %25, ptr @__llvm_gcov_ctr.17, align 8, !dbg !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !dbg !135, !srcloc !138
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !dbg !139, !srcloc !140
  br label %if.end32, !dbg !141

if.end32:                                         ; preds = %if.end31, %arch_spin_trylock.exit.thread
  %now.2 = phi i64 [ %now.1, %if.end31 ], [ %now.0, %arch_spin_trylock.exit.thread ], !dbg !94
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16, !dbg !142
  %26 = add i64 %gcov_ctr59, 1, !dbg !142
  store i64 %26, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 4), align 16, !dbg !142
  br label %do.body33, !dbg !142

do.body33:                                        ; preds = %if.end32, %if.then18
  %now.3 = phi i64 [ %now.0, %if.then18 ], [ %now.2, %if.end32 ], !dbg !94
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.12, align 8, !dbg !143
  %27 = add i64 %gcov_ctr.i72, 1, !dbg !143
  store i64 %27, ptr @__llvm_gcov_ctr.12, align 8, !dbg !143
  %gcov_ctr.i.i73 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %28 = add i64 %gcov_ctr.i.i73, 1
  store i64 %28, ptr @__llvm_gcov_ctr.19, align 8
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !dbg !147, !srcloc !150
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %30 = add i64 %gcov_ctr.i2.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.18, align 8
  %and.i.i74 = and i32 %29, 128, !dbg !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74), !dbg !154
  %tobool41.not = icmp eq i32 %and.i.i74, 0, !dbg !154
  br i1 %tobool41.not, label %if.then50, label %do.body33.do.end53_crit_edge, !dbg !154, !prof !155

do.body33.do.end53_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8, !dbg !154
  br label %do.end53, !dbg !154

if.then50:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8, !dbg !154
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !154
  %31 = add i64 %gcov_ctr60, 1, !dbg !154
  store i64 %31, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.6, i32 0, i32 5), align 8, !dbg !154
  tail call void @warn_bogus_irq_restore() #9, !dbg !154
  br label %do.end53, !dbg !154

do.end53:                                         ; preds = %if.then50, %do.body33.do.end53_crit_edge
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %32 = add i64 %gcov_ctr.i75, 1
  store i64 %32, ptr @__llvm_gcov_ctr.13, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #9, !dbg !156, !srcloc !159
  ret i64 %now.3, !dbg !160
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @trace_clock_counter() local_unnamed_addr #0 align 64 !dbg !161 {
entry:
  call void @__sanitizer_cov_trace_pc() #8, !dbg !162
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 8, !dbg !163
  %0 = add i64 %gcov_ctr, 1, !dbg !163
  store i64 %0, ptr @__llvm_gcov_ctr.14, align 8, !dbg !163
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.20, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @trace_counter, i32 noundef 8) #9, !dbg !164
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.21, align 8
  %call.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @trace_counter) #9, !dbg !171
  ret i64 %call.i, !dbg !172
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1704508969) #9
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #9
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #9
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 22
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #8
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcda_summary_info() #9
  tail call void @llvm_gcda_end_file() #9
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  store i64 0, ptr @__llvm_gcov_ctr.1, align 8
  store i64 0, ptr @__llvm_gcov_ctr.2, align 8
  store i64 0, ptr @__llvm_gcov_ctr.3, align 8
  store i64 0, ptr @__llvm_gcov_ctr.4, align 8
  store i64 0, ptr @__llvm_gcov_ctr.5, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.6, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  store i64 0, ptr @__llvm_gcov_ctr.8, align 8
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.10, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #4 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #9
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind uwtable(sync) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.gcov = !{!23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_clock.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__ksymtab_trace_clock_local, !3, !"__ksymtab_trace_clock_local", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_clock.c", i32 47, i32 1}
!4 = !{ptr @__ksymtab_trace_clock, !5, !"__ksymtab_trace_clock", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_clock.c", i32 61, i32 1}
!6 = !{ptr @__ksymtab_trace_clock_jiffies, !7, !"__ksymtab_trace_clock_jiffies", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_clock.c", i32 74, i32 1}
!8 = !{ptr @__ksymtab_trace_clock_global, !9, !"__ksymtab_trace_clock_global", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_clock.c", i32 146, i32 1}
!10 = !{ptr @trace_counter, !11, !"trace_counter", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_clock.c", i32 148, i32 19}
!12 = !{ptr @trace_clock_struct, !13, !"trace_clock_struct", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_clock.c", i32 89, i32 3}
!14 = !{!"sp"}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_clock.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_clock.gcda", !0}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = distinct !DISubprogram(name: "trace_clock_local", scope: !1, file: !1, line: 32, type: !26, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!26 = !DISubroutineType(types: !27)
!27 = !{}
!28 = !DILocation(line: 33, scope: !25)
!29 = !DILocation(line: 16, column: 10, scope: !30, inlinedAt: !32)
!30 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !31, file: !31, line: 14, type: !26, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!31 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!32 = distinct !DILocation(line: 54, column: 3, scope: !33, inlinedAt: !34)
!33 = distinct !DISubprogram(name: "__preempt_count_add", scope: !31, file: !31, line: 52, type: !26, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!34 = distinct !DILocation(line: 41, column: 2, scope: !25)
!35 = !DILocation(line: 104, column: 4, scope: !36, inlinedAt: !38)
!36 = distinct !DISubprogram(name: "current_thread_info", scope: !37, file: !37, line: 101, type: !26, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!37 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!38 = distinct !DILocation(line: 16, column: 10, scope: !30, inlinedAt: !32)
!39 = !DILocation(line: 104, column: 26, scope: !36, inlinedAt: !38)
!40 = !DILocation(line: 103, column: 9, scope: !36, inlinedAt: !38)
!41 = !DILocation(line: 16, column: 33, scope: !30, inlinedAt: !32)
!42 = !DILocation(line: 54, column: 23, scope: !33, inlinedAt: !34)
!43 = !DILocation(line: 41, column: 2, scope: !25)
!44 = !{i64 2152611927}
!45 = !DILocation(line: 42, column: 10, scope: !25)
!46 = !DILocation(line: 43, column: 2, scope: !25)
!47 = !{i64 2152612026}
!48 = !DILocation(line: 16, column: 10, scope: !30, inlinedAt: !49)
!49 = distinct !DILocation(line: 59, column: 3, scope: !50, inlinedAt: !51)
!50 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !31, file: !31, line: 57, type: !26, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!51 = distinct !DILocation(line: 43, column: 2, scope: !25)
!52 = !DILocation(line: 104, column: 4, scope: !36, inlinedAt: !53)
!53 = distinct !DILocation(line: 16, column: 10, scope: !30, inlinedAt: !49)
!54 = !DILocation(line: 104, column: 26, scope: !36, inlinedAt: !53)
!55 = !DILocation(line: 103, column: 9, scope: !36, inlinedAt: !53)
!56 = !DILocation(line: 16, column: 33, scope: !30, inlinedAt: !49)
!57 = !DILocation(line: 59, column: 23, scope: !50, inlinedAt: !51)
!58 = !DILocation(line: 45, column: 2, scope: !25)
!59 = distinct !DISubprogram(name: "trace_clock", scope: !1, file: !1, line: 57, type: !26, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!60 = !DILocation(line: 58, scope: !59)
!61 = !DILocation(line: 59, column: 9, scope: !59)
!62 = !DILocation(line: 50, column: 9, scope: !63, inlinedAt: !65)
!63 = distinct !DISubprogram(name: "local_clock", scope: !64, file: !64, line: 48, type: !26, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!64 = !DIFile(filename: "../include/linux/sched/clock.h", directory: "/llk/linux-5.17/build_arm_allyes")
!65 = distinct !DILocation(line: 59, column: 9, scope: !59)
!66 = !DILocation(line: 59, column: 2, scope: !59)
!67 = distinct !DISubprogram(name: "trace_clock_jiffies", scope: !1, file: !1, line: 70, type: !26, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!68 = !DILocation(line: 71, scope: !67)
!69 = !DILocation(line: 72, column: 31, scope: !67)
!70 = !DILocation(line: 72, column: 42, scope: !67)
!71 = !DILocation(line: 72, column: 9, scope: !67)
!72 = !DILocation(line: 72, column: 2, scope: !67)
!73 = distinct !DISubprogram(name: "trace_clock_global", scope: !1, file: !1, line: 94, type: !26, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!74 = !DILocation(line: 95, scope: !73)
!75 = !DILocation(line: 29, column: 2, scope: !76, inlinedAt: !78)
!76 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !77, file: !77, line: 25, type: !26, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!77 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!78 = distinct !DILocation(line: 100, column: 2, scope: !73)
!79 = !{i64 884424, i64 884485}
!80 = !DILocation(line: 104, column: 4, scope: !36, inlinedAt: !81)
!81 = distinct !DILocation(line: 102, column: 13, scope: !73)
!82 = !DILocation(line: 104, column: 26, scope: !36, inlinedAt: !81)
!83 = !DILocation(line: 103, column: 9, scope: !36, inlinedAt: !81)
!84 = !DILocation(line: 102, column: 13, scope: !73)
!85 = !DILocation(line: 114, column: 2, scope: !73)
!86 = !{i64 2152617150}
!87 = !DILocation(line: 115, column: 14, scope: !73)
!88 = !DILocation(line: 116, column: 8, scope: !73)
!89 = !DILocation(line: 119, column: 16, scope: !73)
!90 = !DILocation(line: 119, column: 29, scope: !73)
!91 = !DILocation(line: 119, column: 6, scope: !73)
!92 = !DILocation(line: 120, column: 9, scope: !73)
!93 = !DILocation(line: 120, column: 3, scope: !73)
!94 = !DILocation(line: 0, scope: !73)
!95 = !DILocation(line: 104, column: 4, scope: !36, inlinedAt: !96)
!96 = distinct !DILocation(line: 11, column: 9, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "preempt_count", scope: !31, file: !31, line: 9, type: !26, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!98 = distinct !DILocation(line: 126, column: 6, scope: !73)
!99 = !DILocation(line: 104, column: 26, scope: !36, inlinedAt: !96)
!100 = !DILocation(line: 103, column: 9, scope: !36, inlinedAt: !96)
!101 = !DILocation(line: 11, column: 9, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 126, column: 6, scope: !73)
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !DILocation(line: 127, column: 3, scope: !73)
!105 = !DILocation(line: 86, column: 2, scope: !106, inlinedAt: !108)
!106 = distinct !DISubprogram(name: "arch_spin_trylock", scope: !107, file: !107, line: 81, type: !26, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!107 = !DIFile(filename: "../arch/arm/include/asm/spinlock.h", directory: "/llk/linux-5.17/build_arm_allyes")
!108 = distinct !DILocation(line: 130, column: 6, scope: !73)
!109 = !DILocation(line: 87, column: 2, scope: !106, inlinedAt: !108)
!110 = !DILocation(line: 95, column: 11, scope: !106, inlinedAt: !108)
!111 = !DILocation(line: 88, column: 3, scope: !106, inlinedAt: !108)
!112 = !{i64 1637211, i64 1637234, i64 1637252, i64 1637284, i64 1637308}
!113 = !DILocation(line: 97, column: 2, scope: !106, inlinedAt: !108)
!114 = distinct !{!114, !109, !115}
!115 = !DILocation(line: 97, column: 14, scope: !106, inlinedAt: !108)
!116 = !DILocation(line: 99, column: 7, scope: !106, inlinedAt: !108)
!117 = !DILocation(line: 99, column: 6, scope: !106, inlinedAt: !108)
!118 = !DILocation(line: 103, column: 3, scope: !106, inlinedAt: !108)
!119 = !DILocation(line: 130, column: 6, scope: !73)
!120 = !DILocation(line: 100, column: 3, scope: !106, inlinedAt: !108)
!121 = !{i64 2149128584}
!122 = !DILocation(line: 132, column: 15, scope: !73)
!123 = !DILocation(line: 133, column: 17, scope: !73)
!124 = !DILocation(line: 133, column: 30, scope: !73)
!125 = !DILocation(line: 133, column: 7, scope: !73)
!126 = !DILocation(line: 134, column: 10, scope: !73)
!127 = !DILocation(line: 134, column: 4, scope: !73)
!128 = !DILocation(line: 136, column: 34, scope: !73)
!129 = !DILocation(line: 136, column: 32, scope: !73)
!130 = !DILocation(line: 109, column: 2, scope: !131, inlinedAt: !132)
!131 = distinct !DISubprogram(name: "arch_spin_unlock", scope: !107, file: !107, line: 107, type: !26, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!132 = distinct !DILocation(line: 139, column: 3, scope: !73)
!133 = !{i64 2149128905}
!134 = !DILocation(line: 110, column: 21, scope: !131, inlinedAt: !132)
!135 = !DILocation(line: 44, column: 2, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "dsb_sev", scope: !107, file: !107, line: 41, type: !26, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!137 = distinct !DILocation(line: 111, column: 2, scope: !131, inlinedAt: !132)
!138 = !{i64 2149124579}
!139 = !DILocation(line: 45, column: 2, scope: !136, inlinedAt: !137)
!140 = !{i64 2149124678, i64 2149124705, i64 2149124752, i64 2149124774, i64 2149124802, i64 2149124822}
!141 = !DILocation(line: 140, column: 2, scope: !73)
!142 = !DILocation(line: 130, column: 48, scope: !73)
!143 = !DILocation(line: 63, column: 34, scope: !144, inlinedAt: !146)
!144 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !145, file: !145, line: 61, type: !26, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!145 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!146 = distinct !DILocation(line: 142, column: 2, scope: !73)
!147 = !DILocation(line: 159, column: 2, scope: !148, inlinedAt: !149)
!148 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !77, file: !77, line: 156, type: !26, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!149 = distinct !DILocation(line: 63, column: 34, scope: !144, inlinedAt: !146)
!150 = !{i64 887156}
!151 = !DILocation(line: 181, column: 15, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !77, file: !77, line: 179, type: !26, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!153 = distinct !DILocation(line: 63, column: 9, scope: !144, inlinedAt: !146)
!154 = !DILocation(line: 142, column: 2, scope: !73)
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !DILocation(line: 171, column: 2, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !77, file: !77, line: 169, type: !26, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!158 = distinct !DILocation(line: 142, column: 2, scope: !73)
!159 = !{i64 887441}
!160 = !DILocation(line: 144, column: 2, scope: !73)
!161 = distinct !DISubprogram(name: "trace_clock_counter", scope: !1, file: !1, line: 155, type: !26, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!162 = !DILocation(line: 156, scope: !161)
!163 = !DILocation(line: 157, column: 9, scope: !161)
!164 = !DILocation(line: 101, column: 2, scope: !165, inlinedAt: !167)
!165 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !166, file: !166, line: 99, type: !26, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!166 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!167 = distinct !DILocation(line: 683, column: 2, scope: !168, inlinedAt: !170)
!168 = distinct !DISubprogram(name: "atomic64_add_return", scope: !169, file: !169, line: 680, type: !26, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!169 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!170 = distinct !DILocation(line: 157, column: 9, scope: !161)
!171 = !DILocation(line: 684, column: 9, scope: !168, inlinedAt: !170)
!172 = !DILocation(line: 157, column: 2, scope: !161)
