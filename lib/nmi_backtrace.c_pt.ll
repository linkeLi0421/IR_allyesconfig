; ModuleID = '/llk/IR_all_yes/lib/nmi_backtrace.c_pt.bc'
source_filename = "../lib/nmi_backtrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@backtrace_flag = internal global { i32, [28 x i8] } zeroinitializer, align 32
@backtrace_mask = internal global [1 x i32] zeroinitializer, section ".data..read_mostly", align 4
@nmi_trigger_cpumask_backtrace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Sending NMI from CPU %d to CPUs %*pbl:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nmi_trigger_cpumask_backtrace\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/nmi_backtrace.c\00", [44 x i8] zeroinitializer }, align 32
@nmi_trigger_cpumask_backtrace._entry_ptr = internal global ptr @nmi_trigger_cpumask_backtrace._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__param_str_backtrace_idle = internal constant [29 x i8] c"nmi_backtrace.backtrace_idle\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@backtrace_idle = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_backtrace_idle = internal constant %struct.kernel_param { ptr @__param_str_backtrace_idle, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @backtrace_idle } }, section "__param", align 4
@__UNIQUE_ID_backtrace_idletype245 = internal constant [43 x i8] c"nmi_backtrace.parmtype=backtrace_idle:bool\00", section ".modinfo", align 1
@nmi_cpu_backtrace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014NMI backtrace for cpu %d skipped: idling at %pS\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nmi_cpu_backtrace\00", [46 x i8] zeroinitializer }, align 32
@nmi_cpu_backtrace._entry_ptr = internal global ptr @nmi_cpu_backtrace._entry, section ".printk_index", align 4
@nmi_cpu_backtrace._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014NMI backtrace for cpu %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nmi_cpu_backtrace._entry_ptr.7 = internal global ptr @nmi_cpu_backtrace._entry.5, section ".printk_index", align 4
@_kbl_addr_nmi_cpu_backtrace = internal global i32 ptrtoint (ptr @nmi_cpu_backtrace to i32), section "_kprobe_blacklist", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"backtrace_flag\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 28, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 65, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"backtrace_idle\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 89, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 104, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [23 x i8] c"../lib/nmi_backtrace.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 107, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_backtrace_idletype245, ptr @__param_backtrace_idle, ptr @_kbl_addr_nmi_cpu_backtrace, ptr @nmi_cpu_backtrace._entry, ptr @nmi_cpu_backtrace._entry.5, ptr @nmi_cpu_backtrace._entry_ptr, ptr @nmi_cpu_backtrace._entry_ptr.7, ptr @nmi_trigger_cpumask_backtrace._entry, ptr @nmi_trigger_cpumask_backtrace._entry_ptr, ptr @backtrace_flag, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @backtrace_idle, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backtrace_flag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmi_trigger_cpumask_backtrace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backtrace_idle to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmi_cpu_backtrace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmi_cpu_backtrace._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nmi_trigger_cpumask_backtrace(ptr nocapture noundef readonly %mask, i1 noundef zeroext %exclude_self, ptr nocapture noundef readonly %raise) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @backtrace_flag) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %8, 31
  %9 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %9, 536870908
  %10 = call ptr @memcpy(ptr @backtrace_mask, ptr %mask, i32 %mul.i.i)
  br i1 %exclude_self, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp.not.i.i.i = icmp ugt i32 %8, %7
  br i1 %cmp.not.i.i.i, label %if.then6.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then6.cpumask_clear_cpu.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then6
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.then6.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %7, ptr noundef nonnull @backtrace_mask) #7
  br label %if.end7

if.end7:                                          ; preds = %cpumask_clear_cpu.exit, %if.end.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i.i.i36 = icmp ugt i32 %11, %7
  br i1 %cmp.not.i.i.i36, label %if.end7.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i38

if.end7.cpumask_test_cpu.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i38:                                 ; preds = %if.end7
  %.b37.i.i.i37 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i37, label %land.rhs.i.i.i38.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i39, !prof !41

land.rhs.i.i.i38.cpumask_test_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_test_cpu.exit

if.then.i.i.i39:                                  ; preds = %land.rhs.i.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i39, %land.rhs.i.i.i38.cpumask_test_cpu.exit_crit_edge, %if.end7.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %7, 5
  %arrayidx.i.i = getelementptr i32, ptr @backtrace_mask, i32 %div1.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge, label %if.then10

cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge: ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_empty.exit

if.then10:                                        ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call zeroext i1 @nmi_cpu_backtrace(ptr noundef null)
  br label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %if.then10, %cpumask_test_cpu.exit.cpumask_empty.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @backtrace_mask, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %16)
  %cmp4.i.i = icmp eq i32 %call.i.i, %16
  br i1 %cmp4.i.i, label %cpumask_empty.exit.cpumask_empty.exit53.preheader_crit_edge, label %do.end17

cpumask_empty.exit.cpumask_empty.exit53.preheader_crit_edge: ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_empty.exit53.preheader

do.end17:                                         ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %17, ptr noundef nonnull @backtrace_mask) #8
  tail call void %raise(ptr noundef nonnull @backtrace_mask) #7
  br label %cpumask_empty.exit53.preheader

cpumask_empty.exit53.preheader:                   ; preds = %do.end17, %cpumask_empty.exit.cpumask_empty.exit53.preheader_crit_edge
  br label %cpumask_empty.exit53

cpumask_empty.exit53:                             ; preds = %if.end23.cpumask_empty.exit53_crit_edge, %cpumask_empty.exit53.preheader
  %i.055 = phi i32 [ %inc, %if.end23.cpumask_empty.exit53_crit_edge ], [ 0, %cpumask_empty.exit53.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i49 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @backtrace_mask, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i49, i32 %18)
  %cmp4.i.i50 = icmp eq i32 %call.i.i49, %18
  br i1 %cmp4.i.i50, label %cpumask_empty.exit53.for.end_crit_edge, label %if.end23

cpumask_empty.exit53.for.end_crit_edge:           ; preds = %cpumask_empty.exit53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end23:                                         ; preds = %cpumask_empty.exit53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  tail call void @touch_softlockup_watchdog() #7
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.cpumask_empty.exit53_crit_edge

if.end23.cpumask_empty.exit53_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_empty.exit53

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %cpumask_empty.exit53.for.end_crit_edge
  tail call void @printk_trigger_flush() #7
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @backtrace_flag, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr nonnull @backtrace_flag, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @backtrace_flag, ptr nonnull @backtrace_flag, i32 1, ptr nonnull elementtype(i32) @backtrace_flag) #7, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body2
  %21 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i33 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i33 to ptr
  %preempt_count.i.i34 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i34, align 4
  %sub.i35 = add i32 %24, -1
  store volatile i32 %sub.i35, ptr %preempt_count.i.i34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nmi_cpu_backtrace(ptr noundef %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr @backtrace_mask, i32 %div1.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %cpumask_test_cpu.exit.for.cond_crit_edge

cpumask_test_cpu.exit.for.cond_crit_edge:         ; preds = %cpumask_test_cpu.exit
  br label %for.cond

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %do.end46, %cpumask_test_cpu.exit.for.cond_crit_edge
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !45
  %and.i131 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool12.not = icmp eq i32 %and.i131, 0
  br i1 %tobool12.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %for.cond
  tail call void @trace_hardirqs_off() #7
  %call16 = tail call i32 @__printk_cpu_trylock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then29, label %do.end15.do.end53_crit_edge

do.end15.do.end53_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

do.end15.thread:                                  ; preds = %for.cond
  %call16140 = tail call i32 @__printk_cpu_trylock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16140)
  %tobool17.not141 = icmp eq i32 %call16140, 0
  br i1 %tobool17.not141, label %do.end15.thread.do.body31_crit_edge, label %do.end15.thread.do.end53_crit_edge

do.end15.thread.do.end53_crit_edge:               ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

do.end15.thread.do.body31_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

if.then29:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #7
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.end15.thread.do.body31_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !46
  %and.i.i133 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool39.not = icmp eq i32 %and.i.i133, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !47

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #7, !srcloc !48
  tail call void @__printk_wait_on_cpu_lock() #7
  br label %for.cond

do.end53:                                         ; preds = %do.end15.thread.do.end53_crit_edge, %do.end15.do.end53_crit_edge
  %11 = load volatile i8, ptr @backtrace_idle, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool55.not = icmp ne i8 %11, 0
  %tobool57.not = icmp eq ptr %regs, null
  %or.cond = or i1 %tobool57.not, %tobool55.not
  br i1 %or.cond, label %do.end53.do.end71_crit_edge, label %land.lhs.true58

do.end53.do.end71_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71

land.lhs.true58:                                  ; preds = %do.end53
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call59 = tail call zeroext i1 @cpu_in_idle(i32 noundef %13) #7
  br i1 %call59, label %do.end64, label %land.lhs.true58.do.end71_crit_edge

land.lhs.true58.do.end71_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end71

do.end64:                                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = inttoptr i32 %15 to ptr
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %3, ptr noundef %16) #8
  br label %do.body79

do.end71:                                         ; preds = %land.lhs.true58.do.end71_crit_edge, %do.end53.do.end71_crit_edge
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #8
  br i1 %tobool57.not, label %if.else76, label %if.then75

if.then75:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @show_regs(ptr noundef nonnull %regs) #7
  br label %do.body79

if.else76:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_stack() #8
  br label %do.body79

do.body79:                                        ; preds = %if.else76, %if.then75, %do.end64
  tail call void @__printk_cpu_unlock() #7
  br i1 %tobool12.not, label %if.then89, label %do.body79.do.body91_crit_edge

do.body79.do.body91_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body91

if.then89:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #7
  br label %do.body91

do.body91:                                        ; preds = %if.then89, %do.body79.do.body91_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !46
  %and.i.i135 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135)
  %tobool99.not = icmp eq i32 %and.i.i135, 0
  br i1 %tobool99.not, label %if.then108, label %do.body91.do.end111_crit_edge, !prof !47

do.body91.do.end111_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end111

if.then108:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %do.body91.do.end111_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #7, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %3)
  %cmp.not.i.i.i136 = icmp ugt i32 %18, %3
  br i1 %cmp.not.i.i.i136, label %do.end111.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i138

do.end111.cpumask_clear_cpu.exit_crit_edge:       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i138:                                ; preds = %do.end111
  %.b37.i.i.i137 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i137, label %land.rhs.i.i.i138.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i139, !prof !41

land.rhs.i.i.i138.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i138
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_clear_cpu.exit

if.then.i.i.i139:                                 ; preds = %land.rhs.i.i.i138
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i139, %land.rhs.i.i.i138.cpumask_clear_cpu.exit_crit_edge, %do.end111.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @backtrace_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %cpumask_clear_cpu.exit, %cpumask_test_cpu.exit.cleanup_crit_edge
  %19 = xor i1 %tobool.not, true
  ret i1 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @printk_trigger_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_cpu_trylock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_wait_on_cpu_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_in_idle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_cpu_unlock() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/nmi_backtrace.c", i32 65, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nmi_trigger_cpumask_backtrace._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nmi_trigger_cpumask_backtrace._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__param_backtrace_idle, !7, !"__param_backtrace_idle", i1 false, i1 false}
!7 = !{!"../lib/nmi_backtrace.c", i32 90, i32 1}
!8 = !{ptr @__UNIQUE_ID_backtrace_idletype245, !7, !"__UNIQUE_ID_backtrace_idletype245", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/nmi_backtrace.c", i32 104, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nmi_cpu_backtrace._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @nmi_cpu_backtrace._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/nmi_backtrace.c", i32 107, i32 4}
!16 = !{ptr @nmi_cpu_backtrace._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nmi_cpu_backtrace._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @_kbl_addr_nmi_cpu_backtrace, !19, !"_kbl_addr_nmi_cpu_backtrace", i1 false, i1 false}
!19 = !{!"../lib/nmi_backtrace.c", i32 120, i32 1}
!20 = !{ptr @backtrace_mask, !21, !"backtrace_mask", i1 false, i1 false}
!21 = !{!"../lib/nmi_backtrace.c", i32 25, i32 8}
!22 = !{ptr @backtrace_flag, !23, !"backtrace_flag", i1 false, i1 false}
!23 = !{!"../lib/nmi_backtrace.c", i32 28, i32 22}
!24 = !{ptr @backtrace_idle, !25, !"backtrace_idle", i1 false, i1 false}
!25 = !{!"../lib/nmi_backtrace.c", i32 89, i32 13}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__param_str_backtrace_idle, !7, !"__param_str_backtrace_idle", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154278578}
!40 = !{i64 2154278866}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148337916}
!43 = !{i64 2148248335, i64 2148248367, i64 2148248396, i64 2148248430, i64 2148248461, i64 2148248484}
!44 = !{i64 2154282982}
!45 = !{i64 633571, i64 633632}
!46 = !{i64 636303}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 636588}
!49 = !{i8 0, i8 2}
