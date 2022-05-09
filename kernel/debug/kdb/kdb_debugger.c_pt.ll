; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_debugger.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_debugger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kdb_poll_funcs\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_poll_funcs\09\09\09\09"
module asm "\09.long\09__crc_kdb_poll_funcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_poll_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_poll_funcs\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_poll_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kdb_poll_idx\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_poll_idx\09\09\09\09"
module asm "\09.long\09__crc_kdb_poll_idx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_poll_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_poll_idx\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_poll_idx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct._kdb_bp = type { i32, i16, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kgdb_state = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@kdb_poll_funcs = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dbg_io_get_char, ptr null, ptr null, ptr null, ptr null, ptr null], [40 x i8] zeroinitializer }, align 32
@__kstrtab_kdb_poll_funcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_poll_funcs = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_poll_funcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_poll_funcs to i32), ptr @__kstrtab_kdb_poll_funcs, ptr @__kstrtabns_kdb_poll_funcs }, section "___ksymtab_gpl+kdb_poll_funcs", align 4
@kdb_poll_idx = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_kdb_poll_idx = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_poll_idx = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_poll_idx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_poll_idx to i32), ptr @__kstrtab_kdb_poll_idx, ptr @__kstrtabns_kdb_poll_idx }, section "___ksymtab_gpl+kdb_poll_idx", align 4
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@kdb_initial_cpu = external dso_local local_unnamed_addr global i32, align 4
@kgdb_info = external dso_local local_unnamed_addr global [0 x %struct.debuggerinfo_struct], align 4
@kdb_current_task = external dso_local local_unnamed_addr global ptr, align 4
@kdb_current_regs = external dso_local local_unnamed_addr global ptr, align 4
@kdb_ks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kdb_state = external dso_local local_unnamed_addr global i32, align 4
@kgdb_setting_breakpoint = external dso_local global %struct.atomic_t, align 4
@kdb_breakpoints = external dso_local local_unnamed_addr global [0 x %struct._kdb_bp], align 4
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@kgdb_single_step = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"kdb_poll_funcs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 22, i32 15 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"kdb_poll_idx\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 32, i32 5 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"kdb_ks\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 35, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 151, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 153, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [35 x i8] c"../kernel/debug/kdb/kdb_debugger.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 158, i32 51 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_kdb_poll_funcs, ptr @__ksymtab_kdb_poll_idx, ptr @kdb_poll_funcs, ptr @kdb_poll_idx, ptr @kdb_ks, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_poll_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_poll_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_ks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_io_get_char() #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_common_init_state(ptr nocapture noundef readonly %ks) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %0 = load volatile i32, ptr @kgdb_active, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_initial_cpu to i32))
  store i32 %0, ptr @kdb_initial_cpu, align 4
  %cpu = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 3
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %2, i32 1
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  store ptr %4, ptr @kdb_current_task, align 4
  %arrayidx2 = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_regs to i32))
  store ptr %6, ptr @kdb_current_regs, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @kdb_common_deinit_state() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_initial_cpu to i32))
  store i32 -1, ptr @kdb_initial_cpu, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  store ptr null, ptr @kdb_current_task, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_regs to i32))
  store ptr null, ptr @kdb_current_regs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_stub(ptr noundef %ks) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ks, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 8
  %2 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %linux_regs, align 4
  %call = tail call i32 @kgdb_arch_pc(i32 noundef %1, ptr noundef %3) #5
  store ptr %ks, ptr @kdb_ks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %4 = load i32, ptr @kdb_state, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1 = and i32 %4, -257
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and1, ptr @kdb_state, align 4
  %5 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %linux_regs, align 4
  %arrayidx = getelementptr [18 x i32], ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr.0 = phi i32 [ %8, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %reason.0 = phi i32 [ 6, %if.then ], [ 5, %entry.if.end_crit_edge ]
  %pass_exception = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 4
  %9 = ptrtoint ptr %pass_exception to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pass_exception, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_setting_breakpoint, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_setting_breakpoint to i32))
  %10 = load volatile i32, ptr @kgdb_setting_breakpoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  %spec.select = select i1 %tobool4.not, i32 %reason.0, i32 7
  %err_code = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 2
  %11 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp = icmp eq i32 %12, 11
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %signo = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 1
  %13 = ptrtoint ptr %signo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp7 = icmp eq i32 %14, 5
  br i1 %cmp7, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !16) #5
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i, align 4
  %and10 = and i32 %18, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select182 = select i1 %tobool11.not, i32 %spec.select, i32 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %land.lhs.true.if.end14_crit_edge
  %reason.2 = phi i32 [ 11, %land.lhs.true.if.end14_crit_edge ], [ %spec.select182, %if.else ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1) to i32))
  %bf.load = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1), align 4
  %19 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool16.not = icmp eq i16 %19, 0
  br i1 %tobool16.not, label %if.end14.for.inc_crit_edge, label %land.lhs.true17

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true17:                                  ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_breakpoints to i32))
  %20 = load i32, ptr @kdb_breakpoints, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %addr.0)
  %cmp18 = icmp eq i32 %20, %addr.0
  br i1 %cmp18, label %land.lhs.true17.if.then19_crit_edge, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true17.if.then19_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true17.15.if.then19_crit_edge, %land.lhs.true17.14.if.then19_crit_edge, %land.lhs.true17.13.if.then19_crit_edge, %land.lhs.true17.12.if.then19_crit_edge, %land.lhs.true17.11.if.then19_crit_edge, %land.lhs.true17.10.if.then19_crit_edge, %land.lhs.true17.9.if.then19_crit_edge, %land.lhs.true17.8.if.then19_crit_edge, %land.lhs.true17.7.if.then19_crit_edge, %land.lhs.true17.6.if.then19_crit_edge, %land.lhs.true17.5.if.then19_crit_edge, %land.lhs.true17.4.if.then19_crit_edge, %land.lhs.true17.3.if.then19_crit_edge, %land.lhs.true17.2.if.then19_crit_edge, %land.lhs.true17.1.if.then19_crit_edge, %land.lhs.true17.if.then19_crit_edge
  %21 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %linux_regs, align 4
  %arrayidx22 = getelementptr [18 x i32], ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0, i32 %24)
  %cmp23.not = icmp eq i32 %addr.0, %24
  br i1 %cmp23.not, label %if.then19.if.then30_crit_edge, label %if.then24

if.then19.if.then30_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kgdb_arch_set_pc(ptr noundef %22, i32 noundef %addr.0) #5
  br label %if.then30

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %if.end14.for.inc_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1) to i32))
  %bf.load.1 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1), align 4
  %25 = and i16 %bf.load.1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not.1 = icmp eq i16 %25, 0
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true17.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true17.1:                                ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1) to i32))
  %26 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %addr.0)
  %cmp18.1 = icmp eq i32 %26, %addr.0
  br i1 %cmp18.1, label %land.lhs.true17.1.if.then19_crit_edge, label %land.lhs.true17.1.for.inc.1_crit_edge

land.lhs.true17.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true17.1.if.then19_crit_edge:            ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.1:                                        ; preds = %land.lhs.true17.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1) to i32))
  %bf.load.2 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1), align 4
  %27 = and i16 %bf.load.2, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not.2 = icmp eq i16 %27, 0
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true17.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true17.2:                                ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2) to i32))
  %28 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %addr.0)
  %cmp18.2 = icmp eq i32 %28, %addr.0
  br i1 %cmp18.2, label %land.lhs.true17.2.if.then19_crit_edge, label %land.lhs.true17.2.for.inc.2_crit_edge

land.lhs.true17.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true17.2.if.then19_crit_edge:            ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.2:                                        ; preds = %land.lhs.true17.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1) to i32))
  %bf.load.3 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1), align 4
  %29 = and i16 %bf.load.3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool16.not.3 = icmp eq i16 %29, 0
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true17.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true17.3:                                ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3) to i32))
  %30 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %addr.0)
  %cmp18.3 = icmp eq i32 %30, %addr.0
  br i1 %cmp18.3, label %land.lhs.true17.3.if.then19_crit_edge, label %land.lhs.true17.3.for.inc.3_crit_edge

land.lhs.true17.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true17.3.if.then19_crit_edge:            ; preds = %land.lhs.true17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.3:                                        ; preds = %land.lhs.true17.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1) to i32))
  %bf.load.4 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1), align 4
  %31 = and i16 %bf.load.4, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool16.not.4 = icmp eq i16 %31, 0
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true17.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true17.4:                                ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4) to i32))
  %32 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %addr.0)
  %cmp18.4 = icmp eq i32 %32, %addr.0
  br i1 %cmp18.4, label %land.lhs.true17.4.if.then19_crit_edge, label %land.lhs.true17.4.for.inc.4_crit_edge

land.lhs.true17.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true17.4.if.then19_crit_edge:            ; preds = %land.lhs.true17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.4:                                        ; preds = %land.lhs.true17.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1) to i32))
  %bf.load.5 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1), align 4
  %33 = and i16 %bf.load.5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool16.not.5 = icmp eq i16 %33, 0
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true17.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true17.5:                                ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5) to i32))
  %34 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %addr.0)
  %cmp18.5 = icmp eq i32 %34, %addr.0
  br i1 %cmp18.5, label %land.lhs.true17.5.if.then19_crit_edge, label %land.lhs.true17.5.for.inc.5_crit_edge

land.lhs.true17.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true17.5.if.then19_crit_edge:            ; preds = %land.lhs.true17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.5:                                        ; preds = %land.lhs.true17.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1) to i32))
  %bf.load.6 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1), align 4
  %35 = and i16 %bf.load.6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool16.not.6 = icmp eq i16 %35, 0
  br i1 %tobool16.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true17.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true17.6:                                ; preds = %for.inc.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6) to i32))
  %36 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %addr.0)
  %cmp18.6 = icmp eq i32 %36, %addr.0
  br i1 %cmp18.6, label %land.lhs.true17.6.if.then19_crit_edge, label %land.lhs.true17.6.for.inc.6_crit_edge

land.lhs.true17.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true17.6.if.then19_crit_edge:            ; preds = %land.lhs.true17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.6:                                        ; preds = %land.lhs.true17.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1) to i32))
  %bf.load.7 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1), align 4
  %37 = and i16 %bf.load.7, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool16.not.7 = icmp eq i16 %37, 0
  br i1 %tobool16.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true17.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true17.7:                                ; preds = %for.inc.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7) to i32))
  %38 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %addr.0)
  %cmp18.7 = icmp eq i32 %38, %addr.0
  br i1 %cmp18.7, label %land.lhs.true17.7.if.then19_crit_edge, label %land.lhs.true17.7.for.inc.7_crit_edge

land.lhs.true17.7.for.inc.7_crit_edge:            ; preds = %land.lhs.true17.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true17.7.if.then19_crit_edge:            ; preds = %land.lhs.true17.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.7:                                        ; preds = %land.lhs.true17.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1) to i32))
  %bf.load.8 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1), align 4
  %39 = and i16 %bf.load.8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool16.not.8 = icmp eq i16 %39, 0
  br i1 %tobool16.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true17.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

land.lhs.true17.8:                                ; preds = %for.inc.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8) to i32))
  %40 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %addr.0)
  %cmp18.8 = icmp eq i32 %40, %addr.0
  br i1 %cmp18.8, label %land.lhs.true17.8.if.then19_crit_edge, label %land.lhs.true17.8.for.inc.8_crit_edge

land.lhs.true17.8.for.inc.8_crit_edge:            ; preds = %land.lhs.true17.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

land.lhs.true17.8.if.then19_crit_edge:            ; preds = %land.lhs.true17.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.8:                                        ; preds = %land.lhs.true17.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1) to i32))
  %bf.load.9 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1), align 4
  %41 = and i16 %bf.load.9, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool16.not.9 = icmp eq i16 %41, 0
  br i1 %tobool16.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true17.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9

land.lhs.true17.9:                                ; preds = %for.inc.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9) to i32))
  %42 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %addr.0)
  %cmp18.9 = icmp eq i32 %42, %addr.0
  br i1 %cmp18.9, label %land.lhs.true17.9.if.then19_crit_edge, label %land.lhs.true17.9.for.inc.9_crit_edge

land.lhs.true17.9.for.inc.9_crit_edge:            ; preds = %land.lhs.true17.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9

land.lhs.true17.9.if.then19_crit_edge:            ; preds = %land.lhs.true17.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.9:                                        ; preds = %land.lhs.true17.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1) to i32))
  %bf.load.10 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1), align 4
  %43 = and i16 %bf.load.10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool16.not.10 = icmp eq i16 %43, 0
  br i1 %tobool16.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true17.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10

land.lhs.true17.10:                               ; preds = %for.inc.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10) to i32))
  %44 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %addr.0)
  %cmp18.10 = icmp eq i32 %44, %addr.0
  br i1 %cmp18.10, label %land.lhs.true17.10.if.then19_crit_edge, label %land.lhs.true17.10.for.inc.10_crit_edge

land.lhs.true17.10.for.inc.10_crit_edge:          ; preds = %land.lhs.true17.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10

land.lhs.true17.10.if.then19_crit_edge:           ; preds = %land.lhs.true17.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.10:                                       ; preds = %land.lhs.true17.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1) to i32))
  %bf.load.11 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1), align 4
  %45 = and i16 %bf.load.11, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool16.not.11 = icmp eq i16 %45, 0
  br i1 %tobool16.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true17.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11

land.lhs.true17.11:                               ; preds = %for.inc.10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11) to i32))
  %46 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %addr.0)
  %cmp18.11 = icmp eq i32 %46, %addr.0
  br i1 %cmp18.11, label %land.lhs.true17.11.if.then19_crit_edge, label %land.lhs.true17.11.for.inc.11_crit_edge

land.lhs.true17.11.for.inc.11_crit_edge:          ; preds = %land.lhs.true17.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11

land.lhs.true17.11.if.then19_crit_edge:           ; preds = %land.lhs.true17.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.11:                                       ; preds = %land.lhs.true17.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1) to i32))
  %bf.load.12 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1), align 4
  %47 = and i16 %bf.load.12, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool16.not.12 = icmp eq i16 %47, 0
  br i1 %tobool16.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true17.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12

land.lhs.true17.12:                               ; preds = %for.inc.11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12) to i32))
  %48 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %addr.0)
  %cmp18.12 = icmp eq i32 %48, %addr.0
  br i1 %cmp18.12, label %land.lhs.true17.12.if.then19_crit_edge, label %land.lhs.true17.12.for.inc.12_crit_edge

land.lhs.true17.12.for.inc.12_crit_edge:          ; preds = %land.lhs.true17.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12

land.lhs.true17.12.if.then19_crit_edge:           ; preds = %land.lhs.true17.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.12:                                       ; preds = %land.lhs.true17.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1) to i32))
  %bf.load.13 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1), align 4
  %49 = and i16 %bf.load.13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool16.not.13 = icmp eq i16 %49, 0
  br i1 %tobool16.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true17.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

land.lhs.true17.13:                               ; preds = %for.inc.12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13) to i32))
  %50 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %addr.0)
  %cmp18.13 = icmp eq i32 %50, %addr.0
  br i1 %cmp18.13, label %land.lhs.true17.13.if.then19_crit_edge, label %land.lhs.true17.13.for.inc.13_crit_edge

land.lhs.true17.13.for.inc.13_crit_edge:          ; preds = %land.lhs.true17.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

land.lhs.true17.13.if.then19_crit_edge:           ; preds = %land.lhs.true17.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.13:                                       ; preds = %land.lhs.true17.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1) to i32))
  %bf.load.14 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1), align 4
  %51 = and i16 %bf.load.14, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool16.not.14 = icmp eq i16 %51, 0
  br i1 %tobool16.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true17.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.14

land.lhs.true17.14:                               ; preds = %for.inc.13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14) to i32))
  %52 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %addr.0)
  %cmp18.14 = icmp eq i32 %52, %addr.0
  br i1 %cmp18.14, label %land.lhs.true17.14.if.then19_crit_edge, label %land.lhs.true17.14.for.inc.14_crit_edge

land.lhs.true17.14.for.inc.14_crit_edge:          ; preds = %land.lhs.true17.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.14

land.lhs.true17.14.if.then19_crit_edge:           ; preds = %land.lhs.true17.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.14:                                       ; preds = %land.lhs.true17.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1) to i32))
  %bf.load.15 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1), align 4
  %53 = and i16 %bf.load.15, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool16.not.15 = icmp eq i16 %53, 0
  br i1 %tobool16.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true17.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.15

land.lhs.true17.15:                               ; preds = %for.inc.14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15) to i32))
  %54 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %addr.0)
  %cmp18.15 = icmp eq i32 %54, %addr.0
  br i1 %cmp18.15, label %land.lhs.true17.15.if.then19_crit_edge, label %land.lhs.true17.15.for.inc.15_crit_edge

land.lhs.true17.15.for.inc.15_crit_edge:          ; preds = %land.lhs.true17.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.15

land.lhs.true17.15.if.then19_crit_edge:           ; preds = %land.lhs.true17.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

for.inc.15:                                       ; preds = %land.lhs.true17.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reason.2)
  %cond = icmp eq i32 %reason.2, 6
  br i1 %cond, label %for.inc.15.if.then30_crit_edge, label %for.inc.15.land.lhs.true55_crit_edge

for.inc.15.land.lhs.true55_crit_edge:             ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true55

for.inc.15.if.then30_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %for.inc.15.if.then30_crit_edge, %if.then24, %if.then19.if.then30_crit_edge
  %db_result.0189 = phi i32 [ 3, %for.inc.15.if.then30_crit_edge ], [ 0, %if.then24 ], [ 0, %if.then19.if.then30_crit_edge ]
  %cmp54.not = phi i1 [ false, %for.inc.15.if.then30_crit_edge ], [ true, %if.then24 ], [ true, %if.then19.if.then30_crit_edge ]
  %reason.3188 = phi i32 [ 6, %for.inc.15.if.then30_crit_edge ], [ 3, %if.then24 ], [ 3, %if.then19.if.then30_crit_edge ]
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1) to i32))
  %bf.load34 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34)
  %tobool37.not = icmp sgt i16 %bf.load34, -1
  br i1 %tobool37.not, label %if.end39, label %if.then30.for.inc49_crit_edge

if.then30.for.inc49_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49

if.end39:                                         ; preds = %if.then30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_breakpoints to i32))
  %55 = load i32, ptr @kdb_breakpoints, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %addr.0)
  %cmp41 = icmp eq i32 %55, %addr.0
  br i1 %cmp41, label %if.end39.if.end53.thread_crit_edge, label %if.end39.for.inc49_crit_edge

if.end39.for.inc49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49

if.end39.if.end53.thread_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

if.end53.thread:                                  ; preds = %if.end39.15.if.end53.thread_crit_edge, %if.end39.14.if.end53.thread_crit_edge, %if.end39.13.if.end53.thread_crit_edge, %if.end39.12.if.end53.thread_crit_edge, %if.end39.11.if.end53.thread_crit_edge, %if.end39.10.if.end53.thread_crit_edge, %if.end39.9.if.end53.thread_crit_edge, %if.end39.8.if.end53.thread_crit_edge, %if.end39.7.if.end53.thread_crit_edge, %if.end39.6.if.end53.thread_crit_edge, %if.end39.5.if.end53.thread_crit_edge, %if.end39.4.if.end53.thread_crit_edge, %if.end39.3.if.end53.thread_crit_edge, %if.end39.2.if.end53.thread_crit_edge, %if.end39.1.if.end53.thread_crit_edge, %if.end39.if.end53.thread_crit_edge
  %bp.1202.lcssa = phi ptr [ @kdb_breakpoints, %if.end39.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), %if.end39.1.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), %if.end39.2.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), %if.end39.3.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), %if.end39.4.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), %if.end39.5.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), %if.end39.6.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), %if.end39.7.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), %if.end39.8.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), %if.end39.9.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), %if.end39.10.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), %if.end39.11.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), %if.end39.12.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), %if.end39.13.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), %if.end39.14.if.end53.thread_crit_edge ], [ getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), %if.end39.15.if.end53.thread_crit_edge ]
  %bf.load34.lcssa = phi i16 [ %bf.load34, %if.end39.if.end53.thread_crit_edge ], [ %bf.load34.1, %if.end39.1.if.end53.thread_crit_edge ], [ %bf.load34.2, %if.end39.2.if.end53.thread_crit_edge ], [ %bf.load34.3, %if.end39.3.if.end53.thread_crit_edge ], [ %bf.load34.4, %if.end39.4.if.end53.thread_crit_edge ], [ %bf.load34.5, %if.end39.5.if.end53.thread_crit_edge ], [ %bf.load34.6, %if.end39.6.if.end53.thread_crit_edge ], [ %bf.load34.7, %if.end39.7.if.end53.thread_crit_edge ], [ %bf.load34.8, %if.end39.8.if.end53.thread_crit_edge ], [ %bf.load34.9, %if.end39.9.if.end53.thread_crit_edge ], [ %bf.load34.10, %if.end39.10.if.end53.thread_crit_edge ], [ %bf.load34.11, %if.end39.11.if.end53.thread_crit_edge ], [ %bf.load34.12, %if.end39.12.if.end53.thread_crit_edge ], [ %bf.load34.13, %if.end39.13.if.end53.thread_crit_edge ], [ %bf.load34.14, %if.end39.14.if.end53.thread_crit_edge ], [ %bf.load34.15, %if.end39.15.if.end53.thread_crit_edge ]
  %bp_free.le = getelementptr inbounds %struct._kdb_bp, ptr %bp.1202.lcssa, i32 0, i32 1
  %bf.set47 = or i16 %bf.load34.lcssa, 384
  %56 = ptrtoint ptr %bp_free.le to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %bf.set47, ptr %bp_free.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %57 = load i32, ptr @kdb_state, align 4
  %or = or i32 %57, 128
  store i32 %or, ptr @kdb_state, align 4
  br label %if.end62

for.inc49:                                        ; preds = %if.end39.for.inc49_crit_edge, %if.then30.for.inc49_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1) to i32))
  %bf.load34.1 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.1)
  %tobool37.not.1 = icmp sgt i16 %bf.load34.1, -1
  br i1 %tobool37.not.1, label %if.end39.1, label %for.inc49.for.inc49.1_crit_edge

for.inc49.for.inc49.1_crit_edge:                  ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.1

if.end39.1:                                       ; preds = %for.inc49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1) to i32))
  %58 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %addr.0)
  %cmp41.1 = icmp eq i32 %58, %addr.0
  br i1 %cmp41.1, label %if.end39.1.if.end53.thread_crit_edge, label %if.end39.1.for.inc49.1_crit_edge

if.end39.1.for.inc49.1_crit_edge:                 ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.1

if.end39.1.if.end53.thread_crit_edge:             ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.1:                                      ; preds = %if.end39.1.for.inc49.1_crit_edge, %for.inc49.for.inc49.1_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1) to i32))
  %bf.load34.2 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.2)
  %tobool37.not.2 = icmp sgt i16 %bf.load34.2, -1
  br i1 %tobool37.not.2, label %if.end39.2, label %for.inc49.1.for.inc49.2_crit_edge

for.inc49.1.for.inc49.2_crit_edge:                ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.2

if.end39.2:                                       ; preds = %for.inc49.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2) to i32))
  %59 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %addr.0)
  %cmp41.2 = icmp eq i32 %59, %addr.0
  br i1 %cmp41.2, label %if.end39.2.if.end53.thread_crit_edge, label %if.end39.2.for.inc49.2_crit_edge

if.end39.2.for.inc49.2_crit_edge:                 ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.2

if.end39.2.if.end53.thread_crit_edge:             ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.2:                                      ; preds = %if.end39.2.for.inc49.2_crit_edge, %for.inc49.1.for.inc49.2_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1) to i32))
  %bf.load34.3 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.3)
  %tobool37.not.3 = icmp sgt i16 %bf.load34.3, -1
  br i1 %tobool37.not.3, label %if.end39.3, label %for.inc49.2.for.inc49.3_crit_edge

for.inc49.2.for.inc49.3_crit_edge:                ; preds = %for.inc49.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.3

if.end39.3:                                       ; preds = %for.inc49.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3) to i32))
  %60 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %addr.0)
  %cmp41.3 = icmp eq i32 %60, %addr.0
  br i1 %cmp41.3, label %if.end39.3.if.end53.thread_crit_edge, label %if.end39.3.for.inc49.3_crit_edge

if.end39.3.for.inc49.3_crit_edge:                 ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.3

if.end39.3.if.end53.thread_crit_edge:             ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.3:                                      ; preds = %if.end39.3.for.inc49.3_crit_edge, %for.inc49.2.for.inc49.3_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1) to i32))
  %bf.load34.4 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.4)
  %tobool37.not.4 = icmp sgt i16 %bf.load34.4, -1
  br i1 %tobool37.not.4, label %if.end39.4, label %for.inc49.3.for.inc49.4_crit_edge

for.inc49.3.for.inc49.4_crit_edge:                ; preds = %for.inc49.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.4

if.end39.4:                                       ; preds = %for.inc49.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4) to i32))
  %61 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %addr.0)
  %cmp41.4 = icmp eq i32 %61, %addr.0
  br i1 %cmp41.4, label %if.end39.4.if.end53.thread_crit_edge, label %if.end39.4.for.inc49.4_crit_edge

if.end39.4.for.inc49.4_crit_edge:                 ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.4

if.end39.4.if.end53.thread_crit_edge:             ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.4:                                      ; preds = %if.end39.4.for.inc49.4_crit_edge, %for.inc49.3.for.inc49.4_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1) to i32))
  %bf.load34.5 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.5)
  %tobool37.not.5 = icmp sgt i16 %bf.load34.5, -1
  br i1 %tobool37.not.5, label %if.end39.5, label %for.inc49.4.for.inc49.5_crit_edge

for.inc49.4.for.inc49.5_crit_edge:                ; preds = %for.inc49.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.5

if.end39.5:                                       ; preds = %for.inc49.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5) to i32))
  %62 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %addr.0)
  %cmp41.5 = icmp eq i32 %62, %addr.0
  br i1 %cmp41.5, label %if.end39.5.if.end53.thread_crit_edge, label %if.end39.5.for.inc49.5_crit_edge

if.end39.5.for.inc49.5_crit_edge:                 ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.5

if.end39.5.if.end53.thread_crit_edge:             ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.5:                                      ; preds = %if.end39.5.for.inc49.5_crit_edge, %for.inc49.4.for.inc49.5_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1) to i32))
  %bf.load34.6 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.6)
  %tobool37.not.6 = icmp sgt i16 %bf.load34.6, -1
  br i1 %tobool37.not.6, label %if.end39.6, label %for.inc49.5.for.inc49.6_crit_edge

for.inc49.5.for.inc49.6_crit_edge:                ; preds = %for.inc49.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.6

if.end39.6:                                       ; preds = %for.inc49.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6) to i32))
  %63 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %addr.0)
  %cmp41.6 = icmp eq i32 %63, %addr.0
  br i1 %cmp41.6, label %if.end39.6.if.end53.thread_crit_edge, label %if.end39.6.for.inc49.6_crit_edge

if.end39.6.for.inc49.6_crit_edge:                 ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.6

if.end39.6.if.end53.thread_crit_edge:             ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.6:                                      ; preds = %if.end39.6.for.inc49.6_crit_edge, %for.inc49.5.for.inc49.6_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1) to i32))
  %bf.load34.7 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.7)
  %tobool37.not.7 = icmp sgt i16 %bf.load34.7, -1
  br i1 %tobool37.not.7, label %if.end39.7, label %for.inc49.6.for.inc49.7_crit_edge

for.inc49.6.for.inc49.7_crit_edge:                ; preds = %for.inc49.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.7

if.end39.7:                                       ; preds = %for.inc49.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7) to i32))
  %64 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %addr.0)
  %cmp41.7 = icmp eq i32 %64, %addr.0
  br i1 %cmp41.7, label %if.end39.7.if.end53.thread_crit_edge, label %if.end39.7.for.inc49.7_crit_edge

if.end39.7.for.inc49.7_crit_edge:                 ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.7

if.end39.7.if.end53.thread_crit_edge:             ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.7:                                      ; preds = %if.end39.7.for.inc49.7_crit_edge, %for.inc49.6.for.inc49.7_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1) to i32))
  %bf.load34.8 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.8)
  %tobool37.not.8 = icmp sgt i16 %bf.load34.8, -1
  br i1 %tobool37.not.8, label %if.end39.8, label %for.inc49.7.for.inc49.8_crit_edge

for.inc49.7.for.inc49.8_crit_edge:                ; preds = %for.inc49.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.8

if.end39.8:                                       ; preds = %for.inc49.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8) to i32))
  %65 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %addr.0)
  %cmp41.8 = icmp eq i32 %65, %addr.0
  br i1 %cmp41.8, label %if.end39.8.if.end53.thread_crit_edge, label %if.end39.8.for.inc49.8_crit_edge

if.end39.8.for.inc49.8_crit_edge:                 ; preds = %if.end39.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.8

if.end39.8.if.end53.thread_crit_edge:             ; preds = %if.end39.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.8:                                      ; preds = %if.end39.8.for.inc49.8_crit_edge, %for.inc49.7.for.inc49.8_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1) to i32))
  %bf.load34.9 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.9)
  %tobool37.not.9 = icmp sgt i16 %bf.load34.9, -1
  br i1 %tobool37.not.9, label %if.end39.9, label %for.inc49.8.for.inc49.9_crit_edge

for.inc49.8.for.inc49.9_crit_edge:                ; preds = %for.inc49.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.9

if.end39.9:                                       ; preds = %for.inc49.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9) to i32))
  %66 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %addr.0)
  %cmp41.9 = icmp eq i32 %66, %addr.0
  br i1 %cmp41.9, label %if.end39.9.if.end53.thread_crit_edge, label %if.end39.9.for.inc49.9_crit_edge

if.end39.9.for.inc49.9_crit_edge:                 ; preds = %if.end39.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.9

if.end39.9.if.end53.thread_crit_edge:             ; preds = %if.end39.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.9:                                      ; preds = %if.end39.9.for.inc49.9_crit_edge, %for.inc49.8.for.inc49.9_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1) to i32))
  %bf.load34.10 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.10)
  %tobool37.not.10 = icmp sgt i16 %bf.load34.10, -1
  br i1 %tobool37.not.10, label %if.end39.10, label %for.inc49.9.for.inc49.10_crit_edge

for.inc49.9.for.inc49.10_crit_edge:               ; preds = %for.inc49.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.10

if.end39.10:                                      ; preds = %for.inc49.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10) to i32))
  %67 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %addr.0)
  %cmp41.10 = icmp eq i32 %67, %addr.0
  br i1 %cmp41.10, label %if.end39.10.if.end53.thread_crit_edge, label %if.end39.10.for.inc49.10_crit_edge

if.end39.10.for.inc49.10_crit_edge:               ; preds = %if.end39.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.10

if.end39.10.if.end53.thread_crit_edge:            ; preds = %if.end39.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.10:                                     ; preds = %if.end39.10.for.inc49.10_crit_edge, %for.inc49.9.for.inc49.10_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1) to i32))
  %bf.load34.11 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.11)
  %tobool37.not.11 = icmp sgt i16 %bf.load34.11, -1
  br i1 %tobool37.not.11, label %if.end39.11, label %for.inc49.10.for.inc49.11_crit_edge

for.inc49.10.for.inc49.11_crit_edge:              ; preds = %for.inc49.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.11

if.end39.11:                                      ; preds = %for.inc49.10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11) to i32))
  %68 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %addr.0)
  %cmp41.11 = icmp eq i32 %68, %addr.0
  br i1 %cmp41.11, label %if.end39.11.if.end53.thread_crit_edge, label %if.end39.11.for.inc49.11_crit_edge

if.end39.11.for.inc49.11_crit_edge:               ; preds = %if.end39.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.11

if.end39.11.if.end53.thread_crit_edge:            ; preds = %if.end39.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.11:                                     ; preds = %if.end39.11.for.inc49.11_crit_edge, %for.inc49.10.for.inc49.11_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1) to i32))
  %bf.load34.12 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.12)
  %tobool37.not.12 = icmp sgt i16 %bf.load34.12, -1
  br i1 %tobool37.not.12, label %if.end39.12, label %for.inc49.11.for.inc49.12_crit_edge

for.inc49.11.for.inc49.12_crit_edge:              ; preds = %for.inc49.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.12

if.end39.12:                                      ; preds = %for.inc49.11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12) to i32))
  %69 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %addr.0)
  %cmp41.12 = icmp eq i32 %69, %addr.0
  br i1 %cmp41.12, label %if.end39.12.if.end53.thread_crit_edge, label %if.end39.12.for.inc49.12_crit_edge

if.end39.12.for.inc49.12_crit_edge:               ; preds = %if.end39.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.12

if.end39.12.if.end53.thread_crit_edge:            ; preds = %if.end39.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.12:                                     ; preds = %if.end39.12.for.inc49.12_crit_edge, %for.inc49.11.for.inc49.12_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1) to i32))
  %bf.load34.13 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.13)
  %tobool37.not.13 = icmp sgt i16 %bf.load34.13, -1
  br i1 %tobool37.not.13, label %if.end39.13, label %for.inc49.12.for.inc49.13_crit_edge

for.inc49.12.for.inc49.13_crit_edge:              ; preds = %for.inc49.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.13

if.end39.13:                                      ; preds = %for.inc49.12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13) to i32))
  %70 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %addr.0)
  %cmp41.13 = icmp eq i32 %70, %addr.0
  br i1 %cmp41.13, label %if.end39.13.if.end53.thread_crit_edge, label %if.end39.13.for.inc49.13_crit_edge

if.end39.13.for.inc49.13_crit_edge:               ; preds = %if.end39.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.13

if.end39.13.if.end53.thread_crit_edge:            ; preds = %if.end39.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.13:                                     ; preds = %if.end39.13.for.inc49.13_crit_edge, %for.inc49.12.for.inc49.13_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1) to i32))
  %bf.load34.14 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.14)
  %tobool37.not.14 = icmp sgt i16 %bf.load34.14, -1
  br i1 %tobool37.not.14, label %if.end39.14, label %for.inc49.13.for.inc49.14_crit_edge

for.inc49.13.for.inc49.14_crit_edge:              ; preds = %for.inc49.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.14

if.end39.14:                                      ; preds = %for.inc49.13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14) to i32))
  %71 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %addr.0)
  %cmp41.14 = icmp eq i32 %71, %addr.0
  br i1 %cmp41.14, label %if.end39.14.if.end53.thread_crit_edge, label %if.end39.14.for.inc49.14_crit_edge

if.end39.14.for.inc49.14_crit_edge:               ; preds = %if.end39.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.14

if.end39.14.if.end53.thread_crit_edge:            ; preds = %if.end39.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.14:                                     ; preds = %if.end39.14.for.inc49.14_crit_edge, %for.inc49.13.for.inc49.14_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1) to i32))
  %bf.load34.15 = load i16, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load34.15)
  %tobool37.not.15 = icmp sgt i16 %bf.load34.15, -1
  br i1 %tobool37.not.15, label %if.end39.15, label %for.inc49.14.for.inc49.15_crit_edge

for.inc49.14.for.inc49.15_crit_edge:              ; preds = %for.inc49.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.15

if.end39.15:                                      ; preds = %for.inc49.14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15) to i32))
  %72 = load i32, ptr getelementptr inbounds ([0 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %addr.0)
  %cmp41.15 = icmp eq i32 %72, %addr.0
  br i1 %cmp41.15, label %if.end39.15.if.end53.thread_crit_edge, label %if.end39.15.for.inc49.15_crit_edge

if.end39.15.for.inc49.15_crit_edge:               ; preds = %if.end39.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.15

if.end39.15.if.end53.thread_crit_edge:            ; preds = %if.end39.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

for.inc49.15:                                     ; preds = %if.end39.15.for.inc49.15_crit_edge, %for.inc49.14.for.inc49.15_crit_edge
  br i1 %cmp54.not, label %for.inc49.15.if.end62_crit_edge, label %for.inc49.15.land.lhs.true55_crit_edge

for.inc49.15.land.lhs.true55_crit_edge:           ; preds = %for.inc49.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true55

for.inc49.15.if.end62_crit_edge:                  ; preds = %for.inc49.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

land.lhs.true55:                                  ; preds = %for.inc49.15.land.lhs.true55_crit_edge, %for.inc.15.land.lhs.true55_crit_edge
  %db_result.1198 = phi i32 [ %db_result.0189, %for.inc49.15.land.lhs.true55_crit_edge ], [ 3, %for.inc.15.land.lhs.true55_crit_edge ]
  %reason.4197 = phi i32 [ %reason.3188, %for.inc49.15.land.lhs.true55_crit_edge ], [ %reason.2, %for.inc.15.land.lhs.true55_crit_edge ]
  %73 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp57 = icmp eq i32 %74, 0
  br i1 %cmp57, label %land.lhs.true58, label %land.lhs.true55.if.end62_crit_edge

land.lhs.true55.if.end62_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

land.lhs.true58:                                  ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  %signo59 = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 1
  %75 = ptrtoint ptr %signo59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %signo59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %76)
  %cmp60 = icmp eq i32 %76, 5
  %spec.select183 = select i1 %cmp60, i32 10, i32 %reason.4197
  %spec.select184 = select i1 %cmp60, i32 0, i32 %db_result.1198
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58, %land.lhs.true55.if.end62_crit_edge, %for.inc49.15.if.end62_crit_edge, %if.end53.thread
  %reason.5 = phi i32 [ %reason.4197, %land.lhs.true55.if.end62_crit_edge ], [ 3, %for.inc49.15.if.end62_crit_edge ], [ %spec.select183, %land.lhs.true58 ], [ 3, %if.end53.thread ]
  %db_result.2 = phi i32 [ %db_result.1198, %land.lhs.true55.if.end62_crit_edge ], [ %db_result.0189, %for.inc49.15.if.end62_crit_edge ], [ %spec.select184, %land.lhs.true58 ], [ 0, %if.end53.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %77 = load i32, ptr @kdb_state, align 4
  %and63 = and i32 %77, -2097153
  store i32 %and63, ptr @kdb_state, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %78 = load volatile i32, ptr @kgdb_active, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_initial_cpu to i32))
  store i32 %78, ptr @kdb_initial_cpu, align 4
  %cpu.i = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i, align 4
  %task.i = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %80, i32 1
  %81 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  store ptr %82, ptr @kdb_current_task, align 4
  %arrayidx2.i = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %80
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx2.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_regs to i32))
  store ptr %84, ptr @kdb_current_regs, align 4
  tail call void @kdb_bp_remove() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %85 = load i32, ptr @kdb_state, align 4
  %and65 = and i32 %85, -1057
  %or66 = or i32 %and65, 1024
  store i32 %or66, ptr @kdb_state, align 4
  %86 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp68 = icmp eq i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reason.5)
  %cmp70 = icmp eq i32 %reason.5, 5
  %or.cond = select i1 %cmp68, i1 true, i1 %cmp70
  br i1 %or.cond, label %if.then71, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %pass_exception to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %pass_exception, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %89 = load i32, ptr @kdb_flags, align 4
  %or73 = or i32 %89, 2
  store i32 %or73, ptr @kdb_flags, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end62.if.end74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %90 = load i32, ptr @nr_cpu_ids, align 4
  %call76205 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call76205, i32 %90)
  %cmp77206 = icmp ult i32 %call76205, %90
  br i1 %cmp77206, label %if.end74.for.body78_crit_edge, label %if.end74.for.end84_crit_edge

if.end74.for.end84_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end84

if.end74.for.body78_crit_edge:                    ; preds = %if.end74
  br label %for.body78

for.body78:                                       ; preds = %if.end83.for.body78_crit_edge, %if.end74.for.body78_crit_edge
  %call76207 = phi i32 [ %call76, %if.end83.for.body78_crit_edge ], [ %call76205, %if.end74.for.body78_crit_edge ]
  %enter_kgdb = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %call76207, i32 5
  %91 = ptrtoint ptr %enter_kgdb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %enter_kgdb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool80.not = icmp eq i32 %92, 0
  br i1 %tobool80.not, label %if.then81, label %for.body78.if.end83_crit_edge

for.body78.if.end83_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then81:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %93 = load i32, ptr @kdb_flags, align 4
  %or82 = or i32 %93, 2
  store i32 %or82, ptr @kdb_flags, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %for.body78.if.end83_crit_edge
  %call76 = tail call i32 @cpumask_next(i32 noundef %call76207, ptr noundef nonnull @__cpu_online_mask) #8
  %cmp77 = icmp ult i32 %call76, %90
  br i1 %cmp77, label %if.end83.for.body78_crit_edge, label %if.end83.for.end84_crit_edge

if.end83.for.end84_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end84

if.end83.for.body78_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body78

for.end84:                                        ; preds = %if.end83.for.end84_crit_edge, %if.end74.for.end84_crit_edge
  %and85 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp ne i32 %and85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %reason.5)
  %cmp88 = icmp eq i32 %reason.5, 10
  %or.cond185 = select i1 %tobool86.not, i1 %cmp88, i1 false
  br i1 %or.cond185, label %if.then89, label %if.else92

if.then89:                                        ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #7
  %and91 = and i32 %or66, -161
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and91, ptr @kdb_state, align 4
  br label %if.end96

if.else92:                                        ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %linux_regs, align 4
  %call95 = tail call i32 @kdb_main_loop(i32 noundef 1, i32 noundef %reason.5, i32 noundef %87, i32 noundef %db_result.2, ptr noundef %95) #5
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then89
  %error.0 = phi i32 [ 0, %if.then89 ], [ %call95, %if.else92 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_initial_cpu to i32))
  store i32 -1, ptr @kdb_initial_cpu, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  store ptr null, ptr @kdb_current_task, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_current_regs to i32))
  store ptr null, ptr @kdb_current_regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %96 = load i32, ptr @kdb_state, align 4
  %and98 = and i32 %96, -1025
  store i32 %and98, ptr @kdb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1005, i32 %error.0)
  %cmp99 = icmp eq i32 %error.0, -1005
  br i1 %cmp99, label %if.then100, label %if.end106

if.then100:                                       ; preds = %if.end96
  %and101 = and i32 %96, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then100.cleanup_crit_edge, label %if.then103

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  %and104 = and i32 %96, -525313
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and104, ptr @kdb_state, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end96
  %97 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %linux_regs, align 4
  tail call void @kdb_bp_install(ptr noundef %98) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %99 = load i32, ptr @kdb_state, align 4
  %and108 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  %.str.1..str = select i1 %tobool109.not, ptr @.str.1, ptr @.str
  %call113 = tail call i32 @gdbstub_state(ptr noundef %ks, ptr noundef nonnull %.str.1..str) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %100 = load i32, ptr @kdb_flags, align 4
  %and115 = and i32 %100, -3
  store i32 %and115, ptr @kdb_flags, align 4
  %call116 = tail call i32 @gdbstub_state(ptr noundef %ks, ptr noundef nonnull @.str.2) #5
  %101 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cpu.i, align 4
  %ret_state = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %102, i32 3
  %103 = ptrtoint ptr %ret_state to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call116, ptr %ret_state, align 4
  %104 = ptrtoint ptr %pass_exception to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pass_exception, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool119.not = icmp eq i32 %105, 0
  br i1 %tobool119.not, label %if.end106.if.end124_crit_edge, label %if.then120

if.end106.if.end124_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then120:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu.i, align 4
  %ret_state123 = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %107, i32 3
  %108 = ptrtoint ptr %ret_state123 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %ret_state123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end106.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1002, i32 %error.0)
  %cmp125 = icmp eq i32 %error.0, -1002
  br i1 %cmp125, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %109 = load i32, ptr @kdb_state, align 4
  %or127 = or i32 %109, 256
  store i32 %or127, ptr @kdb_state, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_single_step to i32))
  store i32 0, ptr @kgdb_single_step, align 4
  br label %cleanup

if.end128:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu.i, align 4
  %ret_state131 = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %111, i32 3
  %112 = ptrtoint ptr %ret_state131 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ret_state131, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %if.then126, %if.then103, %if.then100.cleanup_crit_edge
  %retval.0 = phi i32 [ -123456, %if.then126 ], [ %113, %if.end128 ], [ -12345, %if.then103 ], [ -12345, %if.then100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_arch_pc(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_arch_set_pc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_bp_remove() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_main_loop(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_bp_install(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdbstub_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_gdb_state_pass(ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdb_ks, align 4
  %call = tail call i32 @gdbstub_state(ptr noundef %0, ptr noundef %buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @kdb_poll_funcs, !1, !"kdb_poll_funcs", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 22, i32 15}
!2 = !{ptr @__ksymtab_kdb_poll_funcs, !3, !"__ksymtab_kdb_poll_funcs", i1 false, i1 false}
!3 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 30, i32 1}
!4 = !{ptr @kdb_poll_idx, !5, !"kdb_poll_idx", i1 false, i1 false}
!5 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 32, i32 5}
!6 = !{ptr @__ksymtab_kdb_poll_idx, !7, !"__ksymtab_kdb_poll_idx", i1 false, i1 false}
!7 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 33, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 151, i32 21}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 153, i32 21}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 158, i32 51}
!14 = !{ptr @kdb_ks, !15, !"kdb_ks", i1 false, i1 false}
!15 = !{!"../kernel/debug/kdb/kdb_debugger.c", i32 35, i32 27}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
