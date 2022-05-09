; ModuleID = '/llk/IR_all_yes/kernel/debug/gdbstub.c_pt.bc'
source_filename = "../kernel/debug/gdbstub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dbg_reg_def_t = type { ptr, i32, i32 }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgdb_state = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@gdbmsgbuf = internal global { [401 x i8], [111 x i8] } zeroinitializer, align 32
@dbg_reg_def = external dso_local local_unnamed_addr global [0 x %struct.dbg_reg_def_t], align 4
@remcom_out_buffer = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@kgdb_info = external dso_local local_unnamed_addr global [0 x %struct.debuggerinfo_struct], align 4
@kgdb_usethread = external dso_local local_unnamed_addr global ptr, align 4
@kgdb_connected = external dso_local local_unnamed_addr global i32, align 4
@remcom_in_buffer = internal global { [400 x i8], [112 x i8] } zeroinitializer, align 32
@kgdb_contthread = external dso_local local_unnamed_addr global ptr, align 4
@gdbstub_use_prev_in_buf = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gdbstub_prev_in_buf_pos = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dbg_io_ops = external dso_local local_unnamed_addr global ptr, align 4
@dbg_kdb_mode = external dso_local local_unnamed_addr global i32, align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kdb_poll_funcs = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gdb_regs = internal global { [42 x i32], [56 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R0\00", [29 x i8] zeroinitializer }, align 32
@gdb_cmd_reboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\012Executing emergency reboot\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gdb_cmd_reboot\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/debug/gdbstub.c\00", [41 x i8] zeroinitializer }, align 32
@gdb_cmd_reboot._entry_ptr = internal global ptr @gdb_cmd_reboot._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ThreadInfo\00", [21 x i8] zeroinitializer }, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@gdb_cmd_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"QC\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ThreadExtraInfo,\00", [47 x i8] zeroinitializer }, align 32
@gdb_cmd_query.tmpstr = internal global { [31 x i8], [33 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"shadowCPU%d\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qRcmd,\00", [25 x i8] zeroinitializer }, align 32
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@getthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013KGDB: Internal thread select error\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"getthread\00", [22 x i8] zeroinitializer }, align 32
@getthread._entry_ptr = internal global ptr @getthread._entry, section ".printk_index", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@arch_kgdb_ops = external dso_local local_unnamed_addr constant %struct.kgdb_arch, align 4
@.str.15 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"KGDB only knows signal 9 (pass) and 15 (pass and disconnect)\0AExecuting a continue without signal passing\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 43]
@__sancov_gen_cov_switch_values.16 = internal global [22 x i64] [i64 20, i64 8, i64 51, i64 63, i64 67, i64 68, i64 71, i64 72, i64 77, i64 80, i64 82, i64 84, i64 88, i64 90, i64 99, i64 103, i64 107, i64 109, i64 112, i64 113, i64 115, i64 122]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 8, i64 67, i64 82, i64 84, i64 102, i64 115]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 99, i64 103]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 90, i64 122]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 68, i64 107]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 36, i64 99, i64 101, i64 115]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"gdbmsgbuf\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 193, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"remcom_out_buffer\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 43, i32 15 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"remcom_in_buffer\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 42, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"gdbstub_use_prev_in_buf\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 44, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"gdbstub_prev_in_buf_pos\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 45, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"gdb_regs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 48, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 550, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 677, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 678, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 708, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 725, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 742, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 748, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"tmpstr\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 763, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 765, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 772, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 444, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [26 x i8] c"../kernel/debug/gdbstub.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 941, i32 21 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @gdb_cmd_reboot._entry, ptr @gdb_cmd_reboot._entry_ptr, ptr @getthread._entry, ptr @getthread._entry_ptr, ptr @gdbmsgbuf, ptr @remcom_out_buffer, ptr @remcom_in_buffer, ptr @gdbstub_use_prev_in_buf, ptr @gdbstub_prev_in_buf_pos, ptr @gdb_regs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gdb_cmd_query.tmpstr, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdbmsgbuf to i32), i32 401, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remcom_out_buffer to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remcom_in_buffer to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdbstub_use_prev_in_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdbstub_prev_in_buf_pos to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdb_regs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdb_cmd_reboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdb_cmd_query.tmpstr to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @getthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gdbstub_msg_write(ptr nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strlen(ptr noundef %s) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %call, %if.then ], [ %len, %entry.if.end_crit_edge ]
  store i8 79, ptr @gdbmsgbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp121 = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp121, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %if.end.while.body_crit_edge
  %len.addr.123 = phi i32 [ %sub, %for.end.while.body_crit_edge ], [ %len.addr.0, %if.end.while.body_crit_edge ]
  %s.addr.022 = phi ptr [ %add.ptr, %for.end.while.body_crit_edge ], [ %s, %if.end.while.body_crit_edge ]
  %shl = shl nuw i32 %len.addr.123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 398, i32 %shl)
  %cmp2 = icmp sgt i32 %shl, 398
  %.len.addr.1 = select i1 %cmp2, i32 199, i32 %len.addr.123
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body ]
  %bufptr.019 = phi ptr [ %incdec.ptr4.i, %for.body.for.body_crit_edge ], [ getelementptr inbounds ([401 x i8], ptr @gdbmsgbuf, i32 0, i32 1), %while.body ]
  %arrayidx = getelementptr i8, ptr %s.addr.022, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %1 to i32
  %2 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %bufptr.019, i32 1
  %5 = ptrtoint ptr %bufptr.019 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bufptr.019, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %bufptr.019, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %incdec.ptr.i, align 1
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %.len.addr.1
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %add.ptr = getelementptr i8, ptr %s.addr.022, i32 %.len.addr.1
  %sub = sub i32 %len.addr.123, %.len.addr.1
  tail call fastcc void @put_packet(ptr noundef nonnull @gdbmsgbuf)
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_packet(ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %write_char = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %write_char to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_char, align 4
  tail call void %2(i8 noundef zeroext 36) #10
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not82 = icmp eq i8 %4, 0
  br i1 %tobool.not82, label %while.cond.while.end_crit_edge, label %while.cond.while.body2_crit_edge

while.cond.while.body2_crit_edge:                 ; preds = %while.cond
  br label %while.body2

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body2:                                      ; preds = %while.body2.while.body2_crit_edge, %while.cond.while.body2_crit_edge
  %5 = phi i8 [ %10, %while.body2.while.body2_crit_edge ], [ %4, %while.cond.while.body2_crit_edge ]
  %count.084 = phi i32 [ %inc, %while.body2.while.body2_crit_edge ], [ 0, %while.cond.while.body2_crit_edge ]
  %checksum.083 = phi i8 [ %add, %while.body2.while.body2_crit_edge ], [ 0, %while.cond.while.body2_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %6 = load ptr, ptr @dbg_io_ops, align 4
  %write_char3 = getelementptr inbounds %struct.kgdb_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_char3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_char3, align 4
  tail call void %8(i8 noundef zeroext %5) #10
  %add = add i8 %5, %checksum.083
  %inc = add i32 %count.084, 1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.body2.while.end_crit_edge, label %while.body2.while.body2_crit_edge

while.body2.while.body2_crit_edge:                ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body2

while.body2.while.end_crit_edge:                  ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body2.while.end_crit_edge, %while.cond.while.end_crit_edge
  %checksum.0.lcssa = phi i8 [ 0, %while.cond.while.end_crit_edge ], [ %add, %while.body2.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %11 = load ptr, ptr @dbg_io_ops, align 4
  %write_char6 = getelementptr inbounds %struct.kgdb_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_char6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_char6, align 4
  tail call void %13(i8 noundef zeroext 35) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %14 = load ptr, ptr @dbg_io_ops, align 4
  %write_char7 = getelementptr inbounds %struct.kgdb_io, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_char7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_char7, align 4
  %conv8 = zext i8 %checksum.0.lcssa to i32
  %17 = lshr i32 %conv8, 4
  %arrayidx9 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9, align 1
  tail call void %16(i8 noundef zeroext %19) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %20 = load ptr, ptr @dbg_io_ops, align 4
  %write_char10 = getelementptr inbounds %struct.kgdb_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_char10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_char10, align 4
  %and12 = and i32 %conv8, 15
  %arrayidx13 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and12
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13, align 1
  tail call void %22(i8 noundef zeroext %24) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %25 = load ptr, ptr @dbg_io_ops, align 4
  %flush = getelementptr inbounds %struct.kgdb_io, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flush, align 4
  %tobool14.not = icmp eq ptr %27, null
  br i1 %tobool14.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %27() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %28 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end.for.cond.preheader.i.preheader_crit_edge, label %if.then.i, !prof !58

if.end.for.cond.preheader.i.preheader_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.preheader

if.then.i:                                        ; preds = %if.end
  %29 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp.i = icmp slt i32 %29, %28
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nsw i32 %29, 1
  store i32 %inc.i, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %31 to i32
  br label %gdbstub_read_wait.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i.preheader

for.cond.preheader.i.preheader:                   ; preds = %if.else.i, %if.end.for.cond.preheader.i.preheader_crit_edge
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.i.preheader
  %ret.026.i = phi i32 [ %ret.2.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ -1, %for.cond.preheader.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %32 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i = icmp eq ptr %32, null
  br i1 %cmp8.not23.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc15.i = add i32 %i.024.i, 1
  %arrayidx7.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx7.i, align 4
  %cmp8.not.i = icmp eq ptr %34, null
  br i1 %cmp8.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %35 = phi ptr [ %34, %for.cond.i.for.body.i_crit_edge ], [ %32, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ %inc15.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i = tail call i32 %35() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp sgt i32 %call.i, 0
  br i1 %cmp11.i, label %for.body.i.gdbstub_read_wait.exit_crit_edge, label %for.cond.i

for.body.i.gdbstub_read_wait.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %ret.2.i = phi i32 [ %ret.026.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %call.i, %for.cond.i.for.end.i_crit_edge ]
  %cmp5.i = icmp slt i32 %ret.2.i, 0
  br i1 %cmp5.i, label %for.end.i.for.cond.preheader.i_crit_edge, label %for.end.i.if.end22_crit_edge

for.end.i.if.end22_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

gdbstub_read_wait.exit:                           ; preds = %for.body.i.gdbstub_read_wait.exit_crit_edge, %if.then3.i
  %retval.0.i = phi i32 [ %conv.i, %if.then3.i ], [ %call.i, %for.body.i.gdbstub_read_wait.exit_crit_edge ]
  %conv17 = and i32 %retval.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv17)
  %cmp = icmp eq i32 %conv17, 3
  br i1 %cmp, label %if.then19, label %gdbstub_read_wait.exit.if.end22_crit_edge

gdbstub_read_wait.exit.if.end22_crit_edge:        ; preds = %gdbstub_read_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %gdbstub_read_wait.exit
  %36 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i50 = icmp eq i32 %36, 0
  br i1 %tobool.not.i50, label %if.then19.for.cond.preheader.i61.preheader_crit_edge, label %if.then.i52, !prof !58

if.then19.for.cond.preheader.i61.preheader_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i61.preheader

if.then.i52:                                      ; preds = %if.then19
  %37 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %36)
  %cmp.i51 = icmp slt i32 %37, %36
  br i1 %cmp.i51, label %if.then3.i56, label %if.else.i57

if.then3.i56:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i53 = add nsw i32 %37, 1
  store i32 %inc.i53, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i54 = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i54, align 1
  %conv.i55 = zext i8 %39 to i32
  br label %if.end22

if.else.i57:                                      ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i61.preheader

for.cond.preheader.i61.preheader:                 ; preds = %if.else.i57, %if.then19.for.cond.preheader.i61.preheader_crit_edge
  br label %for.cond.preheader.i61

for.cond.preheader.i61:                           ; preds = %for.end.i72.for.cond.preheader.i61_crit_edge, %for.cond.preheader.i61.preheader
  %ret.026.i59 = phi i32 [ %ret.2.i70, %for.end.i72.for.cond.preheader.i61_crit_edge ], [ -1, %for.cond.preheader.i61.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %40 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i60 = icmp eq ptr %40, null
  br i1 %cmp8.not23.i60, label %for.cond.preheader.i61.for.end.i72_crit_edge, label %for.cond.preheader.i61.for.body.i69_crit_edge

for.cond.preheader.i61.for.body.i69_crit_edge:    ; preds = %for.cond.preheader.i61
  br label %for.body.i69

for.cond.preheader.i61.for.end.i72_crit_edge:     ; preds = %for.cond.preheader.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i72

for.cond.i65:                                     ; preds = %for.body.i69
  %inc15.i62 = add i32 %i.024.i66, 1
  %arrayidx7.i63 = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i62
  %41 = ptrtoint ptr %arrayidx7.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx7.i63, align 4
  %cmp8.not.i64 = icmp eq ptr %42, null
  br i1 %cmp8.not.i64, label %for.cond.i65.for.end.i72_crit_edge, label %for.cond.i65.for.body.i69_crit_edge

for.cond.i65.for.body.i69_crit_edge:              ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i69

for.cond.i65.for.end.i72_crit_edge:               ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i72

for.body.i69:                                     ; preds = %for.cond.i65.for.body.i69_crit_edge, %for.cond.preheader.i61.for.body.i69_crit_edge
  %43 = phi ptr [ %42, %for.cond.i65.for.body.i69_crit_edge ], [ %40, %for.cond.preheader.i61.for.body.i69_crit_edge ]
  %i.024.i66 = phi i32 [ %inc15.i62, %for.cond.i65.for.body.i69_crit_edge ], [ 0, %for.cond.preheader.i61.for.body.i69_crit_edge ]
  %call.i67 = tail call i32 %43() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp11.i68 = icmp sgt i32 %call.i67, 0
  br i1 %cmp11.i68, label %for.body.i69.if.end22_crit_edge, label %for.cond.i65

for.body.i69.if.end22_crit_edge:                  ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.end.i72:                                      ; preds = %for.cond.i65.for.end.i72_crit_edge, %for.cond.preheader.i61.for.end.i72_crit_edge
  %ret.2.i70 = phi i32 [ %ret.026.i59, %for.cond.preheader.i61.for.end.i72_crit_edge ], [ %call.i67, %for.cond.i65.for.end.i72_crit_edge ]
  %cmp5.i71 = icmp slt i32 %ret.2.i70, 0
  br i1 %cmp5.i71, label %for.end.i72.for.cond.preheader.i61_crit_edge, label %for.end.i72.if.end22_crit_edge

for.end.i72.if.end22_crit_edge:                   ; preds = %for.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

for.end.i72.for.cond.preheader.i61_crit_edge:     ; preds = %for.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i61

if.end22:                                         ; preds = %for.end.i72.if.end22_crit_edge, %for.body.i69.if.end22_crit_edge, %if.then3.i56, %gdbstub_read_wait.exit.if.end22_crit_edge, %for.end.i.if.end22_crit_edge
  %ch.0.in = phi i32 [ %retval.0.i, %gdbstub_read_wait.exit.if.end22_crit_edge ], [ %conv.i55, %if.then3.i56 ], [ %call.i67, %for.body.i69.if.end22_crit_edge ], [ 0, %for.end.i72.if.end22_crit_edge ], [ 0, %for.end.i.if.end22_crit_edge ]
  %trunc = trunc i32 %ch.0.in to i8
  %44 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end22.while.cond_crit_edge [
    i8 43, label %if.end22.cleanup_crit_edge
    i8 36, label %if.then31
  ]

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then31:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %45 = load ptr, ptr @dbg_io_ops, align 4
  %write_char32 = getelementptr inbounds %struct.kgdb_io, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write_char32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_char32, align 4
  tail call void %47(i8 noundef zeroext 45) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %48 = load ptr, ptr @dbg_io_ops, align 4
  %flush33 = getelementptr inbounds %struct.kgdb_io, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %flush33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %flush33, align 4
  %tobool34.not = icmp eq ptr %50, null
  br i1 %tobool34.not, label %if.then31.cleanup_crit_edge, label %if.then35

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %50() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then31.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kgdb_mem2hex(ptr noundef %mem, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %count
  %call = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr, ptr noundef %mem, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp11 = icmp sgt i32 %count, 0
  br i1 %cmp11, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %tmp.014 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %count.addr.013 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.addr.012 = phi ptr [ %incdec.ptr4.i, %while.body.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %0 = ptrtoint ptr %tmp.014 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmp.014, align 1
  %conv.i = zext i8 %1 to i32
  %2 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.012, i32 1
  %5 = ptrtoint ptr %buf.addr.012 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %buf.addr.012, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %buf.addr.012, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %incdec.ptr.i, align 1
  %incdec.ptr = getelementptr i8, ptr %tmp.014, i32 1
  %dec = add nsw i32 %count.addr.013, -1
  %cmp = icmp ugt i32 %count.addr.013, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr4.i, %while.body.while.end_crit_edge ]
  %9 = ptrtoint ptr %buf.addr.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf.addr.0.lcssa, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %buf.addr.0.lcssa, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_hex2mem(ptr noundef %buf, ptr noundef %mem, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %tmp_hex.016 = getelementptr i8, ptr %add.ptr, i32 -1
  %cmp.not17 = icmp ult ptr %tmp_hex.016, %buf
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tmp_hex.020 = phi ptr [ %tmp_hex.0, %while.body.while.body_crit_edge ], [ %tmp_hex.016, %entry.while.body_crit_edge ]
  %add.ptr.pn19 = phi ptr [ %incdec.ptr2, %while.body.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %tmp_raw.018 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %tmp_raw.018, i32 -1
  %incdec.ptr2 = getelementptr i8, ptr %add.ptr.pn19, i32 -2
  %0 = ptrtoint ptr %tmp_hex.020 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmp_hex.020, align 1
  %call = tail call i32 @hex_to_bin(i8 noundef zeroext %1) #10
  %conv = trunc i32 %call to i8
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %incdec.ptr, align 1
  %3 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr2, align 1
  %call4 = tail call i32 @hex_to_bin(i8 noundef zeroext %4) #10
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %call4.tr = trunc i32 %call4 to i8
  %7 = shl i8 %call4.tr, 4
  %conv6 = or i8 %7, %6
  store i8 %conv6, ptr %incdec.ptr, align 1
  %tmp_hex.0 = getelementptr i8, ptr %add.ptr.pn19, i32 -3
  %cmp.not = icmp ult ptr %tmp_hex.0, %buf
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tmp_raw.0.lcssa = phi ptr [ %add.ptr, %entry.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %call7 = tail call i32 @copy_to_kernel_nofault(ptr noundef %mem, ptr noundef %tmp_raw.0.lcssa, i32 noundef %count) #10
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_hex2long(ptr nocapture noundef %ptr, ptr nocapture noundef %long_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %long_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %long_val, align 4
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %4)
  %cmp = icmp eq i8 %4, 45
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr, ptr %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not20 = icmp eq i8 %9, 0
  br i1 %tobool.not20, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %if.end.while.body_crit_edge
  %10 = phi i8 [ %16, %if.end5.while.body_crit_edge ], [ %9, %if.end.while.body_crit_edge ]
  %num.021 = phi i32 [ %inc, %if.end5.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %call = tail call i32 @hex_to_bin(i8 noundef zeroext %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end5

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end5:                                          ; preds = %while.body
  %11 = ptrtoint ptr %long_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %long_val, align 4
  %shl = shl i32 %12, 4
  %or = or i32 %shl, %call
  store i32 %or, ptr %long_val, align 4
  %inc = add i32 %num.021, 1
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptr, align 4
  %incdec.ptr6 = getelementptr i8, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %ptr, align 4
  %15 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr6, align 1
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %num.021, %while.body.while.end_crit_edge ], [ %inc, %if.end5.while.end_crit_edge ]
  br i1 %cmp, label %if.then8, label %while.end.if.end9_crit_edge

while.end.if.end9_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %long_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %long_val, align 4
  %sub = sub i32 0, %18
  store i32 %sub, ptr %long_val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end.if.end9_crit_edge
  ret i32 %num.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pt_regs_to_gdb_regs(ptr noundef %gdb_regs, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.06 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %gdb_regs, i32 %idx.06
  %call = tail call ptr @dbg_get_reg(i32 noundef %i.05, ptr noundef %add.ptr, ptr noundef %regs) #10
  %size = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.05, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %add = add i32 %1, %idx.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_get_reg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gdb_regs_to_pt_regs(ptr noundef %gdb_regs, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.06 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %gdb_regs, i32 %idx.06
  %call = tail call i32 @dbg_set_reg(i32 noundef %i.05, ptr noundef %add.ptr, ptr noundef %regs) #10
  %size = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.05, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %add = add i32 %1, %idx.06
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_set_reg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gdb_serial_stub(ptr noundef %ks) local_unnamed_addr #0 align 64 {
entry:
  %thref.i = alloca [8 x i8], align 8
  %thref = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @remcom_out_buffer, i32 0, i32 400)
  %cpu = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 3
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %2, i32 1
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_usethread to i32))
  store ptr %4, ptr @kgdb_usethread, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.shadow_pid.exit_crit_edge

entry.shadow_pid.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %shadow_pid.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %sub1.i = sub i32 -2, %10
  br label %shadow_pid.exit

shadow_pid.exit:                                  ; preds = %if.end.i, %entry.shadow_pid.exit_crit_edge
  %retval.0.i = phi i32 [ %sub1.i, %if.end.i ], [ %6, %entry.shadow_pid.exit_crit_edge ]
  %kgdb_usethreadid = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 7
  %11 = ptrtoint ptr %kgdb_usethreadid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %kgdb_usethreadid, align 4
  %pass_exception = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 4
  %12 = ptrtoint ptr %pass_exception to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pass_exception, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %13 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %shadow_pid.exit.if.end_crit_edge, label %if.then

shadow_pid.exit.if.end_crit_edge:                 ; preds = %shadow_pid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %shadow_pid.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %thref) #10
  %14 = getelementptr inbounds i8, ptr %thref, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  store i8 84, ptr @remcom_out_buffer, align 4
  %signo = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 1
  %16 = ptrtoint ptr %signo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signo, align 4
  %conv.i = lshr i32 %17, 4
  %18 = and i32 %conv.i, 15
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  store i8 %20, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %and2.i = and i32 %17, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3.i, align 1
  store i8 %22, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i64 8388080085728770560, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  %call6 = tail call i32 @strlen(ptr noundef getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3)) #13
  %add.ptr = getelementptr i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), i32 %call6
  %23 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task8 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task8, align 8
  %pid9 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i105 = icmp eq i32 %28, 0
  br i1 %tobool.not.i105, label %if.end.i109, label %if.then.shadow_pid.exit111_crit_edge

if.then.shadow_pid.exit111_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %shadow_pid.exit111

if.end.i109:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cpu.i107 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i107 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i107, align 4
  %sub1.i108 = sub i32 -2, %30
  br label %shadow_pid.exit111

shadow_pid.exit111:                               ; preds = %if.end.i109, %if.then.shadow_pid.exit111_crit_edge
  %retval.0.i110 = phi i32 [ %sub1.i108, %if.end.i109 ], [ %28, %if.then.shadow_pid.exit111_crit_edge ]
  %31 = ptrtoint ptr %thref to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i110, ptr %thref, align 4
  %call12 = call fastcc ptr @pack_threadid(ptr noundef %add.ptr, ptr noundef nonnull %thref)
  %32 = ptrtoint ptr %call12 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 59, ptr %call12, align 1
  call fastcc void @put_packet(ptr noundef nonnull @remcom_out_buffer)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %thref) #10
  br label %if.end

if.end:                                           ; preds = %shadow_pid.exit111, %shadow_pid.exit.if.end_crit_edge
  %threadid.i334 = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 6
  %thr_query.i = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 5
  %linux_regs.i211 = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 8
  %signo.i = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 1
  %err_code = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %33 = call ptr @memset(ptr @remcom_out_buffer, i32 0, i32 400)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond
  %34 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %while.cond.i.for.cond.preheader.i.i.preheader_crit_edge, label %if.then.i.i, !prof !58

while.cond.i.for.cond.preheader.i.i.preheader_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.i.preheader

if.then.i.i:                                      ; preds = %while.cond.i
  %35 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp.i.i = icmp slt i32 %35, %34
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.i = add nsw i32 %35, 1
  store i32 %inc.i.i, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i.i = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %37 to i32
  br label %gdbstub_read_wait.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i.i.preheader

for.cond.preheader.i.i.preheader:                 ; preds = %if.else.i.i, %while.cond.i.for.cond.preheader.i.i.preheader_crit_edge
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.end.i.i.for.cond.preheader.i.i_crit_edge, %for.cond.preheader.i.i.preheader
  %ret.026.i.i = phi i32 [ %ret.2.i.i, %for.end.i.i.for.cond.preheader.i.i_crit_edge ], [ -1, %for.cond.preheader.i.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %38 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i.i = icmp eq ptr %38, null
  br i1 %cmp8.not23.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc15.i.i = add i32 %i.024.i.i, 1
  %arrayidx7.i.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i.i
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx7.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %40, null
  br i1 %cmp8.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %41 = phi ptr [ %40, %for.cond.i.i.for.body.i.i_crit_edge ], [ %38, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.024.i.i = phi i32 [ %inc15.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call i32 %41() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp11.i.i, label %for.body.i.i.gdbstub_read_wait.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.gdbstub_read_wait.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.026.i.i, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %call.i.i, %for.cond.i.i.for.end.i.i_crit_edge ]
  %cmp5.i.i = icmp slt i32 %ret.2.i.i, 0
  br i1 %cmp5.i.i, label %for.end.i.i.for.cond.preheader.i.i_crit_edge, label %for.end.i.i.gdbstub_read_wait.exit.i_crit_edge

for.end.i.i.gdbstub_read_wait.exit.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit.i

for.end.i.i.for.cond.preheader.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.i

gdbstub_read_wait.exit.i:                         ; preds = %for.end.i.i.gdbstub_read_wait.exit.i_crit_edge, %for.body.i.i.gdbstub_read_wait.exit.i_crit_edge, %if.then3.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then3.i.i ], [ %call.i.i, %for.body.i.i.gdbstub_read_wait.exit.i_crit_edge ], [ 0, %for.end.i.i.gdbstub_read_wait.exit.i_crit_edge ]
  %conv1.i = and i32 %retval.0.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 36
  br i1 %cmp.not.i, label %while.end.i, label %gdbstub_read_wait.exit.i.while.cond.i.backedge_crit_edge

gdbstub_read_wait.exit.i.while.cond.i.backedge_crit_edge: ; preds = %gdbstub_read_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end41.i.while.cond.i.backedge_crit_edge, %gdbstub_read_wait.exit.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %gdbstub_read_wait.exit.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 1, ptr @kgdb_connected, align 4
  br label %while.body6.i

while.body6.i:                                    ; preds = %if.end.i113.while.body6.i_crit_edge, %while.end.i
  %count.089.i = phi i32 [ 0, %while.end.i ], [ %add15.i, %if.end.i113.while.body6.i_crit_edge ]
  %checksum.087.i = phi i8 [ 0, %while.end.i ], [ %conv14.i, %if.end.i113.while.body6.i_crit_edge ]
  %42 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i1.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i1.i, label %while.body6.i.for.cond.preheader.i12.i.preheader_crit_edge, label %if.then.i3.i, !prof !58

while.body6.i.for.cond.preheader.i12.i.preheader_crit_edge: ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i12.i.preheader

if.then.i3.i:                                     ; preds = %while.body6.i
  %43 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp.i2.i = icmp slt i32 %43, %42
  br i1 %cmp.i2.i, label %if.then3.i7.i, label %if.else.i8.i

if.then3.i7.i:                                    ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i4.i = add nsw i32 %43, 1
  store i32 %inc.i4.i, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i5.i = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i5.i, align 1
  %conv.i6.i = zext i8 %45 to i32
  br label %gdbstub_read_wait.exit25.i

if.else.i8.i:                                     ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i12.i.preheader

for.cond.preheader.i12.i.preheader:               ; preds = %if.else.i8.i, %while.body6.i.for.cond.preheader.i12.i.preheader_crit_edge
  br label %for.cond.preheader.i12.i

for.cond.preheader.i12.i:                         ; preds = %for.end.i23.i.for.cond.preheader.i12.i_crit_edge, %for.cond.preheader.i12.i.preheader
  %ret.026.i10.i = phi i32 [ %ret.2.i21.i, %for.end.i23.i.for.cond.preheader.i12.i_crit_edge ], [ -1, %for.cond.preheader.i12.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %46 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i11.i = icmp eq ptr %46, null
  br i1 %cmp8.not23.i11.i, label %for.cond.preheader.i12.i.for.end.i23.i_crit_edge, label %for.cond.preheader.i12.i.for.body.i20.i_crit_edge

for.cond.preheader.i12.i.for.body.i20.i_crit_edge: ; preds = %for.cond.preheader.i12.i
  br label %for.body.i20.i

for.cond.preheader.i12.i.for.end.i23.i_crit_edge: ; preds = %for.cond.preheader.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i23.i

for.cond.i16.i:                                   ; preds = %for.body.i20.i
  %inc15.i13.i = add i32 %i.024.i17.i, 1
  %arrayidx7.i14.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i13.i
  %47 = ptrtoint ptr %arrayidx7.i14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx7.i14.i, align 4
  %cmp8.not.i15.i = icmp eq ptr %48, null
  br i1 %cmp8.not.i15.i, label %for.cond.i16.i.for.end.i23.i_crit_edge, label %for.cond.i16.i.for.body.i20.i_crit_edge

for.cond.i16.i.for.body.i20.i_crit_edge:          ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20.i

for.cond.i16.i.for.end.i23.i_crit_edge:           ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i23.i

for.body.i20.i:                                   ; preds = %for.cond.i16.i.for.body.i20.i_crit_edge, %for.cond.preheader.i12.i.for.body.i20.i_crit_edge
  %49 = phi ptr [ %48, %for.cond.i16.i.for.body.i20.i_crit_edge ], [ %46, %for.cond.preheader.i12.i.for.body.i20.i_crit_edge ]
  %i.024.i17.i = phi i32 [ %inc15.i13.i, %for.cond.i16.i.for.body.i20.i_crit_edge ], [ 0, %for.cond.preheader.i12.i.for.body.i20.i_crit_edge ]
  %call.i18.i = call i32 %49() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp11.i19.i = icmp sgt i32 %call.i18.i, 0
  br i1 %cmp11.i19.i, label %for.body.i20.i.gdbstub_read_wait.exit25.i_crit_edge, label %for.cond.i16.i

for.body.i20.i.gdbstub_read_wait.exit25.i_crit_edge: ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit25.i

for.end.i23.i:                                    ; preds = %for.cond.i16.i.for.end.i23.i_crit_edge, %for.cond.preheader.i12.i.for.end.i23.i_crit_edge
  %ret.2.i21.i = phi i32 [ %ret.026.i10.i, %for.cond.preheader.i12.i.for.end.i23.i_crit_edge ], [ %call.i18.i, %for.cond.i16.i.for.end.i23.i_crit_edge ]
  %cmp5.i22.i = icmp slt i32 %ret.2.i21.i, 0
  br i1 %cmp5.i22.i, label %for.end.i23.i.for.cond.preheader.i12.i_crit_edge, label %for.end.i23.i.if.end.i113_crit_edge

for.end.i23.i.if.end.i113_crit_edge:              ; preds = %for.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i113

for.end.i23.i.for.cond.preheader.i12.i_crit_edge: ; preds = %for.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i12.i

gdbstub_read_wait.exit25.i:                       ; preds = %for.body.i20.i.gdbstub_read_wait.exit25.i_crit_edge, %if.then3.i7.i
  %retval.0.i24.i = phi i32 [ %conv.i6.i, %if.then3.i7.i ], [ %call.i18.i, %for.body.i20.i.gdbstub_read_wait.exit25.i_crit_edge ]
  %conv9.i = and i32 %retval.0.i24.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %conv9.i, 35
  br i1 %cmp10.i, label %gdbstub_read_wait.exit25.i.while.end16.i_crit_edge, label %gdbstub_read_wait.exit25.i.if.end.i113_crit_edge

gdbstub_read_wait.exit25.i.if.end.i113_crit_edge: ; preds = %gdbstub_read_wait.exit25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i113

gdbstub_read_wait.exit25.i.while.end16.i_crit_edge: ; preds = %gdbstub_read_wait.exit25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16.i

if.end.i113:                                      ; preds = %gdbstub_read_wait.exit25.i.if.end.i113_crit_edge, %for.end.i23.i.if.end.i113_crit_edge
  %retval.0.i2479.i = phi i32 [ %retval.0.i24.i, %gdbstub_read_wait.exit25.i.if.end.i113_crit_edge ], [ 0, %for.end.i23.i.if.end.i113_crit_edge ]
  %conv8.i = trunc i32 %retval.0.i2479.i to i8
  %conv14.i = add i8 %checksum.087.i, %conv8.i
  %arrayidx.i112 = getelementptr i8, ptr @remcom_in_buffer, i32 %count.089.i
  %50 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv8.i, ptr %arrayidx.i112, align 1
  %add15.i = add nuw nsw i32 %count.089.i, 1
  %exitcond.not.i = icmp eq i32 %add15.i, 399
  br i1 %exitcond.not.i, label %if.end.i113.while.end16.i_crit_edge, label %if.end.i113.while.body6.i_crit_edge

if.end.i113.while.body6.i_crit_edge:              ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body6.i

if.end.i113.while.end16.i_crit_edge:              ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16.i

while.end16.i:                                    ; preds = %if.end.i113.while.end16.i_crit_edge, %gdbstub_read_wait.exit25.i.while.end16.i_crit_edge
  %checksum.0.lcssa.i = phi i8 [ %checksum.087.i, %gdbstub_read_wait.exit25.i.while.end16.i_crit_edge ], [ %conv14.i, %if.end.i113.while.end16.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ %count.089.i, %gdbstub_read_wait.exit25.i.while.end16.i_crit_edge ], [ 399, %if.end.i113.while.end16.i_crit_edge ]
  %ch.1.i = phi i32 [ %retval.0.i24.i, %gdbstub_read_wait.exit25.i.while.end16.i_crit_edge ], [ %retval.0.i2479.i, %if.end.i113.while.end16.i_crit_edge ]
  %conv17.i = and i32 %ch.1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %conv17.i)
  %cmp18.i = icmp eq i32 %conv17.i, 35
  br i1 %cmp18.i, label %if.then20.i, label %while.end16.i.if.end41.i_crit_edge

while.end16.i.if.end41.i_crit_edge:               ; preds = %while.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then20.i:                                      ; preds = %while.end16.i
  %51 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i26.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i26.i, label %if.then20.i.for.cond.preheader.i37.i.preheader_crit_edge, label %if.then.i28.i, !prof !58

if.then20.i.for.cond.preheader.i37.i.preheader_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i37.i.preheader

if.then.i28.i:                                    ; preds = %if.then20.i
  %52 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %51)
  %cmp.i27.i = icmp slt i32 %52, %51
  br i1 %cmp.i27.i, label %if.then3.i32.i, label %if.else.i33.i

if.then3.i32.i:                                   ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i29.i = add nsw i32 %52, 1
  store i32 %inc.i29.i, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i30.i = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i30.i, align 1
  %conv.i31.i = zext i8 %54 to i32
  br label %gdbstub_read_wait.exit50.i

if.else.i33.i:                                    ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i37.i.preheader

for.cond.preheader.i37.i.preheader:               ; preds = %if.else.i33.i, %if.then20.i.for.cond.preheader.i37.i.preheader_crit_edge
  br label %for.cond.preheader.i37.i

for.cond.preheader.i37.i:                         ; preds = %for.end.i48.i.for.cond.preheader.i37.i_crit_edge, %for.cond.preheader.i37.i.preheader
  %ret.026.i35.i = phi i32 [ %ret.2.i46.i, %for.end.i48.i.for.cond.preheader.i37.i_crit_edge ], [ -1, %for.cond.preheader.i37.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %55 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i36.i = icmp eq ptr %55, null
  br i1 %cmp8.not23.i36.i, label %for.cond.preheader.i37.i.for.end.i48.i_crit_edge, label %for.cond.preheader.i37.i.for.body.i45.i_crit_edge

for.cond.preheader.i37.i.for.body.i45.i_crit_edge: ; preds = %for.cond.preheader.i37.i
  br label %for.body.i45.i

for.cond.preheader.i37.i.for.end.i48.i_crit_edge: ; preds = %for.cond.preheader.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i

for.cond.i41.i:                                   ; preds = %for.body.i45.i
  %inc15.i38.i = add i32 %i.024.i42.i, 1
  %arrayidx7.i39.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i38.i
  %56 = ptrtoint ptr %arrayidx7.i39.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx7.i39.i, align 4
  %cmp8.not.i40.i = icmp eq ptr %57, null
  br i1 %cmp8.not.i40.i, label %for.cond.i41.i.for.end.i48.i_crit_edge, label %for.cond.i41.i.for.body.i45.i_crit_edge

for.cond.i41.i.for.body.i45.i_crit_edge:          ; preds = %for.cond.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45.i

for.cond.i41.i.for.end.i48.i_crit_edge:           ; preds = %for.cond.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i48.i

for.body.i45.i:                                   ; preds = %for.cond.i41.i.for.body.i45.i_crit_edge, %for.cond.preheader.i37.i.for.body.i45.i_crit_edge
  %58 = phi ptr [ %57, %for.cond.i41.i.for.body.i45.i_crit_edge ], [ %55, %for.cond.preheader.i37.i.for.body.i45.i_crit_edge ]
  %i.024.i42.i = phi i32 [ %inc15.i38.i, %for.cond.i41.i.for.body.i45.i_crit_edge ], [ 0, %for.cond.preheader.i37.i.for.body.i45.i_crit_edge ]
  %call.i43.i = call i32 %58() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp11.i44.i = icmp sgt i32 %call.i43.i, 0
  br i1 %cmp11.i44.i, label %for.body.i45.i.gdbstub_read_wait.exit50.i_crit_edge, label %for.cond.i41.i

for.body.i45.i.gdbstub_read_wait.exit50.i_crit_edge: ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit50.i

for.end.i48.i:                                    ; preds = %for.cond.i41.i.for.end.i48.i_crit_edge, %for.cond.preheader.i37.i.for.end.i48.i_crit_edge
  %ret.2.i46.i = phi i32 [ %ret.026.i35.i, %for.cond.preheader.i37.i.for.end.i48.i_crit_edge ], [ %call.i43.i, %for.cond.i41.i.for.end.i48.i_crit_edge ]
  %cmp5.i47.i = icmp slt i32 %ret.2.i46.i, 0
  br i1 %cmp5.i47.i, label %for.end.i48.i.for.cond.preheader.i37.i_crit_edge, label %for.end.i48.i.gdbstub_read_wait.exit50.i_crit_edge

for.end.i48.i.gdbstub_read_wait.exit50.i_crit_edge: ; preds = %for.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit50.i

for.end.i48.i.for.cond.preheader.i37.i_crit_edge: ; preds = %for.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i37.i

gdbstub_read_wait.exit50.i:                       ; preds = %for.end.i48.i.gdbstub_read_wait.exit50.i_crit_edge, %for.body.i45.i.gdbstub_read_wait.exit50.i_crit_edge, %if.then3.i32.i
  %retval.0.i49.i = phi i32 [ %conv.i31.i, %if.then3.i32.i ], [ %call.i43.i, %for.body.i45.i.gdbstub_read_wait.exit50.i_crit_edge ], [ 0, %for.end.i48.i.gdbstub_read_wait.exit50.i_crit_edge ]
  %conv22.i = trunc i32 %retval.0.i49.i to i8
  %call23.i = call i32 @hex_to_bin(i8 noundef zeroext %conv22.i) #10
  %conv24.i = shl i32 %call23.i, 4
  %59 = load i32, ptr @gdbstub_use_prev_in_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i51.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i51.i, label %gdbstub_read_wait.exit50.i.for.cond.preheader.i62.i.preheader_crit_edge, label %if.then.i53.i, !prof !58

gdbstub_read_wait.exit50.i.for.cond.preheader.i62.i.preheader_crit_edge: ; preds = %gdbstub_read_wait.exit50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i62.i.preheader

if.then.i53.i:                                    ; preds = %gdbstub_read_wait.exit50.i
  %60 = load i32, ptr @gdbstub_prev_in_buf_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %59)
  %cmp.i52.i = icmp slt i32 %60, %59
  br i1 %cmp.i52.i, label %if.then3.i57.i, label %if.else.i58.i

if.then3.i57.i:                                   ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i54.i = add nsw i32 %60, 1
  store i32 %inc.i54.i, ptr @gdbstub_prev_in_buf_pos, align 4
  %arrayidx.i55.i = getelementptr [400 x i8], ptr @remcom_in_buffer, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i55.i, align 1
  %conv.i56.i = zext i8 %62 to i32
  br label %gdbstub_read_wait.exit75.i

if.else.i58.i:                                    ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @gdbstub_use_prev_in_buf, align 4
  br label %for.cond.preheader.i62.i.preheader

for.cond.preheader.i62.i.preheader:               ; preds = %if.else.i58.i, %gdbstub_read_wait.exit50.i.for.cond.preheader.i62.i.preheader_crit_edge
  br label %for.cond.preheader.i62.i

for.cond.preheader.i62.i:                         ; preds = %for.end.i73.i.for.cond.preheader.i62.i_crit_edge, %for.cond.preheader.i62.i.preheader
  %ret.026.i60.i = phi i32 [ %ret.2.i71.i, %for.end.i73.i.for.cond.preheader.i62.i_crit_edge ], [ -1, %for.cond.preheader.i62.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %63 = load ptr, ptr @kdb_poll_funcs, align 4
  %cmp8.not23.i61.i = icmp eq ptr %63, null
  br i1 %cmp8.not23.i61.i, label %for.cond.preheader.i62.i.for.end.i73.i_crit_edge, label %for.cond.preheader.i62.i.for.body.i70.i_crit_edge

for.cond.preheader.i62.i.for.body.i70.i_crit_edge: ; preds = %for.cond.preheader.i62.i
  br label %for.body.i70.i

for.cond.preheader.i62.i.for.end.i73.i_crit_edge: ; preds = %for.cond.preheader.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i73.i

for.cond.i66.i:                                   ; preds = %for.body.i70.i
  %inc15.i63.i = add i32 %i.024.i67.i, 1
  %arrayidx7.i64.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %inc15.i63.i
  %64 = ptrtoint ptr %arrayidx7.i64.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx7.i64.i, align 4
  %cmp8.not.i65.i = icmp eq ptr %65, null
  br i1 %cmp8.not.i65.i, label %for.cond.i66.i.for.end.i73.i_crit_edge, label %for.cond.i66.i.for.body.i70.i_crit_edge

for.cond.i66.i.for.body.i70.i_crit_edge:          ; preds = %for.cond.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i70.i

for.cond.i66.i.for.end.i73.i_crit_edge:           ; preds = %for.cond.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i73.i

for.body.i70.i:                                   ; preds = %for.cond.i66.i.for.body.i70.i_crit_edge, %for.cond.preheader.i62.i.for.body.i70.i_crit_edge
  %66 = phi ptr [ %65, %for.cond.i66.i.for.body.i70.i_crit_edge ], [ %63, %for.cond.preheader.i62.i.for.body.i70.i_crit_edge ]
  %i.024.i67.i = phi i32 [ %inc15.i63.i, %for.cond.i66.i.for.body.i70.i_crit_edge ], [ 0, %for.cond.preheader.i62.i.for.body.i70.i_crit_edge ]
  %call.i68.i = call i32 %66() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp11.i69.i = icmp sgt i32 %call.i68.i, 0
  br i1 %cmp11.i69.i, label %for.body.i70.i.gdbstub_read_wait.exit75.i_crit_edge, label %for.cond.i66.i

for.body.i70.i.gdbstub_read_wait.exit75.i_crit_edge: ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit75.i

for.end.i73.i:                                    ; preds = %for.cond.i66.i.for.end.i73.i_crit_edge, %for.cond.preheader.i62.i.for.end.i73.i_crit_edge
  %ret.2.i71.i = phi i32 [ %ret.026.i60.i, %for.cond.preheader.i62.i.for.end.i73.i_crit_edge ], [ %call.i68.i, %for.cond.i66.i.for.end.i73.i_crit_edge ]
  %cmp5.i72.i = icmp slt i32 %ret.2.i71.i, 0
  br i1 %cmp5.i72.i, label %for.end.i73.i.for.cond.preheader.i62.i_crit_edge, label %for.end.i73.i.gdbstub_read_wait.exit75.i_crit_edge

for.end.i73.i.gdbstub_read_wait.exit75.i_crit_edge: ; preds = %for.end.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdbstub_read_wait.exit75.i

for.end.i73.i.for.cond.preheader.i62.i_crit_edge: ; preds = %for.end.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i62.i

gdbstub_read_wait.exit75.i:                       ; preds = %for.end.i73.i.gdbstub_read_wait.exit75.i_crit_edge, %for.body.i70.i.gdbstub_read_wait.exit75.i_crit_edge, %if.then3.i57.i
  %retval.0.i74.i = phi i32 [ %conv.i56.i, %if.then3.i57.i ], [ %call.i68.i, %for.body.i70.i.gdbstub_read_wait.exit75.i_crit_edge ], [ 0, %for.end.i73.i.gdbstub_read_wait.exit75.i_crit_edge ]
  %conv26.i = trunc i32 %retval.0.i74.i to i8
  %call27.i = call i32 @hex_to_bin(i8 noundef zeroext %conv26.i) #10
  %conv28.i = and i32 %conv24.i, 240
  %add29.i = add i32 %call27.i, %conv28.i
  %67 = trunc i32 %add29.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %checksum.0.lcssa.i, i8 %67)
  %cmp33.not.i = icmp eq i8 %checksum.0.lcssa.i, %67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %68 = load ptr, ptr @dbg_io_ops, align 4
  %write_char36.i = getelementptr inbounds %struct.kgdb_io, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %write_char36.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_char36.i, align 4
  %..i = select i1 %cmp33.not.i, i8 43, i8 45
  call void %70(i8 noundef zeroext %..i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %71 = load ptr, ptr @dbg_io_ops, align 4
  %flush.i = getelementptr inbounds %struct.kgdb_io, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %flush.i, align 4
  %tobool.not.i114 = icmp eq ptr %73, null
  br i1 %tobool.not.i114, label %gdbstub_read_wait.exit75.i.if.end41.i_crit_edge, label %if.then38.i

gdbstub_read_wait.exit75.i.if.end41.i_crit_edge:  ; preds = %gdbstub_read_wait.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then38.i:                                      ; preds = %gdbstub_read_wait.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %73() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %gdbstub_read_wait.exit75.i.if.end41.i_crit_edge, %while.end16.i.if.end41.i_crit_edge
  %xmitcsum.0.i = phi i32 [ %add29.i, %if.then38.i ], [ %add29.i, %gdbstub_read_wait.exit75.i.if.end41.i_crit_edge ], [ 255, %while.end16.i.if.end41.i_crit_edge ]
  %arrayidx42.i = getelementptr i8, ptr @remcom_in_buffer, i32 %count.0.lcssa.i
  %74 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx42.i, align 1
  %75 = trunc i32 %xmitcsum.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %checksum.0.lcssa.i, i8 %75)
  %cmp45.not.i = icmp eq i8 %checksum.0.lcssa.i, %75
  br i1 %cmp45.not.i, label %get_packet.exit, label %if.end41.i.while.cond.i.backedge_crit_edge

if.end41.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.backedge

get_packet.exit:                                  ; preds = %if.end41.i
  %76 = load i8, ptr @remcom_in_buffer, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %76, label %get_packet.exit.default_handle_crit_edge [
    i8 63, label %sw.bb
    i8 103, label %sw.bb15
    i8 71, label %get_packet.exit.while.body.i.i123_crit_edge
    i8 109, label %sw.bb17
    i8 77, label %sw.bb18
    i8 112, label %sw.bb19
    i8 80, label %sw.bb20
    i8 88, label %sw.bb21
    i8 68, label %get_packet.exit.sw.bb22_crit_edge
    i8 107, label %get_packet.exit.sw.bb22_crit_edge522
    i8 82, label %sw.bb23
    i8 113, label %sw.bb28
    i8 72, label %sw.bb29
    i8 84, label %sw.bb30
    i8 122, label %get_packet.exit.sw.bb31_crit_edge
    i8 90, label %get_packet.exit.sw.bb31_crit_edge523
    i8 51, label %sw.bb32
    i8 67, label %sw.bb37thread-pre-split
    i8 99, label %get_packet.exit.sw.bb47_crit_edge
    i8 115, label %get_packet.exit.sw.bb47_crit_edge524
  ]

get_packet.exit.sw.bb47_crit_edge524:             ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47

get_packet.exit.sw.bb47_crit_edge:                ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47

get_packet.exit.sw.bb31_crit_edge523:             ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

get_packet.exit.sw.bb31_crit_edge:                ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

get_packet.exit.sw.bb22_crit_edge522:             ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

get_packet.exit.sw.bb22_crit_edge:                ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

get_packet.exit.while.body.i.i123_crit_edge:      ; preds = %get_packet.exit
  br label %while.body.i.i123

get_packet.exit.default_handle_crit_edge:         ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %default_handle

sw.bb:                                            ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @dbg_remove_all_break() #10
  store i8 83, ptr @remcom_out_buffer, align 4
  %78 = ptrtoint ptr %signo.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %signo.i, align 4
  %conv.i.i115 = lshr i32 %79, 4
  %80 = and i32 %conv.i.i115, 15
  %arrayidx.i.i116 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i116, align 1
  store i8 %82, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %and2.i.i = and i32 %79, 15
  %arrayidx3.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i
  %83 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx3.i.i, align 1
  store i8 %84, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %get_packet.exit
  call fastcc void @gdb_get_regs_helper(ptr noundef %ks) #10
  %call.i.i117 = call i32 @copy_from_kernel_nofault(ptr noundef getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 168), ptr noundef nonnull @gdb_regs, i32 noundef 168) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i.i118, label %sw.bb15.while.body.i.i_crit_edge, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb15.while.body.i.i_crit_edge:                 ; preds = %sw.bb15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.bb15.while.body.i.i_crit_edge
  %tmp.014.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 168), %sw.bb15.while.body.i.i_crit_edge ]
  %buf.addr.012.i.i = phi ptr [ %incdec.ptr4.i.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ @remcom_out_buffer, %sw.bb15.while.body.i.i_crit_edge ]
  %85 = ptrtoint ptr %tmp.014.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tmp.014.i.i, align 1
  %conv.i.i.i = zext i8 %86 to i32
  %87 = lshr i32 %conv.i.i.i, 4
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buf.addr.012.i.i, i32 1
  %90 = ptrtoint ptr %buf.addr.012.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %buf.addr.012.i.i, align 1
  %and2.i.i.i = and i32 %conv.i.i.i, 15
  %arrayidx3.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i
  %91 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx3.i.i.i, align 1
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %buf.addr.012.i.i, i32 2
  %93 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %incdec.ptr.i.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %tmp.014.i.i, i32 1
  %exitcond.not.i119 = icmp eq ptr %tmp.014.i.i, getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 335)
  br i1 %exitcond.not.i119, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %incdec.ptr4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %incdec.ptr4.i.i.i, align 1
  br label %sw.epilog

while.body.i.i123:                                ; preds = %while.body.i.i123.while.body.i.i123_crit_edge, %get_packet.exit.while.body.i.i123_crit_edge
  %tmp_hex.020.i.i = phi ptr [ %tmp_hex.0.i.i, %while.body.i.i123.while.body.i.i123_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 336), %get_packet.exit.while.body.i.i123_crit_edge ]
  %add.ptr.pn19.i.i = phi ptr [ %incdec.ptr2.i.i, %while.body.i.i123.while.body.i.i123_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 337), %get_packet.exit.while.body.i.i123_crit_edge ]
  %tmp_raw.018.i.i = phi ptr [ %incdec.ptr.i.i120, %while.body.i.i123.while.body.i.i123_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 337), %get_packet.exit.while.body.i.i123_crit_edge ]
  %incdec.ptr.i.i120 = getelementptr i8, ptr %tmp_raw.018.i.i, i32 -1
  %incdec.ptr2.i.i = getelementptr i8, ptr %add.ptr.pn19.i.i, i32 -2
  %95 = ptrtoint ptr %tmp_hex.020.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tmp_hex.020.i.i, align 1
  %call.i.i121 = call i32 @hex_to_bin(i8 noundef zeroext %96) #10
  %conv.i.i122 = trunc i32 %call.i.i121 to i8
  %97 = ptrtoint ptr %incdec.ptr.i.i120 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i.i122, ptr %incdec.ptr.i.i120, align 1
  %98 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr2.i.i, align 1
  %call4.i.i = call i32 @hex_to_bin(i8 noundef zeroext %99) #10
  %100 = ptrtoint ptr %incdec.ptr.i.i120 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.i.i120, align 1
  %call4.tr.i.i = trunc i32 %call4.i.i to i8
  %102 = shl i8 %call4.tr.i.i, 4
  %conv6.i.i = or i8 %102, %101
  store i8 %conv6.i.i, ptr %incdec.ptr.i.i120, align 1
  %tmp_hex.0.i.i = getelementptr i8, ptr %add.ptr.pn19.i.i, i32 -3
  %cmp.not.i.i = icmp ult ptr %tmp_hex.0.i.i, getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1)
  br i1 %cmp.not.i.i, label %kgdb_hex2mem.exit.i, label %while.body.i.i123.while.body.i.i123_crit_edge

while.body.i.i123.while.body.i.i123_crit_edge:    ; preds = %while.body.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i123

kgdb_hex2mem.exit.i:                              ; preds = %while.body.i.i123
  %call7.i.i = call i32 @copy_to_kernel_nofault(ptr noundef nonnull @gdb_regs, ptr noundef %incdec.ptr.i.i120, i32 noundef 168) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_usethread to i32))
  %103 = load ptr, ptr @kgdb_usethread, align 4
  %tobool.not.i124 = icmp eq ptr %103, null
  br i1 %tobool.not.i124, label %kgdb_hex2mem.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

kgdb_hex2mem.exit.i.if.else.i_crit_edge:          ; preds = %kgdb_hex2mem.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %kgdb_hex2mem.exit.i
  %104 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i125 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i125 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i, align 8
  %cmp.not.i126 = icmp eq ptr %103, %107
  br i1 %cmp.not.i126, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %108 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %108, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %108, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %kgdb_hex2mem.exit.i.if.else.i_crit_edge
  %109 = ptrtoint ptr %linux_regs.i211 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %linux_regs.i211, align 4
  br label %for.body.i.i128

for.body.i.i128:                                  ; preds = %for.body.i.i128.for.body.i.i128_crit_edge, %if.else.i
  %idx.06.i.i = phi i32 [ 0, %if.else.i ], [ %add.i.i, %for.body.i.i128.for.body.i.i128_crit_edge ]
  %i.05.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i127, %for.body.i.i128.for.body.i.i128_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr @gdb_regs, i32 %idx.06.i.i
  %call.i3.i = call i32 @dbg_set_reg(i32 noundef %i.05.i.i, ptr noundef %add.ptr.i.i, ptr noundef %110) #10
  %size.i.i = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.05.i.i, i32 1
  %111 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %112, %idx.06.i.i
  %inc.i.i127 = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i127, 26
  br i1 %exitcond.not.i.i, label %gdb_regs_to_pt_regs.exit.i, label %for.body.i.i128.for.body.i.i128_crit_edge

for.body.i.i128.for.body.i.i128_crit_edge:        ; preds = %for.body.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i128

gdb_regs_to_pt_regs.exit.i:                       ; preds = %for.body.i.i128
  call void @__sanitizer_cov_trace_pc() #12
  %113 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb17:                                          ; preds = %get_packet.exit
  %114 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %114)
  %cmp.i.i130 = icmp eq i8 %114, 45
  br i1 %cmp.i.i130, label %if.then.i.i131, label %sw.bb17.if.end.i.i_crit_edge

sw.bb17.if.end.i.i_crit_edge:                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i131:                                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i131, %sw.bb17.if.end.i.i_crit_edge
  %115 = phi i8 [ %.pr.i, %if.then.i.i131 ], [ %114, %sw.bb17.if.end.i.i_crit_edge ]
  %ptr.0.i = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %if.then.i.i131 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), %sw.bb17.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not20.i.i = icmp eq i8 %115, 0
  br i1 %tobool.not20.i.i, label %if.end.i.i.if.else.i151_crit_edge, label %if.end.i.i.while.body.i.i133_crit_edge

if.end.i.i.while.body.i.i133_crit_edge:           ; preds = %if.end.i.i
  br label %while.body.i.i133

if.end.i.i.if.else.i151_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i151

while.body.i.i133:                                ; preds = %if.end5.i.i.while.body.i.i133_crit_edge, %if.end.i.i.while.body.i.i133_crit_edge
  %ptr.1.i = phi ptr [ %incdec.ptr6.i.i, %if.end5.i.i.while.body.i.i133_crit_edge ], [ %ptr.0.i, %if.end.i.i.while.body.i.i133_crit_edge ]
  %addr.0.i = phi i32 [ %or.i.i, %if.end5.i.i.while.body.i.i133_crit_edge ], [ 0, %if.end.i.i.while.body.i.i133_crit_edge ]
  %116 = phi i8 [ %118, %if.end5.i.i.while.body.i.i133_crit_edge ], [ %115, %if.end.i.i.while.body.i.i133_crit_edge ]
  %num.021.i.i = phi i32 [ %inc.i.i134, %if.end5.i.i.while.body.i.i133_crit_edge ], [ 0, %if.end.i.i.while.body.i.i133_crit_edge ]
  %call.i.i132 = call i32 @hex_to_bin(i8 noundef zeroext %116) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp2.i.i = icmp slt i32 %call.i.i132, 0
  br i1 %cmp2.i.i, label %while.body.i.i133.while.end.i.i136_crit_edge, label %if.end5.i.i

while.body.i.i133.while.end.i.i136_crit_edge:     ; preds = %while.body.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i136

if.end5.i.i:                                      ; preds = %while.body.i.i133
  %shl.i.i = shl i32 %addr.0.i, 4
  %or.i.i = or i32 %call.i.i132, %shl.i.i
  %inc.i.i134 = add i32 %num.021.i.i, 1
  %incdec.ptr6.i.i = getelementptr i8, ptr %ptr.1.i, i32 1
  %117 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %incdec.ptr6.i.i, align 1
  %tobool.not.i.i135 = icmp eq i8 %118, 0
  br i1 %tobool.not.i.i135, label %if.end5.i.i.while.end.i.i136_crit_edge, label %if.end5.i.i.while.body.i.i133_crit_edge

if.end5.i.i.while.body.i.i133_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i133

if.end5.i.i.while.end.i.i136_crit_edge:           ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i136

while.end.i.i136:                                 ; preds = %if.end5.i.i.while.end.i.i136_crit_edge, %while.body.i.i133.while.end.i.i136_crit_edge
  %ptr.2.i = phi ptr [ %ptr.1.i, %while.body.i.i133.while.end.i.i136_crit_edge ], [ %incdec.ptr6.i.i, %if.end5.i.i.while.end.i.i136_crit_edge ]
  %addr.1.i = phi i32 [ %addr.0.i, %while.body.i.i133.while.end.i.i136_crit_edge ], [ %or.i.i, %if.end5.i.i.while.end.i.i136_crit_edge ]
  %num.0.lcssa.i.i = phi i32 [ %num.021.i.i, %while.body.i.i133.while.end.i.i136_crit_edge ], [ %inc.i.i134, %if.end5.i.i.while.end.i.i136_crit_edge ]
  %sub.i.i = sub i32 0, %addr.1.i
  %spec.select.i = select i1 %cmp.i.i130, i32 %sub.i.i, i32 %addr.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i.i)
  %cmp.i = icmp sgt i32 %num.0.lcssa.i.i, 0
  br i1 %cmp.i, label %land.lhs.true.i137, label %while.end.i.i136.if.else.i151_crit_edge

while.end.i.i136.if.else.i151_crit_edge:          ; preds = %while.end.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i151

land.lhs.true.i137:                               ; preds = %while.end.i.i136
  %119 = ptrtoint ptr %ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ptr.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %120)
  %cmp1.i = icmp eq i8 %120, 44
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i137.if.else.i151_crit_edge

land.lhs.true.i137.if.else.i151_crit_edge:        ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i151

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i137
  %incdec.ptr.i = getelementptr i8, ptr %ptr.2.i, i32 1
  %121 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %122)
  %cmp.i1.i = icmp eq i8 %122, 45
  br i1 %cmp.i1.i, label %if.then.i3.i138, label %land.lhs.true3.i.if.end.i5.i_crit_edge

land.lhs.true3.i.if.end.i5.i_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i5.i

if.then.i3.i138:                                  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i2.i = getelementptr i8, ptr %ptr.2.i, i32 2
  %123 = ptrtoint ptr %incdec.ptr.i2.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %.pr37.i = load i8, ptr %incdec.ptr.i2.i, align 1
  br label %if.end.i5.i

if.end.i5.i:                                      ; preds = %if.then.i3.i138, %land.lhs.true3.i.if.end.i5.i_crit_edge
  %124 = phi i8 [ %.pr37.i, %if.then.i3.i138 ], [ %122, %land.lhs.true3.i.if.end.i5.i_crit_edge ]
  %ptr.3.i = phi ptr [ %incdec.ptr.i2.i, %if.then.i3.i138 ], [ %incdec.ptr.i, %land.lhs.true3.i.if.end.i5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not20.i4.i = icmp eq i8 %124, 0
  br i1 %tobool.not20.i4.i, label %if.end.i5.i.if.else.i151_crit_edge, label %if.end.i5.i.while.body.i9.i_crit_edge

if.end.i5.i.while.body.i9.i_crit_edge:            ; preds = %if.end.i5.i
  br label %while.body.i9.i

if.end.i5.i.if.else.i151_crit_edge:               ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i151

while.body.i9.i:                                  ; preds = %if.end5.i15.i.while.body.i9.i_crit_edge, %if.end.i5.i.while.body.i9.i_crit_edge
  %ptr.4.i = phi ptr [ %incdec.ptr6.i13.i, %if.end5.i15.i.while.body.i9.i_crit_edge ], [ %ptr.3.i, %if.end.i5.i.while.body.i9.i_crit_edge ]
  %length.0.i = phi i32 [ %or.i11.i, %if.end5.i15.i.while.body.i9.i_crit_edge ], [ 0, %if.end.i5.i.while.body.i9.i_crit_edge ]
  %125 = phi i8 [ %127, %if.end5.i15.i.while.body.i9.i_crit_edge ], [ %124, %if.end.i5.i.while.body.i9.i_crit_edge ]
  %num.021.i6.i = phi i32 [ %inc.i12.i, %if.end5.i15.i.while.body.i9.i_crit_edge ], [ 0, %if.end.i5.i.while.body.i9.i_crit_edge ]
  %call.i7.i = call i32 @hex_to_bin(i8 noundef zeroext %125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %cmp2.i8.i = icmp slt i32 %call.i7.i, 0
  br i1 %cmp2.i8.i, label %while.body.i9.i.while.end.i17.i_crit_edge, label %if.end5.i15.i

while.body.i9.i.while.end.i17.i_crit_edge:        ; preds = %while.body.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i17.i

if.end5.i15.i:                                    ; preds = %while.body.i9.i
  %shl.i10.i = shl i32 %length.0.i, 4
  %or.i11.i = or i32 %call.i7.i, %shl.i10.i
  %inc.i12.i = add i32 %num.021.i6.i, 1
  %incdec.ptr6.i13.i = getelementptr i8, ptr %ptr.4.i, i32 1
  %126 = ptrtoint ptr %incdec.ptr6.i13.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %incdec.ptr6.i13.i, align 1
  %tobool.not.i14.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i14.i, label %if.end5.i15.i.while.end.i17.i_crit_edge, label %if.end5.i15.i.while.body.i9.i_crit_edge

if.end5.i15.i.while.body.i9.i_crit_edge:          ; preds = %if.end5.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i9.i

if.end5.i15.i.while.end.i17.i_crit_edge:          ; preds = %if.end5.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i17.i

while.end.i17.i:                                  ; preds = %if.end5.i15.i.while.end.i17.i_crit_edge, %while.body.i9.i.while.end.i17.i_crit_edge
  %length.1.i = phi i32 [ %length.0.i, %while.body.i9.i.while.end.i17.i_crit_edge ], [ %or.i11.i, %if.end5.i15.i.while.end.i17.i_crit_edge ]
  %num.0.lcssa.i16.i = phi i32 [ %num.021.i6.i, %while.body.i9.i.while.end.i17.i_crit_edge ], [ %inc.i12.i, %if.end5.i15.i.while.end.i17.i_crit_edge ]
  %sub.i18.i = sub i32 0, %length.1.i
  %spec.select43.i = select i1 %cmp.i1.i, i32 %sub.i18.i, i32 %length.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i16.i)
  %cmp5.i = icmp sgt i32 %num.0.lcssa.i16.i, 0
  br i1 %cmp5.i, label %if.then.i140, label %while.end.i17.i.if.else.i151_crit_edge

while.end.i17.i.if.else.i151_crit_edge:           ; preds = %while.end.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i151

if.then.i140:                                     ; preds = %while.end.i17.i
  %128 = inttoptr i32 %spec.select.i to ptr
  %add.ptr.i.i139 = getelementptr i8, ptr @remcom_out_buffer, i32 %spec.select43.i
  %call.i21.i = call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr.i.i139, ptr noundef %128, i32 noundef %spec.select43.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not.i22.i, label %while.cond.preheader.i.i, label %if.then.i140.if.then8.i_crit_edge

if.then.i140.if.then8.i_crit_edge:                ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

while.cond.preheader.i.i:                         ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select43.i)
  %cmp11.i.i141 = icmp sgt i32 %spec.select43.i, 0
  br i1 %cmp11.i.i141, label %while.cond.preheader.i.i.while.body.i25.i_crit_edge, label %kgdb_mem2hex.exit.thread40.i

while.cond.preheader.i.i.while.body.i25.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i25.i

kgdb_mem2hex.exit.thread40.i:                     ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @remcom_out_buffer, align 4
  br label %sw.epilog

while.body.i25.i:                                 ; preds = %while.body.i25.i.while.body.i25.i_crit_edge, %while.cond.preheader.i.i.while.body.i25.i_crit_edge
  %tmp.014.i.i142 = phi ptr [ %incdec.ptr.i23.i, %while.body.i25.i.while.body.i25.i_crit_edge ], [ %add.ptr.i.i139, %while.cond.preheader.i.i.while.body.i25.i_crit_edge ]
  %count.addr.013.i.i = phi i32 [ %dec.i.i, %while.body.i25.i.while.body.i25.i_crit_edge ], [ %spec.select43.i, %while.cond.preheader.i.i.while.body.i25.i_crit_edge ]
  %buf.addr.012.i.i143 = phi ptr [ %incdec.ptr4.i.i.i149, %while.body.i25.i.while.body.i25.i_crit_edge ], [ @remcom_out_buffer, %while.cond.preheader.i.i.while.body.i25.i_crit_edge ]
  %129 = ptrtoint ptr %tmp.014.i.i142 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %tmp.014.i.i142, align 1
  %conv.i.i.i144 = zext i8 %130 to i32
  %131 = lshr i32 %conv.i.i.i144, 4
  %arrayidx.i.i.i145 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx.i.i.i145 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.i.i145, align 1
  %incdec.ptr.i.i.i146 = getelementptr i8, ptr %buf.addr.012.i.i143, i32 1
  %134 = ptrtoint ptr %buf.addr.012.i.i143 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %buf.addr.012.i.i143, align 1
  %and2.i.i.i147 = and i32 %conv.i.i.i144, 15
  %arrayidx3.i.i.i148 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i147
  %135 = ptrtoint ptr %arrayidx3.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx3.i.i.i148, align 1
  %incdec.ptr4.i.i.i149 = getelementptr i8, ptr %buf.addr.012.i.i143, i32 2
  %137 = ptrtoint ptr %incdec.ptr.i.i.i146 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %incdec.ptr.i.i.i146, align 1
  %incdec.ptr.i23.i = getelementptr i8, ptr %tmp.014.i.i142, i32 1
  %dec.i.i = add nsw i32 %count.addr.013.i.i, -1
  %cmp.i24.i = icmp ugt i32 %count.addr.013.i.i, 1
  br i1 %cmp.i24.i, label %while.body.i25.i.while.body.i25.i_crit_edge, label %kgdb_mem2hex.exit.i

while.body.i25.i.while.body.i25.i_crit_edge:      ; preds = %while.body.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i25.i

kgdb_mem2hex.exit.i:                              ; preds = %while.body.i25.i
  %138 = ptrtoint ptr %incdec.ptr4.i.i.i149 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %incdec.ptr4.i.i.i149, align 1
  %tobool.not.i150 = icmp eq ptr %incdec.ptr4.i.i.i149, null
  br i1 %tobool.not.i150, label %kgdb_mem2hex.exit.i.if.then8.i_crit_edge, label %kgdb_mem2hex.exit.i.sw.epilog_crit_edge

kgdb_mem2hex.exit.i.sw.epilog_crit_edge:          ; preds = %kgdb_mem2hex.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

kgdb_mem2hex.exit.i.if.then8.i_crit_edge:         ; preds = %kgdb_mem2hex.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %kgdb_mem2hex.exit.i.if.then8.i_crit_edge, %if.then.i140.if.then8.i_crit_edge
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %139 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %139, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %139, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.else.i151:                                     ; preds = %while.end.i17.i.if.else.i151_crit_edge, %if.end.i5.i.if.else.i151_crit_edge, %land.lhs.true.i137.if.else.i151_crit_edge, %while.end.i.i136.if.else.i151_crit_edge, %if.end.i.i.if.else.i151_crit_edge
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %140 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %140, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %140, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %get_packet.exit
  %call.i152 = call fastcc i32 @write_mem_msg(i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.else.i157, label %if.then.i156

if.then.i156:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i154 = sub i32 0, %call.i152
  store i8 69, ptr @remcom_out_buffer, align 4
  %sub.i.i154.frozen = freeze i32 %sub.i.i154
  %div.i.i = sdiv i32 %sub.i.i154.frozen, 10
  %arrayidx1.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %div.i.i
  %141 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx1.i.i, align 1
  store i8 %142, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %143 = mul i32 %div.i.i, 10
  %rem.i.i.decomposed = sub i32 %sub.i.i154.frozen, %143
  %arrayidx3.i.i155 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %rem.i.i.decomposed
  %144 = ptrtoint ptr %arrayidx3.i.i155 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx3.i.i155, align 1
  store i8 %145, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.else.i157:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  %146 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb19:                                          ; preds = %get_packet.exit
  %147 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %147)
  %cmp.i.i159 = icmp eq i8 %147, 45
  br i1 %cmp.i.i159, label %if.then.i.i161, label %sw.bb19.if.end.i.i164_crit_edge

sw.bb19.if.end.i.i164_crit_edge:                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i164

if.then.i.i161:                                   ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i160 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  br label %if.end.i.i164

if.end.i.i164:                                    ; preds = %if.then.i.i161, %sw.bb19.if.end.i.i164_crit_edge
  %148 = phi i8 [ %.pr.i160, %if.then.i.i161 ], [ %147, %sw.bb19.if.end.i.i164_crit_edge ]
  %ptr.0.i162 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %if.then.i.i161 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), %sw.bb19.if.end.i.i164_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not20.i.i163 = icmp eq i8 %148, 0
  br i1 %tobool.not20.i.i163, label %if.end.i.i164.while.end.i.i177_crit_edge, label %if.end.i.i164.while.body.i.i168_crit_edge

if.end.i.i164.while.body.i.i168_crit_edge:        ; preds = %if.end.i.i164
  br label %while.body.i.i168

if.end.i.i164.while.end.i.i177_crit_edge:         ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i177

while.body.i.i168:                                ; preds = %if.end5.i.i173.while.body.i.i168_crit_edge, %if.end.i.i164.while.body.i.i168_crit_edge
  %regnum.0.i = phi i32 [ %or.i.i170, %if.end5.i.i173.while.body.i.i168_crit_edge ], [ 0, %if.end.i.i164.while.body.i.i168_crit_edge ]
  %ptr.1.i165 = phi ptr [ %incdec.ptr6.i.i171, %if.end5.i.i173.while.body.i.i168_crit_edge ], [ %ptr.0.i162, %if.end.i.i164.while.body.i.i168_crit_edge ]
  %149 = phi i8 [ %151, %if.end5.i.i173.while.body.i.i168_crit_edge ], [ %148, %if.end.i.i164.while.body.i.i168_crit_edge ]
  %call.i.i166 = call i32 @hex_to_bin(i8 noundef zeroext %149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %cmp2.i.i167 = icmp slt i32 %call.i.i166, 0
  br i1 %cmp2.i.i167, label %while.body.i.i168.while.end.i.i177_crit_edge, label %if.end5.i.i173

while.body.i.i168.while.end.i.i177_crit_edge:     ; preds = %while.body.i.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i177

if.end5.i.i173:                                   ; preds = %while.body.i.i168
  %shl.i.i169 = shl i32 %regnum.0.i, 4
  %or.i.i170 = or i32 %call.i.i166, %shl.i.i169
  %incdec.ptr6.i.i171 = getelementptr i8, ptr %ptr.1.i165, i32 1
  %150 = ptrtoint ptr %incdec.ptr6.i.i171 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %incdec.ptr6.i.i171, align 1
  %tobool.not.i.i172 = icmp eq i8 %151, 0
  br i1 %tobool.not.i.i172, label %if.end5.i.i173.while.end.i.i177_crit_edge, label %if.end5.i.i173.while.body.i.i168_crit_edge

if.end5.i.i173.while.body.i.i168_crit_edge:       ; preds = %if.end5.i.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i168

if.end5.i.i173.while.end.i.i177_crit_edge:        ; preds = %if.end5.i.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i177

while.end.i.i177:                                 ; preds = %if.end5.i.i173.while.end.i.i177_crit_edge, %while.body.i.i168.while.end.i.i177_crit_edge, %if.end.i.i164.while.end.i.i177_crit_edge
  %regnum.1.i = phi i32 [ 0, %if.end.i.i164.while.end.i.i177_crit_edge ], [ %regnum.0.i, %while.body.i.i168.while.end.i.i177_crit_edge ], [ %or.i.i170, %if.end5.i.i173.while.end.i.i177_crit_edge ]
  %sub.i.i174 = sub i32 0, %regnum.1.i
  %spec.select.i175 = select i1 %cmp.i.i159, i32 %sub.i.i174, i32 %regnum.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %spec.select.i175)
  %cmp.i176 = icmp ugt i32 %spec.select.i175, 25
  br i1 %cmp.i176, label %if.then.i178, label %if.end.i179

if.then.i178:                                     ; preds = %while.end.i.i177
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %152 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %152, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %152, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  br label %cleanup.sink.split.i

if.end.i179:                                      ; preds = %while.end.i.i177
  call fastcc void @gdb_get_regs_helper(ptr noundef %ks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regnum.1.i)
  %cmp1.i.not.i = icmp eq i32 %regnum.1.i, 0
  br i1 %cmp1.i.not.i, label %if.end.i179.for.end.i.i185_crit_edge, label %if.end.i179.for.body.i.i183_crit_edge

if.end.i179.for.body.i.i183_crit_edge:            ; preds = %if.end.i179
  br label %for.body.i.i183

if.end.i179.for.end.i.i185_crit_edge:             ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i185

for.body.i.i183:                                  ; preds = %for.body.i.i183.for.body.i.i183_crit_edge, %if.end.i179.for.body.i.i183_crit_edge
  %offset.03.i.i = phi i32 [ %add.i.i181, %for.body.i.i183.for.body.i.i183_crit_edge ], [ 0, %if.end.i179.for.body.i.i183_crit_edge ]
  %i.02.i.i = phi i32 [ %inc.i3.i, %for.body.i.i183.for.body.i.i183_crit_edge ], [ 0, %if.end.i179.for.body.i.i183_crit_edge ]
  %size.i.i180 = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.02.i.i, i32 1
  %153 = ptrtoint ptr %size.i.i180 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %size.i.i180, align 4
  %add.i.i181 = add i32 %154, %offset.03.i.i
  %inc.i3.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i182 = icmp eq i32 %inc.i3.i, %spec.select.i175
  br i1 %exitcond.not.i.i182, label %for.body.i.i183.for.end.i.i185_crit_edge, label %for.body.i.i183.for.body.i.i183_crit_edge

for.body.i.i183.for.body.i.i183_crit_edge:        ; preds = %for.body.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i183

for.body.i.i183.for.end.i.i185_crit_edge:         ; preds = %for.body.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i185

for.end.i.i185:                                   ; preds = %for.body.i.i183.for.end.i.i185_crit_edge, %if.end.i179.for.end.i.i185_crit_edge
  %offset.0.lcssa.i.i = phi i32 [ 0, %if.end.i179.for.end.i.i185_crit_edge ], [ %add.i.i181, %for.body.i.i183.for.end.i.i185_crit_edge ]
  %add.ptr.i.i184 = getelementptr i8, ptr @gdb_regs, i32 %offset.0.lcssa.i.i
  %size2.i.i = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %spec.select.i175, i32 1
  %155 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %size2.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr @remcom_out_buffer, i32 %156
  %call.i.i.i = call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr.i.i184, i32 noundef %156) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.preheader.i.i.i, label %for.end.i.i185.sw.epilog_crit_edge

for.end.i.i185.sw.epilog_crit_edge:               ; preds = %for.end.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond.preheader.i.i.i:                       ; preds = %for.end.i.i185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp11.i.i.i = icmp sgt i32 %156, 0
  br i1 %cmp11.i.i.i, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.cleanup.sink.split.i_crit_edge

while.cond.preheader.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %tmp.014.i.i.i = phi ptr [ %incdec.ptr.i.i.i186, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %count.addr.013.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %156, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %buf.addr.012.i.i.i = phi ptr [ %incdec.ptr4.i.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ @remcom_out_buffer, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %157 = ptrtoint ptr %tmp.014.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %tmp.014.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %158 to i32
  %159 = lshr i32 %conv.i.i.i.i, 4
  %arrayidx.i.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %buf.addr.012.i.i.i, i32 1
  %162 = ptrtoint ptr %buf.addr.012.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %buf.addr.012.i.i.i, align 1
  %and2.i.i.i.i = and i32 %conv.i.i.i.i, 15
  %arrayidx3.i.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i.i
  %163 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %incdec.ptr4.i.i.i.i = getelementptr i8, ptr %buf.addr.012.i.i.i, i32 2
  %165 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %incdec.ptr.i.i.i.i, align 1
  %incdec.ptr.i.i.i186 = getelementptr i8, ptr %tmp.014.i.i.i, i32 1
  %dec.i.i.i = add nsw i32 %count.addr.013.i.i.i, -1
  %cmp.i.i.i = icmp ugt i32 %count.addr.013.i.i.i, 1
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.i.cleanup.sink.split.i_crit_edge

while.body.i.i.i.cleanup.sink.split.i_crit_edge:  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

cleanup.sink.split.i:                             ; preds = %while.body.i.i.i.cleanup.sink.split.i_crit_edge, %while.cond.preheader.i.i.i.cleanup.sink.split.i_crit_edge, %if.then.i178
  %buf.addr.0.lcssa.i.i.sink.i = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), %if.then.i178 ], [ @remcom_out_buffer, %while.cond.preheader.i.i.i.cleanup.sink.split.i_crit_edge ], [ %incdec.ptr4.i.i.i.i, %while.body.i.i.i.cleanup.sink.split.i_crit_edge ]
  %166 = ptrtoint ptr %buf.addr.0.lcssa.i.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %buf.addr.0.lcssa.i.i.sink.i, align 1
  br label %sw.epilog

sw.bb20:                                          ; preds = %get_packet.exit
  %167 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %167)
  %cmp.i.i187 = icmp eq i8 %167, 45
  br i1 %cmp.i.i187, label %if.then.i.i189, label %sw.bb20.if.end.i.i192_crit_edge

sw.bb20.if.end.i.i192_crit_edge:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i192

if.then.i.i189:                                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i188 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  br label %if.end.i.i192

if.end.i.i192:                                    ; preds = %if.then.i.i189, %sw.bb20.if.end.i.i192_crit_edge
  %168 = phi i8 [ %.pr.i188, %if.then.i.i189 ], [ %167, %sw.bb20.if.end.i.i192_crit_edge ]
  %ptr.0.i190 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %if.then.i.i189 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), %sw.bb20.if.end.i.i192_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not20.i.i191 = icmp eq i8 %168, 0
  br i1 %tobool.not20.i.i191, label %if.end.i.i192.while.end.i.i207_crit_edge, label %if.end.i.i192.while.body.i.i197_crit_edge

if.end.i.i192.while.body.i.i197_crit_edge:        ; preds = %if.end.i.i192
  br label %while.body.i.i197

if.end.i.i192.while.end.i.i207_crit_edge:         ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i207

while.body.i.i197:                                ; preds = %if.end5.i.i202.while.body.i.i197_crit_edge, %if.end.i.i192.while.body.i.i197_crit_edge
  %regnum.0.i193 = phi i32 [ %or.i.i199, %if.end5.i.i202.while.body.i.i197_crit_edge ], [ 0, %if.end.i.i192.while.body.i.i197_crit_edge ]
  %ptr.1.i194 = phi ptr [ %incdec.ptr6.i.i200, %if.end5.i.i202.while.body.i.i197_crit_edge ], [ %ptr.0.i190, %if.end.i.i192.while.body.i.i197_crit_edge ]
  %169 = phi i8 [ %171, %if.end5.i.i202.while.body.i.i197_crit_edge ], [ %168, %if.end.i.i192.while.body.i.i197_crit_edge ]
  %call.i.i195 = call i32 @hex_to_bin(i8 noundef zeroext %169) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %cmp2.i.i196 = icmp slt i32 %call.i.i195, 0
  br i1 %cmp2.i.i196, label %while.body.i.i197.while.end.i.i207_crit_edge, label %if.end5.i.i202

while.body.i.i197.while.end.i.i207_crit_edge:     ; preds = %while.body.i.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i207

if.end5.i.i202:                                   ; preds = %while.body.i.i197
  %shl.i.i198 = shl i32 %regnum.0.i193, 4
  %or.i.i199 = or i32 %call.i.i195, %shl.i.i198
  %incdec.ptr6.i.i200 = getelementptr i8, ptr %ptr.1.i194, i32 1
  %170 = ptrtoint ptr %incdec.ptr6.i.i200 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %incdec.ptr6.i.i200, align 1
  %tobool.not.i.i201 = icmp eq i8 %171, 0
  br i1 %tobool.not.i.i201, label %if.end5.i.i202.if.then.i212_crit_edge, label %if.end5.i.i202.while.body.i.i197_crit_edge

if.end5.i.i202.while.body.i.i197_crit_edge:       ; preds = %if.end5.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i197

if.end5.i.i202.if.then.i212_crit_edge:            ; preds = %if.end5.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i212

while.end.i.i207:                                 ; preds = %while.body.i.i197.while.end.i.i207_crit_edge, %if.end.i.i192.while.end.i.i207_crit_edge
  %regnum.1.ph.i = phi i32 [ 0, %if.end.i.i192.while.end.i.i207_crit_edge ], [ %regnum.0.i193, %while.body.i.i197.while.end.i.i207_crit_edge ]
  %ptr.2.ph.i = phi ptr [ %ptr.0.i190, %if.end.i.i192.while.end.i.i207_crit_edge ], [ %ptr.1.i194, %while.body.i.i197.while.end.i.i207_crit_edge ]
  %172 = ptrtoint ptr %ptr.2.ph.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %.pr41.i = load i8, ptr %ptr.2.ph.i, align 1
  %sub.i.i203 = sub i32 0, %regnum.1.ph.i
  %spec.select.i204 = select i1 %cmp.i.i187, i32 %sub.i.i203, i32 %regnum.1.ph.i
  %incdec.ptr.i205 = getelementptr i8, ptr %ptr.2.ph.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %.pr41.i)
  %cmp.not.i206 = icmp eq i8 %.pr41.i, 61
  br i1 %cmp.not.i206, label %lor.lhs.false.i, label %while.end.i.i207.if.then.i212_crit_edge

while.end.i.i207.if.then.i212_crit_edge:          ; preds = %while.end.i.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i212

lor.lhs.false.i:                                  ; preds = %while.end.i.i207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_usethread to i32))
  %173 = load ptr, ptr @kgdb_usethread, align 4
  %tobool.not.i208 = icmp eq ptr %173, null
  br i1 %tobool.not.i208, label %lor.lhs.false.i.lor.lhs.false6.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.lor.lhs.false6.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false6.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %174 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i209 = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i209 to ptr
  %task.i210 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task.i210 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task.i210, align 8
  %cmp4.i = icmp eq ptr %173, %177
  br i1 %cmp4.i, label %lor.lhs.false2.i.lor.lhs.false6.i_crit_edge, label %lor.lhs.false2.i.if.then.i212_crit_edge

lor.lhs.false2.i.if.then.i212_crit_edge:          ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i212

lor.lhs.false2.i.lor.lhs.false6.i_crit_edge:      ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false6.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false2.i.lor.lhs.false6.i_crit_edge, %lor.lhs.false.i.lor.lhs.false6.i_crit_edge
  %178 = ptrtoint ptr %linux_regs.i211 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %linux_regs.i211, align 4
  %call7.i = call ptr @dbg_get_reg(i32 noundef %spec.select.i204, ptr noundef nonnull @gdb_regs, ptr noundef %179) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.if.then.i212_crit_edge, label %if.end.i213

lor.lhs.false6.i.if.then.i212_crit_edge:          ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i212

if.then.i212:                                     ; preds = %lor.lhs.false6.i.if.then.i212_crit_edge, %lor.lhs.false2.i.if.then.i212_crit_edge, %while.end.i.i207.if.then.i212_crit_edge, %if.end5.i.i202.if.then.i212_crit_edge
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %180 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %180, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %180, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end.i213:                                      ; preds = %lor.lhs.false6.i
  %181 = call ptr @memset(ptr @gdb_regs, i32 0, i32 168)
  br label %while.body.i

while.body.i:                                     ; preds = %if.then14.i.while.body.i_crit_edge, %if.end.i213
  %i.040.i = phi i32 [ 0, %if.end.i213 ], [ %inc.i, %if.then14.i.while.body.i_crit_edge ]
  %arrayidx.i214 = getelementptr i8, ptr %incdec.ptr.i205, i32 %i.040.i
  %182 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i214, align 1
  %call11.i = call i32 @hex_to_bin(i8 noundef zeroext %183) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i)
  %cmp12.i = icmp sgt i32 %call11.i, -1
  br i1 %cmp12.i, label %if.then14.i, label %while.body.i.while.end.i217_crit_edge

while.body.i.while.end.i217_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i217

if.then14.i:                                      ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i215 = icmp eq i32 %inc.i, 336
  br i1 %exitcond.not.i215, label %if.then14.i.while.end.i217_crit_edge, label %if.then14.i.while.body.i_crit_edge

if.then14.i.while.body.i_crit_edge:               ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.then14.i.while.end.i217_crit_edge:             ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i217

while.end.i217:                                   ; preds = %if.then14.i.while.end.i217_crit_edge, %while.body.i.while.end.i217_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.040.i, %while.body.i.while.end.i217_crit_edge ], [ 336, %if.then14.i.while.end.i217_crit_edge ]
  %div39.i = lshr i32 %i.0.lcssa.i, 1
  %mul.i.i = and i32 %i.0.lcssa.i, 2147483646
  %add.ptr.i.i216 = getelementptr i8, ptr %incdec.ptr.i205, i32 %mul.i.i
  %tmp_hex.016.i.i = getelementptr i8, ptr %add.ptr.i.i216, i32 -1
  %cmp.not17.i.i = icmp ult ptr %tmp_hex.016.i.i, %incdec.ptr.i205
  br i1 %cmp.not17.i.i, label %while.end.i217.kgdb_hex2mem.exit.i229_crit_edge, label %while.end.i217.while.body.i29.i_crit_edge

while.end.i217.while.body.i29.i_crit_edge:        ; preds = %while.end.i217
  br label %while.body.i29.i

while.end.i217.kgdb_hex2mem.exit.i229_crit_edge:  ; preds = %while.end.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit.i229

while.body.i29.i:                                 ; preds = %while.body.i29.i.while.body.i29.i_crit_edge, %while.end.i217.while.body.i29.i_crit_edge
  %tmp_hex.020.i.i218 = phi ptr [ %tmp_hex.0.i.i226, %while.body.i29.i.while.body.i29.i_crit_edge ], [ %tmp_hex.016.i.i, %while.end.i217.while.body.i29.i_crit_edge ]
  %add.ptr.pn19.i.i219 = phi ptr [ %incdec.ptr2.i.i221, %while.body.i29.i.while.body.i29.i_crit_edge ], [ %add.ptr.i.i216, %while.end.i217.while.body.i29.i_crit_edge ]
  %tmp_raw.018.i.i220 = phi ptr [ %incdec.ptr.i27.i, %while.body.i29.i.while.body.i29.i_crit_edge ], [ %add.ptr.i.i216, %while.end.i217.while.body.i29.i_crit_edge ]
  %incdec.ptr.i27.i = getelementptr i8, ptr %tmp_raw.018.i.i220, i32 -1
  %incdec.ptr2.i.i221 = getelementptr i8, ptr %add.ptr.pn19.i.i219, i32 -2
  %184 = ptrtoint ptr %tmp_hex.020.i.i218 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tmp_hex.020.i.i218, align 1
  %call.i28.i = call i32 @hex_to_bin(i8 noundef zeroext %185) #10
  %conv.i.i222 = trunc i32 %call.i28.i to i8
  %186 = ptrtoint ptr %incdec.ptr.i27.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv.i.i222, ptr %incdec.ptr.i27.i, align 1
  %187 = ptrtoint ptr %incdec.ptr2.i.i221 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %incdec.ptr2.i.i221, align 1
  %call4.i.i223 = call i32 @hex_to_bin(i8 noundef zeroext %188) #10
  %189 = ptrtoint ptr %incdec.ptr.i27.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %incdec.ptr.i27.i, align 1
  %call4.tr.i.i224 = trunc i32 %call4.i.i223 to i8
  %191 = shl i8 %call4.tr.i.i224, 4
  %conv6.i.i225 = or i8 %191, %190
  store i8 %conv6.i.i225, ptr %incdec.ptr.i27.i, align 1
  %tmp_hex.0.i.i226 = getelementptr i8, ptr %add.ptr.pn19.i.i219, i32 -3
  %cmp.not.i.i227 = icmp ult ptr %tmp_hex.0.i.i226, %incdec.ptr.i205
  br i1 %cmp.not.i.i227, label %while.body.i29.i.kgdb_hex2mem.exit.i229_crit_edge, label %while.body.i29.i.while.body.i29.i_crit_edge

while.body.i29.i.while.body.i29.i_crit_edge:      ; preds = %while.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i29.i

while.body.i29.i.kgdb_hex2mem.exit.i229_crit_edge: ; preds = %while.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit.i229

kgdb_hex2mem.exit.i229:                           ; preds = %while.body.i29.i.kgdb_hex2mem.exit.i229_crit_edge, %while.end.i217.kgdb_hex2mem.exit.i229_crit_edge
  %tmp_raw.0.lcssa.i.i = phi ptr [ %add.ptr.i.i216, %while.end.i217.kgdb_hex2mem.exit.i229_crit_edge ], [ %incdec.ptr.i27.i, %while.body.i29.i.kgdb_hex2mem.exit.i229_crit_edge ]
  %call7.i.i228 = call i32 @copy_to_kernel_nofault(ptr noundef nonnull @gdb_regs, ptr noundef %tmp_raw.0.lcssa.i.i, i32 noundef %div39.i) #10
  %192 = ptrtoint ptr %linux_regs.i211 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %linux_regs.i211, align 4
  %call18.i = call i32 @dbg_set_reg(i32 noundef %spec.select.i204, ptr noundef nonnull @gdb_regs, ptr noundef %193) #10
  %194 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb21:                                          ; preds = %get_packet.exit
  %call.i230 = call fastcc i32 @write_mem_msg(i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool.not.i231 = icmp eq i32 %call.i230, 0
  br i1 %tobool.not.i231, label %if.else.i238, label %if.then.i237

if.then.i237:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i232 = sub i32 0, %call.i230
  store i8 69, ptr @remcom_out_buffer, align 4
  %sub.i.i232.frozen = freeze i32 %sub.i.i232
  %div.i.i233 = sdiv i32 %sub.i.i232.frozen, 10
  %arrayidx1.i.i234 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %div.i.i233
  %195 = ptrtoint ptr %arrayidx1.i.i234 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx1.i.i234, align 1
  store i8 %196, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %197 = mul i32 %div.i.i233, 10
  %rem.i.i235.decomposed = sub i32 %sub.i.i232.frozen, %197
  %arrayidx3.i.i236 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %rem.i.i235.decomposed
  %198 = ptrtoint ptr %arrayidx3.i.i236 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx3.i.i236, align 1
  store i8 %199, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.else.i238:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %200 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb22:                                          ; preds = %get_packet.exit.sw.bb22_crit_edge, %get_packet.exit.sw.bb22_crit_edge522
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %76)
  %cmp.i240 = icmp eq i8 %76, 68
  %call.i241 = call i32 @dbg_remove_all_break() #10
  br i1 %cmp.i240, label %if.then.i242, label %if.else6.i

if.then.i242:                                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp2.i = icmp slt i32 %call.i241, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i248

if.then4.i:                                       ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i243 = sub i32 0, %call.i241
  store i8 69, ptr @remcom_out_buffer, align 4
  %sub.i.i243.frozen = freeze i32 %sub.i.i243
  %div.i.i244 = sdiv i32 %sub.i.i243.frozen, 10
  %arrayidx1.i.i245 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %div.i.i244
  %201 = ptrtoint ptr %arrayidx1.i.i245 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx1.i.i245, align 1
  store i8 %202, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %203 = mul i32 %div.i.i244, 10
  %rem.i.i246.decomposed = sub i32 %sub.i.i243.frozen, %203
  %arrayidx3.i.i247 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %rem.i.i246.decomposed
  %204 = ptrtoint ptr %arrayidx3.i.i247 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx3.i.i247, align 1
  store i8 %205, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %if.end.i249

if.else.i248:                                     ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #12
  %206 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  br label %if.end.i249

if.end.i249:                                      ; preds = %if.else.i248, %if.then4.i
  call fastcc void @put_packet(ptr noundef nonnull @remcom_out_buffer) #10
  br label %default_handle

if.else6.i:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  br label %default_handle

sw.bb23:                                          ; preds = %get_packet.exit
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @remcom_in_buffer, ptr noundef nonnull dereferenceable(3) @.str.2, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i250 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i250, label %gdb_cmd_reboot.exit, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

gdb_cmd_reboot.exit:                              ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  %207 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  call fastcc void @put_packet(ptr noundef nonnull @remcom_out_buffer) #10
  call void @machine_restart(ptr noundef null) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  br label %default_handle

sw.bb28:                                          ; preds = %get_packet.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %thref.i) #10
  %208 = ptrtoint ptr %thref.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 -1, ptr %thref.i, align 8
  %209 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  %210 = zext i8 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %209, label %sw.bb28.gdb_cmd_query.exit_crit_edge [
    i8 115, label %sw.bb28.sw.bb.i_crit_edge
    i8 102, label %sw.bb28.sw.bb.i_crit_edge525
    i8 67, label %sw.bb72.i
    i8 84, label %sw.bb81.i
    i8 82, label %sw.bb110.i
  ]

sw.bb28.sw.bb.i_crit_edge525:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb28.sw.bb.i_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb28.gdb_cmd_query.exit_crit_edge:             ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

sw.bb.i:                                          ; preds = %sw.bb28.sw.bb.i_crit_edge, %sw.bb28.sw.bb.i_crit_edge525
  %bcmp155.i = call i32 @bcmp(ptr noundef dereferenceable(10) getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), ptr noundef nonnull dereferenceable(10) @.str.6, i32 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp155.i)
  %tobool.not.i252 = icmp eq i32 %bcmp155.i, 0
  br i1 %tobool.not.i252, label %if.end.i254, label %sw.bb.i.gdb_cmd_query.exit_crit_edge

sw.bb.i.gdb_cmd_query.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

if.end.i254:                                      ; preds = %sw.bb.i
  store i8 109, ptr @remcom_out_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %209)
  %cmp.i253 = icmp eq i8 %209, 102
  br i1 %cmp.i253, label %for.cond.preheader.i, label %if.end.i254.if.end10.i_crit_edge

if.end.i254.if.end10.i_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.cond.preheader.i:                             ; preds = %if.end.i254
  %call4175.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %211 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4175.i, i32 %211)
  %cmp5176.i = icmp ult i32 %call4175.i, %211
  br i1 %cmp5176.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end10.i_crit_edge

for.cond.preheader.i.if.end10.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call4179.i = phi i32 [ %call4.i, %for.body.i.for.body.i_crit_edge ], [ %call4175.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0178.i = phi i32 [ %inc.i256, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ptr.0177.i = phi ptr [ %incdec.ptr.i255, %for.body.i.for.body.i_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), %for.cond.preheader.i.for.body.i_crit_edge ]
  %212 = ptrtoint ptr %thr_query.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %thr_query.i, align 4
  %sub7.i = sub nuw i32 -2, %call4179.i
  %213 = ptrtoint ptr %thref.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub7.i, ptr %thref.i, align 8
  %call9.i = call fastcc ptr @pack_threadid(ptr noundef %ptr.0177.i, ptr noundef nonnull %thref.i) #10
  %incdec.ptr.i255 = getelementptr i8, ptr %call9.i, i32 1
  %214 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 44, ptr %call9.i, align 1
  %inc.i256 = add i32 %i.0178.i, 1
  %call4.i = call i32 @cpumask_next(i32 noundef %call4179.i, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %215 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5.i257 = icmp ult i32 %call4.i, %215
  br i1 %cmp5.i257, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end10.i:                                       ; preds = %for.body.i.if.end10.i_crit_edge, %for.cond.preheader.i.if.end10.i_crit_edge, %if.end.i254.if.end10.i_crit_edge
  %ptr.1.i258 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), %if.end.i254.if.end10.i_crit_edge ], [ getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), %for.cond.preheader.i.if.end10.i_crit_edge ], [ %incdec.ptr.i255, %for.body.i.if.end10.i_crit_edge ]
  %i.1.i = phi i32 [ 0, %if.end.i254.if.end10.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end10.i_crit_edge ], [ %inc.i256, %for.body.i.if.end10.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %216 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr191.i = getelementptr i8, ptr %216, i32 -1136
  %cmp13.not192.i = icmp eq ptr %add.ptr191.i, @init_task
  br i1 %cmp13.not192.i, label %if.end10.i.for.end70.i_crit_edge, label %if.end10.i.do.body16.i_crit_edge

if.end10.i.do.body16.i_crit_edge:                 ; preds = %if.end10.i
  br label %do.body16.i

if.end10.i.for.end70.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70.i

for.cond11.loopexit.i:                            ; preds = %if.end58.i.for.cond11.loopexit.i_crit_edge, %do.end26.i.for.cond11.loopexit.i_crit_edge
  %ptr.3.lcssa.i = phi ptr [ %ptr.2193.i, %do.end26.i.for.cond11.loopexit.i_crit_edge ], [ %ptr.4.i261, %if.end58.i.for.cond11.loopexit.i_crit_edge ]
  %finished.1.lcssa.i = phi i32 [ %finished.0194.i, %do.end26.i.for.cond11.loopexit.i_crit_edge ], [ %finished.2.i, %if.end58.i.for.cond11.loopexit.i_crit_edge ]
  %i.3.lcssa.i = phi i32 [ %i.2195.i, %do.end26.i.for.cond11.loopexit.i_crit_edge ], [ %inc59.i, %if.end58.i.for.cond11.loopexit.i_crit_edge ]
  %217 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile ptr, ptr %219, align 16
  %add.ptr.i = getelementptr i8, ptr %218, i32 -1136
  %cmp13.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp13.not.i, label %for.cond11.loopexit.i.for.end70.i_crit_edge, label %for.cond11.loopexit.i.do.body16.i_crit_edge

for.cond11.loopexit.i.do.body16.i_crit_edge:      ; preds = %for.cond11.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i

for.cond11.loopexit.i.for.end70.i_crit_edge:      ; preds = %for.cond11.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70.i

do.body16.i:                                      ; preds = %for.cond11.loopexit.i.do.body16.i_crit_edge, %if.end10.i.do.body16.i_crit_edge
  %219 = phi ptr [ %218, %for.cond11.loopexit.i.do.body16.i_crit_edge ], [ %216, %if.end10.i.do.body16.i_crit_edge ]
  %i.2195.i = phi i32 [ %i.3.lcssa.i, %for.cond11.loopexit.i.do.body16.i_crit_edge ], [ %i.1.i, %if.end10.i.do.body16.i_crit_edge ]
  %finished.0194.i = phi i32 [ %finished.1.lcssa.i, %for.cond11.loopexit.i.do.body16.i_crit_edge ], [ 0, %if.end10.i.do.body16.i_crit_edge ]
  %ptr.2193.i = phi ptr [ %ptr.3.lcssa.i, %for.cond11.loopexit.i.do.body16.i_crit_edge ], [ %ptr.1.i258, %if.end10.i.do.body16.i_crit_edge ]
  %call17.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i259, label %do.body16.i.do.end26.i_crit_edge

do.body16.i.do.end26.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

land.lhs.true.i259:                               ; preds = %do.body16.i
  %call19.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i259.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i259.do.end26.i_crit_edge:          ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i259
  %.b156.i = load i1, ptr @gdb_cmd_query.__warned, align 1
  br i1 %.b156.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gdb_cmd_query.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 725, ptr noundef nonnull @.str.7) #10
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true.i259.do.end26.i_crit_edge, %do.body16.i.do.end26.i_crit_edge
  %signal.i = getelementptr i8, ptr %219, i32 544
  %220 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %.pn181.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp38.not183.i = icmp eq ptr %.pn181.i, %thread_head.i
  br i1 %cmp38.not183.i, label %do.end26.i.for.cond11.loopexit.i_crit_edge, label %do.end26.i.for.body40.i_crit_edge

do.end26.i.for.body40.i_crit_edge:                ; preds = %do.end26.i
  br label %for.body40.i

do.end26.i.for.cond11.loopexit.i_crit_edge:       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond11.loopexit.i

for.body40.i:                                     ; preds = %if.end58.i.for.body40.i_crit_edge, %do.end26.i.for.body40.i_crit_edge
  %.pn187.i = phi ptr [ %.pn.i, %if.end58.i.for.body40.i_crit_edge ], [ %.pn181.i, %do.end26.i.for.body40.i_crit_edge ]
  %i.3186.i = phi i32 [ %inc59.i, %if.end58.i.for.body40.i_crit_edge ], [ %i.2195.i, %do.end26.i.for.body40.i_crit_edge ]
  %finished.1185.i = phi i32 [ %finished.2.i, %if.end58.i.for.body40.i_crit_edge ], [ %finished.0194.i, %do.end26.i.for.body40.i_crit_edge ]
  %ptr.3184.i = phi ptr [ %ptr.4.i261, %if.end58.i.for.body40.i_crit_edge ], [ %ptr.2193.i, %do.end26.i.for.body40.i_crit_edge ]
  %223 = ptrtoint ptr %thr_query.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %thr_query.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3186.i, i32 %224)
  %cmp42.not.i = icmp ult i32 %i.3186.i, %224
  br i1 %cmp42.not.i, label %for.body40.i.if.end58.i_crit_edge, label %land.lhs.true44.i

for.body40.i.if.end58.i_crit_edge:                ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

land.lhs.true44.i:                                ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %finished.1185.i)
  %tobool45.not.i = icmp eq i32 %finished.1185.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %land.lhs.true44.i.if.end58.i_crit_edge

land.lhs.true44.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then46.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid.i = getelementptr i8, ptr %.pn187.i, i32 -100
  %225 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pid.i, align 8
  %227 = ptrtoint ptr %thref.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %thref.i, align 8
  %call49.i = call fastcc ptr @pack_threadid(ptr noundef %ptr.3184.i, ptr noundef nonnull %thref.i) #10
  %incdec.ptr50.i = getelementptr i8, ptr %call49.i, i32 1
  %228 = ptrtoint ptr %call49.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 44, ptr %call49.i, align 1
  %229 = ptrtoint ptr %thr_query.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %thr_query.i, align 4
  %inc52.i = add i32 %230, 1
  store i32 %inc52.i, ptr %thr_query.i, align 4
  %rem.i = urem i32 %inc52.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp54.i = icmp eq i32 %rem.i, 0
  %spec.select.i260 = zext i1 %cmp54.i to i32
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then46.i, %land.lhs.true44.i.if.end58.i_crit_edge, %for.body40.i.if.end58.i_crit_edge
  %ptr.4.i261 = phi ptr [ %ptr.3184.i, %for.body40.i.if.end58.i_crit_edge ], [ %incdec.ptr50.i, %if.then46.i ], [ %ptr.3184.i, %land.lhs.true44.i.if.end58.i_crit_edge ]
  %finished.2.i = phi i32 [ %finished.1185.i, %for.body40.i.if.end58.i_crit_edge ], [ %spec.select.i260, %if.then46.i ], [ 1, %land.lhs.true44.i.if.end58.i_crit_edge ]
  %inc59.i = add i32 %i.3186.i, 1
  %231 = ptrtoint ptr %.pn187.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %.pn.i = load volatile ptr, ptr %.pn187.i, align 4
  %232 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %signal.i, align 16
  %thread_head37.i = getelementptr inbounds %struct.signal_struct, ptr %233, i32 0, i32 3
  %cmp38.not.i = icmp eq ptr %.pn.i, %thread_head37.i
  br i1 %cmp38.not.i, label %if.end58.i.for.cond11.loopexit.i_crit_edge, label %if.end58.i.for.body40.i_crit_edge

if.end58.i.for.body40.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40.i

if.end58.i.for.cond11.loopexit.i_crit_edge:       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond11.loopexit.i

for.end70.i:                                      ; preds = %for.cond11.loopexit.i.for.end70.i_crit_edge, %if.end10.i.for.end70.i_crit_edge
  %ptr.2.lcssa.i = phi ptr [ %ptr.1.i258, %if.end10.i.for.end70.i_crit_edge ], [ %ptr.3.lcssa.i, %for.cond11.loopexit.i.for.end70.i_crit_edge ]
  %incdec.ptr71.i = getelementptr i8, ptr %ptr.2.lcssa.i, i32 -1
  %234 = ptrtoint ptr %incdec.ptr71.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %incdec.ptr71.i, align 1
  br label %gdb_cmd_query.exit

sw.bb72.i:                                        ; preds = %sw.bb28
  %235 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.8, i32 3)
  %236 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i262 = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i262 to ptr
  %task.i263 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %task.i263 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %task.i263, align 8
  %pid75.i = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 68
  %240 = ptrtoint ptr %pid75.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pid75.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i.i264 = icmp eq i32 %241, 0
  br i1 %tobool.not.i.i264, label %if.end.i.i265, label %sw.bb72.i.shadow_pid.exit.i_crit_edge

sw.bb72.i.shadow_pid.exit.i_crit_edge:            ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %shadow_pid.exit.i

if.end.i.i265:                                    ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #12
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 3
  %242 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %cpu.i.i, align 4
  %sub1.i.i = sub i32 -2, %243
  br label %shadow_pid.exit.i

shadow_pid.exit.i:                                ; preds = %if.end.i.i265, %sw.bb72.i.shadow_pid.exit.i_crit_edge
  %retval.0.i.i266 = phi i32 [ %sub1.i.i, %if.end.i.i265 ], [ %241, %sw.bb72.i.shadow_pid.exit.i_crit_edge ]
  %244 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %retval.0.i.i266, ptr %threadid.i334, align 4
  %245 = ptrtoint ptr %thref.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %retval.0.i.i266, ptr %thref.i, align 8
  %call80.i = call fastcc ptr @pack_threadid(ptr noundef getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), ptr noundef nonnull %thref.i) #10
  br label %gdb_cmd_query.exit

sw.bb81.i:                                        ; preds = %sw.bb28
  %bcmp154.i = call i32 @bcmp(ptr noundef dereferenceable(16) getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), ptr noundef nonnull dereferenceable(16) @.str.9, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp154.i)
  %tobool83.not.i = icmp eq i32 %bcmp154.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %sw.bb81.i.gdb_cmd_query.exit_crit_edge

sw.bb81.i.gdb_cmd_query.exit_crit_edge:           ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

if.end85.i:                                       ; preds = %sw.bb81.i
  %246 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 0, ptr %threadid.i334, align 4
  %247 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 17), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %247)
  %cmp.i.i267 = icmp eq i8 %247, 45
  br i1 %cmp.i.i267, label %if.then.i.i269, label %if.end85.i.if.end.i157.i_crit_edge

if.end85.i.if.end.i157.i_crit_edge:               ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i157.i

if.then.i.i269:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i268 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 18), align 1
  br label %if.end.i157.i

if.end.i157.i:                                    ; preds = %if.then.i.i269, %if.end85.i.if.end.i157.i_crit_edge
  %248 = phi i8 [ %.pr.i268, %if.then.i.i269 ], [ %247, %if.end85.i.if.end.i157.i_crit_edge ]
  %ptr.5.i = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 18), %if.then.i.i269 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 17), %if.end85.i.if.end.i157.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not20.i.i270 = icmp eq i8 %248, 0
  br i1 %tobool.not20.i.i270, label %if.end.i157.i.while.end.i.i278_crit_edge, label %if.end.i157.i.while.body.i.i273_crit_edge

if.end.i157.i.while.body.i.i273_crit_edge:        ; preds = %if.end.i157.i
  br label %while.body.i.i273

if.end.i157.i.while.end.i.i278_crit_edge:         ; preds = %if.end.i157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i278

while.body.i.i273:                                ; preds = %if.end5.i.i277.while.body.i.i273_crit_edge, %if.end.i157.i.while.body.i.i273_crit_edge
  %ptr.6.i = phi ptr [ %incdec.ptr6.i.i276, %if.end5.i.i277.while.body.i.i273_crit_edge ], [ %ptr.5.i, %if.end.i157.i.while.body.i.i273_crit_edge ]
  %249 = phi i8 [ %253, %if.end5.i.i277.while.body.i.i273_crit_edge ], [ %248, %if.end.i157.i.while.body.i.i273_crit_edge ]
  %call.i.i271 = call i32 @hex_to_bin(i8 noundef zeroext %249) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i271)
  %cmp2.i.i272 = icmp slt i32 %call.i.i271, 0
  br i1 %cmp2.i.i272, label %while.body.i.i273.while.end.i.i278_crit_edge, label %if.end5.i.i277

while.body.i.i273.while.end.i.i278_crit_edge:     ; preds = %while.body.i.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i278

if.end5.i.i277:                                   ; preds = %while.body.i.i273
  %250 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %threadid.i334, align 4
  %shl.i.i274 = shl i32 %251, 4
  %or.i.i275 = or i32 %shl.i.i274, %call.i.i271
  store i32 %or.i.i275, ptr %threadid.i334, align 4
  %incdec.ptr6.i.i276 = getelementptr i8, ptr %ptr.6.i, i32 1
  %252 = ptrtoint ptr %incdec.ptr6.i.i276 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %incdec.ptr6.i.i276, align 1
  %tobool.not.i158.i = icmp eq i8 %253, 0
  br i1 %tobool.not.i158.i, label %if.end5.i.i277.while.end.i.i278_crit_edge, label %if.end5.i.i277.while.body.i.i273_crit_edge

if.end5.i.i277.while.body.i.i273_crit_edge:       ; preds = %if.end5.i.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i273

if.end5.i.i277.while.end.i.i278_crit_edge:        ; preds = %if.end5.i.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i278

while.end.i.i278:                                 ; preds = %if.end5.i.i277.while.end.i.i278_crit_edge, %while.body.i.i273.while.end.i.i278_crit_edge, %if.end.i157.i.while.end.i.i278_crit_edge
  br i1 %cmp.i.i267, label %if.then8.i.i, label %while.end.i.i278.kgdb_hex2long.exit.i_crit_edge

while.end.i.i278.kgdb_hex2long.exit.i_crit_edge:  ; preds = %while.end.i.i278
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2long.exit.i

if.then8.i.i:                                     ; preds = %while.end.i.i278
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %threadid.i334, align 4
  %sub.i.i279 = sub i32 0, %255
  store i32 %sub.i.i279, ptr %threadid.i334, align 4
  br label %kgdb_hex2long.exit.i

kgdb_hex2long.exit.i:                             ; preds = %if.then8.i.i, %while.end.i.i278.kgdb_hex2long.exit.i_crit_edge
  %256 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %threadid.i334, align 4
  %call90.i = call fastcc ptr @getthread(i32 noundef %257) #10
  %tobool91.not.i = icmp eq ptr %call90.i, null
  br i1 %tobool91.not.i, label %if.then92.i, label %if.end93.i

if.then92.i:                                      ; preds = %kgdb_hex2long.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %258 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %258, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %258, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %gdb_cmd_query.exit

if.end93.i:                                       ; preds = %kgdb_hex2long.exit.i
  %259 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %threadid.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp95.i = icmp sgt i32 %260, 0
  br i1 %cmp95.i, label %if.then97.i, label %if.else.i284

if.then97.i:                                      ; preds = %if.end93.i
  %call100.i = call fastcc ptr @getthread(i32 noundef %260) #10
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %call100.i, i32 0, i32 101
  %call.i159.i = call i32 @copy_from_kernel_nofault(ptr noundef getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 16), ptr noundef %comm.i, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %tobool.not.i160.i = icmp eq i32 %call.i159.i, 0
  br i1 %tobool.not.i160.i, label %while.body.i163.preheader.i, label %if.then97.i.gdb_cmd_query.exit_crit_edge

if.then97.i.gdb_cmd_query.exit_crit_edge:         ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

while.body.i163.preheader.i:                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  %261 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 16), align 4
  %conv.i.i.i280 = zext i8 %261 to i32
  %262 = lshr i32 %conv.i.i.i280, 4
  %arrayidx.i.i.i281 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %262
  %263 = ptrtoint ptr %arrayidx.i.i.i281 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx.i.i.i281, align 1
  store i8 %264, ptr @remcom_out_buffer, align 4
  %and2.i.i.i282 = and i32 %conv.i.i.i280, 15
  %arrayidx3.i.i.i283 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i282
  %265 = ptrtoint ptr %arrayidx3.i.i.i283 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx3.i.i.i283, align 1
  store i8 %266, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %267 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 17), align 1
  %conv.i.i.1.i = zext i8 %267 to i32
  %268 = lshr i32 %conv.i.i.1.i, 4
  %arrayidx.i.i.1.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %268
  %269 = ptrtoint ptr %arrayidx.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx.i.i.1.i, align 1
  store i8 %270, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  %and2.i.i.1.i = and i32 %conv.i.i.1.i, 15
  %arrayidx3.i.i.1.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.1.i
  %271 = ptrtoint ptr %arrayidx3.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx3.i.i.1.i, align 1
  store i8 %272, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  %273 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 18), align 2
  %conv.i.i.2.i = zext i8 %273 to i32
  %274 = lshr i32 %conv.i.i.2.i, 4
  %arrayidx.i.i.2.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %274
  %275 = ptrtoint ptr %arrayidx.i.i.2.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx.i.i.2.i, align 1
  store i8 %276, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 4), align 4
  %and2.i.i.2.i = and i32 %conv.i.i.2.i, 15
  %arrayidx3.i.i.2.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.2.i
  %277 = ptrtoint ptr %arrayidx3.i.i.2.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx3.i.i.2.i, align 1
  store i8 %278, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 5), align 1
  %279 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 19), align 1
  %conv.i.i.3.i = zext i8 %279 to i32
  %280 = lshr i32 %conv.i.i.3.i, 4
  %arrayidx.i.i.3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %280
  %281 = ptrtoint ptr %arrayidx.i.i.3.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx.i.i.3.i, align 1
  store i8 %282, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 6), align 2
  %and2.i.i.3.i = and i32 %conv.i.i.3.i, 15
  %arrayidx3.i.i.3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.3.i
  %283 = ptrtoint ptr %arrayidx3.i.i.3.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx3.i.i.3.i, align 1
  store i8 %284, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 7), align 1
  %285 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 20), align 4
  %conv.i.i.4.i = zext i8 %285 to i32
  %286 = lshr i32 %conv.i.i.4.i, 4
  %arrayidx.i.i.4.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %286
  %287 = ptrtoint ptr %arrayidx.i.i.4.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx.i.i.4.i, align 1
  store i8 %288, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 8), align 4
  %and2.i.i.4.i = and i32 %conv.i.i.4.i, 15
  %arrayidx3.i.i.4.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.4.i
  %289 = ptrtoint ptr %arrayidx3.i.i.4.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx3.i.i.4.i, align 1
  store i8 %290, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 9), align 1
  %291 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 21), align 1
  %conv.i.i.5.i = zext i8 %291 to i32
  %292 = lshr i32 %conv.i.i.5.i, 4
  %arrayidx.i.i.5.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %292
  %293 = ptrtoint ptr %arrayidx.i.i.5.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i.i.5.i, align 1
  store i8 %294, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 10), align 2
  %and2.i.i.5.i = and i32 %conv.i.i.5.i, 15
  %arrayidx3.i.i.5.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.5.i
  %295 = ptrtoint ptr %arrayidx3.i.i.5.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx3.i.i.5.i, align 1
  store i8 %296, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 11), align 1
  %297 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 22), align 2
  %conv.i.i.6.i = zext i8 %297 to i32
  %298 = lshr i32 %conv.i.i.6.i, 4
  %arrayidx.i.i.6.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %298
  %299 = ptrtoint ptr %arrayidx.i.i.6.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx.i.i.6.i, align 1
  store i8 %300, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 12), align 4
  %and2.i.i.6.i = and i32 %conv.i.i.6.i, 15
  %arrayidx3.i.i.6.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.6.i
  %301 = ptrtoint ptr %arrayidx3.i.i.6.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx3.i.i.6.i, align 1
  store i8 %302, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 13), align 1
  %303 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 23), align 1
  %conv.i.i.7.i = zext i8 %303 to i32
  %304 = lshr i32 %conv.i.i.7.i, 4
  %arrayidx.i.i.7.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %304
  %305 = ptrtoint ptr %arrayidx.i.i.7.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx.i.i.7.i, align 1
  store i8 %306, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 14), align 2
  %and2.i.i.7.i = and i32 %conv.i.i.7.i, 15
  %arrayidx3.i.i.7.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.7.i
  %307 = ptrtoint ptr %arrayidx3.i.i.7.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx3.i.i.7.i, align 1
  store i8 %308, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 15), align 1
  %309 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 24), align 4
  %conv.i.i.8.i = zext i8 %309 to i32
  %310 = lshr i32 %conv.i.i.8.i, 4
  %arrayidx.i.i.8.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %310
  %311 = ptrtoint ptr %arrayidx.i.i.8.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx.i.i.8.i, align 1
  store i8 %312, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 16), align 4
  %and2.i.i.8.i = and i32 %conv.i.i.8.i, 15
  %arrayidx3.i.i.8.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.8.i
  %313 = ptrtoint ptr %arrayidx3.i.i.8.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx3.i.i.8.i, align 1
  store i8 %314, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 17), align 1
  %315 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 25), align 1
  %conv.i.i.9.i = zext i8 %315 to i32
  %316 = lshr i32 %conv.i.i.9.i, 4
  %arrayidx.i.i.9.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %316
  %317 = ptrtoint ptr %arrayidx.i.i.9.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx.i.i.9.i, align 1
  store i8 %318, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 18), align 2
  %and2.i.i.9.i = and i32 %conv.i.i.9.i, 15
  %arrayidx3.i.i.9.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.9.i
  %319 = ptrtoint ptr %arrayidx3.i.i.9.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx3.i.i.9.i, align 1
  store i8 %320, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 19), align 1
  %321 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 26), align 2
  %conv.i.i.10.i = zext i8 %321 to i32
  %322 = lshr i32 %conv.i.i.10.i, 4
  %arrayidx.i.i.10.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %322
  %323 = ptrtoint ptr %arrayidx.i.i.10.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx.i.i.10.i, align 1
  store i8 %324, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 20), align 4
  %and2.i.i.10.i = and i32 %conv.i.i.10.i, 15
  %arrayidx3.i.i.10.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.10.i
  %325 = ptrtoint ptr %arrayidx3.i.i.10.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx3.i.i.10.i, align 1
  store i8 %326, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 21), align 1
  %327 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 27), align 1
  %conv.i.i.11.i = zext i8 %327 to i32
  %328 = lshr i32 %conv.i.i.11.i, 4
  %arrayidx.i.i.11.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %328
  %329 = ptrtoint ptr %arrayidx.i.i.11.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx.i.i.11.i, align 1
  store i8 %330, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 22), align 2
  %and2.i.i.11.i = and i32 %conv.i.i.11.i, 15
  %arrayidx3.i.i.11.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.11.i
  %331 = ptrtoint ptr %arrayidx3.i.i.11.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx3.i.i.11.i, align 1
  store i8 %332, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 23), align 1
  %333 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 28), align 4
  %conv.i.i.12.i = zext i8 %333 to i32
  %334 = lshr i32 %conv.i.i.12.i, 4
  %arrayidx.i.i.12.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %334
  %335 = ptrtoint ptr %arrayidx.i.i.12.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx.i.i.12.i, align 1
  store i8 %336, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 24), align 4
  %and2.i.i.12.i = and i32 %conv.i.i.12.i, 15
  %arrayidx3.i.i.12.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.12.i
  %337 = ptrtoint ptr %arrayidx3.i.i.12.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx3.i.i.12.i, align 1
  store i8 %338, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 25), align 1
  %339 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 29), align 1
  %conv.i.i.13.i = zext i8 %339 to i32
  %340 = lshr i32 %conv.i.i.13.i, 4
  %arrayidx.i.i.13.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %340
  %341 = ptrtoint ptr %arrayidx.i.i.13.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx.i.i.13.i, align 1
  store i8 %342, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 26), align 2
  %and2.i.i.13.i = and i32 %conv.i.i.13.i, 15
  %arrayidx3.i.i.13.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.13.i
  %343 = ptrtoint ptr %arrayidx3.i.i.13.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx3.i.i.13.i, align 1
  store i8 %344, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 27), align 1
  %345 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 30), align 2
  %conv.i.i.14.i = zext i8 %345 to i32
  %346 = lshr i32 %conv.i.i.14.i, 4
  %arrayidx.i.i.14.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %346
  %347 = ptrtoint ptr %arrayidx.i.i.14.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.i.i.14.i, align 1
  store i8 %348, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 28), align 4
  %and2.i.i.14.i = and i32 %conv.i.i.14.i, 15
  %arrayidx3.i.i.14.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.14.i
  %349 = ptrtoint ptr %arrayidx3.i.i.14.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx3.i.i.14.i, align 1
  store i8 %350, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 29), align 1
  %351 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 31), align 1
  %conv.i.i.15.i = zext i8 %351 to i32
  %352 = lshr i32 %conv.i.i.15.i, 4
  %arrayidx.i.i.15.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %352
  %353 = ptrtoint ptr %arrayidx.i.i.15.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i.i.15.i, align 1
  store i8 %354, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 30), align 2
  %and2.i.i.15.i = and i32 %conv.i.i.15.i, 15
  %arrayidx3.i.i.15.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.15.i
  %355 = ptrtoint ptr %arrayidx3.i.i.15.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx3.i.i.15.i, align 1
  store i8 %356, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 31), align 1
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 32), align 4
  br label %gdb_cmd_query.exit

if.else.i284:                                     ; preds = %if.end93.i
  %sub105.i = sub nsw i32 -2, %260
  %call106.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @gdb_cmd_query.tmpstr, ptr noundef nonnull @.str.10, i32 noundef %sub105.i) #10
  %call107.i = call i32 @strlen(ptr noundef nonnull @gdb_cmd_query.tmpstr) #14
  %add.ptr.i454 = getelementptr i8, ptr @remcom_out_buffer, i32 %call107.i
  %call.i455 = call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr.i454, ptr noundef nonnull @gdb_cmd_query.tmpstr, i32 noundef %call107.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455)
  %tobool.not.i456 = icmp eq i32 %call.i455, 0
  br i1 %tobool.not.i456, label %while.cond.preheader.i, label %if.else.i284.gdb_cmd_query.exit_crit_edge

if.else.i284.gdb_cmd_query.exit_crit_edge:        ; preds = %if.else.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

while.cond.preheader.i:                           ; preds = %if.else.i284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %cmp11.i = icmp sgt i32 %call107.i, 0
  br i1 %cmp11.i, label %while.cond.preheader.i.while.body.i464_crit_edge, label %while.cond.preheader.i.while.end.i465_crit_edge

while.cond.preheader.i.while.end.i465_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i465

while.cond.preheader.i.while.body.i464_crit_edge: ; preds = %while.cond.preheader.i
  br label %while.body.i464

while.body.i464:                                  ; preds = %while.body.i464.while.body.i464_crit_edge, %while.cond.preheader.i.while.body.i464_crit_edge
  %tmp.014.i = phi ptr [ %incdec.ptr.i462, %while.body.i464.while.body.i464_crit_edge ], [ %add.ptr.i454, %while.cond.preheader.i.while.body.i464_crit_edge ]
  %count.addr.013.i = phi i32 [ %dec.i, %while.body.i464.while.body.i464_crit_edge ], [ %call107.i, %while.cond.preheader.i.while.body.i464_crit_edge ]
  %buf.addr.012.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i464.while.body.i464_crit_edge ], [ @remcom_out_buffer, %while.cond.preheader.i.while.body.i464_crit_edge ]
  %357 = ptrtoint ptr %tmp.014.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %tmp.014.i, align 1
  %conv.i.i457 = zext i8 %358 to i32
  %359 = lshr i32 %conv.i.i457, 4
  %arrayidx.i.i458 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %359
  %360 = ptrtoint ptr %arrayidx.i.i458 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx.i.i458, align 1
  %incdec.ptr.i.i459 = getelementptr i8, ptr %buf.addr.012.i, i32 1
  %362 = ptrtoint ptr %buf.addr.012.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %361, ptr %buf.addr.012.i, align 1
  %and2.i.i460 = and i32 %conv.i.i457, 15
  %arrayidx3.i.i461 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i460
  %363 = ptrtoint ptr %arrayidx3.i.i461 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx3.i.i461, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %buf.addr.012.i, i32 2
  %365 = ptrtoint ptr %incdec.ptr.i.i459 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %364, ptr %incdec.ptr.i.i459, align 1
  %incdec.ptr.i462 = getelementptr i8, ptr %tmp.014.i, i32 1
  %dec.i = add nsw i32 %count.addr.013.i, -1
  %cmp.i463 = icmp ugt i32 %count.addr.013.i, 1
  br i1 %cmp.i463, label %while.body.i464.while.body.i464_crit_edge, label %while.body.i464.while.end.i465_crit_edge

while.body.i464.while.end.i465_crit_edge:         ; preds = %while.body.i464
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i465

while.body.i464.while.body.i464_crit_edge:        ; preds = %while.body.i464
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i464

while.end.i465:                                   ; preds = %while.body.i464.while.end.i465_crit_edge, %while.cond.preheader.i.while.end.i465_crit_edge
  %buf.addr.0.lcssa.i = phi ptr [ @remcom_out_buffer, %while.cond.preheader.i.while.end.i465_crit_edge ], [ %incdec.ptr4.i.i, %while.body.i464.while.end.i465_crit_edge ]
  %366 = ptrtoint ptr %buf.addr.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %buf.addr.0.lcssa.i, align 1
  br label %gdb_cmd_query.exit

sw.bb110.i:                                       ; preds = %sw.bb28
  %bcmp.i285 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @remcom_in_buffer, ptr noundef nonnull dereferenceable(6) @.str.11, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i285)
  %cmp112.i = icmp eq i32 %bcmp.i285, 0
  br i1 %cmp112.i, label %if.then114.i, label %sw.bb110.i.gdb_cmd_query.exit_crit_edge

sw.bb110.i.gdb_cmd_query.exit_crit_edge:          ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gdb_cmd_query.exit

if.then114.i:                                     ; preds = %sw.bb110.i
  %call115.i = call i32 @strlen(ptr noundef getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 6)) #14
  %367 = and i32 %call115.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %cmp117.not.i = icmp eq i32 %367, 0
  br i1 %cmp117.not.i, label %if.end121.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1160786176, ptr @remcom_out_buffer, align 4
  br label %gdb_cmd_query.exit

if.end121.i:                                      ; preds = %if.then114.i
  %mul.i.i286 = shl i32 %call115.i, 1
  %add.ptr.i.i287 = getelementptr i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 6), i32 %mul.i.i286
  %tmp_hex.016.i.i288 = getelementptr i8, ptr %add.ptr.i.i287, i32 -1
  %cmp.not17.i.i289 = icmp ult ptr %tmp_hex.016.i.i288, getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 6)
  br i1 %cmp.not17.i.i289, label %if.end121.i.kgdb_hex2mem.exit.i303_crit_edge, label %if.end121.i.while.body.i168.i_crit_edge

if.end121.i.while.body.i168.i_crit_edge:          ; preds = %if.end121.i
  br label %while.body.i168.i

if.end121.i.kgdb_hex2mem.exit.i303_crit_edge:     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit.i303

while.body.i168.i:                                ; preds = %while.body.i168.i.while.body.i168.i_crit_edge, %if.end121.i.while.body.i168.i_crit_edge
  %tmp_hex.020.i.i290 = phi ptr [ %tmp_hex.0.i.i298, %while.body.i168.i.while.body.i168.i_crit_edge ], [ %tmp_hex.016.i.i288, %if.end121.i.while.body.i168.i_crit_edge ]
  %add.ptr.pn19.i.i291 = phi ptr [ %incdec.ptr2.i.i293, %while.body.i168.i.while.body.i168.i_crit_edge ], [ %add.ptr.i.i287, %if.end121.i.while.body.i168.i_crit_edge ]
  %tmp_raw.018.i.i292 = phi ptr [ %incdec.ptr.i166.i, %while.body.i168.i.while.body.i168.i_crit_edge ], [ %add.ptr.i.i287, %if.end121.i.while.body.i168.i_crit_edge ]
  %incdec.ptr.i166.i = getelementptr i8, ptr %tmp_raw.018.i.i292, i32 -1
  %incdec.ptr2.i.i293 = getelementptr i8, ptr %add.ptr.pn19.i.i291, i32 -2
  %368 = ptrtoint ptr %tmp_hex.020.i.i290 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %tmp_hex.020.i.i290, align 1
  %call.i167.i = call i32 @hex_to_bin(i8 noundef zeroext %369) #10
  %conv.i.i294 = trunc i32 %call.i167.i to i8
  %370 = ptrtoint ptr %incdec.ptr.i166.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %conv.i.i294, ptr %incdec.ptr.i166.i, align 1
  %371 = ptrtoint ptr %incdec.ptr2.i.i293 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %incdec.ptr2.i.i293, align 1
  %call4.i.i295 = call i32 @hex_to_bin(i8 noundef zeroext %372) #10
  %373 = ptrtoint ptr %incdec.ptr.i166.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %incdec.ptr.i166.i, align 1
  %call4.tr.i.i296 = trunc i32 %call4.i.i295 to i8
  %375 = shl i8 %call4.tr.i.i296, 4
  %conv6.i.i297 = or i8 %375, %374
  store i8 %conv6.i.i297, ptr %incdec.ptr.i166.i, align 1
  %tmp_hex.0.i.i298 = getelementptr i8, ptr %add.ptr.pn19.i.i291, i32 -3
  %cmp.not.i.i299 = icmp ult ptr %tmp_hex.0.i.i298, getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 6)
  br i1 %cmp.not.i.i299, label %while.body.i168.i.kgdb_hex2mem.exit.i303_crit_edge, label %while.body.i168.i.while.body.i168.i_crit_edge

while.body.i168.i.while.body.i168.i_crit_edge:    ; preds = %while.body.i168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i168.i

while.body.i168.i.kgdb_hex2mem.exit.i303_crit_edge: ; preds = %while.body.i168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit.i303

kgdb_hex2mem.exit.i303:                           ; preds = %while.body.i168.i.kgdb_hex2mem.exit.i303_crit_edge, %if.end121.i.kgdb_hex2mem.exit.i303_crit_edge
  %tmp_raw.0.lcssa.i.i300 = phi ptr [ %add.ptr.i.i287, %if.end121.i.kgdb_hex2mem.exit.i303_crit_edge ], [ %incdec.ptr.i166.i, %while.body.i168.i.kgdb_hex2mem.exit.i303_crit_edge ]
  %call7.i.i301 = call i32 @copy_to_kernel_nofault(ptr noundef nonnull @remcom_out_buffer, ptr noundef %tmp_raw.0.lcssa.i.i300, i32 noundef %call115.i) #10
  %div.i = sdiv i32 %call115.i, 2
  %arrayidx.i302 = getelementptr [400 x i8], ptr @remcom_out_buffer, i32 0, i32 %div.i
  %376 = ptrtoint ptr %arrayidx.i302 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 0, ptr %arrayidx.i302, align 1
  %call124.i = call i32 @kdb_common_init_state(ptr noundef %ks) #10
  %call125.i = call i32 @kdb_parse(ptr noundef nonnull @remcom_out_buffer) #10
  %call126.i = call i32 @kdb_common_deinit_state() #10
  %377 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %gdb_cmd_query.exit

gdb_cmd_query.exit:                               ; preds = %kgdb_hex2mem.exit.i303, %if.then119.i, %sw.bb110.i.gdb_cmd_query.exit_crit_edge, %while.end.i465, %if.else.i284.gdb_cmd_query.exit_crit_edge, %while.body.i163.preheader.i, %if.then97.i.gdb_cmd_query.exit_crit_edge, %if.then92.i, %sw.bb81.i.gdb_cmd_query.exit_crit_edge, %shadow_pid.exit.i, %for.end70.i, %sw.bb.i.gdb_cmd_query.exit_crit_edge, %sw.bb28.gdb_cmd_query.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %thref.i) #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %get_packet.exit
  %378 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  %379 = zext i8 %378 to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %378, label %sw.bb29.sw.epilog_crit_edge [
    i8 103, label %sw.bb.i306
    i8 99, label %sw.bb7.i
  ]

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.i306:                                       ; preds = %sw.bb29
  %380 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %threadid.i334, align 4
  %381 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %381)
  %cmp.i.i305 = icmp eq i8 %381, 45
  br i1 %cmp.i.i305, label %if.then.i.i308, label %sw.bb.i306.if.end.i.i311_crit_edge

sw.bb.i306.if.end.i.i311_crit_edge:               ; preds = %sw.bb.i306
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i311

if.then.i.i308:                                   ; preds = %sw.bb.i306
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i307 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), align 1
  br label %if.end.i.i311

if.end.i.i311:                                    ; preds = %if.then.i.i308, %sw.bb.i306.if.end.i.i311_crit_edge
  %382 = phi i8 [ %.pr.i307, %if.then.i.i308 ], [ %381, %sw.bb.i306.if.end.i.i311_crit_edge ]
  %ptr.0.i309 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), %if.then.i.i308 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %sw.bb.i306.if.end.i.i311_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool.not20.i.i310 = icmp eq i8 %382, 0
  br i1 %tobool.not20.i.i310, label %if.end.i.i311.while.end.i.i321_crit_edge, label %if.end.i.i311.while.body.i.i315_crit_edge

if.end.i.i311.while.body.i.i315_crit_edge:        ; preds = %if.end.i.i311
  br label %while.body.i.i315

if.end.i.i311.while.end.i.i321_crit_edge:         ; preds = %if.end.i.i311
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i321

while.body.i.i315:                                ; preds = %if.end5.i.i320.while.body.i.i315_crit_edge, %if.end.i.i311.while.body.i.i315_crit_edge
  %ptr.1.i312 = phi ptr [ %incdec.ptr6.i.i318, %if.end5.i.i320.while.body.i.i315_crit_edge ], [ %ptr.0.i309, %if.end.i.i311.while.body.i.i315_crit_edge ]
  %383 = phi i8 [ %387, %if.end5.i.i320.while.body.i.i315_crit_edge ], [ %382, %if.end.i.i311.while.body.i.i315_crit_edge ]
  %call.i.i313 = call i32 @hex_to_bin(i8 noundef zeroext %383) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i313)
  %cmp2.i.i314 = icmp slt i32 %call.i.i313, 0
  br i1 %cmp2.i.i314, label %while.body.i.i315.while.end.i.i321_crit_edge, label %if.end5.i.i320

while.body.i.i315.while.end.i.i321_crit_edge:     ; preds = %while.body.i.i315
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i321

if.end5.i.i320:                                   ; preds = %while.body.i.i315
  %384 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %threadid.i334, align 4
  %shl.i.i316 = shl i32 %385, 4
  %or.i.i317 = or i32 %shl.i.i316, %call.i.i313
  store i32 %or.i.i317, ptr %threadid.i334, align 4
  %incdec.ptr6.i.i318 = getelementptr i8, ptr %ptr.1.i312, i32 1
  %386 = ptrtoint ptr %incdec.ptr6.i.i318 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %incdec.ptr6.i.i318, align 1
  %tobool.not.i.i319 = icmp eq i8 %387, 0
  br i1 %tobool.not.i.i319, label %if.end5.i.i320.while.end.i.i321_crit_edge, label %if.end5.i.i320.while.body.i.i315_crit_edge

if.end5.i.i320.while.body.i.i315_crit_edge:       ; preds = %if.end5.i.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i315

if.end5.i.i320.while.end.i.i321_crit_edge:        ; preds = %if.end5.i.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i321

while.end.i.i321:                                 ; preds = %if.end5.i.i320.while.end.i.i321_crit_edge, %while.body.i.i315.while.end.i.i321_crit_edge, %if.end.i.i311.while.end.i.i321_crit_edge
  br i1 %cmp.i.i305, label %if.then8.i.i323, label %while.end.i.i321.kgdb_hex2long.exit.i325_crit_edge

while.end.i.i321.kgdb_hex2long.exit.i325_crit_edge: ; preds = %while.end.i.i321
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2long.exit.i325

if.then8.i.i323:                                  ; preds = %while.end.i.i321
  call void @__sanitizer_cov_trace_pc() #12
  %388 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %threadid.i334, align 4
  %sub.i.i322 = sub i32 0, %389
  store i32 %sub.i.i322, ptr %threadid.i334, align 4
  br label %kgdb_hex2long.exit.i325

kgdb_hex2long.exit.i325:                          ; preds = %if.then8.i.i323, %while.end.i.i321.kgdb_hex2long.exit.i325_crit_edge
  %390 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %threadid.i334, align 4
  %call2.i = call fastcc ptr @getthread(i32 noundef %391) #10
  %tobool.not.i324 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i324, label %land.lhs.true.i327, label %kgdb_hex2long.exit.i325.if.end.i329_crit_edge

kgdb_hex2long.exit.i325.if.end.i329_crit_edge:    ; preds = %kgdb_hex2long.exit.i325
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i329

land.lhs.true.i327:                               ; preds = %kgdb_hex2long.exit.i325
  %392 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %threadid.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp.not.i326 = icmp eq i32 %393, 0
  br i1 %cmp.not.i326, label %land.lhs.true.i327.if.end.i329_crit_edge, label %if.then.i328

land.lhs.true.i327.if.end.i329_crit_edge:         ; preds = %land.lhs.true.i327
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i329

if.then.i328:                                     ; preds = %land.lhs.true.i327
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %394 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %394, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %394, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end.i329:                                      ; preds = %land.lhs.true.i327.if.end.i329_crit_edge, %kgdb_hex2long.exit.i325.if.end.i329_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_usethread to i32))
  store ptr %call2.i, ptr @kgdb_usethread, align 4
  %395 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %threadid.i334, align 4
  %397 = ptrtoint ptr %kgdb_usethreadid to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %kgdb_usethreadid, align 4
  %398 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %sw.bb29
  %399 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 0, ptr %threadid.i334, align 4
  %400 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %400)
  %cmp.i38.i = icmp eq i8 %400, 45
  br i1 %cmp.i38.i, label %if.then.i40.i, label %sw.bb7.i.if.end.i42.i_crit_edge

sw.bb7.i.if.end.i42.i_crit_edge:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i42.i

if.then.i40.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pr63.i = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), align 1
  br label %if.end.i42.i

if.end.i42.i:                                     ; preds = %if.then.i40.i, %sw.bb7.i.if.end.i42.i_crit_edge
  %401 = phi i8 [ %.pr63.i, %if.then.i40.i ], [ %400, %sw.bb7.i.if.end.i42.i_crit_edge ]
  %ptr.2.i330 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), %if.then.i40.i ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %sw.bb7.i.if.end.i42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool.not20.i41.i = icmp eq i8 %401, 0
  br i1 %tobool.not20.i41.i, label %if.end.i42.i.while.end.i54.i_crit_edge, label %if.end.i42.i.while.body.i46.i_crit_edge

if.end.i42.i.while.body.i46.i_crit_edge:          ; preds = %if.end.i42.i
  br label %while.body.i46.i

if.end.i42.i.while.end.i54.i_crit_edge:           ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i54.i

while.body.i46.i:                                 ; preds = %if.end5.i52.i.while.body.i46.i_crit_edge, %if.end.i42.i.while.body.i46.i_crit_edge
  %ptr.3.i331 = phi ptr [ %incdec.ptr6.i50.i, %if.end5.i52.i.while.body.i46.i_crit_edge ], [ %ptr.2.i330, %if.end.i42.i.while.body.i46.i_crit_edge ]
  %402 = phi i8 [ %406, %if.end5.i52.i.while.body.i46.i_crit_edge ], [ %401, %if.end.i42.i.while.body.i46.i_crit_edge ]
  %call.i44.i = call i32 @hex_to_bin(i8 noundef zeroext %402) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp2.i45.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp2.i45.i, label %while.body.i46.i.while.end.i54.i_crit_edge, label %if.end5.i52.i

while.body.i46.i.while.end.i54.i_crit_edge:       ; preds = %while.body.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i54.i

if.end5.i52.i:                                    ; preds = %while.body.i46.i
  %403 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %threadid.i334, align 4
  %shl.i47.i = shl i32 %404, 4
  %or.i48.i = or i32 %shl.i47.i, %call.i44.i
  store i32 %or.i48.i, ptr %threadid.i334, align 4
  %incdec.ptr6.i50.i = getelementptr i8, ptr %ptr.3.i331, i32 1
  %405 = ptrtoint ptr %incdec.ptr6.i50.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %incdec.ptr6.i50.i, align 1
  %tobool.not.i51.i332 = icmp eq i8 %406, 0
  br i1 %tobool.not.i51.i332, label %if.end5.i52.i.while.end.i54.i_crit_edge, label %if.end5.i52.i.while.body.i46.i_crit_edge

if.end5.i52.i.while.body.i46.i_crit_edge:         ; preds = %if.end5.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i46.i

if.end5.i52.i.while.end.i54.i_crit_edge:          ; preds = %if.end5.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i54.i

while.end.i54.i:                                  ; preds = %if.end5.i52.i.while.end.i54.i_crit_edge, %while.body.i46.i.while.end.i54.i_crit_edge, %if.end.i42.i.while.end.i54.i_crit_edge
  %407 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %threadid.i334, align 4
  br i1 %cmp.i38.i, label %if.then8.i56.i, label %while.end.i54.i.kgdb_hex2long.exit57.i_crit_edge

while.end.i54.i.kgdb_hex2long.exit57.i_crit_edge: ; preds = %while.end.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2long.exit57.i

if.then8.i56.i:                                   ; preds = %while.end.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i55.i = sub i32 0, %408
  %409 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %sub.i55.i, ptr %threadid.i334, align 4
  br label %kgdb_hex2long.exit57.i

kgdb_hex2long.exit57.i:                           ; preds = %if.then8.i56.i, %while.end.i54.i.kgdb_hex2long.exit57.i_crit_edge
  %410 = phi i32 [ %sub.i55.i, %if.then8.i56.i ], [ %408, %while.end.i54.i.kgdb_hex2long.exit57.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool11.not.i = icmp eq i32 %410, 0
  br i1 %tobool11.not.i, label %kgdb_hex2long.exit57.i.if.end23.i_crit_edge, label %if.else.i333

kgdb_hex2long.exit57.i.if.end23.i_crit_edge:      ; preds = %kgdb_hex2long.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.else.i333:                                     ; preds = %kgdb_hex2long.exit57.i
  %call15.i = call fastcc ptr @getthread(i32 noundef %410) #10
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %land.lhs.true17.i, label %if.else.i333.if.end23.i_crit_edge

if.else.i333.if.end23.i_crit_edge:                ; preds = %if.else.i333
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %if.else.i333
  %411 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %threadid.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp19.not.i = icmp eq i32 %412, 0
  br i1 %cmp19.not.i, label %land.lhs.true17.i.if.end23.i_crit_edge, label %if.then21.i

land.lhs.true17.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then21.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %413 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %413, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %413, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end23.i:                                       ; preds = %land.lhs.true17.i.if.end23.i_crit_edge, %if.else.i333.if.end23.i_crit_edge, %kgdb_hex2long.exit57.i.if.end23.i_crit_edge
  %storemerge.i = phi ptr [ null, %kgdb_hex2long.exit57.i.if.end23.i_crit_edge ], [ null, %land.lhs.true17.i.if.end23.i_crit_edge ], [ %call15.i, %if.else.i333.if.end23.i_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_contthread to i32))
  store ptr %storemerge.i, ptr @kgdb_contthread, align 4
  %414 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb30:                                          ; preds = %get_packet.exit
  %415 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 0, ptr %threadid.i334, align 4
  %416 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %416)
  %cmp.i.i335 = icmp eq i8 %416, 45
  br i1 %cmp.i.i335, label %if.then.i.i337, label %sw.bb30.if.end.i.i340_crit_edge

sw.bb30.if.end.i.i340_crit_edge:                  ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

if.then.i.i337:                                   ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i336 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  br label %if.end.i.i340

if.end.i.i340:                                    ; preds = %if.then.i.i337, %sw.bb30.if.end.i.i340_crit_edge
  %417 = phi i8 [ %.pr.i336, %if.then.i.i337 ], [ %416, %sw.bb30.if.end.i.i340_crit_edge ]
  %ptr.0.i338 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %if.then.i.i337 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), %sw.bb30.if.end.i.i340_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not20.i.i339 = icmp eq i8 %417, 0
  br i1 %tobool.not20.i.i339, label %if.end.i.i340.while.end.i.i350_crit_edge, label %if.end.i.i340.while.body.i.i344_crit_edge

if.end.i.i340.while.body.i.i344_crit_edge:        ; preds = %if.end.i.i340
  br label %while.body.i.i344

if.end.i.i340.while.end.i.i350_crit_edge:         ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i350

while.body.i.i344:                                ; preds = %if.end5.i.i349.while.body.i.i344_crit_edge, %if.end.i.i340.while.body.i.i344_crit_edge
  %ptr.1.i341 = phi ptr [ %incdec.ptr6.i.i347, %if.end5.i.i349.while.body.i.i344_crit_edge ], [ %ptr.0.i338, %if.end.i.i340.while.body.i.i344_crit_edge ]
  %418 = phi i8 [ %422, %if.end5.i.i349.while.body.i.i344_crit_edge ], [ %417, %if.end.i.i340.while.body.i.i344_crit_edge ]
  %call.i.i342 = call i32 @hex_to_bin(i8 noundef zeroext %418) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i342)
  %cmp2.i.i343 = icmp slt i32 %call.i.i342, 0
  br i1 %cmp2.i.i343, label %while.body.i.i344.while.end.i.i350_crit_edge, label %if.end5.i.i349

while.body.i.i344.while.end.i.i350_crit_edge:     ; preds = %while.body.i.i344
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i350

if.end5.i.i349:                                   ; preds = %while.body.i.i344
  %419 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %threadid.i334, align 4
  %shl.i.i345 = shl i32 %420, 4
  %or.i.i346 = or i32 %shl.i.i345, %call.i.i342
  store i32 %or.i.i346, ptr %threadid.i334, align 4
  %incdec.ptr6.i.i347 = getelementptr i8, ptr %ptr.1.i341, i32 1
  %421 = ptrtoint ptr %incdec.ptr6.i.i347 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %incdec.ptr6.i.i347, align 1
  %tobool.not.i.i348 = icmp eq i8 %422, 0
  br i1 %tobool.not.i.i348, label %if.end5.i.i349.while.end.i.i350_crit_edge, label %if.end5.i.i349.while.body.i.i344_crit_edge

if.end5.i.i349.while.body.i.i344_crit_edge:       ; preds = %if.end5.i.i349
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i344

if.end5.i.i349.while.end.i.i350_crit_edge:        ; preds = %if.end5.i.i349
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i350

while.end.i.i350:                                 ; preds = %if.end5.i.i349.while.end.i.i350_crit_edge, %while.body.i.i344.while.end.i.i350_crit_edge, %if.end.i.i340.while.end.i.i350_crit_edge
  br i1 %cmp.i.i335, label %if.then8.i.i352, label %while.end.i.i350.kgdb_hex2long.exit.i355_crit_edge

while.end.i.i350.kgdb_hex2long.exit.i355_crit_edge: ; preds = %while.end.i.i350
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2long.exit.i355

if.then8.i.i352:                                  ; preds = %while.end.i.i350
  call void @__sanitizer_cov_trace_pc() #12
  %423 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %threadid.i334, align 4
  %sub.i.i351 = sub i32 0, %424
  store i32 %sub.i.i351, ptr %threadid.i334, align 4
  br label %kgdb_hex2long.exit.i355

kgdb_hex2long.exit.i355:                          ; preds = %if.then8.i.i352, %while.end.i.i350.kgdb_hex2long.exit.i355_crit_edge
  %425 = ptrtoint ptr %threadid.i334 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %threadid.i334, align 4
  %call2.i353 = call fastcc ptr @getthread(i32 noundef %426) #10
  %tobool.not.i354 = icmp eq ptr %call2.i353, null
  br i1 %tobool.not.i354, label %if.else.i357, label %if.then.i356

if.then.i356:                                     ; preds = %kgdb_hex2long.exit.i355
  call void @__sanitizer_cov_trace_pc() #12
  %427 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

if.else.i357:                                     ; preds = %kgdb_hex2long.exit.i355
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %428 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %428, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %428, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %get_packet.exit.sw.bb31_crit_edge, %get_packet.exit.sw.bb31_crit_edge523
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 4) to i32))
  %429 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 4), align 4
  %tobool.not.i359 = icmp eq ptr %429, null
  br i1 %tobool.not.i359, label %sw.bb31.if.else.i363_crit_edge, label %land.lhs.true.i361

sw.bb31.if.else.i363_crit_edge:                   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i363

land.lhs.true.i361:                               ; preds = %sw.bb31
  %430 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %430)
  %cmp.i360 = icmp ugt i8 %430, 48
  br i1 %cmp.i360, label %if.then.i362, label %land.lhs.true.i361.if.else.i363_crit_edge

land.lhs.true.i361.if.else.i363_crit_edge:        ; preds = %land.lhs.true.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i363

if.then.i362:                                     ; preds = %land.lhs.true.i361
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %430)
  %cmp3.i = icmp ugt i8 %430, 52
  br i1 %cmp3.i, label %if.then.i362.sw.epilog_crit_edge, label %if.then.i362.if.end15.i_crit_edge

if.then.i362.if.end15.i_crit_edge:                ; preds = %if.then.i362
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i362.sw.epilog_crit_edge:                 ; preds = %if.then.i362
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.i363:                                     ; preds = %land.lhs.true.i361.if.else.i363_crit_edge, %sw.bb31.if.else.i363_crit_edge
  %431 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  %432 = and i8 %431, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %432)
  %switch.i = icmp eq i8 %432, 48
  br i1 %switch.i, label %if.else.i363.if.end15.i_crit_edge, label %if.else.i363.sw.epilog_crit_edge

if.else.i363.sw.epilog_crit_edge:                 ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.i363.if.end15.i_crit_edge:                ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i363.if.end15.i_crit_edge, %if.then.i362.if.end15.i_crit_edge
  %433 = phi i8 [ %431, %if.else.i363.if.end15.i_crit_edge ], [ %430, %if.then.i362.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %433)
  %cmp17.i = icmp eq i8 %433, 49
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end15.i.if.end22.i_crit_edge

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true19.i:                                ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1) to i32))
  %434 = load i32, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1), align 4
  %and.i364 = and i32 %434, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i364)
  %tobool20.not.i365 = icmp eq i32 %and.i364, 0
  br i1 %tobool20.not.i365, label %land.lhs.true19.i.sw.epilog_crit_edge, label %land.lhs.true19.i.if.end22.i_crit_edge

land.lhs.true19.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

land.lhs.true19.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end22.i:                                       ; preds = %land.lhs.true19.i.if.end22.i_crit_edge, %if.end15.i.if.end22.i_crit_edge
  %435 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %435)
  %cmp24.not.i = icmp eq i8 %435, 44
  br i1 %cmp24.not.i, label %if.end27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %436 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %436, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %436, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end27.i:                                       ; preds = %if.end22.i
  %437 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %437)
  %cmp.i.i366 = icmp eq i8 %437, 45
  br i1 %cmp.i.i366, label %if.then.i.i368, label %if.end27.i.if.end.i.i371_crit_edge

if.end27.i.if.end.i.i371_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i371

if.then.i.i368:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pr.i367 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 4), align 1
  br label %if.end.i.i371

if.end.i.i371:                                    ; preds = %if.then.i.i368, %if.end27.i.if.end.i.i371_crit_edge
  %438 = phi i8 [ %.pr.i367, %if.then.i.i368 ], [ %437, %if.end27.i.if.end.i.i371_crit_edge ]
  %ptr.0.i369 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 4), %if.then.i.i368 ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 3), %if.end27.i.if.end.i.i371_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %438)
  %tobool.not20.i.i370 = icmp eq i8 %438, 0
  br i1 %tobool.not20.i.i370, label %if.end.i.i371.if.then29.i_crit_edge, label %if.end.i.i371.while.body.i.i377_crit_edge

if.end.i.i371.while.body.i.i377_crit_edge:        ; preds = %if.end.i.i371
  br label %while.body.i.i377

if.end.i.i371.if.then29.i_crit_edge:              ; preds = %if.end.i.i371
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i

while.body.i.i377:                                ; preds = %if.end5.i.i383.while.body.i.i377_crit_edge, %if.end.i.i371.while.body.i.i377_crit_edge
  %ptr.1.i372 = phi ptr [ %incdec.ptr6.i.i381, %if.end5.i.i383.while.body.i.i377_crit_edge ], [ %ptr.0.i369, %if.end.i.i371.while.body.i.i377_crit_edge ]
  %addr.0.i373 = phi i32 [ %or.i.i379, %if.end5.i.i383.while.body.i.i377_crit_edge ], [ 0, %if.end.i.i371.while.body.i.i377_crit_edge ]
  %439 = phi i8 [ %441, %if.end5.i.i383.while.body.i.i377_crit_edge ], [ %438, %if.end.i.i371.while.body.i.i377_crit_edge ]
  %num.021.i.i374 = phi i32 [ %inc.i.i380, %if.end5.i.i383.while.body.i.i377_crit_edge ], [ 0, %if.end.i.i371.while.body.i.i377_crit_edge ]
  %call.i.i375 = call i32 @hex_to_bin(i8 noundef zeroext %439) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i375)
  %cmp2.i.i376 = icmp slt i32 %call.i.i375, 0
  br i1 %cmp2.i.i376, label %while.body.i.i377.while.end.i.i389_crit_edge, label %if.end5.i.i383

while.body.i.i377.while.end.i.i389_crit_edge:     ; preds = %while.body.i.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i389

if.end5.i.i383:                                   ; preds = %while.body.i.i377
  %shl.i.i378 = shl i32 %addr.0.i373, 4
  %or.i.i379 = or i32 %call.i.i375, %shl.i.i378
  %inc.i.i380 = add i32 %num.021.i.i374, 1
  %incdec.ptr6.i.i381 = getelementptr i8, ptr %ptr.1.i372, i32 1
  %440 = ptrtoint ptr %incdec.ptr6.i.i381 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %incdec.ptr6.i.i381, align 1
  %tobool.not.i.i382 = icmp eq i8 %441, 0
  br i1 %tobool.not.i.i382, label %if.end5.i.i383.while.end.i.i389_crit_edge, label %if.end5.i.i383.while.body.i.i377_crit_edge

if.end5.i.i383.while.body.i.i377_crit_edge:       ; preds = %if.end5.i.i383
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i377

if.end5.i.i383.while.end.i.i389_crit_edge:        ; preds = %if.end5.i.i383
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i389

while.end.i.i389:                                 ; preds = %if.end5.i.i383.while.end.i.i389_crit_edge, %while.body.i.i377.while.end.i.i389_crit_edge
  %ptr.2.i384 = phi ptr [ %ptr.1.i372, %while.body.i.i377.while.end.i.i389_crit_edge ], [ %incdec.ptr6.i.i381, %if.end5.i.i383.while.end.i.i389_crit_edge ]
  %addr.1.i385 = phi i32 [ %addr.0.i373, %while.body.i.i377.while.end.i.i389_crit_edge ], [ %or.i.i379, %if.end5.i.i383.while.end.i.i389_crit_edge ]
  %num.0.lcssa.i.i386 = phi i32 [ %num.021.i.i374, %while.body.i.i377.while.end.i.i389_crit_edge ], [ %inc.i.i380, %if.end5.i.i383.while.end.i.i389_crit_edge ]
  %sub.i.i387 = sub i32 0, %addr.1.i385
  %spec.select.i388 = select i1 %cmp.i.i366, i32 %sub.i.i387, i32 %addr.1.i385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i.i386)
  %tobool28.not.i = icmp eq i32 %num.0.lcssa.i.i386, 0
  br i1 %tobool28.not.i, label %while.end.i.i389.if.then29.i_crit_edge, label %if.end30.i

while.end.i.i389.if.then29.i_crit_edge:           ; preds = %while.end.i.i389
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i

if.then29.i:                                      ; preds = %while.end.i.i389.if.then29.i_crit_edge, %if.end.i.i371.if.then29.i_crit_edge
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %442 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %442, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %442, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end30.i:                                       ; preds = %while.end.i.i389
  %443 = ptrtoint ptr %ptr.2.i384 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %ptr.2.i384, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %444)
  %cmp33.not.i390 = icmp eq i8 %444, 44
  br i1 %cmp33.not.i390, label %lor.lhs.false.i392, label %if.end30.i.if.then37.i_crit_edge

if.end30.i.if.then37.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

lor.lhs.false.i392:                               ; preds = %if.end30.i
  %incdec.ptr31.i = getelementptr i8, ptr %ptr.2.i384, i32 1
  %445 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %incdec.ptr31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %446)
  %cmp.i1.i391 = icmp eq i8 %446, 45
  br i1 %cmp.i1.i391, label %if.then.i3.i395, label %lor.lhs.false.i392.if.end.i5.i398_crit_edge

lor.lhs.false.i392.if.end.i5.i398_crit_edge:      ; preds = %lor.lhs.false.i392
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i5.i398

if.then.i3.i395:                                  ; preds = %lor.lhs.false.i392
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i2.i393 = getelementptr i8, ptr %ptr.2.i384, i32 2
  %447 = ptrtoint ptr %incdec.ptr.i2.i393 to i32
  call void @__asan_load1_noabort(i32 %447)
  %.pr37.i394 = load i8, ptr %incdec.ptr.i2.i393, align 1
  br label %if.end.i5.i398

if.end.i5.i398:                                   ; preds = %if.then.i3.i395, %lor.lhs.false.i392.if.end.i5.i398_crit_edge
  %448 = phi i8 [ %.pr37.i394, %if.then.i3.i395 ], [ %446, %lor.lhs.false.i392.if.end.i5.i398_crit_edge ]
  %ptr.3.i396 = phi ptr [ %incdec.ptr.i2.i393, %if.then.i3.i395 ], [ %incdec.ptr31.i, %lor.lhs.false.i392.if.end.i5.i398_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool.not20.i4.i397 = icmp eq i8 %448, 0
  br i1 %tobool.not20.i4.i397, label %if.end.i5.i398.if.then37.i_crit_edge, label %if.end.i5.i398.while.body.i9.i404_crit_edge

if.end.i5.i398.while.body.i9.i404_crit_edge:      ; preds = %if.end.i5.i398
  br label %while.body.i9.i404

if.end.i5.i398.if.then37.i_crit_edge:             ; preds = %if.end.i5.i398
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

while.body.i9.i404:                               ; preds = %if.end5.i15.i410.while.body.i9.i404_crit_edge, %if.end.i5.i398.while.body.i9.i404_crit_edge
  %ptr.4.i399 = phi ptr [ %incdec.ptr6.i13.i408, %if.end5.i15.i410.while.body.i9.i404_crit_edge ], [ %ptr.3.i396, %if.end.i5.i398.while.body.i9.i404_crit_edge ]
  %length.0.i400 = phi i32 [ %or.i11.i406, %if.end5.i15.i410.while.body.i9.i404_crit_edge ], [ 0, %if.end.i5.i398.while.body.i9.i404_crit_edge ]
  %449 = phi i8 [ %451, %if.end5.i15.i410.while.body.i9.i404_crit_edge ], [ %448, %if.end.i5.i398.while.body.i9.i404_crit_edge ]
  %num.021.i6.i401 = phi i32 [ %inc.i12.i407, %if.end5.i15.i410.while.body.i9.i404_crit_edge ], [ 0, %if.end.i5.i398.while.body.i9.i404_crit_edge ]
  %call.i7.i402 = call i32 @hex_to_bin(i8 noundef zeroext %449) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i402)
  %cmp2.i8.i403 = icmp slt i32 %call.i7.i402, 0
  br i1 %cmp2.i8.i403, label %while.body.i9.i404.while.end.i17.i414_crit_edge, label %if.end5.i15.i410

while.body.i9.i404.while.end.i17.i414_crit_edge:  ; preds = %while.body.i9.i404
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i17.i414

if.end5.i15.i410:                                 ; preds = %while.body.i9.i404
  %shl.i10.i405 = shl i32 %length.0.i400, 4
  %or.i11.i406 = or i32 %call.i7.i402, %shl.i10.i405
  %inc.i12.i407 = add i32 %num.021.i6.i401, 1
  %incdec.ptr6.i13.i408 = getelementptr i8, ptr %ptr.4.i399, i32 1
  %450 = ptrtoint ptr %incdec.ptr6.i13.i408 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %incdec.ptr6.i13.i408, align 1
  %tobool.not.i14.i409 = icmp eq i8 %451, 0
  br i1 %tobool.not.i14.i409, label %if.end5.i15.i410.while.end.i17.i414_crit_edge, label %if.end5.i15.i410.while.body.i9.i404_crit_edge

if.end5.i15.i410.while.body.i9.i404_crit_edge:    ; preds = %if.end5.i15.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i9.i404

if.end5.i15.i410.while.end.i17.i414_crit_edge:    ; preds = %if.end5.i15.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i17.i414

while.end.i17.i414:                               ; preds = %if.end5.i15.i410.while.end.i17.i414_crit_edge, %while.body.i9.i404.while.end.i17.i414_crit_edge
  %length.1.i411 = phi i32 [ %length.0.i400, %while.body.i9.i404.while.end.i17.i414_crit_edge ], [ %or.i11.i406, %if.end5.i15.i410.while.end.i17.i414_crit_edge ]
  %num.0.lcssa.i16.i412 = phi i32 [ %num.021.i6.i401, %while.body.i9.i404.while.end.i17.i414_crit_edge ], [ %inc.i12.i407, %if.end5.i15.i410.while.end.i17.i414_crit_edge ]
  %sub.i18.i413 = sub i32 0, %length.1.i411
  %spec.select42.i = select i1 %cmp.i1.i391, i32 %sub.i18.i413, i32 %length.1.i411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i16.i412)
  %tobool36.not.i = icmp eq i32 %num.0.lcssa.i16.i412, 0
  br i1 %tobool36.not.i, label %while.end.i17.i414.if.then37.i_crit_edge, label %if.end38.i

while.end.i17.i414.if.then37.i_crit_edge:         ; preds = %while.end.i17.i414
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

if.then37.i:                                      ; preds = %while.end.i17.i414.if.then37.i_crit_edge, %if.end.i5.i398.if.then37.i_crit_edge, %if.end30.i.if.then37.i_crit_edge
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %452 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %452, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %452, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

if.end38.i:                                       ; preds = %while.end.i17.i414
  %453 = load i8, ptr @remcom_in_buffer, align 1
  %454 = zext i8 %453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %454, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %453, label %if.end38.i.if.then79.i_crit_edge [
    i8 90, label %land.lhs.true42.i
    i8 122, label %land.lhs.true52.i
  ]

if.end38.i.if.then79.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i

land.lhs.true42.i:                                ; preds = %if.end38.i
  %455 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %455)
  %cmp44.i = icmp eq i8 %455, 48
  br i1 %cmp44.i, label %if.then46.i415, label %if.then62.i

if.then46.i415:                                   ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = call i32 @dbg_set_sw_break(i32 noundef %spec.select.i388) #10
  br label %if.end76.i

land.lhs.true52.i:                                ; preds = %if.end38.i
  %456 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %456)
  %cmp54.i416 = icmp eq i8 %456, 48
  br i1 %cmp54.i416, label %if.then56.i, label %if.then69.i

if.then56.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #12
  %call57.i = call i32 @dbg_remove_sw_break(i32 noundef %spec.select.i388) #10
  br label %if.end76.i

if.then62.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv63.i = zext i8 %455 to i32
  %sub.i = add nsw i32 %conv63.i, -48
  %call64.i = call i32 %429(i32 noundef %spec.select.i388, i32 noundef %spec.select42.i, i32 noundef %sub.i) #10
  br label %if.end76.i

if.then69.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 5) to i32))
  %457 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 5), align 4
  %conv70.i = zext i8 %456 to i32
  %sub71.i = add nsw i32 %conv70.i, -48
  %call72.i = call i32 %457(i32 noundef %spec.select.i388, i32 noundef %spec.select42.i, i32 noundef %sub71.i) #10
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then69.i, %if.then62.i, %if.then56.i, %if.then46.i415
  %error.0.i = phi i32 [ %call47.i, %if.then46.i415 ], [ %call57.i, %if.then56.i ], [ %call64.i, %if.then62.i ], [ %call72.i, %if.then69.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %cmp77.i = icmp eq i32 %error.0.i, 0
  br i1 %cmp77.i, label %if.end76.i.if.then79.i_crit_edge, label %if.else81.i

if.end76.i.if.then79.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.i

if.then79.i:                                      ; preds = %if.end76.i.if.then79.i_crit_edge, %if.end38.i.if.then79.i_crit_edge
  %458 = call ptr @memcpy(ptr @remcom_out_buffer, ptr @.str.1, i32 3)
  br label %sw.epilog

if.else81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i21.i = sub i32 0, %error.0.i
  store i8 69, ptr @remcom_out_buffer, align 4
  %sub.i21.i.frozen = freeze i32 %sub.i21.i
  %div.i.i417 = sdiv i32 %sub.i21.i.frozen, 10
  %arrayidx1.i.i418 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %div.i.i417
  %459 = ptrtoint ptr %arrayidx1.i.i418 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx1.i.i418, align 1
  store i8 %460, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  %461 = mul i32 %div.i.i417, 10
  %rem.i.i419.decomposed = sub i32 %sub.i21.i.frozen, %461
  %arrayidx3.i.i420 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %rem.i.i419.decomposed
  %462 = ptrtoint ptr %arrayidx3.i.i420 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx3.i.i420, align 1
  store i8 %463, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %get_packet.exit
  %464 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %cmp = icmp eq i8 %464, 0
  br i1 %cmp, label %gdb_cmd_detachkill.exit434, label %sw.bb32.sw.bb37_crit_edge

sw.bb32.sw.bb37_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

gdb_cmd_detachkill.exit434:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i422 = call i32 @dbg_remove_all_break() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  br label %cleanup

sw.bb37thread-pre-split:                          ; preds = %get_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  %.pr = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb37thread-pre-split, %sw.bb32.sw.bb37_crit_edge
  %465 = phi i8 [ %.pr, %sw.bb37thread-pre-split ], [ %464, %sw.bb32.sw.bb37_crit_edge ]
  %466 = zext i8 %465 to i64
  call void @__sanitizer_cov_trace_switch(i64 %466, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %465, label %sw.bb37.if.else14.i_crit_edge [
    i8 48, label %land.lhs.true.i436
    i8 49, label %land.lhs.true8.i
  ]

sw.bb37.if.else14.i_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

land.lhs.true.i436:                               ; preds = %sw.bb37
  %467 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %467)
  %cmp3.i435 = icmp eq i8 %467, 57
  br i1 %cmp3.i435, label %if.then.i437, label %land.lhs.true.i436.if.else14.i_crit_edge

land.lhs.true.i436.if.else14.i_crit_edge:         ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

if.then.i437:                                     ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #12
  %468 = ptrtoint ptr %pass_exception to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 1, ptr %pass_exception, align 4
  br label %if.end42

land.lhs.true8.i:                                 ; preds = %sw.bb37
  %469 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %469)
  %cmp10.i438 = icmp eq i8 %469, 53
  br i1 %cmp10.i438, label %gdb_cmd_exception_pass.exit.thread, label %land.lhs.true8.i.if.else14.i_crit_edge

land.lhs.true8.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else14.i

gdb_cmd_exception_pass.exit.thread:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  %470 = ptrtoint ptr %pass_exception to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 1, ptr %pass_exception, align 4
  store i8 68, ptr @remcom_in_buffer, align 1
  %call.i439 = call i32 @dbg_remove_all_break() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  br label %default_handle

if.else14.i:                                      ; preds = %land.lhs.true8.i.if.else14.i_crit_edge, %land.lhs.true.i436.if.else14.i_crit_edge, %sw.bb37.if.else14.i_crit_edge
  store i8 79, ptr @gdbmsgbuf, align 1
  br label %for.body.i.i449

for.body.i.i449:                                  ; preds = %for.body.i.i449.for.body.i.i449_crit_edge, %if.else14.i
  %i.020.i.i = phi i32 [ %inc.i.i447, %for.body.i.i449.for.body.i.i449_crit_edge ], [ 0, %if.else14.i ]
  %bufptr.019.i.i = phi ptr [ %incdec.ptr4.i.i.i446, %for.body.i.i449.for.body.i.i449_crit_edge ], [ getelementptr inbounds ([401 x i8], ptr @gdbmsgbuf, i32 0, i32 1), %if.else14.i ]
  %arrayidx.i.i440 = getelementptr i8, ptr @.str.15, i32 %i.020.i.i
  %471 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx.i.i440, align 1
  %conv.i.i.i441 = zext i8 %472 to i32
  %473 = lshr i32 %conv.i.i.i441, 4
  %arrayidx.i.i.i442 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %473
  %474 = ptrtoint ptr %arrayidx.i.i.i442 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx.i.i.i442, align 1
  %incdec.ptr.i.i.i443 = getelementptr i8, ptr %bufptr.019.i.i, i32 1
  %476 = ptrtoint ptr %bufptr.019.i.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %475, ptr %bufptr.019.i.i, align 1
  %and2.i.i.i444 = and i32 %conv.i.i.i441, 15
  %arrayidx3.i.i.i445 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i444
  %477 = ptrtoint ptr %arrayidx3.i.i.i445 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx3.i.i.i445, align 1
  %incdec.ptr4.i.i.i446 = getelementptr i8, ptr %bufptr.019.i.i, i32 2
  %479 = ptrtoint ptr %incdec.ptr.i.i.i443 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %478, ptr %incdec.ptr.i.i.i443, align 1
  %inc.i.i447 = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i448 = icmp eq i32 %inc.i.i447, 105
  br i1 %exitcond.not.i.i448, label %for.end.i.i450, label %for.body.i.i449.for.body.i.i449_crit_edge

for.body.i.i449.for.body.i.i449_crit_edge:        ; preds = %for.body.i.i449
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i449

for.end.i.i450:                                   ; preds = %for.body.i.i449
  call void @__sanitizer_cov_trace_pc() #12
  %480 = ptrtoint ptr %incdec.ptr4.i.i.i446 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 0, ptr %incdec.ptr4.i.i.i446, align 1
  call fastcc void @put_packet(ptr noundef nonnull @gdbmsgbuf) #10
  br label %if.end42

if.end42:                                         ; preds = %for.end.i.i450, %if.then.i437
  store i8 99, ptr @remcom_in_buffer, align 1
  br label %sw.bb47

sw.bb47:                                          ; preds = %if.end42, %get_packet.exit.sw.bb47_crit_edge, %get_packet.exit.sw.bb47_crit_edge524
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_contthread to i32))
  %481 = load ptr, ptr @kgdb_contthread, align 4
  %tobool48.not = icmp eq ptr %481, null
  br i1 %tobool48.not, label %sw.bb47.default_handle_crit_edge, label %land.lhs.true

sw.bb47.default_handle_crit_edge:                 ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #12
  br label %default_handle

land.lhs.true:                                    ; preds = %sw.bb47
  %482 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i453 = and i32 %482, -16384
  %483 = inttoptr i32 %and.i453 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %483, i32 0, i32 2
  %484 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %task50, align 8
  %cmp51.not = icmp eq ptr %481, %485
  br i1 %cmp51.not, label %land.lhs.true.default_handle_crit_edge, label %if.then53

land.lhs.true.default_handle_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %default_handle

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  store i8 69, ptr @remcom_out_buffer, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2) to i32))
  %486 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @hex_asc, i32 0, i32 2), align 1
  store i8 %486, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 1), align 1
  store i8 %486, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([400 x i8], ptr @remcom_out_buffer, i32 0, i32 3), align 1
  br label %sw.epilog

default_handle:                                   ; preds = %land.lhs.true.default_handle_crit_edge, %sw.bb47.default_handle_crit_edge, %gdb_cmd_exception_pass.exit.thread, %gdb_cmd_reboot.exit, %if.else6.i, %if.end.i249, %get_packet.exit.default_handle_crit_edge
  %487 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %ks, align 4
  %489 = ptrtoint ptr %signo.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %signo.i, align 4
  %491 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %err_code, align 4
  %493 = ptrtoint ptr %linux_regs.i211 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %linux_regs.i211, align 4
  %call56 = call i32 @kgdb_arch_handle_exception(i32 noundef %488, i32 noundef %490, i32 noundef %492, ptr noundef nonnull @remcom_in_buffer, ptr noundef nonnull @remcom_out_buffer, ptr noundef %494) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, -1
  br i1 %cmp57, label %default_handle.if.then66_crit_edge, label %lor.lhs.false

default_handle.if.then66_crit_edge:               ; preds = %default_handle
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false:                                    ; preds = %default_handle
  %495 = load i8, ptr @remcom_in_buffer, align 1
  %496 = zext i8 %495 to i64
  call void @__sanitizer_cov_trace_switch(i64 %496, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %495, label %lor.lhs.false.sw.epilog_crit_edge [
    i8 68, label %lor.lhs.false.if.then66_crit_edge
    i8 107, label %lor.lhs.false.if.then66_crit_edge526
  ]

lor.lhs.false.if.then66_crit_edge526:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false.if.then66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then66:                                        ; preds = %lor.lhs.false.if.then66_crit_edge, %lor.lhs.false.if.then66_crit_edge526, %default_handle.if.then66_crit_edge
  %497 = ptrtoint ptr %pass_exception to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %pass_exception, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %498)
  %tobool69.not = icmp ne i32 %498, 0
  %spec.store.select = zext i1 %tobool69.not to i32
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %if.then53, %if.else81.i, %if.then79.i, %if.then37.i, %if.then29.i, %if.then26.i, %land.lhs.true19.i.sw.epilog_crit_edge, %if.else.i363.sw.epilog_crit_edge, %if.then.i362.sw.epilog_crit_edge, %if.else.i357, %if.then.i356, %if.end23.i, %if.then21.i, %if.end.i329, %if.then.i328, %sw.bb29.sw.epilog_crit_edge, %gdb_cmd_query.exit, %sw.bb23.sw.epilog_crit_edge, %if.else.i238, %if.then.i237, %kgdb_hex2mem.exit.i229, %if.then.i212, %cleanup.sink.split.i, %for.end.i.i185.sw.epilog_crit_edge, %if.else.i157, %if.then.i156, %if.else.i151, %if.then8.i, %kgdb_mem2hex.exit.i.sw.epilog_crit_edge, %kgdb_mem2hex.exit.thread40.i, %gdb_regs_to_pt_regs.exit.i, %if.then.i, %while.end.i.i, %sw.bb15.sw.epilog_crit_edge, %sw.bb
  call fastcc void @put_packet(ptr noundef nonnull @remcom_out_buffer)
  br label %while.cond

cleanup:                                          ; preds = %if.then66, %gdb_cmd_detachkill.exit434
  %retval.0 = phi i32 [ %spec.store.select, %if.then66 ], [ -12345, %gdb_cmd_detachkill.exit434 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pack_threadid(ptr noundef writeonly %pkt, ptr noundef readonly %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %id, i32 4
  %cmp16 = icmp ugt ptr %add.ptr, %id
  br i1 %cmp16, label %lor.lhs.false, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %lor.lhs.false.1, label %if.end.thread

if.end.thread:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  %conv.i = zext i8 %3 to i32
  %4 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %pkt, i32 1
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pkt, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %pkt, i32 2
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %incdec.ptr.i, align 1
  %incdec.ptr25 = getelementptr i8, ptr %id, i32 1
  br label %if.end.1.thread

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr i8, ptr %id, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1.not.1 = icmp eq i8 %12, 0
  br i1 %cmp1.not.1, label %lor.lhs.false.2, label %lor.lhs.false.1.if.end.1.thread_crit_edge

lor.lhs.false.1.if.end.1.thread_crit_edge:        ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.thread

if.end.1.thread:                                  ; preds = %lor.lhs.false.1.if.end.1.thread_crit_edge, %if.end.thread
  %incdec.ptr27 = phi ptr [ %incdec.ptr25, %if.end.thread ], [ %incdec.ptr, %lor.lhs.false.1.if.end.1.thread_crit_edge ]
  %pkt.addr.126 = phi ptr [ %incdec.ptr4.i, %if.end.thread ], [ %pkt, %lor.lhs.false.1.if.end.1.thread_crit_edge ]
  %13 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr27, align 1
  %conv.i.1 = zext i8 %14 to i32
  %15 = lshr i32 %conv.i.1, 4
  %arrayidx.i.1 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.1, align 1
  %incdec.ptr.i.1 = getelementptr i8, ptr %pkt.addr.126, i32 1
  %18 = ptrtoint ptr %pkt.addr.126 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %pkt.addr.126, align 1
  %and2.i.1 = and i32 %conv.i.1, 15
  %arrayidx3.i.1 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.1
  %19 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx3.i.1, align 1
  %incdec.ptr4.i.1 = getelementptr i8, ptr %pkt.addr.126, i32 2
  %21 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %incdec.ptr.i.1, align 1
  %incdec.ptr.130 = getelementptr i8, ptr %id, i32 2
  br label %if.end.2.thread

lor.lhs.false.2:                                  ; preds = %lor.lhs.false.1
  %incdec.ptr.1 = getelementptr i8, ptr %id, i32 2
  %22 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1.not.2 = icmp eq i8 %23, 0
  br i1 %cmp1.not.2, label %lor.lhs.false.3, label %lor.lhs.false.2.if.end.2.thread_crit_edge

lor.lhs.false.2.if.end.2.thread_crit_edge:        ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.thread

if.end.2.thread:                                  ; preds = %lor.lhs.false.2.if.end.2.thread_crit_edge, %if.end.1.thread
  %incdec.ptr.132 = phi ptr [ %incdec.ptr.130, %if.end.1.thread ], [ %incdec.ptr.1, %lor.lhs.false.2.if.end.2.thread_crit_edge ]
  %pkt.addr.1.131 = phi ptr [ %incdec.ptr4.i.1, %if.end.1.thread ], [ %pkt, %lor.lhs.false.2.if.end.2.thread_crit_edge ]
  %24 = ptrtoint ptr %incdec.ptr.132 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.132, align 1
  %conv.i.2 = zext i8 %25 to i32
  %26 = lshr i32 %conv.i.2, 4
  %arrayidx.i.2 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.2, align 1
  %incdec.ptr.i.2 = getelementptr i8, ptr %pkt.addr.1.131, i32 1
  %29 = ptrtoint ptr %pkt.addr.1.131 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pkt.addr.1.131, align 1
  %and2.i.2 = and i32 %conv.i.2, 15
  %arrayidx3.i.2 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.2
  %30 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.i.2, align 1
  %incdec.ptr4.i.2 = getelementptr i8, ptr %pkt.addr.1.131, i32 2
  %32 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %incdec.ptr.i.2, align 1
  %incdec.ptr.235 = getelementptr i8, ptr %id, i32 3
  br label %while.end

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.2
  %incdec.ptr.2 = getelementptr i8, ptr %id, i32 3
  %33 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1.not.3 = icmp eq i8 %34, 0
  br i1 %cmp1.not.3, label %lor.lhs.false.3.if.then4_crit_edge, label %lor.lhs.false.3.while.end_crit_edge

lor.lhs.false.3.while.end_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.lhs.false.3.if.then4_crit_edge:               ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

while.end:                                        ; preds = %lor.lhs.false.3.while.end_crit_edge, %if.end.2.thread
  %incdec.ptr.237 = phi ptr [ %incdec.ptr.235, %if.end.2.thread ], [ %incdec.ptr.2, %lor.lhs.false.3.while.end_crit_edge ]
  %pkt.addr.1.236 = phi ptr [ %incdec.ptr4.i.2, %if.end.2.thread ], [ %pkt, %lor.lhs.false.3.while.end_crit_edge ]
  %35 = ptrtoint ptr %incdec.ptr.237 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.237, align 1
  %conv.i.3 = zext i8 %36 to i32
  %37 = lshr i32 %conv.i.3, 4
  %arrayidx.i.3 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.3, align 1
  %incdec.ptr.i.3 = getelementptr i8, ptr %pkt.addr.1.236, i32 1
  %40 = ptrtoint ptr %pkt.addr.1.236 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %pkt.addr.1.236, align 1
  %and2.i.3 = and i32 %conv.i.3, 15
  %arrayidx3.i.3 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.3
  %41 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.i.3, align 1
  %43 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %incdec.ptr.i.3, align 1
  br label %if.end6

if.then4:                                         ; preds = %lor.lhs.false.3.if.then4_crit_edge, %entry.if.then4_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @hex_asc to i32))
  %44 = load i8, ptr @hex_asc, align 1
  %incdec.ptr.i14 = getelementptr i8, ptr %pkt, i32 1
  %45 = ptrtoint ptr %pkt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %pkt, align 1
  %46 = ptrtoint ptr %incdec.ptr.i14 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %incdec.ptr.i14, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.end
  %pkt.pn = phi ptr [ %pkt, %if.then4 ], [ %pkt.addr.1.236, %while.end ]
  %pkt.addr.2 = getelementptr i8, ptr %pkt.pn, i32 2
  ret ptr %pkt.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_arch_handle_exception(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gdbstub_state(ptr nocapture noundef readonly %ks, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %1, label %sw.epilog [
    i8 101, label %sw.bb
    i8 115, label %entry.sw.bb1_crit_edge
    i8 99, label %entry.sw.bb1_crit_edge11
    i8 36, label %sw.bb3
  ]

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ks, align 4
  %signo = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 1
  %5 = ptrtoint ptr %signo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %signo, align 4
  %err_code = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 2
  %7 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err_code, align 4
  %linux_regs = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 8
  %9 = ptrtoint ptr %linux_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %linux_regs, align 4
  %call = tail call i32 @kgdb_arch_handle_exception(i32 noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef nonnull @remcom_in_buffer, ptr noundef nonnull @remcom_out_buffer, ptr noundef %10) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11
  %call2 = tail call i32 @strscpy(ptr noundef nonnull @remcom_in_buffer, ptr noundef %cmd, i32 noundef 400) #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @strscpy(ptr noundef nonnull @remcom_in_buffer, ptr noundef %cmd, i32 noundef 400) #10
  %call5 = tail call i32 @strlen(ptr noundef nonnull @remcom_in_buffer) #13
  store i32 %call5, ptr @gdbstub_use_prev_in_buf, align 4
  store i32 0, ptr @gdbstub_prev_in_buf_pos, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %11 = load ptr, ptr @dbg_io_ops, align 4
  %write_char = getelementptr inbounds %struct.kgdb_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_char to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_char, align 4
  tail call void %13(i8 noundef zeroext 43) #10
  tail call fastcc void @put_packet(ptr noundef nonnull @remcom_out_buffer)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gdbstub_exit(i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  store i32 0, ptr @kgdb_connected, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %1 = load ptr, ptr @dbg_io_ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_kdb_mode to i32))
  %2 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %and = lshr i32 %status, 4
  %3 = and i32 %and, 15
  %arrayidx5 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %and7 = and i32 %status, 15
  %arrayidx8 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and7
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %write_char = getelementptr inbounds %struct.kgdb_io, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %write_char to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_char, align 4
  tail call void %9(i8 noundef zeroext 36) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %10 = load ptr, ptr @dbg_io_ops, align 4
  %write_char13 = getelementptr inbounds %struct.kgdb_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_char13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_char13, align 4
  tail call void %12(i8 noundef zeroext 87) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %13 = load ptr, ptr @dbg_io_ops, align 4
  %write_char13.1 = getelementptr inbounds %struct.kgdb_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_char13.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_char13.1, align 4
  tail call void %15(i8 noundef zeroext %5) #10
  %16 = add i8 %5, 87
  %phi.cast.1 = zext i8 %16 to i32
  %conv.2 = zext i8 %7 to i32
  %add.2 = add nuw nsw i32 %phi.cast.1, %conv.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %17 = load ptr, ptr @dbg_io_ops, align 4
  %write_char13.2 = getelementptr inbounds %struct.kgdb_io, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_char13.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_char13.2, align 4
  tail call void %19(i8 noundef zeroext %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %20 = load ptr, ptr @dbg_io_ops, align 4
  %write_char14 = getelementptr inbounds %struct.kgdb_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_char14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_char14, align 4
  tail call void %22(i8 noundef zeroext 35) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %23 = load ptr, ptr @dbg_io_ops, align 4
  %write_char15 = getelementptr inbounds %struct.kgdb_io, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_char15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_char15, align 4
  %phi.cast.2 = lshr i32 %add.2, 4
  %26 = and i32 %phi.cast.2, 15
  %arrayidx19 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19, align 1
  tail call void %25(i8 noundef zeroext %28) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %29 = load ptr, ptr @dbg_io_ops, align 4
  %write_char20 = getelementptr inbounds %struct.kgdb_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_char20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_char20, align 4
  %and22 = and i32 %add.2, 15
  %arrayidx23 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and22
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23, align 1
  tail call void %31(i8 noundef zeroext %33) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %34 = load ptr, ptr @dbg_io_ops, align 4
  %flush = getelementptr inbounds %struct.kgdb_io, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flush, align 4
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %if.end4.cleanup_crit_edge, label %if.then25

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %36() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_remove_all_break() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdb_get_regs_helper(ptr nocapture noundef readonly %ks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_usethread to i32))
  %0 = load ptr, ptr @kgdb_usethread, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %1)
  %cmp22 = icmp ult i32 %call21, %1
  br i1 %cmp22, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.else12_crit_edge

for.cond.preheader.if.else12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cpu = getelementptr inbounds %struct.kgdb_state, ptr %ks, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %3
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %if.end9

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call24 = phi i32 [ %call, %if.end.for.body_crit_edge ], [ %call21, %for.cond.preheader.for.body_crit_edge ]
  %local_debuggerinfo.023 = phi ptr [ %local_debuggerinfo.1, %if.end.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %task4 = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %call24, i32 1
  %8 = ptrtoint ptr %task4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task4, align 4
  %cmp5 = icmp eq ptr %0, %9
  br i1 %cmp5, label %if.then6, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3 = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %call24
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body.if.end_crit_edge
  %local_debuggerinfo.1 = phi ptr [ %11, %if.then6 ], [ %local_debuggerinfo.023, %for.body.if.end_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %call24, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.then
  %thread.0 = phi ptr [ %5, %if.then ], [ %0, %if.end.if.end9_crit_edge ]
  %local_debuggerinfo.2 = phi ptr [ %7, %if.then ], [ %local_debuggerinfo.1, %if.end.if.end9_crit_edge ]
  %tobool10.not = icmp eq ptr %local_debuggerinfo.2, null
  br i1 %tobool10.not, label %if.end9.if.else12_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.if.else12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %idx.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr @gdb_regs, i32 %idx.06.i
  %call.i = tail call ptr @dbg_get_reg(i32 noundef %i.05.i, ptr noundef %add.ptr.i, ptr noundef nonnull %local_debuggerinfo.2) #10
  %size.i = getelementptr [0 x %struct.dbg_reg_def_t], ptr @dbg_reg_def, i32 0, i32 %i.05.i, i32 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %add.i = add i32 %13, %idx.06.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.body.i.if.end13_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else12:                                        ; preds = %if.end9.if.else12_crit_edge, %for.cond.preheader.if.else12_crit_edge
  %thread.028 = phi ptr [ %thread.0, %if.end9.if.else12_crit_edge ], [ %0, %for.cond.preheader.if.else12_crit_edge ]
  tail call void @sleeping_thread_to_gdb_regs(ptr noundef nonnull @gdb_regs, ptr noundef %thread.028) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.body.i.if.end13_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sleeping_thread_to_gdb_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_mem_msg(i32 noundef %binary) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %0)
  %cmp.i = icmp eq i8 %0, 45
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.pr = load i8, ptr getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %1 = phi i8 [ %.pr, %if.then.i ], [ %0, %entry.if.end.i_crit_edge ]
  %ptr.0 = phi ptr [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 2), %if.then.i ], [ getelementptr inbounds ([400 x i8], ptr @remcom_in_buffer, i32 0, i32 1), %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not20.i = icmp eq i8 %1, 0
  br i1 %tobool.not20.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %ptr.1 = phi ptr [ %incdec.ptr6.i, %if.end5.i.while.body.i_crit_edge ], [ %ptr.0, %if.end.i.while.body.i_crit_edge ]
  %addr.0 = phi i32 [ %or.i, %if.end5.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %2 = phi i8 [ %4, %if.end5.i.while.body.i_crit_edge ], [ %1, %if.end.i.while.body.i_crit_edge ]
  %num.021.i = phi i32 [ %inc.i, %if.end5.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %while.body.i.while.end.i_crit_edge, label %if.end5.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end5.i:                                        ; preds = %while.body.i
  %shl.i = shl i32 %addr.0, 4
  %or.i = or i32 %call.i, %shl.i
  %inc.i = add i32 %num.021.i, 1
  %incdec.ptr6.i = getelementptr i8, ptr %ptr.1, i32 1
  %3 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr6.i, align 1
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end5.i.while.end.i_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end5.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %ptr.2 = phi ptr [ %ptr.1, %while.body.i.while.end.i_crit_edge ], [ %incdec.ptr6.i, %if.end5.i.while.end.i_crit_edge ]
  %addr.1 = phi i32 [ %addr.0, %while.body.i.while.end.i_crit_edge ], [ %or.i, %if.end5.i.while.end.i_crit_edge ]
  %num.0.lcssa.i = phi i32 [ %num.021.i, %while.body.i.while.end.i_crit_edge ], [ %inc.i, %if.end5.i.while.end.i_crit_edge ]
  %sub.i = sub i32 0, %addr.1
  %spec.select = select i1 %cmp.i, i32 %sub.i, i32 %addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i)
  %cmp = icmp sgt i32 %num.0.lcssa.i, 0
  br i1 %cmp, label %land.lhs.true, label %while.end.i.cleanup_crit_edge

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end.i
  %5 = ptrtoint ptr %ptr.2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %6)
  %cmp1 = icmp eq i8 %6, 44
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %incdec.ptr = getelementptr i8, ptr %ptr.2, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %8)
  %cmp.i23 = icmp eq i8 %8, 45
  br i1 %cmp.i23, label %if.then.i25, label %land.lhs.true3.if.end.i27_crit_edge

land.lhs.true3.if.end.i27_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i27

if.then.i25:                                      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i24 = getelementptr i8, ptr %ptr.2, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr70 = load i8, ptr %incdec.ptr.i24, align 1
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i25, %land.lhs.true3.if.end.i27_crit_edge
  %10 = phi i8 [ %.pr70, %if.then.i25 ], [ %8, %land.lhs.true3.if.end.i27_crit_edge ]
  %ptr.3 = phi ptr [ %incdec.ptr.i24, %if.then.i25 ], [ %incdec.ptr, %land.lhs.true3.if.end.i27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not20.i26 = icmp eq i8 %10, 0
  br i1 %tobool.not20.i26, label %if.end.i27.cleanup_crit_edge, label %if.end.i27.while.body.i31_crit_edge

if.end.i27.while.body.i31_crit_edge:              ; preds = %if.end.i27
  br label %while.body.i31

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i31:                                   ; preds = %if.end5.i37.while.body.i31_crit_edge, %if.end.i27.while.body.i31_crit_edge
  %ptr.4 = phi ptr [ %incdec.ptr6.i35, %if.end5.i37.while.body.i31_crit_edge ], [ %ptr.3, %if.end.i27.while.body.i31_crit_edge ]
  %length.0 = phi i32 [ %or.i33, %if.end5.i37.while.body.i31_crit_edge ], [ 0, %if.end.i27.while.body.i31_crit_edge ]
  %11 = phi i8 [ %13, %if.end5.i37.while.body.i31_crit_edge ], [ %10, %if.end.i27.while.body.i31_crit_edge ]
  %num.021.i28 = phi i32 [ %inc.i34, %if.end5.i37.while.body.i31_crit_edge ], [ 0, %if.end.i27.while.body.i31_crit_edge ]
  %call.i29 = tail call i32 @hex_to_bin(i8 noundef zeroext %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp2.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp2.i30, label %while.body.i31.while.end.i39_crit_edge, label %if.end5.i37

while.body.i31.while.end.i39_crit_edge:           ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i39

if.end5.i37:                                      ; preds = %while.body.i31
  %shl.i32 = shl i32 %length.0, 4
  %or.i33 = or i32 %call.i29, %shl.i32
  %inc.i34 = add i32 %num.021.i28, 1
  %incdec.ptr6.i35 = getelementptr i8, ptr %ptr.4, i32 1
  %12 = ptrtoint ptr %incdec.ptr6.i35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr6.i35, align 1
  %tobool.not.i36 = icmp eq i8 %13, 0
  br i1 %tobool.not.i36, label %if.end5.i37.while.end.i39_crit_edge, label %if.end5.i37.while.body.i31_crit_edge

if.end5.i37.while.body.i31_crit_edge:             ; preds = %if.end5.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i31

if.end5.i37.while.end.i39_crit_edge:              ; preds = %if.end5.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i39

while.end.i39:                                    ; preds = %if.end5.i37.while.end.i39_crit_edge, %while.body.i31.while.end.i39_crit_edge
  %ptr.5 = phi ptr [ %ptr.4, %while.body.i31.while.end.i39_crit_edge ], [ %incdec.ptr6.i35, %if.end5.i37.while.end.i39_crit_edge ]
  %length.1 = phi i32 [ %length.0, %while.body.i31.while.end.i39_crit_edge ], [ %or.i33, %if.end5.i37.while.end.i39_crit_edge ]
  %num.0.lcssa.i38 = phi i32 [ %num.021.i28, %while.body.i31.while.end.i39_crit_edge ], [ %inc.i34, %if.end5.i37.while.end.i39_crit_edge ]
  %sub.i40 = sub i32 0, %length.1
  %spec.select71 = select i1 %cmp.i23, i32 %sub.i40, i32 %length.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i38)
  %cmp5 = icmp sgt i32 %num.0.lcssa.i38, 0
  br i1 %cmp5, label %land.lhs.true7, label %while.end.i39.cleanup_crit_edge

while.end.i39.cleanup_crit_edge:                  ; preds = %while.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true7:                                   ; preds = %while.end.i39
  %incdec.ptr8 = getelementptr i8, ptr %ptr.5, i32 1
  %14 = ptrtoint ptr %ptr.5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %15)
  %cmp10 = icmp eq i8 %15, 58
  br i1 %cmp10, label %if.then, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %binary)
  %tobool.not = icmp eq i32 %binary, 0
  %16 = inttoptr i32 %spec.select to ptr
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select71)
  %cmp18.i = icmp sgt i32 %spec.select71, 0
  br i1 %cmp18.i, label %if.then12.while.body.i45_crit_edge, label %if.then12.kgdb_ebin2mem.exit_crit_edge

if.then12.kgdb_ebin2mem.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_ebin2mem.exit

if.then12.while.body.i45_crit_edge:               ; preds = %if.then12
  br label %while.body.i45

while.body.i45:                                   ; preds = %if.end.i48.while.body.i45_crit_edge, %if.then12.while.body.i45_crit_edge
  %size.020.i = phi i32 [ %inc.i47, %if.end.i48.while.body.i45_crit_edge ], [ 0, %if.then12.while.body.i45_crit_edge ]
  %buf.addr.019.i = phi ptr [ %buf.addr.1.i, %if.end.i48.while.body.i45_crit_edge ], [ %incdec.ptr8, %if.then12.while.body.i45_crit_edge ]
  %incdec.ptr.i43 = getelementptr i8, ptr %buf.addr.019.i, i32 1
  %17 = ptrtoint ptr %buf.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.addr.019.i, align 1
  %arrayidx.i = getelementptr i8, ptr %incdec.ptr8, i32 %size.020.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %18)
  %cmp2.i44 = icmp eq i8 %18, 125
  br i1 %cmp2.i44, label %if.then.i46, label %while.body.i45.if.end.i48_crit_edge

while.body.i45.if.end.i48_crit_edge:              ; preds = %while.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i48

if.then.i46:                                      ; preds = %while.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr4.i = getelementptr i8, ptr %buf.addr.019.i, i32 2
  %20 = ptrtoint ptr %incdec.ptr.i43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i43, align 1
  %22 = xor i8 %21, 32
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.i, align 1
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i46, %while.body.i45.if.end.i48_crit_edge
  %buf.addr.1.i = phi ptr [ %incdec.ptr4.i, %if.then.i46 ], [ %incdec.ptr.i43, %while.body.i45.if.end.i48_crit_edge ]
  %inc.i47 = add nuw nsw i32 %size.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i47, %spec.select71
  br i1 %exitcond.not.i, label %if.end.i48.kgdb_ebin2mem.exit_crit_edge, label %if.end.i48.while.body.i45_crit_edge

if.end.i48.while.body.i45_crit_edge:              ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i45

if.end.i48.kgdb_ebin2mem.exit_crit_edge:          ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_ebin2mem.exit

kgdb_ebin2mem.exit:                               ; preds = %if.end.i48.kgdb_ebin2mem.exit_crit_edge, %if.then12.kgdb_ebin2mem.exit_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %if.then12.kgdb_ebin2mem.exit_crit_edge ], [ %spec.select71, %if.end.i48.kgdb_ebin2mem.exit_crit_edge ]
  %call.i49 = tail call i32 @copy_to_kernel_nofault(ptr noundef %16, ptr noundef %incdec.ptr8, i32 noundef %size.0.lcssa.i) #10
  br label %if.end

if.else:                                          ; preds = %if.then
  %mul.i = shl i32 %spec.select71, 1
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr8, i32 %mul.i
  %tmp_hex.016.i = getelementptr i8, ptr %add.ptr.i, i32 -1
  %cmp.not17.i = icmp ult ptr %tmp_hex.016.i, %incdec.ptr8
  br i1 %cmp.not17.i, label %if.else.kgdb_hex2mem.exit_crit_edge, label %if.else.while.body.i53_crit_edge

if.else.while.body.i53_crit_edge:                 ; preds = %if.else
  br label %while.body.i53

if.else.kgdb_hex2mem.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit

while.body.i53:                                   ; preds = %while.body.i53.while.body.i53_crit_edge, %if.else.while.body.i53_crit_edge
  %tmp_hex.020.i = phi ptr [ %tmp_hex.0.i, %while.body.i53.while.body.i53_crit_edge ], [ %tmp_hex.016.i, %if.else.while.body.i53_crit_edge ]
  %add.ptr.pn19.i = phi ptr [ %incdec.ptr2.i, %while.body.i53.while.body.i53_crit_edge ], [ %add.ptr.i, %if.else.while.body.i53_crit_edge ]
  %tmp_raw.018.i = phi ptr [ %incdec.ptr.i51, %while.body.i53.while.body.i53_crit_edge ], [ %add.ptr.i, %if.else.while.body.i53_crit_edge ]
  %incdec.ptr.i51 = getelementptr i8, ptr %tmp_raw.018.i, i32 -1
  %incdec.ptr2.i = getelementptr i8, ptr %add.ptr.pn19.i, i32 -2
  %24 = ptrtoint ptr %tmp_hex.020.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmp_hex.020.i, align 1
  %call.i52 = tail call i32 @hex_to_bin(i8 noundef zeroext %25) #10
  %conv.i = trunc i32 %call.i52 to i8
  %26 = ptrtoint ptr %incdec.ptr.i51 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %incdec.ptr.i51, align 1
  %27 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr2.i, align 1
  %call4.i = tail call i32 @hex_to_bin(i8 noundef zeroext %28) #10
  %29 = ptrtoint ptr %incdec.ptr.i51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i51, align 1
  %call4.tr.i = trunc i32 %call4.i to i8
  %31 = shl i8 %call4.tr.i, 4
  %conv6.i = or i8 %31, %30
  store i8 %conv6.i, ptr %incdec.ptr.i51, align 1
  %tmp_hex.0.i = getelementptr i8, ptr %add.ptr.pn19.i, i32 -3
  %cmp.not.i = icmp ult ptr %tmp_hex.0.i, %incdec.ptr8
  br i1 %cmp.not.i, label %while.body.i53.kgdb_hex2mem.exit_crit_edge, label %while.body.i53.while.body.i53_crit_edge

while.body.i53.while.body.i53_crit_edge:          ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i53

while.body.i53.kgdb_hex2mem.exit_crit_edge:       ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_hex2mem.exit

kgdb_hex2mem.exit:                                ; preds = %while.body.i53.kgdb_hex2mem.exit_crit_edge, %if.else.kgdb_hex2mem.exit_crit_edge
  %tmp_raw.0.lcssa.i = phi ptr [ %add.ptr.i, %if.else.kgdb_hex2mem.exit_crit_edge ], [ %incdec.ptr.i51, %while.body.i53.kgdb_hex2mem.exit_crit_edge ]
  %call7.i = tail call i32 @copy_to_kernel_nofault(ptr noundef %16, ptr noundef %tmp_raw.0.lcssa.i, i32 noundef %spec.select71) #10
  br label %if.end

if.end:                                           ; preds = %kgdb_hex2mem.exit, %kgdb_ebin2mem.exit
  %err.0 = phi i32 [ %call.i49, %kgdb_ebin2mem.exit ], [ %call7.i, %kgdb_hex2mem.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool15.not = icmp eq i32 %err.0, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add = add i32 %spec.select71, %spec.select
  tail call void %32(i32 noundef %spec.select, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %while.end.i39.cleanup_crit_edge, %if.end.i27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %err.0, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true7.cleanup_crit_edge ], [ -22, %while.end.i39.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %while.end.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @getthread(i32 noundef %tid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %tid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %tid, label %entry.if.end_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 -1, label %entry.if.then_crit_edge1
  ]

entry.if.then_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %1 = load volatile i32, ptr @kgdb_active, align 4
  %sub2 = sub i32 -2, %1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tid.addr.0 = phi i32 [ %sub2, %if.then ], [ %tid, %entry.if.end_crit_edge ]
  %2 = add i32 %tid.addr.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %sub7 = sub nuw nsw i32 -2, %tid.addr.0
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %sub7, i32 1
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call ptr @idle_task(i32 noundef %sub7) #10
  br label %return

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tid.addr.0)
  %cmp17 = icmp slt i32 %tid.addr.0, 1
  br i1 %cmp17, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  tail call void @dump_stack() #15
  br label %return

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call ptr @find_task_by_pid_ns(i32 noundef %tid.addr.0, ptr noundef nonnull @init_pid_ns) #10
  br label %return

return:                                           ; preds = %if.end20, %do.end, %if.else, %if.then5.return_crit_edge
  %retval.0 = phi ptr [ %call15, %if.else ], [ null, %do.end ], [ %call21, %if.end20 ], [ %5, %if.then5.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_common_init_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_parse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_common_deinit_state() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idle_task(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_set_sw_break(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_remove_sw_break(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/debug/gdbstub.c", i32 973, i32 29}
!2 = !{ptr @remcom_in_buffer, !3, !"remcom_in_buffer", i1 false, i1 false}
!3 = !{!"../kernel/debug/gdbstub.c", i32 42, i32 15}
!4 = !{ptr @remcom_out_buffer, !5, !"remcom_out_buffer", i1 false, i1 false}
!5 = !{!"../kernel/debug/gdbstub.c", i32 43, i32 15}
!6 = !{ptr @gdbstub_use_prev_in_buf, !7, !"gdbstub_use_prev_in_buf", i1 false, i1 false}
!7 = !{!"../kernel/debug/gdbstub.c", i32 44, i32 14}
!8 = !{ptr @gdbstub_prev_in_buf_pos, !9, !"gdbstub_prev_in_buf_pos", i1 false, i1 false}
!9 = !{!"../kernel/debug/gdbstub.c", i32 45, i32 14}
!10 = !{ptr @gdbmsgbuf, !11, !"gdbmsgbuf", i1 false, i1 false}
!11 = !{!"../kernel/debug/gdbstub.c", i32 193, i32 13}
!12 = !{ptr @gdb_regs, !13, !"gdb_regs", i1 false, i1 false}
!13 = !{!"../kernel/debug/gdbstub.c", i32 48, i32 23}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/debug/gdbstub.c", i32 550, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/debug/gdbstub.c", i32 677, i32 31}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/debug/gdbstub.c", i32 678, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gdb_cmd_reboot._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @gdb_cmd_reboot._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/debug/gdbstub.c", i32 708, i32 36}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../kernel/debug/gdbstub.c", i32 725, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/debug/gdbstub.c", i32 742, i32 29}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/debug/gdbstub.c", i32 748, i32 36}
!33 = !{ptr @gdb_cmd_query.tmpstr, !34, !"tmpstr", i1 false, i1 false}
!34 = !{!"../kernel/debug/gdbstub.c", i32 763, i32 16}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/debug/gdbstub.c", i32 765, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/debug/gdbstub.c", i32 772, i32 33}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/debug/gdbstub.c", i32 776, i32 31}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/debug/gdbstub.c", i32 444, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @getthread._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @getthread._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/debug/gdbstub.c", i32 941, i32 21}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
