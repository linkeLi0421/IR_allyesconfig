; ModuleID = '/llk/IR_all_yes/arch/arm/probes/uprobes/core.c_pt.bc'
source_filename = "../arch/arm/probes/uprobes/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uprobe_task = type { i32, %union.anon.48, ptr, i32, ptr, i32 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }

@uprobes_probes_actions = external dso_local constant [0 x %union.decode_action], align 4
@arch_uprobe_post_xol.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/probes/uprobes/core.c\00", [33 x i8] zeroinitializer }, align 32
@__initcall__kmod_core__237_227_arch_uprobes_init6 = internal global ptr @arch_uprobes_init, section ".initcall6.init", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@uprobes_arm_break_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169657, i32 63, i32 16, ptr @uprobe_trap_handler }, [36 x i8] zeroinitializer }, align 32
@uprobes_arm_ss_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169658, i32 63, i32 16, ptr @uprobe_trap_handler }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 133169657, i64 133169658]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 151, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"uprobes_arm_break_hook\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 204, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"uprobes_arm_ss_hook\00", align 1
@___asan_gen_.9 = private constant [34 x i8] c"../arch/arm/probes/uprobes/core.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 212, i32 26 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_core__237_227_arch_uprobes_init6, ptr @.str, ptr @uprobes_arm_break_hook, ptr @uprobes_arm_ss_hook], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_arm_break_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_arm_ss_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_swbp_insn(ptr nocapture noundef readonly %insn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insn, align 4
  %2 = and i32 %1, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117313529, i32 %2)
  %cmp = icmp eq i32 %2, -117313529
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_swbp(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bpinsn = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 2
  %0 = ptrtoint ptr %bpinsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpinsn, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call = tail call i32 @uprobe_write_opcode(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr, i32 noundef %2) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_write_opcode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_ignore(ptr nocapture noundef readonly %auprobe, ptr nocapture noundef %regs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %insn_check_cc = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %insn_check_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %insn_check_cc, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %1(i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %5, 4
  store i32 %add, ptr %arrayidx2, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_skip_sstep(ptr noundef %auprobe, ptr noundef %regs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %simulate = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 3
  %0 = ptrtoint ptr %simulate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %simulate, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %auprobe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %auprobe, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %asi = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 7
  %insn_singlestep = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %insn_singlestep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %insn_singlestep, align 4
  tail call void %6(i32 noundef %4, ptr noundef %asi, ptr noundef %regs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %7 = xor i1 %tobool.not, true
  ret i1 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_uretprobe_hijack_return_addr(i32 noundef %trampoline_vaddr, ptr nocapture noundef %regs) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %trampoline_vaddr, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_analyze_insn(ptr noundef %auprobe, ptr nocapture noundef readnone %mm, i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %auprobe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auprobe, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %ixol = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 1
  %3 = ptrtoint ptr %ixol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %ixol, align 4
  %arrayidx3 = getelementptr %struct.arch_uprobe, ptr %auprobe, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -100536089, ptr %arrayidx3, align 4
  %asi = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 7
  %call = tail call i32 @arm_probes_decode_insn(i32 noundef %2, ptr noundef %asi, i1 noundef zeroext false, ptr noundef nonnull @uprobes_probes_actions, ptr noundef null) #8
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %simulate = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 3
  %6 = ptrtoint ptr %simulate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %simulate, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %2)
  %cmp = icmp ugt i32 %2, -536870913
  %and7 = and i32 %2, -268435456
  %or8 = or i32 %and7, 133169657
  %bpinsn.0 = select i1 %cmp, i32 -403701255, i32 %or8
  %bpinsn10 = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 2
  %7 = ptrtoint ptr %bpinsn10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bpinsn.0, ptr %bpinsn10, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_probes_decode_insn(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_uprobe_copy_ixol(ptr noundef %page, i32 noundef %vaddr, ptr nocapture noundef readonly %src, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %5 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %and = and i32 %vaddr, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %11 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %len)
  tail call void @flush_uprobe_xol_access(ptr noundef %page, i32 noundef %vaddr, ptr noundef %add.ptr, i32 noundef %len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  %16 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i15 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i15 to ptr
  %preempt_count.i.i16 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i16, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i16, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %20 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %25, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %26 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_uprobe_xol_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_pre_xol(ptr noundef %auprobe, ptr noundef %regs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %prehandler = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 5
  %6 = ptrtoint ptr %prehandler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prehandler, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1
  tail call void %7(ptr noundef %auprobe, ptr noundef %8, ptr noundef %regs) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 219, i32 1
  %11 = ptrtoint ptr %trap_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trap_no, align 4
  %saved_trap_no = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %saved_trap_no to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %saved_trap_no, align 4
  %14 = load ptr, ptr %task, align 8
  %trap_no9 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 219, i32 1
  %15 = ptrtoint ptr %trap_no9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %trap_no9, align 4
  %xol_vaddr = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %xol_vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xol_vaddr, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_post_xol(ptr noundef %auprobe, ptr noundef %regs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 1
  %6 = ptrtoint ptr %trap_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trap_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @arch_uprobe_post_xol.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !26

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @arch_uprobe_post_xol.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %saved_trap_no = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %saved_trap_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_trap_no, align 4
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %trap_no41 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 219, i32 1
  %12 = ptrtoint ptr %trap_no41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %trap_no41, align 4
  %vaddr = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vaddr, align 4
  %add = add i32 %14, 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %arrayidx, align 4
  %posthandler = getelementptr inbounds %struct.arch_uprobe, ptr %auprobe, i32 0, i32 6
  %16 = ptrtoint ptr %posthandler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %posthandler, align 4
  %tobool42.not = icmp eq ptr %17, null
  br i1 %tobool42.not, label %if.end30.if.end46_crit_edge, label %if.then43

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %18 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1
  tail call void %17(ptr noundef %auprobe, ptr noundef %18, ptr noundef %regs) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end30.if.end46_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_xol_was_trapped(ptr nocapture noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 219, i32 1
  %0 = ptrtoint ptr %trap_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trap_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp ne i32 %1, -1
  ret i1 %cmp.not
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @arch_uprobe_abort_xol(ptr nocapture noundef readnone %auprobe, ptr nocapture noundef writeonly %regs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %saved_trap_no = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %saved_trap_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saved_trap_no, align 4
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 1
  %8 = ptrtoint ptr %trap_no to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %trap_no, align 4
  %vaddr = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vaddr, align 4
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_uprobe_exception_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readnone %data) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @uprobe_get_swbp_addr(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_uprobes_init() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_undef_hook(ptr noundef nonnull @uprobes_arm_break_hook) #8
  tail call void @register_undef_hook(ptr noundef nonnull @uprobes_arm_ss_hook) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uprobe_trap_handler(ptr noundef %regs, i32 noundef %instr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !27
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %and = and i32 %instr, 268435455
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and, label %do.end11.do.body22_crit_edge [
    i32 133169657, label %if.then14
    i32 133169658, label %if.then18
  ]

do.end11.do.body22_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @uprobe_pre_sstep_notifier(ptr noundef %regs) #8
  br label %do.body22

if.then18:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @uprobe_post_sstep_notifier(ptr noundef %regs) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %if.then14, %do.end11.do.body22_crit_edge
  br i1 %tobool.not, label %if.then31, label %do.body22.do.body33_crit_edge

do.body22.do.body33_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.then31:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body33

do.body33:                                        ; preds = %if.then31, %do.body22.do.body33_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !28
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool41.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool41.not, label %if.then45, label %do.body33.do.end48_crit_edge, !prof !29

do.body33.do.end48_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body33.do.end48_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_pre_sstep_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_post_sstep_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/uprobes/core.c", i32 151, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_core__237_227_arch_uprobes_init6, !4, !"__initcall__kmod_core__237_227_arch_uprobes_init6", i1 false, i1 false}
!4 = !{!"../arch/arm/probes/uprobes/core.c", i32 227, i32 1}
!5 = !{ptr @uprobes_arm_break_hook, !6, !"uprobes_arm_break_hook", i1 false, i1 false}
!6 = !{!"../arch/arm/probes/uprobes/core.c", i32 204, i32 26}
!7 = !{ptr @uprobes_arm_ss_hook, !8, !"uprobes_arm_ss_hook", i1 false, i1 false}
!8 = !{!"../arch/arm/probes/uprobes/core.c", i32 212, i32 26}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{i64 2153638424}
!21 = !{i64 2152182424}
!22 = !{i64 2153745547}
!23 = !{i64 2153745644}
!24 = !{i64 2152182631}
!25 = !{i64 2153641195}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 605398, i64 605459}
!28 = !{i64 608130}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 608415}
