; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/swp_emulate.c_pt.bc'
source_filename = "../arch/arm/kernel/swp_emulate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.25 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_swp_emulate__266_258_swp_emulation_init7 = internal global ptr @swp_emulation_init, section ".initcall7.init", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpu/swp_emulation\00", [46 x i8] zeroinitializer }, align 32
@swp_emulation_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015Registering SWP/SWPB emulation handler\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"swp_emulation_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/kernel/swp_emulate.c\00", [34 x i8] zeroinitializer }, align 32
@swp_emulation_init._entry_ptr = internal global ptr @swp_emulation_init._entry, section ".printk_index", align 4
@swp_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 263196656, i32 16777360, i32 16777279, i32 16, ptr @swp_handler }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Emulated SWP:\09\09%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@swpcounter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Emulated SWPB:\09\09%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@swpbcounter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Aborted SWP{B}:\09\09%lu\0A\00", [42 x i8] zeroinitializer }, align 32
@abtcounter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@previous_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Last process:\09\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@swp_handler.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swp_emulate\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swp_handler\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\22%s\22 (%ld) uses deprecated SWP{B} instruction\0A\00", [49 x i8] zeroinitializer }, align 32
@swp_handler.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"addr in r%d->0x%08x, dest is r%d, source in r%d->0x%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@swp_handler.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SWP{B} emulation: access to %p not allowed!\0A\00", [51 x i8] zeroinitializer }, align 32
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@emulate_swpX.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emulate_swpX\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SWP instruction on unaligned pointer!\0A\00", [57 x i8] zeroinitializer }, align 32
@set_segfault.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_segfault\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SWP{B} emulation: access caused memory abort!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Illegal memory access\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967282]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 247, i32 7 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 252, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"swp_hook\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 229, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 84, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"swpcounter\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 76, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 85, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"swpbcounter\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 77, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 86, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"abtcounter\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 78, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"previous_pid\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 79, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 88, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 182, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 193, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 199, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 123, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 107, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [33 x i8] c"../arch/arm/kernel/swp_emulate.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 108, i32 17 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_swp_emulate__266_258_swp_emulation_init7, ptr @swp_emulation_init._entry, ptr @swp_emulation_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @swp_hook, ptr @.str.4, ptr @swpcounter, ptr @.str.5, ptr @swpbcounter, ptr @.str.6, ptr @abtcounter, ptr @previous_pid, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swp_emulation_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swp_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swpcounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swpbcounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abtcounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @previous_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @swp_emulation_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_architecture() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call)
  %cmp = icmp slt i32 %call, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @proc_status_show, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  tail call void @register_undef_hook(ptr noundef nonnull @swp_hook) #7
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_status_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @swpcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %0) #7
  %1 = load i32, ptr @swpbcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %1) #7
  %2 = load i32, ptr @abtcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %2) #7
  %3 = load i32, ptr @previous_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swp_handler(ptr noundef %regs, i32 noundef %instr) #3 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 8), ptr blockaddress(@swp_handler, %if.then.i)) #7
          to label %perf_sw_event.exit [label %if.then.i], !srcloc !59

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %1 to i64
  tail call void @__perf_sw_event(i32 noundef 8, i64 noundef 1, ptr noundef %regs, i64 noundef %conv) #7
  br label %perf_sw_event.exit

perf_sw_event.exit:                               ; preds = %if.then.i, %entry
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call = tail call i32 @arm_check_condition(i32 noundef %instr, i32 noundef %3) #7
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
    i32 2, label %perf_sw_event.exit.cleanup_crit_edge
  ]

perf_sw_event.exit.cleanup_crit_edge:             ; preds = %perf_sw_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %perf_sw_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 4
  store i32 %add, ptr %arrayidx, align 4
  br label %cleanup

sw.default:                                       ; preds = %perf_sw_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %perf_sw_event.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %13 = load i32, ptr @previous_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp.not = icmp eq i32 %12, %13
  br i1 %cmp.not, label %sw.epilog.if.end20_crit_edge, label %do.body

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body:                                          ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swp_handler.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@swp_handler, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid16, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swp_handler.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.10, ptr noundef %comm, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid19, align 8
  store i32 %21, ptr @previous_pid, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end, %sw.epilog.if.end20_crit_edge
  %and = lshr i32 %instr, 16
  %shr = and i32 %and, 15
  %arrayidx22 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %shr
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %and24 = and i32 %instr, 15
  %arrayidx26 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and24
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data, align 4
  %and27 = lshr i32 %instr, 12
  %shr28 = and i32 %and27, 15
  %and29 = and i32 %instr, 4194304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swp_handler.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@swp_handler, %if.then42)) #7
          to label %do.end49 [label %if.then42], !srcloc !59

if.then42:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swp_handler.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %23, i32 noundef %shr28, i32 noundef %and24, i32 noundef %25) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %if.end20
  %and50 = and i32 %23, -4
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(i32 %and50, i32 4, i32 -1226833920) #12, !srcloc !60
  %asmresult = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp53 = icmp eq i32 %asmresult, 0
  br i1 %cmp53, label %if.else, label %do.body56

do.body56:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swp_handler.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@swp_handler, %if.end73.thread)) #7
          to label %if.end73 [label %if.end73.thread], !srcloc !59

if.end73.thread:                                  ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %28 = inttoptr i32 %23 to ptr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swp_handler.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.12, ptr noundef %28) #7
  br label %if.then85

if.else:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call fastcc i32 @emulate_swpX(i32 noundef %23, ptr noundef nonnull %data, i32 noundef %and29)
  br label %if.end73

if.end73:                                         ; preds = %if.else, %do.body56
  %res.0 = phi i32 [ %call72, %if.else ], [ -14, %do.body56 ]
  %29 = zext i32 %res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %res.0, label %if.end73.cleanup_crit_edge [
    i32 0, label %if.then76
    i32 -14, label %if.end73.if.then85_crit_edge
  ]

if.end73.if.then85_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add79 = add i32 %31, 4
  store i32 %add79, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %arrayidx81 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %shr28
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx81, align 4
  br label %cleanup

if.then85:                                        ; preds = %if.end73.if.then85_crit_edge, %if.end73.thread
  tail call fastcc void @set_segfault(ptr noundef %regs, i32 noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.then76, %if.end73.cleanup_crit_edge, %sw.default, %sw.bb, %perf_sw_event.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb ], [ -14, %perf_sw_event.exit.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %if.then76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_check_condition(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emulate_swpX(i32 noundef %address, ptr nocapture noundef %data, i32 noundef %type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %type)
  %cmp.not = icmp eq i32 %type, 4194304
  %and = and i32 %address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.while.cond_crit_edge, label %do.body

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emulate_swpX.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emulate_swpX, %if.then4)) #7
          to label %cleanup38 [label %if.then4], !srcloc !59

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @emulate_swpX.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.14) #7
  br label %cleanup38

while.cond:                                       ; preds = %cleanup, %entry.while.cond_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !61
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  br i1 %cmp.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "0:\09ldrexb\09$2, [$3]\0A1:\09strexb\09$0, $1, [$3]\0A\09cmp\09\09$0, #0\0A\09moveq\09\09$1, $2\0A\09movne\09\09$0, $4\0A2:\0A\09.section\09 .text.fixup,\22ax\22\0A\09.align\09\092\0A3:\09mov\09\09$0, $5\0A\09b\09\092b\0A\09.previous\0A\09.section\09 __ex_table,\22a\22\0A\09.align\09\093\0A\09.long\09\090b, 3b\0A\09.long\09\091b, 3b\0A\09.previous", "=&r,=r,=&r,r,i,i,1,~{cc},~{memory}"(i32 %address, i32 -11, i32 -14, i32 %4) #7, !srcloc !64
  br label %if.end14

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "0:\09ldrex\09$2, [$3]\0A1:\09strex\09$0, $1, [$3]\0A\09cmp\09\09$0, #0\0A\09moveq\09\09$1, $2\0A\09movne\09\09$0, $4\0A2:\0A\09.section\09 .text.fixup,\22ax\22\0A\09.align\09\092\0A3:\09mov\09\09$0, $5\0A\09b\09\092b\0A\09.previous\0A\09.section\09 __ex_table,\22a\22\0A\09.align\09\093\0A\09.long\09\090b, 3b\0A\09.long\09\091b, 3b\0A\09.previous", "=&r,=r,=&r,r,i,i,1,~{cc},~{memory}"(i32 %address, i32 -11, i32 -14, i32 %4) #7, !srcloc !65
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %.pn = phi { i32, i32, i32 } [ %6, %if.else ], [ %5, %if.then8 ]
  %res.0 = extractvalue { i32, i32, i32 } %.pn, 0
  %storemerge = extractvalue { i32, i32, i32 } %.pn, 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %data, align 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %8 = zext i32 %res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %res.0, label %cleanup38.loopexit.split.loop.exit [
    i32 -11, label %lor.lhs.false
    i32 0, label %if.then31
  ], !prof !66

lor.lhs.false:                                    ; preds = %if.end14
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i47 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i47 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false.cleanup38_crit_edge, !prof !67

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

signal_pending.exit:                              ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i = and i32 %19, 1
  %tobool24.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool24.not, label %cleanup, label %signal_pending.exit.cleanup38_crit_edge

signal_pending.exit.cleanup38_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

cleanup:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 141, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  br label %while.cond

if.then31:                                        ; preds = %if.end14
  br i1 %cmp.not, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @swpbcounter, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr @swpbcounter, align 4
  br label %cleanup38

if.else34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @swpcounter, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, ptr @swpcounter, align 4
  br label %cleanup38

cleanup38.loopexit.split.loop.exit:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %res.0.le = extractvalue { i32, i32, i32 } %.pn, 0
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.loopexit.split.loop.exit, %if.else34, %if.then33, %signal_pending.exit.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -14, %if.then4 ], [ 0, %if.then33 ], [ 0, %if.else34 ], [ -14, %do.body ], [ %res.0.le, %cleanup38.loopexit.split.loop.exit ], [ -11, %signal_pending.exit.cleanup38_crit_edge ], [ -11, %lor.lhs.false.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_segfault(ptr noundef %regs, i32 noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@set_segfault, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !59

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@set_segfault, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !59

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm3 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm3, align 8
  %call4 = tail call ptr @find_vma(ptr noundef %9, i32 noundef %addr) #7
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@set_segfault, %if.then.i.i14)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i14], !srcloc !59

if.then.i.i14:                                    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %13, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i14, %mmap_read_lock.exit
  %mmap_lock.i15 = getelementptr inbounds %struct.anon.25, ptr %13, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i15) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_segfault.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_segfault, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_segfault.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.16) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %mmap_read_unlock.exit
  %cmp = icmp eq ptr %call4, null
  %. = select i1 %cmp, i32 1, i32 2
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.17, ptr noundef %regs, i32 noundef 11, i32 noundef %., ptr noundef %16, i32 noundef 0, i32 noundef 0) #7
  %17 = load i32, ptr @abtcounter, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr @abtcounter, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_notify_die(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_swp_emulate__266_258_swp_emulation_init7, !1, !"__initcall__kmod_swp_emulate__266_258_swp_emulation_init7", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/swp_emulate.c", i32 258, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/swp_emulate.c", i32 247, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/swp_emulate.c", i32 252, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @swp_emulation_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @swp_emulation_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/swp_emulate.c", i32 84, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/swp_emulate.c", i32 85, i32 16}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/swp_emulate.c", i32 86, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/swp_emulate.c", i32 88, i32 17}
!18 = !{ptr @swpcounter, !19, !"swpcounter", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/swp_emulate.c", i32 76, i32 22}
!20 = !{ptr @swpbcounter, !21, !"swpbcounter", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/swp_emulate.c", i32 77, i32 22}
!22 = !{ptr @abtcounter, !23, !"abtcounter", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/swp_emulate.c", i32 78, i32 22}
!24 = !{ptr @previous_pid, !25, !"previous_pid", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/swp_emulate.c", i32 79, i32 22}
!26 = !{ptr @swp_hook, !27, !"swp_hook", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/swp_emulate.c", i32 229, i32 26}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/swp_emulate.c", i32 182, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @swp_handler.__UNIQUE_ID_ddebug263, !29, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/swp_emulate.c", i32 193, i32 2}
!35 = !{ptr @swp_handler.__UNIQUE_ID_ddebug264, !34, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/kernel/swp_emulate.c", i32 199, i32 3}
!38 = !{ptr @swp_handler.__UNIQUE_ID_ddebug265, !37, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/swp_emulate.c", i32 123, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @emulate_swpX.__UNIQUE_ID_ddebug262, !40, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/swp_emulate.c", i32 107, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @set_segfault.__UNIQUE_ID_ddebug261, !44, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/swp_emulate.c", i32 108, i32 17}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148696350, i64 2148696355, i64 2148696368, i64 2148696412, i64 2148696446, i64 2148696467}
!60 = !{i64 2155024681, i64 2155024706}
!61 = !{i64 4674009}
!62 = !{i64 4674206}
!63 = !{i64 2152159439}
!64 = !{i64 2155017084, i64 2155017115, i64 2155017149, i64 2155017171, i64 2155017195, i64 2155017219, i64 2155017235, i64 2155017273, i64 2155017294, i64 2155017318, i64 2155017335, i64 2155017357, i64 2155017393, i64 2155017414, i64 2155017438, i64 2155017462}
!65 = !{i64 2155017723, i64 2155017754, i64 2155017788, i64 2155017810, i64 2155017834, i64 2155017858, i64 2155017874, i64 2155017912, i64 2155017933, i64 2155017957, i64 2155017974, i64 2155017996, i64 2155018032, i64 2155018053, i64 2155018077, i64 2155018101}
!66 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
