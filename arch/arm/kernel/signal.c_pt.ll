; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/signal.c_pt.bc'
source_filename = "../arch/arm/kernel/signal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vfp_sigframe = type { i32, i32, %struct.user_vfp, %struct.user_vfp_exc }
%struct.user_vfp = type { [32 x i64], i32 }
%struct.user_vfp_exc = type { i32, i32, i32 }
%struct.sigcontext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucontext = type { i32, ptr, %struct.sigaltstack, %struct.sigcontext, %struct.sigset_t, [30 x i32], [128 x i32] }
%struct.sigaltstack = type { ptr, i32, i32 }
%struct.iwmmxt_sigframe = type { i32, i32, %struct.iwmmxt_struct }
%struct.rt_sigframe = type { %struct.siginfo, %struct.sigframe }
%struct.siginfo = type { %union.anon.106 }
%union.anon.106 = type { [32 x i32] }
%struct.sigframe = type { %struct.ucontext, [4 x i32] }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.86 }
%struct.anon.86 = type { i32, i32, i32, i32, i32 }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@signal_return_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sigreturn_codes = external dso_local local_unnamed_addr constant [17 x i32], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/kernel/signal.c\00", [39 x i8] zeroinitializer }, align 32
@switch.table.do_signal = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 1, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966780, i64 4294966782, i64 4294966784]
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"signal_return_offset\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 26, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 109, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [28 x i8] c"../arch/arm/kernel/signal.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 477, i32 9 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"switch.table.do_signal\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @signal_return_offset, ptr @.str, ptr @.str.1, ptr @switch.table.do_signal], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_return_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_signal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_sigreturn(ptr nocapture noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fn = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 1
  %4 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @do_no_restart_syscall, ptr %fn, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.badframe_crit_edge

entry.badframe_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end:                                           ; preds = %entry
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 760, i32 -1226833920) #8, !srcloc !18
  %asmresult = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end5, label %if.end.badframe_crit_edge

if.end.badframe_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @restore_sigframe(ptr noundef %regs, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.badframe_crit_edge

if.end5.badframe_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regs, align 4
  br label %cleanup

badframe:                                         ; preds = %if.end5.badframe_crit_edge, %if.end.badframe_crit_edge, %entry.badframe_crit_edge
  tail call void @force_sig(i32 noundef 11) #5
  br label %cleanup

cleanup:                                          ; preds = %badframe, %if.end9
  %retval.0 = phi i32 [ 0, %badframe ], [ %10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @restore_sigframe(ptr nocapture noundef %regs, ptr noundef %sf) unnamed_addr #0 align 64 {
entry:
  %frame.i = alloca %struct.vfp_sigframe, align 8
  %kbuf.i = alloca [168 x i8], align 1
  %context = alloca %struct.sigcontext, align 4
  %set = alloca %struct.sigset_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %context) #5
  %0 = call ptr @memset(ptr %context, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %set) #5
  %1 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %set, align 4, !annotation !19
  %2 = getelementptr inbounds [2 x i32], ptr %set, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !19
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 109) #5
  %call.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i, label %entry.if.end_crit_edge, label %__copy_from_user.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

__copy_from_user.exit:                            ; preds = %entry
  %uc_sigmask = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %set, i32 noundef 8) #5
  %4 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !20
  %and.i.i.i = and i32 %6, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %set, ptr noundef %uc_sigmask, i32 noundef 8) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp = icmp eq i32 %call1.i.i, 0
  br i1 %cmp, label %if.then, label %__copy_from_user.exit.if.end_crit_edge

__copy_from_user.exit.if.end_crit_edge:           ; preds = %__copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %__copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @set_current_blocked(ptr noundef nonnull %set) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %__copy_from_user.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i114 = phi i32 [ 0, %if.then ], [ %call1.i.i, %__copy_from_user.exit.if.end_crit_edge ], [ 8, %entry.if.end_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 109) #5
  %call.i78 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i78, label %if.end.__copy_from_user.exit87_crit_edge, label %if.end.i80

if.end.__copy_from_user.exit87_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_from_user.exit87

if.end.i80:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %uc_mcontext = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 3
  %call.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %context, i32 noundef 84) #5
  %7 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i81 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %cpu_domain.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i82) #4, !srcloc !20
  %and.i.i.i83 = and i32 %9, -13
  %or.i.i.i84 = or i32 %and.i.i.i83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i84) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i85 = call i32 @arm_copy_from_user(ptr noundef nonnull %context, ptr noundef %uc_mcontext, i32 noundef 84) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %__copy_from_user.exit87

__copy_from_user.exit87:                          ; preds = %if.end.i80, %if.end.__copy_from_user.exit87_crit_edge
  %retval.0.i86 = phi i32 [ %call1.i.i85, %if.end.i80 ], [ 84, %if.end.__copy_from_user.exit87_crit_edge ]
  %or = or i32 %retval.0.i86, %retval.0.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp3 = icmp eq i32 %or, 0
  br i1 %cmp3, label %if.then4, label %__copy_from_user.exit87.if.end37_crit_edge

__copy_from_user.exit87.if.end37_crit_edge:       ; preds = %__copy_from_user.exit87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then4:                                         ; preds = %__copy_from_user.exit87
  call void @__sanitizer_cov_trace_pc() #7
  %arm_r0 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 3
  %10 = ptrtoint ptr %arm_r0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arm_r0, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %regs, align 4
  %arm_r1 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 4
  %13 = ptrtoint ptr %arm_r1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arm_r1, align 4
  %arrayidx6 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx6, align 4
  %arm_r2 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 5
  %16 = ptrtoint ptr %arm_r2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arm_r2, align 4
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx8, align 4
  %arm_r3 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 6
  %19 = ptrtoint ptr %arm_r3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arm_r3, align 4
  %arrayidx10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx10, align 4
  %arm_r4 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 7
  %22 = ptrtoint ptr %arm_r4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arm_r4, align 4
  %arrayidx12 = getelementptr [18 x i32], ptr %regs, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx12, align 4
  %arm_r5 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 8
  %25 = ptrtoint ptr %arm_r5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arm_r5, align 4
  %arrayidx14 = getelementptr [18 x i32], ptr %regs, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx14, align 4
  %arm_r6 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 9
  %28 = ptrtoint ptr %arm_r6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arm_r6, align 4
  %arrayidx16 = getelementptr [18 x i32], ptr %regs, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx16, align 4
  %arm_r7 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 10
  %31 = ptrtoint ptr %arm_r7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arm_r7, align 4
  %arrayidx18 = getelementptr [18 x i32], ptr %regs, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx18, align 4
  %arm_r8 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 11
  %34 = ptrtoint ptr %arm_r8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arm_r8, align 4
  %arrayidx20 = getelementptr [18 x i32], ptr %regs, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx20, align 4
  %arm_r9 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 12
  %37 = ptrtoint ptr %arm_r9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arm_r9, align 4
  %arrayidx22 = getelementptr [18 x i32], ptr %regs, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx22, align 4
  %arm_r10 = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 13
  %40 = ptrtoint ptr %arm_r10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arm_r10, align 4
  %arrayidx24 = getelementptr [18 x i32], ptr %regs, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx24, align 4
  %arm_fp = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 14
  %43 = ptrtoint ptr %arm_fp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arm_fp, align 4
  %arrayidx26 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %45 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx26, align 4
  %arm_ip = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 15
  %46 = ptrtoint ptr %arm_ip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arm_ip, align 4
  %arrayidx28 = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %48 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx28, align 4
  %arm_sp = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 16
  %49 = ptrtoint ptr %arm_sp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arm_sp, align 4
  %arrayidx30 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %51 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx30, align 4
  %arm_lr = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 17
  %52 = ptrtoint ptr %arm_lr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arm_lr, align 4
  %arrayidx32 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %54 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx32, align 4
  %arm_pc = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 18
  %55 = ptrtoint ptr %arm_pc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arm_pc, align 4
  %arrayidx34 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %57 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx34, align 4
  %arm_cpsr = getelementptr inbounds %struct.sigcontext, ptr %context, i32 0, i32 19
  %58 = ptrtoint ptr %arm_cpsr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arm_cpsr, align 4
  %arrayidx36 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %60 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then4, %__copy_from_user.exit87.if.end37_crit_edge
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %62, 31
  %and3.i = and i32 %62, -321
  store i32 %and3.i, ptr %arrayidx.i, align 4
  %and6.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp.i = icmp eq i32 %and6.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end37.if.end13.i_crit_edge

if.end37.if.end13.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 16
  br i1 %cmp7.i, label %if.then.i.valid_user_regs.exit_crit_edge, label %if.end.i88

if.then.i.valid_user_regs.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %valid_user_regs.exit

if.end.i88:                                       ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %63 = load i32, ptr @elf_hwcap, align 4
  %and9.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp ne i32 %and9.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.end.i88.valid_user_regs.exit_crit_edge, label %if.end.i88.if.end13.i_crit_edge

if.end.i88.if.end13.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end.i88.valid_user_regs.exit_crit_edge:        ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %valid_user_regs.exit

if.end13.i:                                       ; preds = %if.end.i88.if.end13.i_crit_edge, %if.end37.if.end13.i_crit_edge
  %and16.i = and i32 %62, -464
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and16.i, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %65 = load i32, ptr @elf_hwcap, align 4
  %and17.i = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end13.i.valid_user_regs.exit_crit_edge

if.end13.i.valid_user_regs.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %valid_user_regs.exit

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %and16.i, 16
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %valid_user_regs.exit

valid_user_regs.exit:                             ; preds = %if.then19.i, %if.end13.i.valid_user_regs.exit_crit_edge, %if.end.i88.valid_user_regs.exit_crit_edge, %if.then.i.valid_user_regs.exit_crit_edge
  %tobool.not = phi i32 [ 0, %if.then.i.valid_user_regs.exit_crit_edge ], [ 0, %if.end.i88.valid_user_regs.exit_crit_edge ], [ 1, %if.end13.i.valid_user_regs.exit_crit_edge ], [ 1, %if.then19.i ]
  %or39 = or i32 %tobool.not, %or
  %uc_regspace = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or39)
  %cmp41 = icmp eq i32 %or39, 0
  br i1 %cmp41, label %if.then42, label %valid_user_regs.exit.if.end50_crit_edge

valid_user_regs.exit.if.end50_crit_edge:          ; preds = %valid_user_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then42:                                        ; preds = %valid_user_regs.exit
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %kbuf.i) #5
  %67 = call ptr @memset(ptr %kbuf.i, i32 255, i32 168)
  %add.ptr.i = getelementptr inbounds i8, ptr %kbuf.i, i32 8
  %68 = ptrtoint ptr %add.ptr.i to i32
  %and.i90 = and i32 %68, -8
  %69 = inttoptr i32 %and.i90 to ptr
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 109) #5
  %call.i.i91 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i91, label %if.then42.if.end45.thread118_crit_edge, label %__copy_from_user.exit.i

if.then42.if.end45.thread118_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.thread118

__copy_from_user.exit.i:                          ; preds = %if.then42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %69, i32 noundef 160) #5
  %70 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !20
  %and.i.i.i.i = and i32 %72, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %69, ptr noundef %uc_regspace, i32 noundef 160) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i92 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i92, label %if.end.i93, label %__copy_from_user.exit.i.if.end45.thread118_crit_edge

__copy_from_user.exit.i.if.end45.thread118_crit_edge: ; preds = %__copy_from_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.thread118

if.end.i93:                                       ; preds = %__copy_from_user.exit.i
  %73 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 16384
  %77 = and i32 %76, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool3.not.i = icmp eq i32 %77, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i93.if.end5.i_crit_edge

if.end.i93.if.end5.i_crit_edge:                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i93
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1327895295, i32 %79)
  %cmp.not.i = icmp eq i32 %79, -1327895295
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.if.then47_crit_edge

land.lhs.true.i.if.then47_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i93.if.end5.i_crit_edge
  %size.i = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %69, i32 0, i32 1
  %80 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %81)
  %cmp6.not.i = icmp eq i32 %81, 160
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end5.i.if.end45.thread118_crit_edge

if.end5.i.if.end45.thread118_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.thread118

if.end8.i:                                        ; preds = %if.end5.i
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %74, align 16384
  %84 = and i32 %83, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool11.not.i = icmp eq i32 %84, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end18.i_crit_edge, label %if.then12.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end8.i
  %85 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 317686826, i32 %86)
  %cmp14.not.i = icmp eq i32 %86, 317686826
  br i1 %cmp14.not.i, label %if.end16.i, label %if.then12.i.if.end45.thread118_crit_edge

if.then12.i.if.end45.thread118_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.thread118

if.end16.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %storage.i = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %69, i32 0, i32 2
  call void @iwmmxt_task_restore(ptr noundef %74, ptr noundef %storage.i) #5
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end16.i, %if.end8.i.if.end18.i_crit_edge
  %add.ptr19.i = getelementptr %struct.ucontext, ptr %sf, i32 0, i32 6, i32 40
  br label %if.then47

if.end45.thread118:                               ; preds = %if.then12.i.if.end45.thread118_crit_edge, %if.end5.i.if.end45.thread118_crit_edge, %__copy_from_user.exit.i.if.end45.thread118_crit_edge, %if.then42.if.end45.thread118_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %kbuf.i) #5
  br label %if.end50

if.then47:                                        ; preds = %if.end18.i, %land.lhs.true.i.if.then47_crit_edge
  %aux.0 = phi ptr [ %add.ptr19.i, %if.end18.i ], [ %uc_regspace, %land.lhs.true.i.if.then47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %kbuf.i) #5
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %frame.i) #5
  %87 = call ptr @memset(ptr %frame.i, i32 255, i32 288)
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 109) #5
  %call.i.i95 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i95, label %if.then47.restore_vfp_context.exit_crit_edge, label %__copy_from_user.exit.i103

if.then47.restore_vfp_context.exit_crit_edge:     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_vfp_context.exit

__copy_from_user.exit.i103:                       ; preds = %if.then47
  %call.i.i.i96 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %frame.i, i32 noundef 288) #5
  %88 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i.i97 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i97 to ptr
  %cpu_domain.i.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i98) #4, !srcloc !20
  %and.i.i.i.i99 = and i32 %90, -13
  %or.i.i.i.i100 = or i32 %and.i.i.i.i99, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i100) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i101 = call i32 @arm_copy_from_user(ptr noundef nonnull %frame.i, ptr noundef %aux.0, i32 noundef 288) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i.i.i101, 0
  br i1 %tobool.not.i102, label %if.end.i105, label %__copy_from_user.exit.i103.restore_vfp_context.exit_crit_edge

__copy_from_user.exit.i103.restore_vfp_context.exit_crit_edge: ; preds = %__copy_from_user.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_vfp_context.exit

if.end.i105:                                      ; preds = %__copy_from_user.exit.i103
  %91 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frame.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1447448577, i32 %92)
  %cmp.not.i104 = icmp eq i32 %92, 1447448577
  br i1 %cmp.not.i104, label %lor.lhs.false.i, label %if.end.i105.restore_vfp_context.exit_crit_edge

if.end.i105.restore_vfp_context.exit_crit_edge:   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_vfp_context.exit

lor.lhs.false.i:                                  ; preds = %if.end.i105
  %size.i106 = getelementptr inbounds %struct.vfp_sigframe, ptr %frame.i, i32 0, i32 1
  %93 = ptrtoint ptr %size.i106 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %94)
  %cmp1.not.i = icmp eq i32 %94, 288
  br i1 %cmp1.not.i, label %if.end3.i, label %lor.lhs.false.i.restore_vfp_context.exit_crit_edge

lor.lhs.false.i.restore_vfp_context.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_vfp_context.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %ufp.i = getelementptr inbounds %struct.vfp_sigframe, ptr %frame.i, i32 0, i32 2
  %ufp_exc.i = getelementptr inbounds %struct.vfp_sigframe, ptr %frame.i, i32 0, i32 3
  %call4.i = call i32 @vfp_restore_user_hwstate(ptr noundef %ufp.i, ptr noundef %ufp_exc.i) #5
  br label %restore_vfp_context.exit

restore_vfp_context.exit:                         ; preds = %if.end3.i, %lor.lhs.false.i.restore_vfp_context.exit_crit_edge, %if.end.i105.restore_vfp_context.exit_crit_edge, %__copy_from_user.exit.i103.restore_vfp_context.exit_crit_edge, %if.then47.restore_vfp_context.exit_crit_edge
  %retval.0.i108 = phi i32 [ %call4.i, %if.end3.i ], [ %call1.i.i.i101, %__copy_from_user.exit.i103.restore_vfp_context.exit_crit_edge ], [ -22, %lor.lhs.false.i.restore_vfp_context.exit_crit_edge ], [ -22, %if.end.i105.restore_vfp_context.exit_crit_edge ], [ 288, %if.then47.restore_vfp_context.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %frame.i) #5
  br label %if.end50

if.end50:                                         ; preds = %restore_vfp_context.exit, %if.end45.thread118, %valid_user_regs.exit.if.end50_crit_edge
  %err.1 = phi i32 [ %retval.0.i108, %restore_vfp_context.exit ], [ -1, %if.end45.thread118 ], [ %or39, %valid_user_regs.exit.if.end50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %set) #5
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %context) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_rt_sigreturn(ptr nocapture noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fn = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 1
  %4 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @do_no_restart_syscall, ptr %fn, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.badframe_crit_edge

entry.badframe_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end:                                           ; preds = %entry
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 888, i32 -1226833920) #8, !srcloc !23
  %asmresult = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end5, label %if.end.badframe_crit_edge

if.end.badframe_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end5:                                          ; preds = %if.end
  %sig = getelementptr inbounds %struct.rt_sigframe, ptr %7, i32 0, i32 1
  %call6 = tail call fastcc i32 @restore_sigframe(ptr noundef %regs, ptr noundef %sig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.badframe_crit_edge

if.end5.badframe_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end9:                                          ; preds = %if.end5
  %uc_stack = getelementptr inbounds %struct.rt_sigframe, ptr %7, i32 0, i32 1, i32 0, i32 2
  %call11 = tail call i32 @restore_altstack(ptr noundef %uc_stack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.badframe_crit_edge

if.end9.badframe_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %badframe

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regs, align 4
  br label %cleanup

badframe:                                         ; preds = %if.end9.badframe_crit_edge, %if.end5.badframe_crit_edge, %if.end.badframe_crit_edge, %entry.badframe_crit_edge
  tail call void @force_sig(i32 noundef 11) #5
  br label %cleanup

cleanup:                                          ; preds = %badframe, %if.end14
  %retval.0 = phi i32 [ 0, %badframe ], [ %10, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_altstack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_work_pending(ptr noundef %regs, i32 noundef %thread_flags, i32 noundef %syscall) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @trace_hardirqs_off() #5
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %if.end39.do.body_crit_edge, %entry
  %thread_flags.addr.0 = phi i32 [ %thread_flags, %entry ], [ %6, %if.end39.do.body_crit_edge ]
  %syscall.addr.0 = phi i32 [ %syscall, %entry ], [ %syscall.addr.2, %if.end39.do.body_crit_edge ]
  %and = and i32 %thread_flags.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !24

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @schedule() #5
  br label %do.body34

if.else:                                          ; preds = %do.body
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and3 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 0
  br i1 %cmp.not, label %do.body13, label %if.else.return_crit_edge, !prof !25

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body13:                                        ; preds = %if.else
  tail call void @trace_hardirqs_on() #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  %and14 = and i32 %thread_flags.addr.0, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else26, label %if.then16

if.then16:                                        ; preds = %do.body13
  %call = tail call fastcc i32 @do_signal(ptr noundef %regs, i32 noundef %syscall.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then16.do.body34_crit_edge, label %if.then16.return_crit_edge

if.then16.return_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then16.do.body34_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.else26:                                        ; preds = %do.body13
  %and27 = and i32 %thread_flags.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uprobe_notify_resume(ptr noundef %regs) #5
  br label %do.body34

if.else30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @tracehook_notify_resume(ptr noundef %regs)
  br label %do.body34

do.body34:                                        ; preds = %if.else30, %if.then29, %if.then16.do.body34_crit_edge, %if.then
  %syscall.addr.2 = phi i32 [ %syscall.addr.0, %if.then ], [ 0, %if.then16.do.body34_crit_edge ], [ %syscall.addr.0, %if.then29 ], [ %syscall.addr.0, %if.else30 ]
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !27
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !28
  br i1 %tobool36.not, label %if.then38, label %do.body34.if.end39_crit_edge

do.body34.if.end39_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.body34.if.end39_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 16384
  %and43 = and i32 %6, 271
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end39.return_crit_edge, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end39.return_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %if.end39.return_crit_edge, %if.then16.return_crit_edge, %if.else.return_crit_edge
  %retval.3 = phi i32 [ %call, %if.then16.return_crit_edge ], [ 0, %if.else.return_crit_edge ], [ 0, %if.end39.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_signal(ptr noundef %regs, i32 noundef %syscall) unnamed_addr #0 align 64 {
entry:
  %ksig = alloca %struct.ksignal, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ksig) #5
  %0 = call ptr @memset(ptr %ksig, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %syscall)
  %tobool.not = icmp eq i32 %syscall, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %cond.neg = select i1 %tobool4.not, i32 -4, i32 -2
  %sub = add i32 %cond.neg, %2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regs, align 4
  %switch.tableidx = add i32 %6, 516
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 5
  br i1 %7, label %switch.hole_check, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.do_signal, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 17
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %regs, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %switch.hole_check.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %6, %if.then.if.end_crit_edge ], [ %6, %switch.lookup ], [ 0, %entry.if.end_crit_edge ], [ %6, %switch.hole_check.if.end_crit_edge ]
  %continue_addr.0 = phi i32 [ %2, %if.then.if.end_crit_edge ], [ %2, %switch.lookup ], [ 0, %entry.if.end_crit_edge ], [ %2, %switch.hole_check.if.end_crit_edge ]
  %restart_addr.0 = phi i32 [ %sub, %if.then.if.end_crit_edge ], [ %sub, %switch.lookup ], [ 0, %entry.if.end_crit_edge ], [ %sub, %switch.hole_check.if.end_crit_edge ]
  %restart.1 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %entry.if.end_crit_edge ], [ 0, %switch.hole_check.if.end_crit_edge ]
  %call = call zeroext i1 @get_signal(ptr noundef nonnull %ksig) #5
  br i1 %call, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.1)
  %tobool16.not = icmp eq i32 %restart.1, 0
  br i1 %tobool16.not, label %if.then15.if.end35_crit_edge, label %land.lhs.true, !prof !25

if.then15.if.end35_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then15
  %arrayidx20 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %restart_addr.0)
  %cmp = icmp eq i32 %15, %restart_addr.0
  br i1 %cmp, label %if.then21, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then21:                                        ; preds = %land.lhs.true
  %16 = zext i32 %retval1.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval1.0, label %if.then21.if.end35_crit_edge [
    i32 -514, label %if.then21.if.then29_crit_edge
    i32 -516, label %if.then21.if.then29_crit_edge82
    i32 -512, label %land.lhs.true26
  ]

if.then21.if.then29_crit_edge82:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then21.if.then29_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true26:                                  ; preds = %if.then21
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %ksig, i32 0, i32 1
  %17 = ptrtoint ptr %sa_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sa_flags, align 4
  %and27 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.then29_crit_edge, label %land.lhs.true26.if.end35_crit_edge

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true26.if.then29_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true26.if.then29_crit_edge, %if.then21.if.then29_crit_edge, %if.then21.if.then29_crit_edge82
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -4, ptr %regs, align 4
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %continue_addr.0, ptr %arrayidx20, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %land.lhs.true26.if.end35_crit_edge, %if.then21.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.then15.if.end35_crit_edge
  %21 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i, align 8
  %blocked.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 113
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %22, align 16384
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i, label %if.end35.sigmask_to_save.exit.i_crit_edge, label %if.then.i.i, !prof !25

if.end35.sigmask_to_save.exit.i_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sigmask_to_save.exit.i

if.then.i.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %saved_sigmask.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 115
  br label %sigmask_to_save.exit.i

sigmask_to_save.exit.i:                           ; preds = %if.then.i.i, %if.end35.sigmask_to_save.exit.i_crit_edge
  %res.0.i.i = phi ptr [ %saved_sigmask.i.i, %if.then.i.i ], [ %blocked.i.i, %if.end35.sigmask_to_save.exit.i_crit_edge ]
  %28 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !29
  %32 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i14.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i14.i to ptr
  %task.i15.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i15.i, align 8
  %rseq_event_mask.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 176
  %36 = ptrtoint ptr %rseq_event_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rseq_event_mask.i.i, align 4
  %or.i.i.i = or i32 %37, 2
  store i32 %or.i.i.i, ptr %rseq_event_mask.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !30
  %38 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i3.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i4.i.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %rseq.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 174
  %46 = ptrtoint ptr %rseq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rseq.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %sigmask_to_save.exit.i.rseq_signal_deliver.exit.i_crit_edge, label %if.then.i.i.i

sigmask_to_save.exit.i.rseq_signal_deliver.exit.i_crit_edge: ; preds = %sigmask_to_save.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rseq_signal_deliver.exit.i

if.then.i.i.i:                                    ; preds = %sigmask_to_save.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__rseq_handle_notify_resume(ptr noundef nonnull %ksig, ptr noundef %regs) #5
  br label %rseq_signal_deliver.exit.i

rseq_signal_deliver.exit.i:                       ; preds = %if.then.i.i.i, %sigmask_to_save.exit.i.rseq_signal_deliver.exit.i_crit_edge
  %sa_flags.i = getelementptr inbounds %struct.sigaction, ptr %ksig, i32 0, i32 1
  %48 = ptrtoint ptr %sa_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sa_flags.i, align 4
  %and.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %arrayidx.i.i21.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %50 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i21.i, align 4
  %and.i.i.i23.i = and i32 %49, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i)
  %tobool.not.i.i.i24.i = icmp eq i32 %and.i.i.i23.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %rseq_signal_deliver.exit.i
  br i1 %tobool.not.i.i.i24.i, label %if.then.i.get_sigframe.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i, !prof !25

if.then.i.get_sigframe.exit.i.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %52 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i.i.i, align 8
  %sas_ss_size.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 118
  %56 = ptrtoint ptr %sas_ss_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sas_ss_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.get_sigframe.exit.i.i_crit_edge, label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.get_sigframe.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %sas_ss_flags.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 119
  %58 = ptrtoint ptr %sas_ss_flags.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sas_ss_flags.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %tobool.not.i.i.i.i.i.i = icmp sgt i32 %59, -1
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i.i.i.i.if.then.i.i.i.i_crit_edge

if.end.i.i.i.i.i.if.then.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %sas_ss_sp.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 117
  %60 = ptrtoint ptr %sas_ss_sp.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sas_ss_sp.i.i.i.i.i.i.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %61)
  %cmp.i.i.i.i.i.i.i = icmp ule i32 %51, %61
  %sub.i.i.i.i.i.i.i = sub i32 %51, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.i.i.i, i32 %57)
  %cmp6.i.i.i.not.i.i.i.i = icmp ugt i32 %sub.i.i.i.i.i.i.i, %57
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i.i.i.i, i1 true, i1 %cmp6.i.i.i.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.end.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i.get_sigframe.exit.i.i_crit_edge

if.end.i.i.i.i.i.i.get_sigframe.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i.i

if.end.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.if.then.i.i.i.i_crit_edge
  %sas_ss_sp.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 117
  %62 = ptrtoint ptr %sas_ss_sp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sas_ss_sp.i.i.i.i, align 64
  %add.i.i.i.i = add i32 %63, %57
  br label %get_sigframe.exit.i.i

get_sigframe.exit.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i.i.i.i.i.get_sigframe.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.get_sigframe.exit.i.i_crit_edge, %if.then.i.get_sigframe.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %51, %if.then.i.get_sigframe.exit.i.i_crit_edge ], [ %51, %land.lhs.true.i.i.i.i.get_sigframe.exit.i.i_crit_edge ], [ %51, %if.end.i.i.i.i.i.i.get_sigframe.exit.i.i_crit_edge ]
  %sub.i.i17.i = add i32 %retval.0.i.i.i.i, -888
  %and.i73.i.i = and i32 %sub.i.i17.i, -8
  %64 = inttoptr i32 %and.i73.i.i to ptr
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %64, i32 888, i32 -1226833920) #8, !srcloc !31
  %asmresult.i.i.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.not76.i.i = icmp eq i32 %and.i73.i.i, 0
  %tobool.not.i.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not76.i.i
  br i1 %tobool.not.i.i, label %get_sigframe.exit.i.i.if.end.i_crit_edge, label %if.end.i.i

get_sigframe.exit.i.i.if.end.i_crit_edge:         ; preds = %get_sigframe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %get_sigframe.exit.i.i
  %info1.i.i = getelementptr inbounds %struct.ksignal, ptr %ksig, i32 0, i32 1
  %call2.i.i = call i32 @copy_siginfo_to_user(ptr noundef nonnull %64, ptr noundef %info1.i.i) #5
  %sig.i.i = getelementptr inbounds %struct.rt_sigframe, ptr %64, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 477) #5
  %66 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i18.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i18.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !20
  %and.i.i19.i = and i32 %68, -13
  %or.i.i20.i = or i32 %and.i.i19.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i20.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %69 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sig.i.i, i32 0, i32 -1226833921) #5, !srcloc !32
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %or5.i.i = or i32 %69, %call2.i.i
  %uc_link.i.i = getelementptr inbounds %struct.rt_sigframe, ptr %64, i32 0, i32 1, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 478) #5
  %70 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i69.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i69.i.i to ptr
  %cpu_domain.i.i70.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70.i.i) #4, !srcloc !20
  %and.i71.i.i = and i32 %72, -13
  %or.i72.i.i = or i32 %and.i71.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %73 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uc_link.i.i, ptr null, i32 -1226833921) #5, !srcloc !33
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %or23.i.i = or i32 %or5.i.i, %73
  %uc_stack.i.i = getelementptr inbounds %struct.rt_sigframe, ptr %64, i32 0, i32 1, i32 0, i32 2
  %74 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i21.i, align 4
  %call26.i.i = call i32 @__save_altstack(ptr noundef %uc_stack.i.i, i32 noundef %75) #5
  %or27.i.i = or i32 %or23.i.i, %call26.i.i
  %call29.i.i = call fastcc i32 @setup_sigframe(ptr noundef %sig.i.i, ptr noundef %regs, ptr noundef %res.0.i.i) #5
  %or30.i.i = or i32 %or27.i.i, %call29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i)
  %cmp.i.i = icmp eq i32 %or30.i.i, 0
  br i1 %cmp.i.i, label %if.end34.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end34.i.i:                                     ; preds = %if.end.i.i
  %retcode.i.i = getelementptr inbounds %struct.rt_sigframe, ptr %64, i32 0, i32 1, i32 1
  %call33.i.i = call fastcc i32 @setup_return(ptr noundef %regs, ptr noundef nonnull %ksig, ptr noundef %retcode.i.i, ptr noundef nonnull %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp35.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %cmp35.i.i, label %if.then36.i.i, label %if.end34.i.i.if.end.i_crit_edge

if.end34.i.i.if.end.i_crit_edge:                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then36.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i73.i.i, ptr %arrayidx39.i.i, align 4
  %77 = ptrtoint ptr %sig.i.i to i32
  %arrayidx43.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx43.i.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %rseq_signal_deliver.exit.i
  br i1 %tobool.not.i.i.i24.i, label %if.else.i.get_sigframe.exit.i47.i_crit_edge, label %land.lhs.true.i.i.i29.i, !prof !25

if.else.i.get_sigframe.exit.i47.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i47.i

land.lhs.true.i.i.i29.i:                          ; preds = %if.else.i
  %79 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i.i25.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %task.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i.i26.i, align 8
  %sas_ss_size.i.i.i.i27.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 118
  %83 = ptrtoint ptr %sas_ss_size.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sas_ss_size.i.i.i.i27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i.i28.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i.i28.i, label %land.lhs.true.i.i.i29.i.get_sigframe.exit.i47.i_crit_edge, label %if.end.i.i.i.i32.i

land.lhs.true.i.i.i29.i.get_sigframe.exit.i47.i_crit_edge: ; preds = %land.lhs.true.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i47.i

if.end.i.i.i.i32.i:                               ; preds = %land.lhs.true.i.i.i29.i
  %sas_ss_flags.i.i.i.i.i30.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 119
  %85 = ptrtoint ptr %sas_ss_flags.i.i.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sas_ss_flags.i.i.i.i.i30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %tobool.not.i.i.i.i.i31.i = icmp sgt i32 %86, -1
  br i1 %tobool.not.i.i.i.i.i31.i, label %if.end.i.i.i.i.i38.i, label %if.end.i.i.i.i32.i.if.then.i.i.i41.i_crit_edge

if.end.i.i.i.i32.i.if.then.i.i.i41.i_crit_edge:   ; preds = %if.end.i.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i41.i

if.end.i.i.i.i.i38.i:                             ; preds = %if.end.i.i.i.i32.i
  %sas_ss_sp.i.i.i.i.i.i33.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 117
  %87 = ptrtoint ptr %sas_ss_sp.i.i.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sas_ss_sp.i.i.i.i.i.i33.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %88)
  %cmp.i.i.i.i.i.i34.i = icmp ule i32 %51, %88
  %sub.i.i.i.i.i.i35.i = sub i32 %51, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.i.i35.i, i32 %84)
  %cmp6.i.i.i.not.i.i.i36.i = icmp ugt i32 %sub.i.i.i.i.i.i35.i, %84
  %or.cond.i.i.i37.i = select i1 %cmp.i.i.i.i.i.i34.i, i1 true, i1 %cmp6.i.i.i.not.i.i.i36.i
  br i1 %or.cond.i.i.i37.i, label %if.end.i.i.i.i.i38.i.if.then.i.i.i41.i_crit_edge, label %if.end.i.i.i.i.i38.i.get_sigframe.exit.i47.i_crit_edge

if.end.i.i.i.i.i38.i.get_sigframe.exit.i47.i_crit_edge: ; preds = %if.end.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_sigframe.exit.i47.i

if.end.i.i.i.i.i38.i.if.then.i.i.i41.i_crit_edge: ; preds = %if.end.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i41.i

if.then.i.i.i41.i:                                ; preds = %if.end.i.i.i.i.i38.i.if.then.i.i.i41.i_crit_edge, %if.end.i.i.i.i32.i.if.then.i.i.i41.i_crit_edge
  %sas_ss_sp.i.i.i39.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 117
  %89 = ptrtoint ptr %sas_ss_sp.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sas_ss_sp.i.i.i39.i, align 64
  %add.i.i.i40.i = add i32 %90, %84
  br label %get_sigframe.exit.i47.i

get_sigframe.exit.i47.i:                          ; preds = %if.then.i.i.i41.i, %if.end.i.i.i.i.i38.i.get_sigframe.exit.i47.i_crit_edge, %land.lhs.true.i.i.i29.i.get_sigframe.exit.i47.i_crit_edge, %if.else.i.get_sigframe.exit.i47.i_crit_edge
  %retval.0.i.i.i42.i = phi i32 [ %add.i.i.i40.i, %if.then.i.i.i41.i ], [ %51, %if.else.i.get_sigframe.exit.i47.i_crit_edge ], [ %51, %land.lhs.true.i.i.i29.i.get_sigframe.exit.i47.i_crit_edge ], [ %51, %if.end.i.i.i.i.i38.i.get_sigframe.exit.i47.i_crit_edge ]
  %sub.i.i43.i = add i32 %retval.0.i.i.i42.i, -760
  %and.i17.i.i = and i32 %sub.i.i43.i, -8
  %91 = inttoptr i32 %and.i17.i.i to ptr
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %91, i32 760, i32 -1226833920) #8, !srcloc !31
  %asmresult.i.i44.i = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44.i)
  %cmp.i.i45.i = icmp ne i32 %asmresult.i.i44.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i.i)
  %tobool.not18.i.i = icmp eq i32 %and.i17.i.i, 0
  %tobool.not.i46.i = select i1 %cmp.i.i45.i, i1 true, i1 %tobool.not18.i.i
  br i1 %tobool.not.i46.i, label %get_sigframe.exit.i47.i.if.end.i_crit_edge, label %if.end.i53.i

get_sigframe.exit.i47.i.if.end.i_crit_edge:       ; preds = %get_sigframe.exit.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i53.i:                                     ; preds = %get_sigframe.exit.i47.i
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 457) #5
  %93 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i48.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i48.i to ptr
  %cpu_domain.i.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i49.i) #4, !srcloc !20
  %and.i.i50.i = and i32 %95, -13
  %or.i.i51.i = or i32 %and.i.i50.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i51.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %96 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %91, i32 1522778970, i32 -1226833921) #5, !srcloc !34
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call3.i.i = call fastcc i32 @setup_sigframe(ptr noundef nonnull %91, ptr noundef %regs, ptr noundef %res.0.i.i) #5
  %or.i.i = or i32 %call3.i.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i52.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i52.i, label %if.then4.i.i, label %if.end.i53.i.if.end.i_crit_edge

if.end.i53.i.if.end.i_crit_edge:                  ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then4.i.i:                                     ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  %retcode.i54.i = getelementptr inbounds %struct.sigframe, ptr %91, i32 0, i32 1
  %call5.i.i = call fastcc i32 @setup_return(ptr noundef %regs, ptr noundef nonnull %ksig, ptr noundef %retcode.i54.i, ptr noundef nonnull %91) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i.i, %if.end.i53.i.if.end.i_crit_edge, %get_sigframe.exit.i47.i.if.end.i_crit_edge, %if.then36.i.i, %if.end34.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %get_sigframe.exit.i.i.if.end.i_crit_edge
  %ret.0.i = phi i32 [ 1, %get_sigframe.exit.i.i.if.end.i_crit_edge ], [ 0, %if.then36.i.i ], [ %call33.i.i, %if.end34.i.i.if.end.i_crit_edge ], [ %or30.i.i, %if.end.i.i.if.end.i_crit_edge ], [ 1, %get_sigframe.exit.i47.i.if.end.i_crit_edge ], [ %call5.i.i, %if.then4.i.i ], [ %or.i.i, %if.end.i53.i.if.end.i_crit_edge ]
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %98, 31
  %and3.i.i = and i32 %98, -321
  store i32 %and3.i.i, ptr %arrayidx.i.i, align 4
  %and6.i.i = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp.i56.i = icmp eq i32 %and6.i.i, 0
  br i1 %cmp.i56.i, label %if.then.i57.i, label %if.end.i.if.end13.i.i_crit_edge

if.end.i.if.end13.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then.i57.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i)
  %cmp7.i.i = icmp eq i32 %and.i.i, 16
  br i1 %cmp7.i.i, label %if.then.i57.i.handle_signal.exit_crit_edge, label %if.end.i59.i

if.then.i57.i.handle_signal.exit_crit_edge:       ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_signal.exit

if.end.i59.i:                                     ; preds = %if.then.i57.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %99 = load i32, ptr @elf_hwcap, align 4
  %and9.i.i = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i58.i = icmp ne i32 %and9.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp10.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i58.i, i1 %cmp10.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i59.i.handle_signal.exit_crit_edge, label %if.end.i59.i.if.end13.i.i_crit_edge

if.end.i59.i.if.end13.i.i_crit_edge:              ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.end.i59.i.handle_signal.exit_crit_edge:        ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_signal.exit

if.end13.i.i:                                     ; preds = %if.end.i59.i.if.end13.i.i_crit_edge, %if.end.i.if.end13.i.i_crit_edge
  %and16.i.i = and i32 %98, -464
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and16.i.i, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %101 = load i32, ptr @elf_hwcap, align 4
  %and17.i.i = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %if.end13.i.i.handle_signal.exit_crit_edge

if.end13.i.i.handle_signal.exit_crit_edge:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %handle_signal.exit

if.then19.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i60.i = or i32 %and16.i.i, 16
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i60.i, ptr %arrayidx.i.i, align 4
  br label %handle_signal.exit

handle_signal.exit:                               ; preds = %if.then19.i.i, %if.end13.i.i.handle_signal.exit_crit_edge, %if.end.i59.i.handle_signal.exit_crit_edge, %if.then.i57.i.handle_signal.exit_crit_edge
  %tobool4.not.i = phi i32 [ 0, %if.then.i57.i.handle_signal.exit_crit_edge ], [ 0, %if.end.i59.i.handle_signal.exit_crit_edge ], [ 1, %if.end13.i.i.handle_signal.exit_crit_edge ], [ 1, %if.then19.i.i ]
  %or.i = or i32 %tobool4.not.i, %ret.0.i
  call void @signal_setup_done(i32 noundef %or.i, ptr noundef nonnull %ksig, i32 noundef 0) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %103 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i78 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i78 to ptr
  %call.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %104) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.restore_saved_sigmask.exit_crit_edge, label %if.then.i80

if.else.restore_saved_sigmask.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %restore_saved_sigmask.exit

if.then.i80:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %105 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i79 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i79 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i, align 8
  %saved_sigmask.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 115
  call void @__set_current_blocked(ptr noundef %saved_sigmask.i) #5
  br label %restore_saved_sigmask.exit

restore_saved_sigmask.exit:                       ; preds = %if.then.i80, %if.else.restore_saved_sigmask.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.1)
  %tobool36.not = icmp eq i32 %restart.1, 0
  br i1 %tobool36.not, label %restore_saved_sigmask.exit.cleanup_crit_edge, label %land.lhs.true43, !prof !25

restore_saved_sigmask.exit.cleanup_crit_edge:     ; preds = %restore_saved_sigmask.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true43:                                  ; preds = %restore_saved_sigmask.exit
  %arrayidx45 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %109 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %restart_addr.0)
  %cmp46 = icmp eq i32 %110, %restart_addr.0
  br i1 %cmp46, label %if.then47, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %continue_addr.0, ptr %arrayidx45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %land.lhs.true43.cleanup_crit_edge, %restore_saved_sigmask.exit.cleanup_crit_edge, %handle_signal.exit
  %retval.0 = phi i32 [ %restart.1, %if.then47 ], [ 0, %restore_saved_sigmask.exit.cleanup_crit_edge ], [ 0, %land.lhs.true43.cleanup_crit_edge ], [ 0, %handle_signal.exit ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ksig) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_notify_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracehook_notify_resume(ptr noundef %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_works = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 120
  %4 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task_works, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @task_work_run() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cached_requested_key = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 100
  %8 = ptrtoint ptr %cached_requested_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cached_requested_key, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end.if.end22_crit_edge, label %if.then15, !prof !25

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @key_put(ptr noundef nonnull %9) #5
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cached_requested_key21 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 100
  %12 = ptrtoint ptr %cached_requested_key21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cached_requested_key21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end.if.end22_crit_edge
  tail call void @mem_cgroup_handle_over_high() #5
  tail call void @blkcg_maybe_throttle_current() #5
  %13 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %rseq.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 174
  %17 = ptrtoint ptr %rseq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rseq.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end22.rseq_handle_notify_resume.exit_crit_edge, label %if.then.i

if.end22.rseq_handle_notify_resume.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %rseq_handle_notify_resume.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__rseq_handle_notify_resume(ptr noundef null, ptr noundef %regs) #5
  br label %rseq_handle_notify_resume.exit

rseq_handle_notify_resume.exit:                   ; preds = %if.then.i, %if.end22.rseq_handle_notify_resume.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_signal_page() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #5
  %call.i = tail call ptr @__memset32(ptr noundef %call1, i32 noundef -237044249, i32 noundef 4096) #5
  %call.i14 = tail call i32 @get_random_u32() #5
  %and = and i32 %call.i14, 2044
  %add = add nuw nsw i32 %and, 512
  store i32 %add, ptr @signal_return_offset, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 %add
  %0 = call ptr @memcpy(ptr %add.ptr, ptr @sigreturn_codes, i32 68)
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add4 = add i32 %1, 4096
  tail call void %2(i32 noundef %1, i32 noundef %add4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call38.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_rseq_syscall(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rseq_syscall(ptr noundef %regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rseq_syscall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_restore_user_hwstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_setup_done(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rseq_handle_notify_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__save_altstack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_sigframe(ptr noundef %sf, ptr nocapture noundef readonly %regs, ptr noundef %set) unnamed_addr #0 align 64 {
entry:
  %kframe.i = alloca %struct.vfp_sigframe, align 8
  %kbuf.i = alloca [168 x i8], align 1
  %context = alloca %struct.sigcontext, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %context) #5
  %0 = call ptr @memset(ptr %context, i32 255, i32 84)
  %1 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i91 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i91 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %thread = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 219
  %trap_no1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 219, i32 1
  %5 = ptrtoint ptr %trap_no1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trap_no1, align 4
  %error_code5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 219, i32 2
  %7 = ptrtoint ptr %error_code5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_code5, align 8
  %9 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %set, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regs, align 4
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [18 x i32], ptr %regs, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr [18 x i32], ptr %regs, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr [18 x i32], ptr %regs, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [18 x i32], ptr %regs, i32 0, i32 6
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr [18 x i32], ptr %regs, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr [18 x i32], ptr %regs, i32 0, i32 8
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr [18 x i32], ptr %regs, i32 0, i32 9
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr [18 x i32], ptr %regs, i32 0, i32 10
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %39 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %41 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %43 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx38, align 4
  %45 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %thread, align 32
  %47 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %6, ptr %context, align 4
  %.compoundliteral.sroa.2.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 4
  %48 = ptrtoint ptr %.compoundliteral.sroa.2.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %8, ptr %.compoundliteral.sroa.2.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 8
  %49 = ptrtoint ptr %.compoundliteral.sroa.3.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %10, ptr %.compoundliteral.sroa.3.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 12
  %50 = ptrtoint ptr %.compoundliteral.sroa.4.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %12, ptr %.compoundliteral.sroa.4.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 16
  %51 = ptrtoint ptr %.compoundliteral.sroa.5.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %14, ptr %.compoundliteral.sroa.5.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 20
  %52 = ptrtoint ptr %.compoundliteral.sroa.6.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %16, ptr %.compoundliteral.sroa.6.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 24
  %53 = ptrtoint ptr %.compoundliteral.sroa.7.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %18, ptr %.compoundliteral.sroa.7.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 28
  %54 = ptrtoint ptr %.compoundliteral.sroa.8.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %20, ptr %.compoundliteral.sroa.8.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 32
  %55 = ptrtoint ptr %.compoundliteral.sroa.9.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %22, ptr %.compoundliteral.sroa.9.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 36
  %56 = ptrtoint ptr %.compoundliteral.sroa.10.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %24, ptr %.compoundliteral.sroa.10.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.11.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 40
  %57 = ptrtoint ptr %.compoundliteral.sroa.11.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %26, ptr %.compoundliteral.sroa.11.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.12.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 44
  %58 = ptrtoint ptr %.compoundliteral.sroa.12.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %28, ptr %.compoundliteral.sroa.12.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.13.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 48
  %59 = ptrtoint ptr %.compoundliteral.sroa.13.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %30, ptr %.compoundliteral.sroa.13.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.14.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 52
  %60 = ptrtoint ptr %.compoundliteral.sroa.14.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %32, ptr %.compoundliteral.sroa.14.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.15.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 56
  %61 = ptrtoint ptr %.compoundliteral.sroa.15.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %34, ptr %.compoundliteral.sroa.15.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 60
  %62 = ptrtoint ptr %.compoundliteral.sroa.16.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %36, ptr %.compoundliteral.sroa.16.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.17.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 64
  %63 = ptrtoint ptr %.compoundliteral.sroa.17.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %38, ptr %.compoundliteral.sroa.17.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.18.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 68
  %64 = ptrtoint ptr %.compoundliteral.sroa.18.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %40, ptr %.compoundliteral.sroa.18.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.19.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 72
  %65 = ptrtoint ptr %.compoundliteral.sroa.19.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %42, ptr %.compoundliteral.sroa.19.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 76
  %66 = ptrtoint ptr %.compoundliteral.sroa.20.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %44, ptr %.compoundliteral.sroa.20.0.context.sroa_idx, align 4
  %.compoundliteral.sroa.21.0.context.sroa_idx = getelementptr inbounds i8, ptr %context, i32 80
  %67 = ptrtoint ptr %.compoundliteral.sroa.21.0.context.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %46, ptr %.compoundliteral.sroa.21.0.context.sroa_idx, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 143) #5
  %call.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i, label %entry.__copy_to_user.exit_crit_edge, label %if.end.i

entry.__copy_to_user.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_to_user.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uc_mcontext = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %context, i32 noundef 84) #5
  %call.i8.i = call i32 @arm_copy_to_user(ptr noundef %uc_mcontext, ptr noundef nonnull %context, i32 noundef 84) #5
  br label %__copy_to_user.exit

__copy_to_user.exit:                              ; preds = %if.end.i, %entry.__copy_to_user.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ 84, %entry.__copy_to_user.exit_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 143) #5
  %call.i85 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i85, label %__copy_to_user.exit.__copy_to_user.exit90_crit_edge, label %if.end.i87

__copy_to_user.exit.__copy_to_user.exit90_crit_edge: ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_to_user.exit90

if.end.i87:                                       ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %uc_sigmask = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 4
  %call.i.i86 = call zeroext i1 @__kasan_check_read(ptr noundef %set, i32 noundef 8) #5
  %call.i8.i88 = call i32 @arm_copy_to_user(ptr noundef %uc_sigmask, ptr noundef %set, i32 noundef 8) #5
  br label %__copy_to_user.exit90

__copy_to_user.exit90:                            ; preds = %if.end.i87, %__copy_to_user.exit.__copy_to_user.exit90_crit_edge
  %retval.0.i89 = phi i32 [ %call.i8.i88, %if.end.i87 ], [ 8, %__copy_to_user.exit.__copy_to_user.exit90_crit_edge ]
  %or45 = or i32 %retval.0.i89, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or45)
  %cmp = icmp eq i32 %or45, 0
  br i1 %cmp, label %if.then, label %__copy_to_user.exit90.if.end53_crit_edge

__copy_to_user.exit90.if.end53_crit_edge:         ; preds = %__copy_to_user.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then:                                          ; preds = %__copy_to_user.exit90
  %uc_regspace = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %kbuf.i) #5
  %68 = call ptr @memset(ptr %kbuf.i, i32 255, i32 168)
  %add.ptr.i = getelementptr inbounds i8, ptr %kbuf.i, i32 8
  %69 = ptrtoint ptr %add.ptr.i to i32
  %and.i92 = and i32 %69, -8
  %70 = inttoptr i32 %and.i92 to ptr
  %71 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 16384
  %75 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 317686826, ptr %70, align 8
  %size.i = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %70, i32 0, i32 1
  %77 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 160, ptr %size.i, align 4
  %storage.i = getelementptr inbounds %struct.iwmmxt_sigframe, ptr %70, i32 0, i32 2
  call void @iwmmxt_task_copy(ptr noundef %72, ptr noundef %storage.i) #5
  br label %if.end.i94

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1327895295, ptr %70, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %70, i32 4
  %79 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 160, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %70, i32 8
  %80 = call ptr @memset(ptr %.compoundliteral.sroa.4.0..sroa_idx.i, i32 0, i32 152)
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.else.i, %if.then.i
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 143) #5
  %call.i.i93 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i93, label %if.end.thread106, label %if.end

if.end.thread106:                                 ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %kbuf.i) #5
  br label %if.end53

if.end:                                           ; preds = %if.end.i94
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %70, i32 noundef 160) #5
  %call.i8.i.i = call i32 @arm_copy_to_user(ptr noundef %uc_regspace, ptr noundef %70, i32 noundef 160) #5
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %kbuf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %cmp49 = icmp eq i32 %call.i8.i.i, 0
  br i1 %cmp49, label %if.then50, label %if.end.if.end53_crit_edge

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then50:                                        ; preds = %if.end
  %vfp = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 6, i32 40
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %kframe.i) #5
  %81 = getelementptr inbounds i8, ptr %kframe.i, i32 8
  %82 = call ptr @memset(ptr %81, i32 0, i32 280)
  %83 = ptrtoint ptr %kframe.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1447448577, ptr %kframe.i, align 8
  %size.i95 = getelementptr inbounds %struct.vfp_sigframe, ptr %kframe.i, i32 0, i32 1
  %84 = ptrtoint ptr %size.i95 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 288, ptr %size.i95, align 4
  %ufp_exc.i = getelementptr inbounds %struct.vfp_sigframe, ptr %kframe.i, i32 0, i32 3
  %call.i96 = call i32 @vfp_preserve_user_clear_hwstate(ptr noundef %81, ptr noundef %ufp_exc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end.i99, label %if.then50.preserve_vfp_context.exit_crit_edge

if.then50.preserve_vfp_context.exit_crit_edge:    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %preserve_vfp_context.exit

if.end.i99:                                       ; preds = %if.then50
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 143) #5
  %call.i.i98 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i98, label %if.end.i99.preserve_vfp_context.exit_crit_edge, label %if.end.i.i102

if.end.i99.preserve_vfp_context.exit_crit_edge:   ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %preserve_vfp_context.exit

if.end.i.i102:                                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i100 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kframe.i, i32 noundef 288) #5
  %call.i8.i.i101 = call i32 @arm_copy_to_user(ptr noundef %vfp, ptr noundef nonnull %kframe.i, i32 noundef 288) #5
  br label %preserve_vfp_context.exit

preserve_vfp_context.exit:                        ; preds = %if.end.i.i102, %if.end.i99.preserve_vfp_context.exit_crit_edge, %if.then50.preserve_vfp_context.exit_crit_edge
  %retval.0.i103 = phi i32 [ %call.i96, %if.then50.preserve_vfp_context.exit_crit_edge ], [ %call.i8.i.i101, %if.end.i.i102 ], [ 288, %if.end.i99.preserve_vfp_context.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %kframe.i) #5
  br label %if.end53

if.end53:                                         ; preds = %preserve_vfp_context.exit, %if.end.if.end53_crit_edge, %if.end.thread106, %__copy_to_user.exit90.if.end53_crit_edge
  %err.1 = phi i32 [ %retval.0.i103, %preserve_vfp_context.exit ], [ %call.i8.i.i, %if.end.if.end53_crit_edge ], [ 160, %if.end.thread106 ], [ %or45, %__copy_to_user.exit90.if.end53_crit_edge ]
  %end_magic = getelementptr inbounds %struct.ucontext, ptr %sf, i32 0, i32 6, i32 112
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 294) #5
  %85 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 4
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !20
  %and.i = and i32 %87, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %88 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %end_magic, i32 0, i32 -1226833921) #5, !srcloc !36
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %or56 = or i32 %88, %err.1
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %context) #5
  ret i32 %or56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_return(ptr nocapture noundef %regs, ptr nocapture noundef readonly %ksig, ptr noundef %rc, ptr noundef %frame) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ksig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ksig, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %and = and i32 %4, 16776703
  %5 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i290 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i290 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 62
  %9 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %personality, align 32
  %and1 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 334) #5
  %11 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !20
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #5, !srcloc !37
  %asmresult = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool7.not = icmp eq i32 %asmresult, 0
  br i1 %tobool7.not, label %cleanup, label %if.then.cleanup210_crit_edge

if.then.cleanup210_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

cleanup:                                          ; preds = %if.then
  %asmresult5 = extractvalue { i32, i32 } %14, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 335) #5
  %arrayidx11 = getelementptr i32, ptr %1, i32 1
  %15 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i262 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i262 to ptr
  %cpu_domain.i.i263 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i263) #4, !srcloc !20
  %and.i264 = and i32 %17, -13
  %or.i265 = or i32 %and.i264, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i265) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx11, i32 -1226833921) #5, !srcloc !38
  %asmresult18 = extractvalue { i32, i32 } %18, 0
  %asmresult19 = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult18)
  %tobool21.not = icmp eq i32 %asmresult18, 0
  br i1 %tobool21.not, label %cleanup.if.end23_crit_edge, label %cleanup.cleanup210_crit_edge

cleanup.cleanup210_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %entry.if.end23_crit_edge
  %handler_fdpic_GOT.2 = phi i32 [ %asmresult19, %cleanup.if.end23_crit_edge ], [ 0, %entry.if.end23_crit_edge ]
  %handler.0 = phi i32 [ %asmresult5, %cleanup.if.end23_crit_edge ], [ %2, %entry.if.end23_crit_edge ]
  %or = or i32 %and, 512
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %ksig, i32 0, i32 1
  %19 = ptrtoint ptr %sa_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sa_flags, align 4
  %and26 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %or, 16777184
  %or30 = or i32 %and29, 16
  %cpsr.0 = select i1 %tobool27.not, i32 %or, i32 %or30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %21 = load i32, ptr @elf_hwcap, align 4
  %and32 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %and35 = and i32 %handler.0, 1
  %and40 = and i32 %cpsr.0, 16712671
  %22 = shl nuw nsw i32 %and35, 5
  %23 = or i32 %22, %and40
  %cpsr.1 = select i1 %tobool33.not, i32 %cpsr.0, i32 %23
  %thumb.0 = select i1 %tobool33.not, i32 0, i32 %and35
  %and46 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else132, label %if.then48

if.then48:                                        ; preds = %if.end23
  %sa_restorer = getelementptr inbounds %struct.sigaction, ptr %ksig, i32 0, i32 2
  %24 = ptrtoint ptr %sa_restorer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sa_restorer, align 4
  %26 = ptrtoint ptr %25 to i32
  br i1 %tobool.not, label %if.end207.critedge, label %if.then52

if.then52:                                        ; preds = %if.then48
  %mul = mul nuw nsw i32 %thumb.0, 3
  %and56 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %spec.select.v = select i1 %tobool57.not, i32 6, i32 11
  %spec.select = add nuw nsw i32 %mul, %spec.select.v
  %arrayidx61 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %spec.select
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx61, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 388) #5
  %29 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i266 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i266 to ptr
  %cpu_domain.i.i267 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i267) #4, !srcloc !20
  %and.i268 = and i32 %31, -13
  %or.i269 = or i32 %and.i268, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i269) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %rc, i32 %28, i32 -1226833921) #5, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool71.not = icmp eq i32 %32, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.then52.cleanup210_crit_edge

if.then52.cleanup210_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false72:                                  ; preds = %if.then52
  %add.ptr = getelementptr i32, ptr %rc, i32 1
  %add77 = add nuw nsw i32 %spec.select, 1
  %arrayidx78 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %add77
  %33 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx78, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 389) #5
  %35 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i270 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i270 to ptr
  %cpu_domain.i.i271 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i271) #4, !srcloc !20
  %and.i272 = and i32 %37, -13
  %or.i273 = or i32 %and.i272, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i273) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %34, i32 -1226833921) #5, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool90.not = icmp eq i32 %38, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false72.cleanup210_crit_edge

lor.lhs.false72.cleanup210_crit_edge:             ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false91:                                  ; preds = %lor.lhs.false72
  %add.ptr95 = getelementptr i32, ptr %rc, i32 2
  %add97 = add nuw nsw i32 %spec.select, 2
  %arrayidx98 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %add97
  %39 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx98, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 390) #5
  %41 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i274 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i274 to ptr
  %cpu_domain.i.i275 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i275) #4, !srcloc !20
  %and.i276 = and i32 %43, -13
  %or.i277 = or i32 %and.i276, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i277) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr95, i32 %40, i32 -1226833921) #5, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool110.not = icmp eq i32 %44, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %lor.lhs.false91.cleanup210_crit_edge

lor.lhs.false91.cleanup210_crit_edge:             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false111:                                 ; preds = %lor.lhs.false91
  %add.ptr115 = getelementptr i32, ptr %rc, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 391) #5
  %45 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i278 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i278 to ptr
  %cpu_domain.i.i279 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i279) #4, !srcloc !20
  %and.i280 = and i32 %47, -13
  %or.i281 = or i32 %and.i280, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i281) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr115, i32 %26, i32 -1226833921) #5, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool128.not = icmp eq i32 %48, 0
  br i1 %tobool128.not, label %lor.lhs.false111.rc_finish_crit_edge, label %lor.lhs.false111.cleanup210_crit_edge

lor.lhs.false111.cleanup210_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false111.rc_finish_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #7
  br label %rc_finish

if.else132:                                       ; preds = %if.end23
  %shl = shl nuw nsw i32 %thumb.0, 1
  %and136 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %add139 = add nuw nsw i32 %shl, 3
  %spec.select260 = select i1 %tobool137.not, i32 %shl, i32 %add139
  %arrayidx145 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %spec.select260
  %49 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx145, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 404) #5
  %51 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i282 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i282 to ptr
  %cpu_domain.i.i283 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i283) #4, !srcloc !20
  %and.i284 = and i32 %53, -13
  %or.i285 = or i32 %and.i284, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i285) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %rc, i32 %50, i32 -1226833921) #5, !srcloc !43
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool157.not = icmp eq i32 %54, 0
  br i1 %tobool157.not, label %lor.lhs.false158, label %if.else132.cleanup210_crit_edge

if.else132.cleanup210_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false158:                                 ; preds = %if.else132
  %add.ptr162 = getelementptr i32, ptr %rc, i32 1
  %add164 = add nuw nsw i32 %spec.select260, 1
  %arrayidx165 = getelementptr [17 x i32], ptr @sigreturn_codes, i32 0, i32 %add164
  %55 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx165, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 405) #5
  %57 = tail call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i286 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i286 to ptr
  %cpu_domain.i.i287 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i287) #4, !srcloc !20
  %and.i288 = and i32 %59, -13
  %or.i289 = or i32 %and.i288, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i289) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %60 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr162, i32 %56, i32 -1226833921) #5, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool177.not = icmp eq i32 %60, 0
  br i1 %tobool177.not, label %lor.lhs.false158.rc_finish_crit_edge, label %lor.lhs.false158.cleanup210_crit_edge

lor.lhs.false158.cleanup210_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

lor.lhs.false158.rc_finish_crit_edge:             ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #7
  br label %rc_finish

rc_finish:                                        ; preds = %lor.lhs.false158.rc_finish_crit_edge, %lor.lhs.false111.rc_finish_crit_edge
  %idx.2 = phi i32 [ %spec.select, %lor.lhs.false111.rc_finish_crit_edge ], [ %spec.select260, %lor.lhs.false158.rc_finish_crit_edge ]
  %and180 = and i32 %cpsr.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.else190, label %if.then182

if.then182:                                       ; preds = %rc_finish
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %mm185 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 53
  %63 = ptrtoint ptr %mm185 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mm185, align 8
  %sigpage = getelementptr inbounds %struct.anon.7, ptr %64, i32 0, i32 42, i32 2
  %65 = ptrtoint ptr %sigpage to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sigpage, align 4
  %67 = load i32, ptr @signal_return_offset, align 4
  %shl187 = shl nuw nsw i32 %idx.2, 2
  %add186 = or i32 %shl187, %thumb.0
  %add188 = add i32 %add186, %66
  %add189 = add i32 %add188, %67
  br label %if.end194

if.else190:                                       ; preds = %rc_finish
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %69 = ptrtoint ptr %rc to i32
  %add.ptr191 = getelementptr i32, ptr %rc, i32 3
  %70 = ptrtoint ptr %add.ptr191 to i32
  tail call void %68(i32 noundef %69, i32 noundef %70) #5
  %add192 = add i32 %thumb.0, %69
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then182
  %retcode.0 = phi i32 [ %add189, %if.then182 ], [ %add192, %if.else190 ]
  %sig = getelementptr inbounds %struct.ksignal, ptr %ksig, i32 0, i32 2
  %71 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sig, align 4
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %regs, align 4
  %74 = ptrtoint ptr %frame to i32
  %arrayidx198 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %75 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx198, align 4
  %arrayidx200 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %76 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retcode.0, ptr %arrayidx200, align 4
  %arrayidx202 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %77 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %handler.0, ptr %arrayidx202, align 4
  br i1 %tobool.not, label %if.end194.if.end207_crit_edge, label %if.end194.if.end207.sink.split_crit_edge

if.end194.if.end207.sink.split_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207.sink.split

if.end194.if.end207_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end207

if.end207.critedge:                               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %sig.c = getelementptr inbounds %struct.ksignal, ptr %ksig, i32 0, i32 2
  %78 = ptrtoint ptr %sig.c to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sig.c, align 4
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %regs, align 4
  %81 = ptrtoint ptr %frame to i32
  %arrayidx198.c = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %82 = ptrtoint ptr %arrayidx198.c to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx198.c, align 4
  %arrayidx200.c = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %83 = ptrtoint ptr %arrayidx200.c to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %26, ptr %arrayidx200.c, align 4
  br label %if.end207.sink.split

if.end207.sink.split:                             ; preds = %if.end207.critedge, %if.end194.if.end207.sink.split_crit_edge
  %.sink = phi i32 [ 15, %if.end207.critedge ], [ 9, %if.end194.if.end207.sink.split_crit_edge ]
  %handler.0.sink = phi i32 [ %handler.0, %if.end207.critedge ], [ %handler_fdpic_GOT.2, %if.end194.if.end207.sink.split_crit_edge ]
  %arrayidx202.c = getelementptr [18 x i32], ptr %regs, i32 0, i32 %.sink
  %84 = ptrtoint ptr %arrayidx202.c to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %handler.0.sink, ptr %arrayidx202.c, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.end207.sink.split, %if.end194.if.end207_crit_edge
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cpsr.1, ptr %arrayidx, align 4
  br label %cleanup210

cleanup210:                                       ; preds = %if.end207, %lor.lhs.false158.cleanup210_crit_edge, %if.else132.cleanup210_crit_edge, %lor.lhs.false111.cleanup210_crit_edge, %lor.lhs.false91.cleanup210_crit_edge, %lor.lhs.false72.cleanup210_crit_edge, %if.then52.cleanup210_crit_edge, %cleanup.cleanup210_crit_edge, %if.then.cleanup210_crit_edge
  %retval.1 = phi i32 [ 0, %if.end207 ], [ 1, %cleanup.cleanup210_crit_edge ], [ 1, %lor.lhs.false111.cleanup210_crit_edge ], [ 1, %lor.lhs.false91.cleanup210_crit_edge ], [ 1, %lor.lhs.false72.cleanup210_crit_edge ], [ 1, %if.then52.cleanup210_crit_edge ], [ 1, %lor.lhs.false158.cleanup210_crit_edge ], [ 1, %if.else132.cleanup210_crit_edge ], [ 1, %if.then.cleanup210_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_preserve_user_clear_hwstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_handle_over_high() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_maybe_throttle_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @signal_return_offset, !1, !"signal_return_offset", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/signal.c", i32 26, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/uaccess.h", i32 109, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/signal.c", i32 477, i32 9}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2155517401, i64 2155517426}
!19 = !{!"auto-init"}
!20 = !{i64 3076819}
!21 = !{i64 3077016}
!22 = !{i64 2150562249}
!23 = !{i64 2155518244, i64 2155518269}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 744018}
!27 = !{i64 746505}
!28 = !{i64 744208}
!29 = !{i64 2150539257}
!30 = !{i64 2150539413}
!31 = !{i64 2155528336, i64 2155528361}
!32 = !{i64 2155622582, i64 2155622862, i64 2155623196, i64 2155623530}
!33 = !{i64 2155631529, i64 2155631809, i64 2155632143, i64 2155632477}
!34 = !{i64 2155613671, i64 2155613951, i64 2155614285, i64 2155614619}
!35 = !{i64 2154999682}
!36 = !{i64 2155525077, i64 2155525357, i64 2155525691, i64 2155526025}
!37 = !{i64 2155538237, i64 2155538517, i64 2155538851, i64 2155539185}
!38 = !{i64 2155550623, i64 2155550903, i64 2155551237, i64 2155551571}
!39 = !{i64 2155560292, i64 2155560572, i64 2155560906, i64 2155561240}
!40 = !{i64 2155569152, i64 2155569432, i64 2155569766, i64 2155570100}
!41 = !{i64 2155578012, i64 2155578292, i64 2155578626, i64 2155578960}
!42 = !{i64 2155586827, i64 2155587107, i64 2155587441, i64 2155587775}
!43 = !{i64 2155595680, i64 2155595960, i64 2155596294, i64 2155596628}
!44 = !{i64 2155604540, i64 2155604820, i64 2155605154, i64 2155605488}
