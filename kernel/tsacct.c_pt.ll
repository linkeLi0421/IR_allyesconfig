; ModuleID = '/llk/IR_all_yes/kernel/tsacct.c_pt.bc'
source_filename = "../kernel/tsacct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@bacct_add_tsk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/tsacct.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bacct_add_tsk.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private constant [19 x i8] c"../kernel/tsacct.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 55, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bacct_add_tsk(ptr noundef %user_ns, ptr noundef %pid_ns, ptr noundef %stats, ptr noundef %tsk) local_unnamed_addr #0 align 64 {
if.end180:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i429 = tail call i64 @ktime_get() #7
  %start_time = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 92
  %0 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start_time, align 8
  %sub = sub i64 %call.i429, %1
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #10, !srcloc !23
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !24
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %delta.0 = lshr i64 %asmresult10.i, 9
  %ac_etime = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 21
  %4 = ptrtoint ptr %ac_etime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %delta.0, ptr %ac_etime, align 8
  %call182 = tail call i64 @ktime_get_real_seconds() #7
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %delta.0) #10, !srcloc !25
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %delta.0, i64 %5, i32 0) #10, !srcloc !24
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div158.i.i456 = lshr i64 %asmresult10.i.i.i, 18
  %sub184 = sub i64 %call182, %div158.i.i456
  %7 = tail call i64 @llvm.smax.i64(i64 %sub184, i64 0)
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 4294967295)
  %9 = trunc i64 %8 to i32
  %ac_btime = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 20
  %10 = ptrtoint ptr %ac_btime to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ac_btime, align 8
  %ac_btime64 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 46
  %11 = ptrtoint ptr %ac_btime64 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub184, ptr %ac_btime64, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and200 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end180.if.end203_crit_edge, label %if.then202

if.end180.if.end203_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then202:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  %exit_code = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 58
  %14 = ptrtoint ptr %exit_code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %exit_code, align 16
  %ac_exitcode = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 1
  %16 = ptrtoint ptr %ac_exitcode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ac_exitcode, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %if.end180.if.end203_crit_edge
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 59
  %17 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i = icmp sgt i32 %18, -1
  br i1 %cmp.i, label %land.lhs.true206, label %if.end203.if.end214_crit_edge

if.end203.if.end214_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true206:                                 ; preds = %if.end203
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and208 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %land.lhs.true206.if.end214_crit_edge, label %if.then210

land.lhs.true206.if.end214_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then210:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  %ac_flag = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 2
  %21 = ptrtoint ptr %ac_flag to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ac_flag, align 8
  %23 = or i8 %22, 1
  store i8 %23, ptr %ac_flag, align 8
  br label %if.end214

if.end214:                                        ; preds = %if.then210, %land.lhs.true206.if.end214_crit_edge, %if.end203.if.end214_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and216 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end214.if.end223_crit_edge, label %if.then218

if.end214.if.end223_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end223

if.then218:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %ac_flag219 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 2
  %26 = ptrtoint ptr %ac_flag219 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ac_flag219, align 8
  %28 = or i8 %27, 2
  store i8 %28, ptr %ac_flag219, align 8
  br label %if.end223

if.end223:                                        ; preds = %if.then218, %if.end214.if.end223_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and225 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end223.if.end232_crit_edge, label %if.then227

if.end223.if.end232_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

if.then227:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  %ac_flag228 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 2
  %31 = ptrtoint ptr %ac_flag228 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ac_flag228, align 8
  %33 = or i8 %32, 8
  store i8 %33, ptr %ac_flag228, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %if.end223.if.end232_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and234 = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %if.end232.if.end241_crit_edge, label %if.then236

if.end232.if.end241_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  %ac_flag237 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 2
  %36 = ptrtoint ptr %ac_flag237 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ac_flag237, align 8
  %38 = or i8 %37, 16
  store i8 %38, ptr %ac_flag237, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %if.end232.if.end241_crit_edge
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 14
  %39 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %static_prio.i, align 4
  %41 = trunc i32 %40 to i8
  %conv243 = add i8 %41, -120
  %ac_nice = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 3
  %42 = ptrtoint ptr %ac_nice to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv243, ptr %ac_nice, align 1
  %policy = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 31
  %43 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %policy, align 4
  %conv244 = trunc i32 %44 to i8
  %ac_sched = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 13
  %45 = ptrtoint ptr %ac_sched to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv244, ptr %ac_sched, align 8
  %call.i430 = tail call i32 @__task_pid_nr_ns(ptr noundef %tsk, i32 noundef 0, ptr noundef %pid_ns) #7
  %ac_pid = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 18
  %46 = ptrtoint ptr %ac_pid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i430, ptr %ac_pid, align 8
  %47 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end241.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end241.rcu_read_lock.exit_crit_edge:           ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end241
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end241.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %51 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %real_cred, align 4
  %call251 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %land.lhs.true253, label %rcu_read_lock.exit.do.end261_crit_edge

rcu_read_lock.exit.do.end261_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end261

land.lhs.true253:                                 ; preds = %rcu_read_lock.exit
  %call254 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %land.lhs.true253.do.end261_crit_edge, label %land.lhs.true256

land.lhs.true253.do.end261_crit_edge:             ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end261

land.lhs.true256:                                 ; preds = %land.lhs.true253
  %.b428 = load i1, ptr @bacct_add_tsk.__warned, align 1
  br i1 %.b428, label %land.lhs.true256.do.end261_crit_edge, label %if.then258

land.lhs.true256.do.end261_crit_edge:             ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end261

if.then258:                                       ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bacct_add_tsk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.1) #7
  br label %do.end261

do.end261:                                        ; preds = %if.then258, %land.lhs.true256.do.end261_crit_edge, %land.lhs.true253.do.end261_crit_edge, %rcu_read_lock.exit.do.end261_crit_edge
  %uid = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack = load i32, ptr %uid, align 4
  %54 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call263 = tail call i32 @from_kuid_munged(ptr noundef %user_ns, [1 x i32] %54) #7
  %ac_uid = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 16
  %55 = ptrtoint ptr %ac_uid to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call263, ptr %ac_uid, align 8
  %gid = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 5
  %56 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack426 = load i32, ptr %gid, align 4
  %57 = insertvalue [1 x i32] undef, i32 %.unpack426, 0
  %call265 = tail call i32 @from_kgid_munged(ptr noundef %user_ns, [1 x i32] %57) #7
  %ac_gid = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 17
  %58 = ptrtoint ptr %ac_gid to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call265, ptr %ac_gid, align 4
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 78
  %59 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %thread_pid.i, align 16
  %cmp.i431.not = icmp eq ptr %60, null
  br i1 %cmp.i431.not, label %do.end261.cond.end288_crit_edge, label %cond.true268

do.end261.cond.end288_crit_edge:                  ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end288

cond.true268:                                     ; preds = %do.end261
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 71
  %61 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %real_parent, align 4
  %call274 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %land.lhs.true276, label %cond.true268.do.end284_crit_edge

cond.true268.do.end284_crit_edge:                 ; preds = %cond.true268
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end284

land.lhs.true276:                                 ; preds = %cond.true268
  %call277 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %land.lhs.true276.do.end284_crit_edge, label %land.lhs.true279

land.lhs.true276.do.end284_crit_edge:             ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end284

land.lhs.true279:                                 ; preds = %land.lhs.true276
  %.b424427 = load i1, ptr @bacct_add_tsk.__warned.2, align 1
  br i1 %.b424427, label %land.lhs.true279.do.end284_crit_edge, label %if.then281

land.lhs.true279.do.end284_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end284

if.then281:                                       ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bacct_add_tsk.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #7
  br label %do.end284

do.end284:                                        ; preds = %if.then281, %land.lhs.true279.do.end284_crit_edge, %land.lhs.true276.do.end284_crit_edge, %cond.true268.do.end284_crit_edge
  %call.i432 = tail call i32 @__task_pid_nr_ns(ptr noundef %62, i32 noundef 1, ptr noundef %pid_ns) #7
  br label %cond.end288

cond.end288:                                      ; preds = %do.end284, %do.end261.cond.end288_crit_edge
  %cond289 = phi i32 [ %call.i432, %do.end284 ], [ 0, %do.end261.cond.end288_crit_edge ]
  %ac_ppid = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 19
  %63 = ptrtoint ptr %ac_ppid to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond289, ptr %ac_ppid, align 4
  %call.i433 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i433, label %cond.end288.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i436

cond.end288.rcu_read_unlock.exit_crit_edge:       ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i436:                               ; preds = %cond.end288
  %call1.i434 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i434)
  %tobool.not.i435 = icmp eq i32 %call1.i434, 0
  br i1 %tobool.not.i435, label %land.lhs.true.i436.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i438

land.lhs.true.i436.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i438:                              ; preds = %land.lhs.true.i436
  %.b4.i437 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i437, label %land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge, label %if.then.i439

land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i438
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i439:                                     ; preds = %land.lhs.true2.i438
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i439, %land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i436.rcu_read_unlock.exit_crit_edge, %cond.end288.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %64 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i440 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i440 to ptr
  %preempt_count.i.i.i.i441 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i441 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i441, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i441, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %utime1.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 86
  %68 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %utime1.i, align 8
  %stime2.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 87
  %70 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %stime2.i, align 32
  %72 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %69, i32 0) #10, !srcloc !23
  %asmresult.i.i.i = extractvalue { i64, i32 } %72, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %72, 1
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %69, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !24
  %asmresult10.i.i.i442 = extractvalue { i64, i32 } %73, 0
  %div158.i.i443458 = lshr i64 %asmresult10.i.i.i442, 9
  %ac_utime = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 22
  %74 = ptrtoint ptr %ac_utime to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %div158.i.i443458, ptr %ac_utime, align 8
  %75 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %71, i32 0) #10, !srcloc !23
  %asmresult.i.i.i444 = extractvalue { i64, i32 } %75, 0
  %asmresult4.i.i.i445 = extractvalue { i64, i32 } %75, 1
  %76 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %71, i64 %asmresult.i.i.i444, i32 %asmresult4.i.i.i445) #10, !srcloc !24
  %asmresult10.i.i.i446 = extractvalue { i64, i32 } %76, 0
  %div158.i.i447459 = lshr i64 %asmresult10.i.i.i446, 9
  %ac_stime = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 23
  %77 = ptrtoint ptr %ac_stime to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %div158.i.i447459, ptr %ac_stime, align 8
  %78 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %utime1.i, align 8
  %80 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %stime2.i, align 32
  %82 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %79, i32 0) #10, !srcloc !23
  %asmresult.i.i.i448 = extractvalue { i64, i32 } %82, 0
  %asmresult4.i.i.i449 = extractvalue { i64, i32 } %82, 1
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %79, i64 %asmresult.i.i.i448, i32 %asmresult4.i.i.i449) #10, !srcloc !24
  %asmresult10.i.i.i450 = extractvalue { i64, i32 } %83, 0
  %div158.i.i451460 = lshr i64 %asmresult10.i.i.i450, 9
  %ac_utimescaled = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 39
  %84 = ptrtoint ptr %ac_utimescaled to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %div158.i.i451460, ptr %ac_utimescaled, align 8
  %85 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %81, i32 0) #10, !srcloc !23
  %asmresult.i.i.i452 = extractvalue { i64, i32 } %85, 0
  %asmresult4.i.i.i453 = extractvalue { i64, i32 } %85, 1
  %86 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %81, i64 %asmresult.i.i.i452, i32 %asmresult4.i.i.i453) #10, !srcloc !24
  %asmresult10.i.i.i454 = extractvalue { i64, i32 } %86, 0
  %div158.i.i455461 = lshr i64 %asmresult10.i.i.i454, 9
  %ac_stimescaled = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 40
  %87 = ptrtoint ptr %ac_stimescaled to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %div158.i.i455461, ptr %ac_stimescaled, align 8
  %min_flt = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 94
  %88 = ptrtoint ptr %min_flt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %min_flt, align 8
  %conv295 = zext i32 %89 to i64
  %ac_minflt = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 24
  %90 = ptrtoint ptr %ac_minflt to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv295, ptr %ac_minflt, align 8
  %maj_flt = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 95
  %91 = ptrtoint ptr %maj_flt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %maj_flt, align 4
  %conv296 = zext i32 %92 to i64
  %ac_majflt = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 25
  %93 = ptrtoint ptr %ac_majflt to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv296, ptr %ac_majflt, align 8
  %ac_comm = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 12
  %comm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 101
  %call298 = tail call ptr @strncpy(ptr noundef %ac_comm, ptr noundef %comm, i32 noundef 32)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xacct_add_tsk(ptr nocapture noundef %stats, ptr noundef %p) local_unnamed_addr #0 align 64 {
if.end423:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 157
  %0 = ptrtoint ptr %acct_rss_mem1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %acct_rss_mem1, align 8
  %mul = shl i64 %1, 12
  %coremem = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 26
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i32 0) #10, !srcloc !23
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !24
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %storemerge = lshr i64 %asmresult10.i, 19
  %4 = ptrtoint ptr %coremem to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %coremem, align 8
  %acct_vm_mem1 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 158
  %5 = ptrtoint ptr %acct_vm_mem1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %acct_vm_mem1, align 16
  %mul192 = shl i64 %6, 12
  %virtmem = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 27
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul192, i32 0) #10, !srcloc !23
  %asmresult.i660 = extractvalue { i64, i32 } %7, 0
  %asmresult4.i661 = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul192, i64 %asmresult.i660, i32 %asmresult4.i661) #10, !srcloc !24
  %asmresult10.i662 = extractvalue { i64, i32 } %8, 0
  %storemerge657 = lshr i64 %asmresult10.i662, 19
  %9 = ptrtoint ptr %virtmem to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %storemerge657, ptr %virtmem, align 8
  %call425 = tail call ptr @get_task_mm(ptr noundef %p) #7
  %tobool426.not = icmp eq ptr %call425, null
  br i1 %tobool426.not, label %if.end423.if.end436_crit_edge, label %if.then427

if.end423.if.end436_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end436

if.then427:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #9
  %hiwater_rss.i = getelementptr inbounds %struct.anon.2, ptr %call425, i32 0, i32 17
  %10 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hiwater_rss.i, align 8
  %rss_stat.i.i.i = getelementptr inbounds %struct.anon.2, ptr %call425, i32 0, i32 40
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %rss_stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rss_stat.i.i.i, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #7
  %arrayidx.i.i.i = getelementptr %struct.anon.2, ptr %call425, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #7
  %add.i.i = add nuw i32 %17, %14
  %arrayidx.i9.i.i = getelementptr %struct.anon.2, ptr %call425, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i, i32 noundef 4) #7
  %18 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i9.i.i, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #7
  %add3.i.i = add i32 %add.i.i, %20
  %21 = tail call i32 @llvm.umax.i32(i32 %11, i32 %add3.i.i) #7
  %22 = shl i32 %21, 2
  %div430658 = and i32 %22, 4194300
  %conv431 = zext i32 %div430658 to i64
  %hiwater_rss = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 28
  %23 = ptrtoint ptr %hiwater_rss to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv431, ptr %hiwater_rss, align 8
  %hiwater_vm.i = getelementptr inbounds %struct.anon.2, ptr %call425, i32 0, i32 18
  %24 = ptrtoint ptr %hiwater_vm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hiwater_vm.i, align 4
  %total_vm.i = getelementptr inbounds %struct.anon.2, ptr %call425, i32 0, i32 19
  %26 = ptrtoint ptr %total_vm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_vm.i, align 8
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27) #7
  %29 = shl i32 %28, 2
  %div434659 = and i32 %29, 4194300
  %conv435 = zext i32 %div434659 to i64
  %hiwater_vm = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 29
  %30 = ptrtoint ptr %hiwater_vm to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv435, ptr %hiwater_vm, align 8
  tail call void @mmput(ptr noundef nonnull %call425) #7
  br label %if.end436

if.end436:                                        ; preds = %if.then427, %if.end423.if.end436_crit_edge
  %ioac = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155
  %31 = ptrtoint ptr %ioac to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ioac, align 8
  %and437 = and i64 %32, -1024
  %read_char = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 30
  %33 = ptrtoint ptr %read_char to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %and437, ptr %read_char, align 8
  %wchar = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 1
  %34 = ptrtoint ptr %wchar to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wchar, align 8
  %and439 = and i64 %35, -1024
  %write_char = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 31
  %36 = ptrtoint ptr %write_char to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %and439, ptr %write_char, align 8
  %syscr = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 2
  %37 = ptrtoint ptr %syscr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %syscr, align 8
  %and441 = and i64 %38, -1024
  %read_syscalls = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 32
  %39 = ptrtoint ptr %read_syscalls to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %and441, ptr %read_syscalls, align 8
  %syscw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 3
  %40 = ptrtoint ptr %syscw to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %syscw, align 8
  %and443 = and i64 %41, -1024
  %write_syscalls = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 33
  %42 = ptrtoint ptr %write_syscalls to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %and443, ptr %write_syscalls, align 8
  %read_bytes = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 4
  %43 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %read_bytes, align 8
  %and445 = and i64 %44, -1024
  %read_bytes446 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 34
  %45 = ptrtoint ptr %read_bytes446 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %and445, ptr %read_bytes446, align 8
  %write_bytes = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 5
  %46 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %write_bytes, align 8
  %and448 = and i64 %47, -1024
  %write_bytes449 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 35
  %48 = ptrtoint ptr %write_bytes449 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %and448, ptr %write_bytes449, align 8
  %cancelled_write_bytes = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 6
  %49 = ptrtoint ptr %cancelled_write_bytes to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cancelled_write_bytes, align 8
  %and451 = and i64 %50, -1024
  %cancelled_write_bytes452 = getelementptr inbounds %struct.taskstats, ptr %stats, i32 0, i32 36
  %51 = ptrtoint ptr %cancelled_write_bytes452 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %and451, ptr %cancelled_write_bytes452, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @acct_update_integrals(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !28
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %utime1.i.c = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 86
  %1 = ptrtoint ptr %utime1.i.c to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %utime1.i.c, align 8
  %stime2.i.c = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 87
  %3 = ptrtoint ptr %stime2.i.c to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %stime2.i.c, align 32
  tail call fastcc void @__acct_update_integrals(ptr noundef %tsk, i64 noundef %2, i64 noundef %4)
  tail call void @trace_hardirqs_on() #7
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %utime1.i.c48 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 86
  %5 = ptrtoint ptr %utime1.i.c48 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %utime1.i.c48, align 8
  %stime2.i.c49 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 87
  %7 = ptrtoint ptr %stime2.i.c49 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stime2.i.c49, align 32
  tail call fastcc void @__acct_update_integrals(ptr noundef %tsk, i64 noundef %6, i64 noundef %8)
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !29
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !30

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__acct_update_integrals(ptr nocapture noundef %tsk, i64 noundef %utime, i64 noundef %stime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %stime, %utime
  %acct_timexpd = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 159
  %2 = ptrtoint ptr %acct_timexpd to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %acct_timexpd, align 8
  %sub = sub i64 %add, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %sub)
  %cmp = icmp ult i64 %sub, 10000000
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %acct_timexpd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %acct_timexpd, align 8
  %rss_stat.i.i = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %rss_stat.i.i, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #7
  %arrayidx.i.i = getelementptr %struct.anon.2, ptr %1, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0) #7
  %add.i = add nuw i32 %10, %7
  %arrayidx.i9.i = getelementptr %struct.anon.2, ptr %1, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #7
  %11 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #7
  %add3.i = add i32 %add.i, %13
  %conv = zext i32 %add3.i to i64
  %mul = mul i64 %sub, %conv
  %shr = lshr i64 %mul, 10
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 157
  %14 = ptrtoint ptr %acct_rss_mem1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %acct_rss_mem1, align 8
  %add7 = add i64 %shr, %15
  store i64 %add7, ptr %acct_rss_mem1, align 8
  %16 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm, align 8
  %total_vm = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %total_vm, align 8
  %conv9 = zext i32 %19 to i64
  %mul10 = mul i64 %sub, %conv9
  %shr11 = lshr i64 %mul10, 10
  %acct_vm_mem1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 158
  %20 = ptrtoint ptr %acct_vm_mem1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %acct_vm_mem1, align 16
  %add12 = add i64 %shr11, %21
  store i64 %add12, ptr %acct_vm_mem1, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @acct_account_cputime(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %utime = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 86
  %0 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %utime, align 8
  %stime = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 87
  %2 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stime, align 32
  tail call fastcc void @__acct_update_integrals(ptr noundef %tsk, i64 noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @acct_clear_integrals(ptr nocapture noundef writeonly %tsk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 157
  %0 = call ptr @memset(ptr %acct_rss_mem1, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/tsacct.c", i32 55, i32 10}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/tsacct.c", i32 59, i32 19}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 1117623, i64 1117650, i64 1117672, i64 1117700}
!24 = !{i64 1118031, i64 1118058, i64 1118091, i64 1118112, i64 1118139, i64 1118165}
!25 = !{i64 1117336, i64 1117363}
!26 = !{i64 2149187989}
!27 = !{i64 2149188255}
!28 = !{i64 605114, i64 605175}
!29 = !{i64 607846}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 608131}
