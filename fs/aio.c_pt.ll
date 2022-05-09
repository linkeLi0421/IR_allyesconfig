; ModuleID = '/llk/IR_all_yes/fs/aio.c_pt.bc'
source_filename = "../fs/aio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kiocb_set_cancel_fn\22, \22a\22\09"
module asm "\09.weak\09__crc_kiocb_set_cancel_fn\09\09\09\09"
module asm "\09.long\09__crc_kiocb_set_cancel_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kiocb_set_cancel_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kiocb_set_cancel_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kiocb_set_cancel_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.81, %struct.trace_event, ptr, ptr, %union.anon.83, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.81 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.83 = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.82 }
%union.anon.82 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aio_kiocb = type { %union.anon.112, ptr, ptr, %struct.io_event, %struct.list_head, %struct.refcount_struct, ptr }
%union.anon.112 = type { %struct.kiocb, [40 x i8] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.io_event = type { i64, i64, i64, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kioctx = type { %struct.percpu_ref, %struct.atomic_t, %struct.percpu_ref, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.rcu_work, ptr, [12 x i8], %struct.anon.32, %struct.anon.33, %struct.anon.34, %struct.anon.35, [8 x ptr], ptr, i32, [88 x i8] }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.anon.32 = type { %struct.atomic_t, [124 x i8] }
%struct.anon.33 = type { %struct.spinlock, %struct.list_head, [76 x i8] }
%struct.anon.34 = type { %struct.mutex, %struct.wait_queue_head, [112 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.35 = type { i32, i32, %struct.spinlock, [76 x i8] }
%struct.ctx_rq_wait = type { %struct.completion, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.27 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.kioctx_table = type { %struct.callback_head, i32, [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.87 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.iocb = type { i64, i32, i32, i16, i16, i32, i64, i64, i64, i64, i32, i32 }
%struct.__aio_sigset = type { ptr, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.100, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.101, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.102, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.callback_head }
%union.anon.102 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.105 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page = type { i32, %union.anon.19, %union.anon.93, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.93 = type { %struct.atomic_t }
%struct.aio_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.io_event] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.28, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.aio_poll_table = type { %struct.poll_table_struct, ptr, i8, i32 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.poll_iocb = type { ptr, ptr, i32, i8, i8, i8, %struct.wait_queue_entry, %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.fsync_iocb = type { ptr, %struct.work_struct, i8, ptr }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }

@__initcall__kmod_aio__296_307_aio_setup6 = internal global ptr @aio_setup, section ".initcall6.init", align 4
@kiocb_set_cancel_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fs/aio.c\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_kiocb_set_cancel_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kiocb_set_cancel_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kiocb_set_cancel_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kiocb_set_cancel_fn to i32), ptr @__kstrtab_kiocb_set_cancel_fn, ptr @__kstrtabns_kiocb_set_cancel_fn }, section "___ksymtab+kiocb_set_cancel_fn", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_io_setup\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__io_setup = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 2, ptr @types__io_setup, ptr @args__io_setup, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_setup, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_setup, i64 20) }, ptr @event_enter__io_setup, ptr @event_exit__io_setup }, align 4
@event_enter__io_setup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_setup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_setup = internal global ptr @event_enter__io_setup, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_io_setup\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__io_setup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_setup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_setup = internal global ptr @event_exit__io_setup, section "_ftrace_events", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_io_setup\00", [19 x i8] zeroinitializer }, align 32
@types__io_setup = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@args__io_setup = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_setup = internal global ptr @__syscall_meta__io_setup, section "__syscalls_metadata", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_io_destroy\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__io_destroy = internal global %struct.syscall_metadata { ptr @.str.6, i32 -1, i32 1, ptr @types__io_destroy, ptr @args__io_destroy, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_destroy, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_destroy, i64 20) }, ptr @event_enter__io_destroy, ptr @event_exit__io_destroy }, align 4
@event_enter__io_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_destroy, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_destroy = internal global ptr @event_enter__io_destroy, section "_ftrace_events", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_io_destroy\00", [44 x i8] zeroinitializer }, align 32
@event_exit__io_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_destroy, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_destroy = internal global ptr @event_exit__io_destroy, section "_ftrace_events", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_io_destroy\00", [17 x i8] zeroinitializer }, align 32
@types__io_destroy = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@args__io_destroy = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_destroy = internal global ptr @__syscall_meta__io_destroy, section "__syscalls_metadata", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_io_submit\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__io_submit = internal global %struct.syscall_metadata { ptr @.str.9, i32 -1, i32 3, ptr @types__io_submit, ptr @args__io_submit, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_submit, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_submit, i64 20) }, ptr @event_enter__io_submit, ptr @event_exit__io_submit }, align 4
@event_enter__io_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_submit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_submit = internal global ptr @event_enter__io_submit, section "_ftrace_events", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_io_submit\00", [45 x i8] zeroinitializer }, align 32
@event_exit__io_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_submit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_submit = internal global ptr @event_exit__io_submit, section "_ftrace_events", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_io_submit\00", [18 x i8] zeroinitializer }, align 32
@types__io_submit = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.85, ptr @.str.86], [20 x i8] zeroinitializer }, align 32
@args__io_submit = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_submit = internal global ptr @__syscall_meta__io_submit, section "__syscalls_metadata", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_io_cancel\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__io_cancel = internal global %struct.syscall_metadata { ptr @.str.12, i32 -1, i32 3, ptr @types__io_cancel, ptr @args__io_cancel, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_cancel, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_cancel, i64 20) }, ptr @event_enter__io_cancel, ptr @event_exit__io_cancel }, align 4
@event_enter__io_cancel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_cancel, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_cancel = internal global ptr @event_enter__io_cancel, section "_ftrace_events", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_io_cancel\00", [45 x i8] zeroinitializer }, align 32
@event_exit__io_cancel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_cancel, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_cancel = internal global ptr @event_exit__io_cancel, section "_ftrace_events", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_io_cancel\00", [18 x i8] zeroinitializer }, align 32
@types__io_cancel = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.117, ptr @.str.118], [20 x i8] zeroinitializer }, align 32
@args__io_cancel = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.87, ptr @.str.119, ptr @.str.120], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_cancel = internal global ptr @__syscall_meta__io_cancel, section "__syscalls_metadata", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_io_pgetevents\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__io_pgetevents = internal global %struct.syscall_metadata { ptr @.str.15, i32 -1, i32 6, ptr @types__io_pgetevents, ptr @args__io_pgetevents, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_pgetevents, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_pgetevents, i64 20) }, ptr @event_enter__io_pgetevents, ptr @event_exit__io_pgetevents }, align 4
@event_enter__io_pgetevents = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_pgetevents, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_pgetevents = internal global ptr @event_enter__io_pgetevents, section "_ftrace_events", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_io_pgetevents\00", [41 x i8] zeroinitializer }, align 32
@event_exit__io_pgetevents = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_pgetevents, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_pgetevents = internal global ptr @event_exit__io_pgetevents, section "_ftrace_events", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_io_pgetevents\00", [46 x i8] zeroinitializer }, align 32
@types__io_pgetevents = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.78, ptr @.str.85, ptr @.str.85, ptr @.str.118, ptr @.str.121, ptr @.str.122], [40 x i8] zeroinitializer }, align 32
@args__io_pgetevents = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.87, ptr @.str.123, ptr @.str.88, ptr @.str.124, ptr @.str.125, ptr @.str.126], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_pgetevents = internal global ptr @__syscall_meta__io_pgetevents, section "__syscalls_metadata", align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sys_enter_io_pgetevents_time32\00", [33 x i8] zeroinitializer }, align 32
@__syscall_meta__io_pgetevents_time32 = internal global %struct.syscall_metadata { ptr @.str.18, i32 -1, i32 6, ptr @types__io_pgetevents_time32, ptr @args__io_pgetevents_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_pgetevents_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_pgetevents_time32, i64 20) }, ptr @event_enter__io_pgetevents_time32, ptr @event_exit__io_pgetevents_time32 }, align 4
@event_enter__io_pgetevents_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_pgetevents_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_pgetevents_time32 = internal global ptr @event_enter__io_pgetevents_time32, section "_ftrace_events", align 4
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sys_exit_io_pgetevents_time32\00", [34 x i8] zeroinitializer }, align 32
@event_exit__io_pgetevents_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_pgetevents_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_pgetevents_time32 = internal global ptr @event_exit__io_pgetevents_time32, section "_ftrace_events", align 4
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_io_pgetevents_time32\00", [39 x i8] zeroinitializer }, align 32
@types__io_pgetevents_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.78, ptr @.str.85, ptr @.str.85, ptr @.str.118, ptr @.str.134, ptr @.str.122], [40 x i8] zeroinitializer }, align 32
@args__io_pgetevents_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.87, ptr @.str.123, ptr @.str.88, ptr @.str.124, ptr @.str.125, ptr @.str.126], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_pgetevents_time32 = internal global ptr @__syscall_meta__io_pgetevents_time32, section "__syscalls_metadata", align 4
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sys_enter_io_getevents_time32\00", [34 x i8] zeroinitializer }, align 32
@__syscall_meta__io_getevents_time32 = internal global %struct.syscall_metadata { ptr @.str.21, i32 -1, i32 5, ptr @types__io_getevents_time32, ptr @args__io_getevents_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__io_getevents_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__io_getevents_time32, i64 20) }, ptr @event_enter__io_getevents_time32, ptr @event_exit__io_getevents_time32 }, align 4
@event_enter__io_getevents_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_getevents_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__io_getevents_time32 = internal global ptr @event_enter__io_getevents_time32, section "_ftrace_events", align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sys_exit_io_getevents_time32\00", [35 x i8] zeroinitializer }, align 32
@event_exit__io_getevents_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.20 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__io_getevents_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__io_getevents_time32 = internal global ptr @event_exit__io_getevents_time32, section "_ftrace_events", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_io_getevents_time32\00", [40 x i8] zeroinitializer }, align 32
@types__io_getevents_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.118, ptr @.str.134], [44 x i8] zeroinitializer }, align 32
@args__io_getevents_time32 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.87, ptr @.str.123, ptr @.str.88, ptr @.str.124, ptr @.str.125], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__io_getevents_time32 = internal global ptr @__syscall_meta__io_getevents_time32, section "__syscalls_metadata", align 4
@aio_setup.aio_fs = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.22, i32 0, ptr @aio_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aio\00", [28 x i8] zeroinitializer }, align 32
@aio_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create aio fs mount.\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aio_kiocb\00", [22 x i8] zeroinitializer }, align 32
@kiocb_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kioctx\00", [25 x i8] zeroinitializer }, align 32
@kioctx_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@aio_sysctls = internal global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.28, ptr @aio_nr, i32 4, i16 292, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @aio_max_nr, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio_sysctls\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aio-nr\00", [25 x i8] zeroinitializer }, align 32
@aio_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aio-max-nr\00", [21 x i8] zeroinitializer }, align 32
@aio_max_nr = internal global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aio_nr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio_nr_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aio_context_t *\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_events\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctxp\00", [27 x i8] zeroinitializer }, align 32
@__do_sys_io_setup.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.36, ptr @.str, ptr @.str.37, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__do_sys_io_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EINVAL: ctx %lu nr_events %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: EINVAL: ctx %lu nr_events %u\0A\00", [62 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@ioctx_alloc.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.39, ptr @.str, ptr @.str.40, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ioctx_alloc\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ENOMEM: nr_events too high\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ENOMEM: nr_events too high\0A\00", [32 x i8] zeroinitializer }, align 32
@ioctx_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctx->ctx_lock\00", [17 x i8] zeroinitializer }, align 32
@ioctx_alloc.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ctx->completion_lock\00", [42 x i8] zeroinitializer }, align 32
@ioctx_alloc.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->ring_lock\00", [16 x i8] zeroinitializer }, align 32
@ioctx_alloc.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->wait\00", [21 x i8] zeroinitializer }, align 32
@ioctx_alloc.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.39, ptr @.str, ptr @.str.49, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"allocated ioctx %p[%ld]: mm=%p mask=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: allocated ioctx %p[%ld]: mm=%p mask=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ioctx_alloc.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.39, ptr @.str, ptr @.str.51, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error allocating ioctx %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error allocating ioctx %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@free_ioctx_reqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&ctx->free_rwork)->work)\00", [51 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@free_ioctx.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.54, ptr @.str, ptr @.str.55, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"free_ioctx\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freeing %p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: freeing %p\0A\00", [16 x i8] zeroinitializer }, align 32
@aio_setup_ring.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.57, ptr @.str, ptr @.str.58, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aio_setup_ring\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pid(%d) page[%d]->count=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: pid(%d) page[%d]->count=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@aio_setup_ring.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.57, ptr @.str, ptr @.str.60, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"attempting mmap of %lu bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: attempting mmap of %lu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@aio_setup_ring.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.57, ptr @.str, ptr @.str.62, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmap address: 0x%08lx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: mmap address: 0x%08lx\0A\00", [37 x i8] zeroinitializer }, align 32
@aio_ctx_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aio_migratepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[aio]\00", [26 x i8] zeroinitializer }, align 32
@aio_ring_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aio_ring_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@aio_ring_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr @aio_ring_mremap, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @filemap_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aio_ring_mremap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@aio_ring_mremap.__warned.69 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@aio_free_ring.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.75, ptr @.str, ptr @.str.76, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aio_free_ring\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pid(%d) [%d] page->count=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: pid(%d) [%d] page->count=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aio_context_t\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctx\00", [28 x i8] zeroinitializer }, align 32
@__do_sys_io_destroy.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.80, ptr @.str, ptr @.str.81, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__do_sys_io_destroy\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EINVAL: invalid context id\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: EINVAL: invalid context id\0A\00", [32 x i8] zeroinitializer }, align 32
@lookup_ioctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lookup_ioctx.__warned.83 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct iocb * *\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ctx_id\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nr\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iocbpp\00", [25 x i8] zeroinitializer }, align 32
@__do_sys_io_submit.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.90, ptr @.str, ptr @.str.81, i8 2, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__do_sys_io_submit\00", [45 x i8] zeroinitializer }, align 32
@io_submit_one.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.91, ptr @.str, ptr @.str.92, i8 1, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"io_submit_one\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EINVAL: reserve field set\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: EINVAL: reserve field set\0A\00", [33 x i8] zeroinitializer }, align 32
@io_submit_one.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.91, ptr @.str, ptr @.str.94, i8 1, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EINVAL: overflow check\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: EINVAL: overflow check\0A\00", [36 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__io_submit_one.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.99, ptr @.str, ptr @.str.100, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__io_submit_one\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EFAULT: aio_key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: EFAULT: aio_key\0A\00", [43 x i8] zeroinitializer }, align 32
@__io_submit_one.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.99, ptr @.str, ptr @.str.102, i8 1, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid aio operation %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid aio operation %d\0A\00", [34 x i8] zeroinitializer }, align 32
@aio_prep_rw.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.104, ptr @.str, ptr @.str.105, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aio_prep_rw\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aio ioprio check cap error: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: aio ioprio check cap error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@aio_fsync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&req->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@aio_poll.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aio_poll_wake.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aio_complete.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.112, ptr @.str, ptr @.str.113, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aio_complete\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%p[%u]: %p: %p %Lx %Lx %Lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %p[%u]: %p: %p %Lx %Lx %Lx\0A\00", [32 x i8] zeroinitializer }, align 32
@aio_complete.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.112, ptr @.str, ptr @.str.115, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"added to ring %p at [%u]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: added to ring %p at [%u]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"struct iocb *\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct io_event *\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iocb\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"struct __kernel_timespec *\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"const struct __aio_sigset *\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"min_nr\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usig\00", [27 x i8] zeroinitializer }, align 32
@aio_read_events_ring.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.127, ptr @.str, ptr @.str.128, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aio_read_events_ring\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"h%u t%u m%u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: h%u t%u m%u\0A\00", [47 x i8] zeroinitializer }, align 32
@aio_read_events_ring.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.127, ptr @.str, ptr @.str.130, i8 1, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%li  h%u t%u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %li  h%u t%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/sched/signal.h\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct old_timespec32 *\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__s32\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 4294966767, i64 4294966780, i64 4294966782, i64 4294966783, i64 4294966784]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 32, i64 4294966767, i64 4294966780, i64 4294966782, i64 4294966783, i64 4294966784]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 594, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"event_enter__io_setup\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"event_exit__io_setup\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"types__io_setup\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"args__io_setup\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [24 x i8] c"event_enter__io_destroy\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [23 x i8] c"event_exit__io_destroy\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"types__io_destroy\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"args__io_destroy\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"event_enter__io_submit\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"event_exit__io_submit\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"types__io_submit\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"args__io_submit\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"event_enter__io_cancel\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"event_exit__io_cancel\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"types__io_cancel\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"args__io_cancel\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"event_enter__io_pgetevents\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [26 x i8] c"event_exit__io_pgetevents\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"types__io_pgetevents\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"args__io_pgetevents\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [34 x i8] c"event_enter__io_pgetevents_time32\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [33 x i8] c"event_exit__io_pgetevents_time32\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [28 x i8] c"types__io_pgetevents_time32\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"args__io_pgetevents_time32\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [33 x i8] c"event_enter__io_getevents_time32\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [32 x i8] c"event_exit__io_getevents_time32\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"types__io_getevents_time32\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [26 x i8] c"args__io_getevents_time32\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"aio_fs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 293, i32 33 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 294, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant [8 x i8] c"aio_mnt\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 256, i32 25 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 300, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 302, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant [13 x i8] c"kiocb_cachep\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 253, i32 27 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 303, i32 18 }
@___asan_gen_.312 = private unnamed_addr constant [14 x i8] c"kioctx_cachep\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 254, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"aio_sysctls\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 227, i32 25 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 247, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 229, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant [7 x i8] c"aio_nr\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 223, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 236, i32 15 }
@___asan_gen_.333 = private unnamed_addr constant [11 x i8] c"aio_max_nr\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 224, i32 22 }
@___asan_gen_.340 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 87, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [12 x i8] c"aio_nr_lock\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 222, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1338, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1350, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 753, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 766, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 767, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 768, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 772, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 816, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 833, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 631, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 613, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 532, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 547, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 565, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [13 x i8] c"aio_ctx_aops\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 480, i32 46 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 272, i32 43 }
@___asan_gen_.456 = private unnamed_addr constant [14 x i8] c"aio_ring_fops\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 398, i32 37 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 461, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1160, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 717, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [16 x i8] c"aio_ring_vm_ops\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 382, i32 42 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 363, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 695, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 723, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 260, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 339, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1407, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1433, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 280, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2053, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2066, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2006, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2016, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 230, i32 6 }
@___asan_gen_.550 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 214, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 156, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1964, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1989, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1490, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 34, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 49, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1637, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 286, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1880, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1792, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1143, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1165, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2147, i32 1 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2248, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1228, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1272, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 44, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [32 x i8] c"../include/linux/sched/signal.h\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 519, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2283, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.676 = private constant [12 x i8] c"../fs/aio.c\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2321, i32 1 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__event_enter__io_cancel, ptr @__event_enter__io_destroy, ptr @__event_enter__io_getevents_time32, ptr @__event_enter__io_pgetevents, ptr @__event_enter__io_pgetevents_time32, ptr @__event_enter__io_setup, ptr @__event_enter__io_submit, ptr @__event_exit__io_cancel, ptr @__event_exit__io_destroy, ptr @__event_exit__io_getevents_time32, ptr @__event_exit__io_pgetevents, ptr @__event_exit__io_pgetevents_time32, ptr @__event_exit__io_setup, ptr @__event_exit__io_submit, ptr @__initcall__kmod_aio__296_307_aio_setup6, ptr @__ksymtab_kiocb_set_cancel_fn, ptr @__p_syscall_meta__io_cancel, ptr @__p_syscall_meta__io_destroy, ptr @__p_syscall_meta__io_getevents_time32, ptr @__p_syscall_meta__io_pgetevents, ptr @__p_syscall_meta__io_pgetevents_time32, ptr @__p_syscall_meta__io_setup, ptr @__p_syscall_meta__io_submit, ptr @__syscall_meta__io_cancel, ptr @__syscall_meta__io_destroy, ptr @__syscall_meta__io_getevents_time32, ptr @__syscall_meta__io_pgetevents, ptr @__syscall_meta__io_pgetevents_time32, ptr @__syscall_meta__io_setup, ptr @__syscall_meta__io_submit, ptr @event_enter__io_cancel, ptr @event_enter__io_destroy, ptr @event_enter__io_getevents_time32, ptr @event_enter__io_pgetevents, ptr @event_enter__io_pgetevents_time32, ptr @event_enter__io_setup, ptr @event_enter__io_submit, ptr @event_exit__io_cancel, ptr @event_exit__io_destroy, ptr @event_exit__io_getevents_time32, ptr @event_exit__io_pgetevents, ptr @event_exit__io_pgetevents_time32, ptr @event_exit__io_setup, ptr @event_exit__io_submit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__io_setup, ptr @args__io_setup, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @types__io_destroy, ptr @args__io_destroy, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @types__io_submit, ptr @args__io_submit, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @types__io_cancel, ptr @args__io_cancel, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @types__io_pgetevents, ptr @args__io_pgetevents, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @types__io_pgetevents_time32, ptr @args__io_pgetevents_time32, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @types__io_getevents_time32, ptr @args__io_getevents_time32, ptr @aio_setup.aio_fs, ptr @.str.22, ptr @aio_mnt, ptr @.str.23, ptr @.str.24, ptr @kiocb_cachep, ptr @.str.25, ptr @kioctx_cachep, ptr @.str.26, ptr @aio_sysctls, ptr @.str.27, ptr @.str.28, ptr @aio_nr, ptr @.str.29, ptr @aio_max_nr, ptr @init_completion.__key, ptr @.str.30, ptr @aio_nr_lock, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ioctx_alloc.__key, ptr @.str.42, ptr @ioctx_alloc.__key.43, ptr @.str.44, ptr @ioctx_alloc.__key.45, ptr @.str.46, ptr @ioctx_alloc.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @free_ioctx_reqs.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @aio_ctx_aops, ptr @.str.64, ptr @aio_ring_fops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @aio_ring_vm_ops, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @aio_fsync.__key, ptr @.str.110, ptr @.str.111, ptr @aio_poll.__key, ptr @aio_poll_wake.__key, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], section "llvm.metadata"
@0 = internal global [179 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_setup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_setup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_setup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_setup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_destroy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_destroy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_submit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_submit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_cancel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_cancel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_cancel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_cancel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_pgetevents to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_pgetevents to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_pgetevents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_pgetevents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_pgetevents_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_pgetevents_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_pgetevents_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_pgetevents_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__io_getevents_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__io_getevents_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__io_getevents_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__io_getevents_time32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_setup.aio_fs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kiocb_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kioctx_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_sysctls to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_max_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_nr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctx_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctx_alloc.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctx_alloc.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctx_alloc.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_ioctx_reqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_ctx_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_ring_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_ring_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_fsync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_poll.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aio_poll_wake.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_io_setup = dso_local alias i32 (i32, ptr), ptr @__se_sys_io_setup
@sys_io_destroy = dso_local alias i32 (i32), ptr @__se_sys_io_destroy
@sys_io_submit = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_io_submit
@sys_io_cancel = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_io_cancel
@sys_io_pgetevents = dso_local alias i32 (i32, i32, i32, ptr, ptr, ptr), ptr @__se_sys_io_pgetevents
@sys_io_pgetevents_time32 = dso_local alias i32 (i32, i32, i32, ptr, ptr, ptr), ptr @__se_sys_io_pgetevents_time32
@sys_io_getevents_time32 = dso_local alias i32 (i32, i32, i32, ptr, ptr), ptr @__se_sys_io_getevents_time32

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_setup() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kern_mount(ptr noundef nonnull @aio_setup.aio_fs) #12
  store ptr %call, ptr @aio_mnt, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.23) #15
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 136, i32 noundef 8, i32 noundef 270336, ptr noundef null) #12
  store ptr %call2, ptr @kiocb_cachep, align 4
  %call3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.25, i32 noundef 896, i32 noundef 128, i32 noundef 270336, ptr noundef null) #12
  store ptr %call3, ptr @kioctx_cachep, align 4
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.26, ptr noundef nonnull @aio_sysctls, ptr noundef nonnull @.str.27) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kiocb_set_cancel_fn(ptr noundef %iocb, ptr noundef %cancel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 1
  %0 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ki_ctx, align 8
  %ki_list = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 4
  %2 = ptrtoint ptr %ki_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ki_list, align 4
  %cmp.i.not = icmp eq ptr %3, %ki_list
  br i1 %cmp.i.not, label %do.body42, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @kiocb_set_cancel_fn.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !330

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @kiocb_set_cancel_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

do.body42:                                        ; preds = %entry
  %4 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 16
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %active_reqs = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 16, i32 1
  %prev.i = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 16, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ki_list, ptr noundef %6, ptr noundef %active_reqs) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body42.list_add_tail.exit_crit_edge

do.body42.list_add_tail.exit_crit_edge:           ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ki_list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %ki_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %active_reqs, ptr %ki_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ki_list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body42.list_add_tail.exit_crit_edge
  %ki_cancel = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 2
  %11 = ptrtoint ptr %ki_cancel to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cancel, ptr %ki_cancel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call45) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_aio(ptr noundef %mm) local_unnamed_addr #1 align 64 {
entry:
  %wait = alloca %struct.ctx_rq_wait, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctx_table = getelementptr inbounds %struct.anon.27, ptr %mm, i32 0, i32 45
  %0 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ioctx_table, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #12
  %2 = call ptr @memset(ptr %wait, i32 255, i32 60)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.ctx_rq_wait, ptr %wait, i32 0, i32 1
  %nr = getelementptr inbounds %struct.kioctx_table, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %4, ptr %count, align 4
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #12
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp49.not = icmp eq i32 %8, 0
  br i1 %cmp49.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %skipped.051 = phi i32 [ %skipped.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.050 = phi i32 [ %inc11, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kioctx_table, ptr %1, i32 0, i32 2, i32 %i.050
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %skipped.051, 1
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mmap_size = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mmap_size, align 4
  %call = call fastcc i32 @kill_ioctx(ptr noundef %mm, ptr noundef nonnull %10, ptr noundef nonnull %wait)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  %skipped.1 = phi i32 [ %skipped.051, %if.end10 ], [ %inc, %if.then9 ]
  %inc11 = add nuw i32 %i.050, 1
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr, align 4
  %cmp = icmp ult i32 %inc11, %13
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %skipped.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %skipped.1, %cleanup.for.end_crit_edge ]
  %call.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 %skipped.0.lcssa, ptr elementtype(i32) %count) #12, !srcloc !332
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %for.end.do.body22_crit_edge, label %if.then14

for.end.do.body22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body22

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @wait_for_completion(ptr noundef nonnull %wait) #12
  br label %do.body22

do.body22:                                        ; preds = %if.then14, %for.end.do.body22_crit_edge
  %15 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %ioctx_table, align 8
  call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup30

cleanup30:                                        ; preds = %do.body22, %entry.cleanup30_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kill_ioctx(ptr noundef %mm, ptr noundef %ctx, ptr noundef %wait) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctx_lock = getelementptr inbounds %struct.anon.27, ptr %mm, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %ioctx_lock) #12
  %dead = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dead, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %dead, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %dead) #12, !srcloc !335
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %ioctx_lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioctx_table = getelementptr inbounds %struct.anon.27, ptr %mm, i32 0, i32 45
  %1 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ioctx_table, align 8
  %id = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 21
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.kioctx_table, ptr %2, i32 0, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %6, %ctx
  br i1 %cmp.not, label %if.end.if.end26_crit_edge, label %do.end20, !prof !330

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end.if.end26_crit_edge
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %arrayidx42 = getelementptr %struct.kioctx_table, ptr %2, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %arrayidx42, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ioctx_lock) #12
  %wait50 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 17, i32 1
  tail call void @__wake_up(ptr noundef %wait50, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %max_reqs = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_reqs, align 32
  tail call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #12
  %12 = load i32, ptr @aio_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp.i = icmp ult i32 %12, %11
  br i1 %cmp.i, label %do.end.i, label %if.else.i, !prof !337

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #12
  br label %aio_nr_sub.exit

if.else.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %sub21.i = sub i32 %12, %11
  br label %aio_nr_sub.exit

aio_nr_sub.exit:                                  ; preds = %if.else.i, %do.end.i
  %storemerge.i = phi i32 [ %sub21.i, %if.else.i ], [ 0, %do.end.i ]
  store i32 %storemerge.i, ptr @aio_nr, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aio_nr_lock) #12
  %mmap_size = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 9
  %13 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool51.not = icmp eq i32 %14, 0
  br i1 %tobool51.not, label %aio_nr_sub.exit.if.end55_crit_edge, label %if.then52

aio_nr_sub.exit.if.end55_crit_edge:               ; preds = %aio_nr_sub.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then52:                                        ; preds = %aio_nr_sub.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mmap_base = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 8
  %15 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmap_base, align 8
  %call54 = tail call i32 @vm_munmap(i32 noundef %16, i32 noundef %14) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %aio_nr_sub.exit.if.end55_crit_edge
  %rq_wait = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 13
  %17 = ptrtoint ptr %rq_wait to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wait, ptr %rq_wait, align 16
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %ctx, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_setup(i32 noundef %nr_events, i32 noundef %ctxp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ctxp to ptr
  %call = tail call fastcc i32 @__do_sys_io_setup(i32 noundef %nr_events, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_io_setup(i32 noundef %nr_events, ptr noundef %ctxp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1344) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !338
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %ctxp, i32 -1226833921) #12, !srcloc !341
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !330

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %tobool5.not = icmp ne i32 %asmresult1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_events)
  %cmp = icmp eq i32 %nr_events, 0
  %spec.select = or i1 %cmp, %tobool5.not
  br i1 %spec.select, label %do.body, label %if.end24, !prof !337

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_sys_io_setup.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__do_sys_io_setup, %if.then22)) #12
          to label %out [label %if.then22], !srcloc !342

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_sys_io_setup.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %asmresult1, i32 noundef %nr_events) #12
  br label %out

if.end24:                                         ; preds = %if.end
  %call25 = tail call fastcc ptr @ioctx_alloc(i32 noundef %nr_events)
  %4 = ptrtoint ptr %call25 to i32
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end24.out_crit_edge, label %if.then28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then28:                                        ; preds = %if.end24
  %user_id = getelementptr inbounds %struct.kioctx, ptr %call25, i32 0, i32 3
  %5 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_id, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1358) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i57 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i57 to ptr
  %cpu_domain.i.i58 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i58) #10, !srcloc !338
  %and.i59 = and i32 %9, -13
  %or.i60 = or i32 %and.i59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i60) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %ctxp, i32 %6, i32 -1226833921) #12, !srcloc !343
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool41.not = icmp eq i32 %10, 0
  br i1 %tobool41.not, label %if.then28.if.end45_crit_edge, label %if.then42

if.then28.if.end45_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then42:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i61 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i61 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mm, align 8
  %call44 = tail call fastcc i32 @kill_ioctx(ptr noundef %16, ptr noundef %call25, ptr noundef null)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then28.if.end45_crit_edge
  tail call fastcc void @percpu_ref_put(ptr noundef %call25)
  br label %out

out:                                              ; preds = %if.end45, %if.end24.out_crit_edge, %if.then22, %do.body, %entry.out_crit_edge
  %ret.0 = phi i32 [ %asmresult, %entry.out_crit_edge ], [ -22, %if.then22 ], [ %4, %if.end24.out_crit_edge ], [ %10, %if.end45 ], [ -22, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_destroy(i32 noundef %ctx) #1 align 64 {
entry:
  %wait.i = alloca %struct.ctx_rq_wait, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @lookup_ioctx(i32 noundef %ctx) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %do.body.i, label %if.then.i, !prof !337

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i) #12
  %0 = getelementptr inbounds i8, ptr %wait.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %2 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wait.i, align 4
  call void @__init_swait_queue_head(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #12
  %count.i = getelementptr inbounds %struct.ctx_rq_wait, ptr %wait.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %count.i, align 4
  %4 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm.i, align 8
  %call3.i = call fastcc i32 @kill_ioctx(ptr noundef %9, ptr noundef nonnull %call.i, ptr noundef nonnull %wait.i) #12
  call fastcc void @percpu_ref_put(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @wait_for_completion(ptr noundef nonnull %wait.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i) #12
  br label %__do_sys_io_destroy.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_sys_io_destroy.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__se_sys_io_destroy, %if.then16.i)) #12
          to label %__do_sys_io_destroy.exit [label %if.then16.i], !srcloc !342

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_sys_io_destroy.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80) #12
  br label %__do_sys_io_destroy.exit

__do_sys_io_destroy.exit:                         ; preds = %if.then16.i, %do.body.i, %if.end.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %if.then16.i ], [ -22, %do.body.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_submit(i32 noundef %ctx_id, i32 noundef %nr, i32 noundef %iocbpp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %iocbpp to ptr
  %call = tail call fastcc i32 @__do_sys_io_submit(i32 noundef %ctx_id, i32 noundef %nr, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_io_submit(i32 noundef %ctx_id, i32 noundef %nr, ptr noundef %iocbpp) unnamed_addr #4 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #12
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp = icmp slt i32 %nr, 0
  br i1 %cmp, label %entry.cleanup52_crit_edge, label %if.end, !prof !337

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup52

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @lookup_ioctx(i32 noundef %ctx_id)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end22, !prof !337

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_sys_io_submit.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__do_sys_io_submit, %if.then20)) #12
          to label %cleanup52 [label %if.then20], !srcloc !342

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_sys_io_submit.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.90) #12
  br label %cleanup52

if.end22:                                         ; preds = %if.end
  %nr_events = getelementptr inbounds %struct.kioctx, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_events, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %nr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp27 = icmp ugt i32 %3, 2
  br i1 %cmp27, label %if.end29.thread, label %if.end29

if.end29.thread:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void @blk_start_plug(ptr noundef nonnull %plug) #12
  br label %for.body.preheader

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3073.not = icmp eq i32 %3, 0
  br i1 %cmp3073.not, label %if.end50.thread, label %if.end29.for.body.preheader_crit_edge

if.end29.for.body.preheader_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end29.for.body.preheader_crit_edge, %if.end29.thread
  br label %for.body

if.end50.thread:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @percpu_ref_put(ptr noundef nonnull %call)
  br label %9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.074 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2078) #12
  %add.ptr = getelementptr ptr, ptr %iocbpp, i32 %i.074
  %4 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !338
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %7 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #12, !srcloc !344
  %asmresult = extractvalue { i32, i32 } %7, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool35.not = icmp eq i32 %asmresult, 0
  br i1 %tobool35.not, label %if.end43, label %for.body.for.end_crit_edge, !prof !330

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end43:                                         ; preds = %for.body
  %asmresult33 = extractvalue { i32, i32 } %7, 1
  %8 = inttoptr i32 %asmresult33 to ptr
  %call44 = call fastcc i32 @io_submit_one(ptr noundef nonnull %call, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.inc, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end43
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end43.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %3, %for.inc.for.end_crit_edge ], [ %i.074, %for.body.for.end_crit_edge ], [ %i.074, %if.end43.for.end_crit_edge ]
  %ret.2 = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ -14, %for.body.for.end_crit_edge ], [ %call44, %if.end43.for.end_crit_edge ]
  br i1 %cmp27, label %if.then49, label %for.end.if.end50_crit_edge

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @blk_finish_plug(ptr noundef nonnull %plug) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %for.end.if.end50_crit_edge
  call fastcc void @percpu_ref_put(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool51.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool51.not, label %if.end50._crit_edge, label %if.end50.cleanup52_crit_edge

if.end50.cleanup52_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup52

if.end50._crit_edge:                              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %9

9:                                                ; preds = %if.end50._crit_edge, %if.end50.thread
  %ret.28488 = phi i32 [ 0, %if.end50.thread ], [ %ret.2, %if.end50._crit_edge ]
  br label %cleanup52

cleanup52:                                        ; preds = %9, %if.end50.cleanup52_crit_edge, %if.then20, %do.body, %entry.cleanup52_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup52_crit_edge ], [ -22, %if.then20 ], [ -22, %do.body ], [ %ret.28488, %9 ], [ %i.0.lcssa, %if.end50.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_cancel(i32 noundef %ctx_id, i32 noundef %iocb, i32 noundef %result) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %iocb to ptr
  %conv.i = zext i32 %iocb to i64
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2156) #12
  %aio_key.i = getelementptr inbounds %struct.iocb, ptr %0, i32 0, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !338
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %aio_key.i, i32 -1226833921) #12, !srcloc !345
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_io_cancel.exit_crit_edge, !prof !330

entry.__do_sys_io_cancel.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_cancel.exit

if.end.i:                                         ; preds = %entry
  %asmresult1.i = extractvalue { i32, i32 } %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp.not.i = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp.not.i, label %if.end13.i, label %if.end.i.__do_sys_io_cancel.exit_crit_edge, !prof !330

if.end.i.__do_sys_io_cancel.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_cancel.exit

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call fastcc ptr @lookup_ioctx(i32 noundef %ctx_id) #12
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.__do_sys_io_cancel.exit_crit_edge, label %if.end25.i, !prof !337

if.end13.i.__do_sys_io_cancel.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_cancel.exit

if.end25.i:                                       ; preds = %if.end13.i
  %5 = getelementptr inbounds %struct.kioctx, ptr %call14.i, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #12
  %active_reqs.i = getelementptr inbounds %struct.kioctx, ptr %call14.i, i32 0, i32 16, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end25.i
  %.pn.in.i = phi ptr [ %active_reqs.i, %if.end25.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn.i, %active_reqs.i
  br i1 %cmp28.not.i, label %for.end.thread.i, label %for.body.i

for.end.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %5) #12
  br label %19

for.body.i:                                       ; preds = %for.cond.i
  %obj32.i = getelementptr i8, ptr %.pn.i, i32 -24
  %7 = ptrtoint ptr %obj32.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %obj32.i, align 8
  %cmp33.i = icmp eq i64 %8, %conv.i
  br i1 %cmp33.i, label %if.then35.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then35.i:                                      ; preds = %for.body.i
  %kiocb.0.le.i = getelementptr i8, ptr %.pn.i, i32 -120
  %ki_cancel.i = getelementptr i8, ptr %.pn.i, i32 -36
  %9 = ptrtoint ptr %ki_cancel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ki_cancel.i, align 4
  %call36.i = tail call i32 %10(ptr noundef %kiocb.0.le.i) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then35.i.for.end.i_crit_edge

if.then35.i.for.end.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.i.i:                                     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.i.i, %if.then35.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.i, ptr %.pn.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool45.not.i = icmp eq i32 %call36.i, 0
  %spec.select.i = select i1 %tobool45.not.i, i32 -115, i32 %call36.i
  br label %19

19:                                               ; preds = %for.end.i, %for.end.thread.i
  %20 = phi i32 [ -22, %for.end.thread.i ], [ %spec.select.i, %for.end.i ]
  tail call fastcc void @percpu_ref_put(ptr noundef nonnull %call14.i) #12
  br label %__do_sys_io_cancel.exit

__do_sys_io_cancel.exit:                          ; preds = %19, %if.end13.i.__do_sys_io_cancel.exit_crit_edge, %if.end.i.__do_sys_io_cancel.exit_crit_edge, %entry.__do_sys_io_cancel.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %19 ], [ -14, %entry.__do_sys_io_cancel.exit_crit_edge ], [ -22, %if.end.i.__do_sys_io_cancel.exit_crit_edge ], [ -22, %if.end13.i.__do_sys_io_cancel.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_pgetevents(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, i32 noundef %events, i32 noundef %timeout, i32 noundef %usig) #1 align 64 {
entry:
  %ksig.i = alloca %struct.__aio_sigset, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %events to ptr
  %1 = inttoptr i32 %usig to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ksig.i) #12
  %2 = ptrtoint ptr %ksig.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ksig.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = inttoptr i32 %timeout to ptr
  %call.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.__do_sys_io_pgetevents.exit_crit_edge, !prof !330

land.lhs.true.i.__do_sys_io_pgetevents.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_pgetevents.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usig)
  %tobool4.not.i = icmp eq i32 %usig, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end8.i.i.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end8.i.i.i:                                    ; preds = %if.end.i
  call void @__might_fault(ptr noundef nonnull @.str.98, i32 noundef 156) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #16, !srcloc !346
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !330

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ksig.i, i32 noundef 8) #12
  %6 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !338
  %and.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ksig.i, ptr noundef nonnull %1, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end9.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !330

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i.if.end9.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i38.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i38.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ksig.i, i32 %sub.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i38.i)
  br label %__do_sys_io_pgetevents.exit

if.end9.i:                                        ; preds = %if.end.i.i.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %10 = ptrtoint ptr %ksig.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ksig.i, align 8
  %sigsetsize.i = getelementptr inbounds %struct.__aio_sigset, ptr %ksig.i, i32 0, i32 1
  %12 = ptrtoint ptr %sigsetsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sigsetsize.i, align 4
  %call10.i = call i32 @set_user_sigmask(ptr noundef %11, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.__do_sys_io_pgetevents.exit_crit_edge

if.end9.i.__do_sys_io_pgetevents.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_pgetevents.exit

if.end13.i:                                       ; preds = %if.end9.i
  %ts..i = select i1 %tobool.not.i, ptr null, ptr %ts.i
  %call15.i = call fastcc i32 @do_io_getevents(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, ptr noundef %0, ptr noundef %ts..i) #12
  %14 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %signal_pending.exit.thread.i, !prof !330

signal_pending.exit.thread.i:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i43.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i43.i to ptr
  br label %if.then.i.i

signal_pending.exit.i:                            ; preds = %if.end13.i
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool18.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %27 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  br i1 %tobool18.not.i, label %if.else.i.i, label %signal_pending.exit.i.if.then.i.i_crit_edge

signal_pending.exit.i.if.then.i.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %signal_pending.exit.i.if.then.i.i_crit_edge, %signal_pending.exit.thread.i
  %29 = phi ptr [ %24, %signal_pending.exit.thread.i ], [ %28, %signal_pending.exit.i.if.then.i.i_crit_edge ]
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, !prof !330

if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

signal_pending.exit.i.i:                          ; preds = %if.then.i.i
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, !prof !337

signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

do.end.i.i:                                       ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.133, i32 noundef 519, i32 noundef 9, ptr noundef null) #12
  br label %restore_saved_sigmask_unless.exit.i

if.else.i.i:                                      ; preds = %signal_pending.exit.i
  %call.i.i.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, label %if.then.i.i35.i

if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

if.then.i.i35.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i, align 8
  %saved_sigmask.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 115
  call void @__set_current_blocked(ptr noundef %saved_sigmask.i.i.i) #12
  br label %restore_saved_sigmask_unless.exit.i

restore_saved_sigmask_unless.exit.i:              ; preds = %if.then.i.i35.i, %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, %do.end.i.i, %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge
  %tobool1844.i = phi i1 [ true, %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ true, %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ true, %do.end.i.i ], [ false, %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ false, %if.then.i.i35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool22.not.i = icmp eq i32 %call15.i, 0
  %43 = select i1 %tobool1844.i, i1 %tobool22.not.i, i1 false
  %ret.0.i = select i1 %43, i32 -514, i32 %call15.i
  br label %__do_sys_io_pgetevents.exit

__do_sys_io_pgetevents.exit:                      ; preds = %restore_saved_sigmask_unless.exit.i, %if.end9.i.__do_sys_io_pgetevents.exit_crit_edge, %if.then11.i.i.i, %land.lhs.true.i.__do_sys_io_pgetevents.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %restore_saved_sigmask_unless.exit.i ], [ -14, %land.lhs.true.i.__do_sys_io_pgetevents.exit_crit_edge ], [ %call10.i, %if.end9.i.__do_sys_io_pgetevents.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ksig.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_pgetevents_time32(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, i32 noundef %events, i32 noundef %timeout, i32 noundef %usig) #1 align 64 {
entry:
  %ksig.i = alloca %struct.__aio_sigset, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %events to ptr
  %1 = inttoptr i32 %usig to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ksig.i) #12
  %2 = ptrtoint ptr %ksig.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ksig.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = inttoptr i32 %timeout to ptr
  %call.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.__do_sys_io_pgetevents_time32.exit_crit_edge, !prof !330

land.lhs.true.i.__do_sys_io_pgetevents_time32.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_pgetevents_time32.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usig)
  %tobool4.not.i = icmp eq i32 %usig, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end8.i.i.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end8.i.i.i:                                    ; preds = %if.end.i
  call void @__might_fault(ptr noundef nonnull @.str.98, i32 noundef 156) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #16, !srcloc !346
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !330

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ksig.i, i32 noundef 8) #12
  %6 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !338
  %and.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ksig.i, ptr noundef nonnull %1, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end9.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !330

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i.if.end9.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i38.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i38.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ksig.i, i32 %sub.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i38.i)
  br label %__do_sys_io_pgetevents_time32.exit

if.end9.i:                                        ; preds = %if.end.i.i.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %10 = ptrtoint ptr %ksig.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ksig.i, align 8
  %sigsetsize.i = getelementptr inbounds %struct.__aio_sigset, ptr %ksig.i, i32 0, i32 1
  %12 = ptrtoint ptr %sigsetsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sigsetsize.i, align 4
  %call10.i = call i32 @set_user_sigmask(ptr noundef %11, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.__do_sys_io_pgetevents_time32.exit_crit_edge

if.end9.i.__do_sys_io_pgetevents_time32.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_pgetevents_time32.exit

if.end13.i:                                       ; preds = %if.end9.i
  %ts..i = select i1 %tobool.not.i, ptr null, ptr %ts.i
  %call15.i = call fastcc i32 @do_io_getevents(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, ptr noundef %0, ptr noundef %ts..i) #12
  %14 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %signal_pending.exit.thread.i, !prof !330

signal_pending.exit.thread.i:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i43.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i43.i to ptr
  br label %if.then.i.i

signal_pending.exit.i:                            ; preds = %if.end13.i
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool18.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %27 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  br i1 %tobool18.not.i, label %if.else.i.i, label %signal_pending.exit.i.if.then.i.i_crit_edge

signal_pending.exit.i.if.then.i.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %signal_pending.exit.i.if.then.i.i_crit_edge, %signal_pending.exit.thread.i
  %29 = phi ptr [ %24, %signal_pending.exit.thread.i ], [ %28, %signal_pending.exit.i.if.then.i.i_crit_edge ]
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, !prof !330

if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

signal_pending.exit.i.i:                          ; preds = %if.then.i.i
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, !prof !337

signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

do.end.i.i:                                       ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.133, i32 noundef 519, i32 noundef 9, ptr noundef null) #12
  br label %restore_saved_sigmask_unless.exit.i

if.else.i.i:                                      ; preds = %signal_pending.exit.i
  %call.i.i.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, label %if.then.i.i35.i

if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_saved_sigmask_unless.exit.i

if.then.i.i35.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i, align 8
  %saved_sigmask.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 115
  call void @__set_current_blocked(ptr noundef %saved_sigmask.i.i.i) #12
  br label %restore_saved_sigmask_unless.exit.i

restore_saved_sigmask_unless.exit.i:              ; preds = %if.then.i.i35.i, %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, %do.end.i.i, %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge, %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge
  %tobool1844.i = phi i1 [ true, %if.then.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ true, %signal_pending.exit.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ true, %do.end.i.i ], [ false, %if.else.i.i.restore_saved_sigmask_unless.exit.i_crit_edge ], [ false, %if.then.i.i35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool22.not.i = icmp eq i32 %call15.i, 0
  %43 = select i1 %tobool1844.i, i1 %tobool22.not.i, i1 false
  %ret.0.i = select i1 %43, i32 -514, i32 %call15.i
  br label %__do_sys_io_pgetevents_time32.exit

__do_sys_io_pgetevents_time32.exit:               ; preds = %restore_saved_sigmask_unless.exit.i, %if.end9.i.__do_sys_io_pgetevents_time32.exit_crit_edge, %if.then11.i.i.i, %land.lhs.true.i.__do_sys_io_pgetevents_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %restore_saved_sigmask_unless.exit.i ], [ -14, %land.lhs.true.i.__do_sys_io_pgetevents_time32.exit_crit_edge ], [ %call10.i, %if.end9.i.__do_sys_io_pgetevents_time32.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ksig.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_getevents_time32(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, i32 noundef %events, i32 noundef %timeout) #1 align 64 {
entry:
  %t.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %events to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #12
  %1 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %2 = inttoptr i32 %timeout to ptr
  %call.i = call i32 @get_old_timespec32(ptr noundef nonnull %t.i, ptr noundef nonnull %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.__do_sys_io_getevents_time32.exit_crit_edge

land.lhs.true.i.__do_sys_io_getevents_time32.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_getevents_time32.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %t..i = phi ptr [ %t.i, %land.lhs.true.i.if.end.i_crit_edge ], [ null, %entry.if.end.i_crit_edge ]
  %call3.i = call fastcc i32 @do_io_getevents(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, ptr noundef %0, ptr noundef %t..i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true5.i, label %if.end.i.__do_sys_io_getevents_time32.exit_crit_edge

if.end.i.__do_sys_io_getevents_time32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_getevents_time32.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %3 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %land.lhs.true5.i.__do_sys_io_getevents_time32.exit_crit_edge, !prof !330

land.lhs.true5.i.__do_sys_io_getevents_time32.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_io_getevents_time32.exit

signal_pending.exit.i:                            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 -4
  br label %__do_sys_io_getevents_time32.exit

__do_sys_io_getevents_time32.exit:                ; preds = %signal_pending.exit.i, %land.lhs.true5.i.__do_sys_io_getevents_time32.exit_crit_edge, %if.end.i.__do_sys_io_getevents_time32.exit_crit_edge, %land.lhs.true.i.__do_sys_io_getevents_time32.exit_crit_edge
  %retval.0.i = phi i32 [ -14, %land.lhs.true.i.__do_sys_io_getevents_time32.exit_crit_edge ], [ %call3.i, %if.end.i.__do_sys_io_getevents_time32.exit_crit_edge ], [ -4, %land.lhs.true5.i.__do_sys_io_getevents_time32.exit_crit_edge ], [ %spec.select.i, %signal_pending.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_init_fs_context(ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef -1593175903) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_iflags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 15
  %0 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_iflags, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %s_iflags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aio_nr_sub(i32 noundef %nr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #12
  %0 = load i32, ptr @aio_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %nr)
  %cmp = icmp ult i32 %0, %nr
  br i1 %cmp, label %do.end, label %if.else, !prof !337

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #12
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub21 = sub i32 %0, %nr
  br label %if.end22

if.end22:                                         ; preds = %if.else, %do.end
  %storemerge = phi i32 [ %sub21, %if.else ], [ 0, %do.end ]
  store i32 %storemerge, ptr @aio_nr, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aio_nr_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ioctx_alloc(i32 noundef %nr_events) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #12
  %mul = shl i32 %call4.i.i, 2
  %7 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %nr_events)
  %mul3 = shl i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %mul3)
  %cmp4 = icmp ugt i32 %mul3, 8388608
  br i1 %cmp4, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ioctx_alloc.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ioctx_alloc, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !342

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ioctx_alloc.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3)
  %tobool12.not = icmp eq i32 %mul3, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %8 = load i32, ptr @aio_max_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %nr_events)
  %cmp13 = icmp ult i32 %8, %nr_events
  br i1 %cmp13, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %9 = load ptr, ptr @kioctx_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3520) #12
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %max_reqs22 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_reqs22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr_events, ptr %max_reqs22, align 32
  %11 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @ioctx_alloc.__key, i16 noundef signext 3) #12
  %completion_lock = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %completion_lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @ioctx_alloc.__key.43, i16 noundef signext 3) #12
  %12 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull @ioctx_alloc.__key.45) #12
  tail call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #12
  %wait = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.48, ptr noundef nonnull @ioctx_alloc.__key.47) #12
  %active_reqs = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %active_reqs to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %active_reqs, ptr %active_reqs, align 4
  %prev.i = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 16, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %active_reqs, ptr %prev.i, align 8
  %call38 = tail call i32 @percpu_ref_init(ptr noundef nonnull %call.i, ptr noundef nonnull @free_ioctx_users, i32 noundef 0, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end21.err105_crit_edge

if.end21.err105_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err105

if.end41:                                         ; preds = %if.end21
  %reqs = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 2
  %call42 = tail call i32 @percpu_ref_init(ptr noundef %reqs, ptr noundef nonnull @free_ioctx_reqs, i32 noundef 0, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err105_crit_edge

if.end41.err105_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %err105

if.end45:                                         ; preds = %if.end41
  %call46 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #17
  %cpu = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call46, ptr %cpu, align 8
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end45.err105_crit_edge, label %if.end50

if.end45.err105_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %err105

if.end50:                                         ; preds = %if.end45
  %call51 = tail call fastcc i32 @aio_setup_ring(ptr noundef nonnull %call.i, i32 noundef %mul3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.err105_crit_edge, label %if.end54

if.end50.err105_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %err105

if.end54:                                         ; preds = %if.end50
  %16 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 15
  %nr_events55 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %nr_events55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_events55, align 4
  %sub = add i32 %18, -1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %16, i32 noundef 4) #12
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %sub, ptr %16, align 8
  %20 = ptrtoint ptr %nr_events55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_events55, align 4
  %sub57 = add i32 %21, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i287 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %22) #12
  %mul59 = shl i32 %call4.i.i287, 2
  %div = udiv i32 %sub57, %mul59
  %req_batch = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul59, i32 %sub57)
  %cmp61 = icmp ugt i32 %mul59, %sub57
  %spec.select = select i1 %cmp61, i32 1, i32 %div
  %23 = ptrtoint ptr %req_batch to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %req_batch, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #12
  %24 = load i32, ptr @aio_nr, align 4
  %25 = ptrtoint ptr %max_reqs22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_reqs22, align 32
  %add = add i32 %26, %24
  %27 = load i32, ptr @aio_max_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp66 = icmp ugt i32 %add, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp70 = icmp ult i32 %add, %24
  %or.cond = or i1 %cmp66, %cmp70
  br i1 %or.cond, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aio_nr_lock) #12
  br label %err_ctx

if.end72:                                         ; preds = %if.end54
  store i32 %add, ptr @aio_nr, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @aio_nr_lock) #12
  tail call fastcc void @percpu_ref_get(ptr noundef nonnull %call.i)
  tail call fastcc void @percpu_ref_get(ptr noundef %reqs)
  %call77 = tail call fastcc i32 @ioctx_add_table(ptr noundef nonnull %call.i, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %err_cleanup

if.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %12) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ioctx_alloc.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ioctx_alloc, %if.then94)) #12
          to label %cleanup [label %if.then94], !srcloc !342

if.then94:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %user_id = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %user_id, align 4
  %30 = ptrtoint ptr %nr_events55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_events55, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ioctx_alloc.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, ptr noundef nonnull %call.i, i32 noundef %29, ptr noundef %5, i32 noundef %31) #12
  br label %cleanup

err_cleanup:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %max_reqs22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_reqs22, align 32
  tail call fastcc void @aio_nr_sub(i32 noundef %33)
  br label %err_ctx

err_ctx:                                          ; preds = %err_cleanup, %if.then71
  %err.0 = phi i32 [ -11, %if.then71 ], [ %call77, %err_cleanup ]
  %dead = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 1
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dead, i32 noundef 4) #12
  %34 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %dead, align 8
  %mmap_size = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool100.not = icmp eq i32 %36, 0
  br i1 %tobool100.not, label %err_ctx.if.end104_crit_edge, label %if.then101

err_ctx.if.end104_crit_edge:                      ; preds = %err_ctx
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then101:                                       ; preds = %err_ctx
  call void @__sanitizer_cov_trace_pc() #14
  %mmap_base = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mmap_base, align 8
  %call103 = tail call i32 @vm_munmap(i32 noundef %38, i32 noundef %36) #12
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %err_ctx.if.end104_crit_edge
  tail call fastcc void @aio_free_ring(ptr noundef nonnull %call.i)
  br label %err105

err105:                                           ; preds = %if.end104, %if.end50.err105_crit_edge, %if.end45.err105_crit_edge, %if.end41.err105_crit_edge, %if.end21.err105_crit_edge
  %err.1 = phi i32 [ -12, %if.end21.err105_crit_edge ], [ -12, %if.end41.err105_crit_edge ], [ %call51, %if.end50.err105_crit_edge ], [ %err.0, %if.end104 ], [ -12, %if.end45.err105_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %12) #12
  %cpu107 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %cpu107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpu107, align 8
  tail call void @free_percpu(ptr noundef %40) #12
  %reqs108 = getelementptr inbounds %struct.kioctx, ptr %call.i, i32 0, i32 2
  tail call void @percpu_ref_exit(ptr noundef %reqs108) #12
  tail call void @percpu_ref_exit(ptr noundef nonnull %call.i) #12
  %41 = load ptr, ptr @kioctx_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef nonnull %call.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ioctx_alloc.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ioctx_alloc, %if.then122)) #12
          to label %do.end125 [label %if.then122], !srcloc !342

if.then122:                                       ; preds = %err105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ioctx_alloc.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.39, i32 noundef %err.1) #12
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %err105
  %42 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %if.then94, %if.end80, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %do.body
  %retval.0 = phi ptr [ %42, %do.end125 ], [ %call.i, %if.then94 ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then9 ], [ inttoptr (i32 -11 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end16.cleanup_crit_edge ], [ %call.i, %if.end80 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !330

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %7 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !337

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !350
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !332
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !337

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %24 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ioctx_users(ptr noundef %ref) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kioctx, ptr %ref, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #12
  %active_reqs = getelementptr inbounds %struct.kioctx, ptr %ref, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %active_reqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %active_reqs, align 4
  %cmp.i.not15 = icmp eq ptr %2, %active_reqs
  br i1 %cmp.i.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %3 = phi ptr [ %15, %list_del_init.exit.while.body_crit_edge ], [ %2, %entry.while.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %3, i32 -120
  %ki_cancel = getelementptr i8, ptr %3, i32 -36
  %4 = ptrtoint ptr %ki_cancel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ki_cancel, align 4
  %call5 = tail call i32 %5(ptr noundef %add.ptr4) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %active_reqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %active_reqs, align 4
  %cmp.i.not = icmp eq ptr %15, %active_reqs
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %0) #12
  %reqs = getelementptr inbounds %struct.kioctx, ptr %ref, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %reqs, ptr noundef null) #12
  tail call fastcc void @percpu_ref_put(ptr noundef %reqs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ioctx_reqs(ptr noundef %ref) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_wait = getelementptr i8, ptr %ref, i32 100
  %0 = ptrtoint ptr %rq_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_wait, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.ctx_rq_wait, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !332
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %rq_wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_wait, align 16
  tail call void @complete(ptr noundef %4) #12
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %free_rwork = getelementptr i8, ptr %ref, i32 44
  tail call void @__init_work(ptr noundef %free_rwork, i32 noundef 0) #12
  %5 = ptrtoint ptr %free_rwork to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %free_rwork, align 8
  %lockdep_map = getelementptr i8, ptr %ref, i32 60
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.53, ptr noundef nonnull @free_ioctx_reqs.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry9 = getelementptr i8, ptr %ref, i32 48
  %6 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr i8, ptr %ref, i32 52
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %ref, i32 56
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @free_ioctx, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call13 = tail call zeroext i1 @queue_rcu_work(ptr noundef %9, ptr noundef %free_rwork) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_setup_ring(ptr noundef %ctx, i32 noundef %nr_events) unnamed_addr #1 align 64 {
entry:
  %unused = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #12
  %6 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %unused, align 4, !annotation !352
  %add = shl i32 %nr_events, 5
  %sub = add i32 %add, 4191
  %shr = lshr i32 %sub, 12
  %7 = load ptr, ptr @aio_mnt, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb.i, align 4
  %call.i = tail call ptr @alloc_anon_inode(ptr noundef %9) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.aio_private_file.exit_crit_edge, label %if.end.i

entry.aio_private_file.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_private_file.exit

if.end.i:                                         ; preds = %entry
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @aio_ctx_aops, ptr %a_ops.i, align 4
  %13 = load ptr, ptr %i_mapping.i, align 8
  %private_data.i = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctx, ptr %private_data.i, align 4
  %15 = and i32 %sub, -4096
  %mul.i = zext i32 %15 to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %mul.i, ptr %i_size.i, align 8
  %17 = load ptr, ptr @aio_mnt, align 4
  %call4.i = tail call ptr @alloc_file_pseudo(ptr noundef %call.i, ptr noundef %17, ptr noundef nonnull @.str.64, i32 noundef 2, ptr noundef nonnull @aio_ring_fops) #12
  %cmp.i16.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16.i, label %if.then6.i, label %if.end.i.aio_private_file.exit_crit_edge

if.end.i.aio_private_file.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_private_file.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef %call.i) #12
  br label %aio_private_file.exit

aio_private_file.exit:                            ; preds = %if.then6.i, %if.end.i.aio_private_file.exit_crit_edge, %entry.aio_private_file.exit_crit_edge
  %retval.0.i180 = phi ptr [ %call4.i, %if.then6.i ], [ %call4.i, %if.end.i.aio_private_file.exit_crit_edge ], [ %call.i, %entry.aio_private_file.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i180, inttoptr (i32 -4096 to ptr)
  %aio_ring_file = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 20
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %aio_private_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %aio_ring_file, align 32
  br label %cleanup108

if.end7:                                          ; preds = %aio_private_file.exit
  %19 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i180, ptr %aio_ring_file, align 32
  %mul9 = and i32 %sub, -4096
  %sub10 = add i32 %mul9, -32
  %div173 = lshr exact i32 %sub10, 5
  %internal_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 19
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  %20 = ptrtoint ptr %ring_pages to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %internal_pages, ptr %ring_pages, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 36863
  br i1 %cmp11, label %if.end7.i.i, label %if.end19

if.end7.i.i:                                      ; preds = %if.end7
  %21 = shl nuw nsw i32 %shr, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %22 = ptrtoint ptr %ring_pages to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %ring_pages, align 16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.then17, label %if.end7.i.i.for.body.lr.ph_crit_edge

if.end7.i.i.for.body.lr.ph_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.then17:                                        ; preds = %if.end7.i.i
  %23 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aio_ring_file, align 32
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then17.cleanup108_crit_edge, label %if.then.i

if.then17.cleanup108_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup108

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i.i, align 8
  tail call void @truncate_setsize(ptr noundef %26, i64 noundef 0) #12
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 18
  %27 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_mapping.i, align 4
  %private_lock.i = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %private_lock.i) #12
  %private_data.i182 = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %private_data.i182 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %private_data.i182, align 4
  %30 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %aio_ring_file, align 32
  tail call void @_raw_spin_unlock(ptr noundef %private_lock.i) #12
  tail call void @fput(ptr noundef nonnull %24) #12
  br label %cleanup108

if.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp20206.not = icmp ult i32 %sub, 4096
  br i1 %cmp20206.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body.lr.ph_crit_edge

if.end19.for.body.lr.ph_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19.for.body.lr.ph_crit_edge, %if.end7.i.i.for.body.lr.ph_crit_edge
  %f_mapping = getelementptr inbounds %struct.file, ptr %retval.0.i180, i32 0, i32 18
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping, align 4
  %call.i184 = tail call ptr @pagecache_get_page(ptr noundef %32, i32 noundef %i.0207, i32 noundef 7, i32 noundef 1052098) #12
  %tobool23.not = icmp eq ptr %call.i184, null
  br i1 %tobool23.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_setup_ring.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_setup_ring, %if.then30)) #12
          to label %do.end [label %if.then30], !srcloc !342

if.then30:                                        ; preds = %do.body
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid, align 8
  %37 = getelementptr inbounds %struct.page, ptr %call.i184, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i185, label %if.then.i.i, !prof !330

if.then.i.i:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %39, -1
  br label %page_count.exit

if.end.i.i185:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call.i184 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i185, %if.then.i.i
  %retval.0.i.i186 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %40, %if.end.i.i185 ]
  %41 = inttoptr i32 %retval.0.i.i186 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_setup_ring.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %36, i32 noundef %i.0207, i32 noundef %43) #12
  br label %do.end

do.end:                                           ; preds = %page_count.exit, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !353
  %44 = getelementptr inbounds %struct.page, ptr %call.i184, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.inc, label %if.then.i.i.i, !prof !330

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call.i184, ptr noundef nonnull @.str.73) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !354
  unreachable

for.inc:                                          ; preds = %do.end
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i184) #12
  tail call void @unlock_page(ptr noundef nonnull %call.i184) #12
  %47 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring_pages, align 16
  %arrayidx = getelementptr ptr, ptr %48, i32 %i.0207
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i184, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0207, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end19.for.end_crit_edge ], [ %i.0207, %for.body.for.end_crit_edge ], [ %umax, %for.inc.for.end_crit_edge ]
  %nr_pages36 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 11
  %50 = ptrtoint ptr %nr_pages36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.0.lcssa, ptr %nr_pages36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %shr)
  %cmp37.not = icmp eq i32 %i.0.lcssa, %shr
  br i1 %cmp37.not, label %if.end46, label %if.then45, !prof !330

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @aio_free_ring(ptr noundef %ctx)
  br label %cleanup108

if.end46:                                         ; preds = %for.end
  %mmap_size = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 9
  %51 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul9, ptr %mmap_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_setup_ring.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_setup_ring, %if.then60)) #12
          to label %do.end64 [label %if.then60], !srcloc !342

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mmap_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_setup_ring.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.57, i32 noundef %53) #12
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@aio_setup_ring, %if.then.i.i187)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i187], !srcloc !342

if.then.i.i187:                                   ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i187, %do.end64
  %mmap_lock.i = getelementptr inbounds %struct.anon.27, ptr %5, i32 0, i32 15
  %call.i188 = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@aio_setup_ring, %if.then.i4.i)) #12
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !342

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp.i189 = icmp eq i32 %call.i188, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i189) #12
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool66.not = icmp eq i32 %call.i188, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mmap_size, align 4
  tail call fastcc void @aio_free_ring(ptr noundef %ctx)
  br label %cleanup108

if.end69:                                         ; preds = %mmap_write_lock_killable.exit
  %55 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aio_ring_file, align 32
  %57 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mmap_size, align 4
  %call72 = call i32 @do_mmap(ptr noundef %56, i32 noundef 0, i32 noundef %58, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %unused, ptr noundef null) #12
  %mmap_base = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 8
  %59 = ptrtoint ptr %mmap_base to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call72, ptr %mmap_base, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@aio_setup_ring, %if.then.i.i190)) #12
          to label %mmap_write_unlock.exit [label %if.then.i.i190], !srcloc !342

if.then.i.i190:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #12
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i190, %if.end69
  call void @up_write(ptr noundef %mmap_lock.i) #12
  %60 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mmap_base, align 8
  %62 = inttoptr i32 %61 to ptr
  %cmp.i192 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then75, label %do.body78

if.then75:                                        ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %mmap_size, align 4
  call fastcc void @aio_free_ring(ptr noundef %ctx)
  br label %cleanup108

do.body78:                                        ; preds = %mmap_write_unlock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_setup_ring.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_setup_ring, %if.then90)) #12
          to label %do.end94 [label %if.then90], !srcloc !342

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mmap_base, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_setup_ring.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.57, i32 noundef %65) #12
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body78
  %66 = ptrtoint ptr %mmap_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mmap_base, align 8
  %user_id = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 3
  %68 = ptrtoint ptr %user_id to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %user_id, align 4
  %nr_events96 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 7
  %69 = ptrtoint ptr %nr_events96 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div173, ptr %nr_events96, align 4
  %70 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring_pages, align 16
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %74 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %74, 512
  %75 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %78, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %79 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %84, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %73, i32 noundef %or.i) #12
  %nr = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div173, ptr %nr, align 4
  %86 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %call.i.i, align 8
  %tail = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %tail, align 4
  %head = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %head, align 8
  %magic = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1593175903, ptr %magic, align 8
  %compat_features = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %compat_features to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %compat_features, align 4
  %incompat_features = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %incompat_features to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %incompat_features, align 8
  %header_length = getelementptr inbounds %struct.aio_ring, ptr %call.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 32, ptr %header_length, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %93 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 213
  %97 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %98, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %99 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i193 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i193 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i194 = add i32 %102, -1
  store volatile i32 %sub.i.i194, ptr %preempt_count.i.i.i, align 4
  %103 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ring_pages, align 16
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  call void @flush_dcache_page(ptr noundef %106) #12
  br label %cleanup108

cleanup108:                                       ; preds = %do.end94, %if.then75, %if.then67, %if.then45, %if.then.i, %if.then17.cleanup108_crit_edge, %if.then6
  %retval.0 = phi i32 [ -12, %if.then6 ], [ -12, %if.then45 ], [ -4, %if.then67 ], [ -12, %if.then75 ], [ 0, %do.end94 ], [ -12, %if.then17.cleanup108_crit_edge ], [ -12, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_get(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !330

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %7 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, 1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !337

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !350
  br label %if.end38.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !359
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3.i, label %if.end38.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end38.i.percpu_ref_get_many.exit_crit_edge:    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_get_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end38.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_get_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_get_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %percpu_ref_get_many.exit

percpu_ref_get_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, %if.end38.i.percpu_ref_get_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %20 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i10.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ioctx_add_table(ptr noundef %ctx, ptr noundef %mm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctx_lock = getelementptr inbounds %struct.anon.27, ptr %mm, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %ioctx_lock) #12
  %ioctx_table = getelementptr inbounds %struct.anon.27, ptr %mm, i32 0, i32 45
  %0 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ioctx_table, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %table.0 = phi ptr [ %1, %entry ], [ %table.0.be, %while.cond.backedge ]
  %tobool.not = icmp eq ptr %table.0, null
  br i1 %tobool.not, label %while.cond.cond.end_crit_edge, label %for.cond.preheader

while.cond.cond.end_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

for.cond.preheader:                               ; preds = %while.cond
  %nr = getelementptr inbounds %struct.kioctx_table, ptr %table.0, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp224.not = icmp eq i32 %3, 0
  br i1 %cmp224.not, label %for.cond.preheader.cond.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0225 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kioctx_table, ptr %table.0, i32 0, i32 2, i32 %i.0225
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 21
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.0225, ptr %id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !360
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ctx, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ioctx_lock) #12
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  %8 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_pages, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %17 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %or.i) #12
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call.i.i, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %31, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %32 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cond.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cond.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end:                                         ; preds = %for.inc.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge, %while.cond.cond.end_crit_edge
  %cond = phi i32 [ 1, %while.cond.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ], [ %3, %for.inc.cond.end_crit_edge ]
  %mul = shl i32 %cond, 2
  tail call void @_raw_spin_unlock(ptr noundef %ioctx_lock) #12
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #12
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  %spec.select.i = or i32 %38, 12
  %retval.0.i = select i1 %37, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #17
  %tobool66.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool66.not, label %cond.end.cleanup_crit_edge, label %if.end68

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68:                                         ; preds = %cond.end
  %nr69 = getelementptr inbounds %struct.kioctx_table, ptr %call9.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %nr69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %nr69, align 8
  tail call void @_raw_spin_lock(ptr noundef %ioctx_lock) #12
  %40 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %ioctx_table, align 8
  %tobool77.not = icmp eq ptr %41, null
  br i1 %tobool77.not, label %do.body79, label %if.else120

do.body79:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !361
  %42 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call9.i.i, ptr %ioctx_table, align 8
  br label %while.cond.backedge

if.else120:                                       ; preds = %if.end68
  %43 = ptrtoint ptr %nr69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr69, align 8
  %nr122 = getelementptr inbounds %struct.kioctx_table, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %nr122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp123 = icmp ugt i32 %44, %46
  br i1 %cmp123, label %if.then124, label %if.else180

if.then124:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #14
  %table125 = getelementptr inbounds %struct.kioctx_table, ptr %call9.i.i, i32 0, i32 2
  %table126 = getelementptr inbounds %struct.kioctx_table, ptr %41, i32 0, i32 2
  %mul129 = shl i32 %46, 2
  %47 = call ptr @memcpy(ptr %table125, ptr %table126, i32 %mul129)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !362
  %48 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call9.i.i, ptr %ioctx_table, align 8
  tail call void @kvfree_call_rcu(ptr noundef nonnull %41, ptr noundef null) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else180, %if.then124, %do.body79
  %table.0.be = phi ptr [ %call9.i.i, %if.then124 ], [ %41, %if.else180 ], [ %call9.i.i, %do.body79 ]
  br label %while.cond

if.else180:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %while.cond.backedge

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aio_free_ring(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aio_ring_file1.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 20
  %0 = ptrtoint ptr %aio_ring_file1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aio_ring_file1.i, align 32
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_aio_ring_file.exit_crit_edge, label %if.then.i

entry.put_aio_ring_file.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_aio_ring_file.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  tail call void @truncate_setsize(ptr noundef %3, i64 noundef 0) #12
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping.i, align 4
  %private_lock.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %private_lock.i) #12
  %private_data.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data.i, align 4
  %7 = ptrtoint ptr %aio_ring_file1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %aio_ring_file1.i, align 32
  tail call void @_raw_spin_unlock(ptr noundef %private_lock.i) #12
  tail call void @fput(ptr noundef nonnull %1) #12
  br label %put_aio_ring_file.exit

put_aio_ring_file.exit:                           ; preds = %if.then.i, %entry.put_aio_ring_file.exit_crit_edge
  %nr_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp43 = icmp sgt i32 %9, 0
  br i1 %cmp43, label %for.body.lr.ph, label %put_aio_ring_file.exit.for.end_crit_edge

put_aio_ring_file.exit.for.end_crit_edge:         ; preds = %put_aio_ring_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %put_aio_ring_file.exit
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_free_ring.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_free_ring, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !342

if.then:                                          ; preds = %for.body
  %10 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_pages, align 16
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.044
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !330

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %22, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %19 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %25 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_free_ring.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %15, i32 noundef %i.044, i32 noundef %26) #12
  br label %do.end

do.end:                                           ; preds = %page_count.exit, %for.body
  %27 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring_pages, align 16
  %arrayidx6 = getelementptr ptr, ptr %28, i32 %i.044
  %29 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %30, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx6, align 4
  %32 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i36 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !330

if.then.i.i39:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i38 = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i40:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %35, %if.end.i.i40 ]
  %36 = inttoptr i32 %retval.0.i.i41 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !337

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = inttoptr i32 %retval.0.i.i41 to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.67) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !363
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !332
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aio_free_ring, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !342

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %41 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_pages, align 4
  %cmp = icmp slt i32 %inc, %42
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %put_aio_ring_file.exit.for.end_crit_edge
  %ring_pages12 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  %43 = ptrtoint ptr %ring_pages12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring_pages12, align 16
  %tobool13.not = icmp eq ptr %44, null
  %internal_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 19
  %cmp15.not = icmp eq ptr %44, %internal_pages
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %for.end.if.end19_crit_edge, label %if.then16

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %44) #12
  %45 = ptrtoint ptr %ring_pages12 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ring_pages12, align 16
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ioctx(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_ioctx.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@free_ioctx, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !342

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_ioctx.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, ptr noundef %add.ptr) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @aio_free_ring(ptr noundef %add.ptr)
  %cpu = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 8
  tail call void @free_percpu(ptr noundef %1) #12
  %reqs = getelementptr i8, ptr %work, i32 -44
  tail call void @percpu_ref_exit(ptr noundef %reqs) #12
  tail call void @percpu_ref_exit(ptr noundef %add.ptr) #12
  %2 = load ptr, ptr @kioctx_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_rcu_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_migratepage(ptr noundef %mapping, ptr noundef %new, ptr noundef %old, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp = icmp eq i32 %mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_lock = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %private_lock) #12
  %private_data = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 14
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %if.end
  %2 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 17
  %call = tail call i32 @mutex_trylock(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end2.out_crit_edge, label %if.end5

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end2
  %index = getelementptr inbounds %struct.page, ptr %old, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %nr_pages = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6 = icmp ult i32 %4, %6
  br i1 %cmp6, label %if.end11, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end11:                                         ; preds = %if.end5
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_pages, align 16
  %arrayidx = getelementptr ptr, ptr %8, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp8.not = icmp eq ptr %10, %old
  br i1 %cmp8.not, label %do.body, label %if.end11.out_unlock_crit_edge

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body:                                          ; preds = %if.end11
  %11 = getelementptr inbounds %struct.page, ptr %old, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !330

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %old to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !337

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !330

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %19, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %old to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %20, %if.end.i20.i ]
  %21 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.65) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #12, !srcloc !364
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !330

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %19, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %old to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %22, %if.end.i27.i ]
  %23 = inttoptr i32 %retval.0.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %do.end26, label %do.body20, !prof !330

do.body20:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/aio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #12, !srcloc !365
  unreachable

do.end26:                                         ; preds = %PageWriteback.exit
  %27 = getelementptr inbounds %struct.page, ptr %new, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i97 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i101, label %if.then.i.i100, !prof !330

if.then.i.i100:                                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i99 = add i32 %29, -1
  br label %_compound_head.exit.i103

if.end.i.i101:                                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %new to i32
  br label %_compound_head.exit.i103

_compound_head.exit.i103:                         ; preds = %if.end.i.i101, %if.then.i.i100
  %retval.0.i.i102 = phi i32 [ %sub.i.i99, %if.then.i.i100 ], [ %30, %if.end.i.i101 ]
  %31 = inttoptr i32 %retval.0.i.i102 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %33, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !337

if.then.i1.i:                                     ; preds = %_compound_head.exit.i103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.66) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !366
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i103
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !359
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@aio_migratepage, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !342

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %31, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %call27 = tail call i32 @migrate_page_move_mapping(ptr noundef %mapping, ptr noundef %new, ptr noundef %old, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %do.body32, label %if.then29

if.then29:                                        ; preds = %get_page.exit
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %27, align 4
  %and.i.i104 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.not.i.i105 = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.not.i.i105, label %if.end.i.i108, label %if.then.i.i107, !prof !330

if.then.i.i107:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i106 = add i32 %36, -1
  br label %_compound_head.exit.i110

if.end.i.i108:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %new to i32
  br label %_compound_head.exit.i110

_compound_head.exit.i110:                         ; preds = %if.end.i.i108, %if.then.i.i107
  %retval.0.i.i109 = phi i32 [ %sub.i.i106, %if.then.i.i107 ], [ %37, %if.end.i.i108 ]
  %38 = inttoptr i32 %retval.0.i.i109 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i111, label %do.end5.i.i.i.i, !prof !337

if.then.i.i.i.i111:                               ; preds = %_compound_head.exit.i110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.67) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !363
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i110
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !332
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aio_migratepage, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !342

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %38, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.out_unlock.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.out_unlock_crit_edge

folio_put_testzero.exit.i.i.out_unlock_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

folio_put_testzero.exit.i.i.out_unlock.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.sink.split

do.body32:                                        ; preds = %get_page.exit
  %completion_lock = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 18, i32 2
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %completion_lock) #12
  tail call void @migrate_page_copy(ptr noundef %new, ptr noundef %old) #12
  %42 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring_pages, align 16
  %arrayidx42 = getelementptr ptr, ptr %43, i32 %4
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx42, align 4
  %cmp43.not = icmp eq ptr %45, %old
  br i1 %cmp43.not, label %do.end60, label %do.body52, !prof !330

do.body52:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/aio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #12, !srcloc !367
  unreachable

do.end60:                                         ; preds = %do.body32
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %new, ptr %arrayidx42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %completion_lock, i32 noundef %call35) #12
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %11, align 4
  %and.i.i112 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %if.end.i.i116, label %if.then.i.i115, !prof !330

if.then.i.i115:                                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i114 = add i32 %48, -1
  br label %_compound_head.exit.i121

if.end.i.i116:                                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %old to i32
  br label %_compound_head.exit.i121

_compound_head.exit.i121:                         ; preds = %if.end.i.i116, %if.then.i.i115
  %retval.0.i.i117 = phi i32 [ %sub.i.i114, %if.then.i.i115 ], [ %49, %if.end.i.i116 ]
  %50 = inttoptr i32 %retval.0.i.i117 to ptr
  %_refcount.i.i.i.i.i118 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i118, i32 noundef 4) #12
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i120 = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i120, label %if.then.i.i.i.i122, label %do.end5.i.i.i.i126, !prof !337

if.then.i.i.i.i122:                               ; preds = %_compound_head.exit.i121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.67) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !363
  unreachable

do.end5.i.i.i.i126:                               ; preds = %_compound_head.exit.i121
  %call.i.i.i10.i.i.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i118, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i118, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i118, ptr %_refcount.i.i.i.i.i118, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i118) #12, !srcloc !332
  %asmresult.i.i.i.i.i.i.i.i.i.i124 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i124)
  %cmp.i.i.i.i.i.i.i125 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i124, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@aio_migratepage, %if.then.i.i.i.i.i128)) #12
          to label %folio_put_testzero.exit.i.i129 [label %if.then.i.i.i.i.i128], !srcloc !342

if.then.i.i.i.i.i128:                             ; preds = %do.end5.i.i.i.i126
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i127 = zext i1 %cmp.i.i.i.i.i.i.i125 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i127) #12
  br label %folio_put_testzero.exit.i.i129

folio_put_testzero.exit.i.i129:                   ; preds = %if.then.i.i.i.i.i128, %do.end5.i.i.i.i126
  br i1 %cmp.i.i.i.i.i.i.i125, label %folio_put_testzero.exit.i.i129.out_unlock.sink.split_crit_edge, label %folio_put_testzero.exit.i.i129.out_unlock_crit_edge

folio_put_testzero.exit.i.i129.out_unlock_crit_edge: ; preds = %folio_put_testzero.exit.i.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

folio_put_testzero.exit.i.i129.out_unlock.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %folio_put_testzero.exit.i.i129.out_unlock.sink.split_crit_edge, %folio_put_testzero.exit.i.i.out_unlock.sink.split_crit_edge
  %.sink = phi ptr [ %38, %folio_put_testzero.exit.i.i.out_unlock.sink.split_crit_edge ], [ %50, %folio_put_testzero.exit.i.i129.out_unlock.sink.split_crit_edge ]
  %rc.1.ph = phi i32 [ %call27, %folio_put_testzero.exit.i.i.out_unlock.sink.split_crit_edge ], [ 0, %folio_put_testzero.exit.i.i129.out_unlock.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %folio_put_testzero.exit.i.i129.out_unlock_crit_edge, %folio_put_testzero.exit.i.i.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %rc.1 = phi i32 [ -11, %if.end11.out_unlock_crit_edge ], [ %call27, %folio_put_testzero.exit.i.i.out_unlock_crit_edge ], [ 0, %folio_put_testzero.exit.i.i129.out_unlock_crit_edge ], [ -22, %if.end5.out_unlock_crit_edge ], [ %rc.1.ph, %out_unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %out

out:                                              ; preds = %out_unlock, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %out_unlock ], [ -22, %if.end.out_crit_edge ], [ -11, %if.end2.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %private_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aio_ring_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef %vma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %or = or i32 %1, 262144
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aio_ring_vm_ops, ptr %vm_ops, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_ring_mremap(ptr nocapture noundef readonly %vma) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_mm, align 4
  %ioctx_lock = getelementptr inbounds %struct.anon.27, ptr %3, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %ioctx_lock) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ioctx_table = getelementptr inbounds %struct.anon.27, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ioctx_table, align 8
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @aio_ring_mremap.__warned, align 1
  br i1 %.b55, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aio_ring_mremap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.68) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %nr = getelementptr inbounds %struct.kioctx_table, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp69.not = icmp eq i32 %11, 0
  br i1 %cmp69.not, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end7.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kioctx_table, ptr %9, i32 0, i32 2, i32 %i.070
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %for.body.do.end25_crit_edge

for.body.do.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true17:                                  ; preds = %for.body
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b5354 = load i1, ptr @aio_ring_mremap.__warned.69, align 1
  br i1 %.b5354, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @aio_ring_mremap.__warned.69, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.68) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %for.body.do.end25_crit_edge
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %do.end25.for.inc_crit_edge, label %land.lhs.true28

do.end25.for.inc_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28:                                  ; preds = %do.end25
  %aio_ring_file = getelementptr inbounds %struct.kioctx, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %aio_ring_file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aio_ring_file, align 32
  %cmp29 = icmp eq ptr %15, %1
  br i1 %cmp29, label %if.then30, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then30:                                        ; preds = %land.lhs.true28
  %dead = getelementptr inbounds %struct.kioctx, ptr %13, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dead, i32 noundef 4) #12
  %16 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not = icmp eq i32 %17, 0
  br i1 %tobool32.not, label %if.then33, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma, align 4
  %mmap_base = getelementptr inbounds %struct.kioctx, ptr %13, i32 0, i32 8
  %20 = ptrtoint ptr %mmap_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mmap_base, align 8
  %user_id = getelementptr inbounds %struct.kioctx, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %user_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %user_id, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %do.end25.for.inc_crit_edge
  %inc = add nuw i32 %i.070, 1
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then33, %if.then30.for.end_crit_edge, %do.end7.for.end_crit_edge
  %res.3 = phi i32 [ -22, %if.then30.for.end_crit_edge ], [ 0, %if.then33 ], [ -22, %do.end7.for.end_crit_edge ], [ -22, %for.inc.for.end_crit_edge ]
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %24 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i63 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @_raw_spin_unlock(ptr noundef %ioctx_lock) #12
  ret i32 %res.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_page_mkwrite(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_ioctx(i32 noundef %ctx_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ctx_id to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i77 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i77 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm1, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1081) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !338
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #12, !srcloc !368
  %asmresult = extractvalue { i32, i32 } %10, 0
  %asmresult4 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %ioctx_table = getelementptr inbounds %struct.anon.27, ptr %6, i32 0, i32 45
  %15 = ptrtoint ptr %ioctx_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ioctx_table, align 8
  %call8 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end17_crit_edge

rcu_read_lock.exit.do.end17_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @lookup_ioctx.__warned, align 1
  br i1 %.b76, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @lookup_ioctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.68) #12
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %rcu_read_lock.exit.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %lor.lhs.false

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %do.end17
  %nr = getelementptr inbounds %struct.kioctx_table, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult4, i32 %18)
  %cmp.not = icmp ult i32 %asmresult4, %18
  br i1 %cmp.not, label %if.end21, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end21:                                         ; preds = %lor.lhs.false
  %19 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %asmresult4, i32 %18) #12, !srcloc !369
  %and = and i32 %19, %asmresult4
  %arrayidx = getelementptr %struct.kioctx_table, ptr %16, i32 0, i32 2, i32 %and
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx, align 4
  %call37 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end21.do.end47_crit_edge

if.end21.do.end47_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true39:                                  ; preds = %if.end21
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b7475 = load i1, ptr @lookup_ioctx.__warned.83, align 1
  br i1 %.b7475, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @lookup_ioctx.__warned.83, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1091, ptr noundef nonnull @.str.68) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %if.end21.do.end47_crit_edge
  %tobool49.not = icmp eq ptr %21, null
  br i1 %tobool49.not, label %do.end47.out_crit_edge, label %land.lhs.true50

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true50:                                  ; preds = %do.end47
  %user_id = getelementptr inbounds %struct.kioctx, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %user_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %ctx_id)
  %cmp51 = icmp eq i32 %23, %ctx_id
  br i1 %cmp51, label %if.then52, label %land.lhs.true50.out_crit_edge

land.lhs.true50.out_crit_edge:                    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then52:                                        ; preds = %land.lhs.true50
  %24 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then52.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then52.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then52
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then52.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !330

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 280, i32 noundef 9, ptr noundef null) #12
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %21, align 4
  %and.i.i.i78 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i78)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i78, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !330

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i105.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %36, %29
  %37 = inttoptr i32 %add.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add63.i.i = add i32 %39, 1
  store i32 %add63.i.i, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !337

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #12, !srcloc !350
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %21, i32 0, i32 1
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !370
  tail call void @llvm.prefetch.p0(ptr %42, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 0, i32 1, ptr elementtype(i32) %42) #12, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !372
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %44 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i11.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %spec.select = select i1 %ret.0.off0.i.i, ptr %21, ptr null
  br label %out

out:                                              ; preds = %percpu_ref_tryget_live.exit, %land.lhs.true50.out_crit_edge, %do.end47.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ null, %land.lhs.true50.out_crit_edge ], [ null, %do.end47.out_crit_edge ], [ null, %do.end17.out_crit_edge ], [ %spec.select, %percpu_ref_tryget_live.exit ]
  %call.i79 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i79, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i82

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i82:                                ; preds = %out
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %48 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i86 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_submit_one(ptr noundef %ctx, ptr noundef %user_iocb) unnamed_addr #1 align 64 {
entry:
  %iocb = alloca %struct.iocb, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iocb) #12
  %0 = call ptr @memset(ptr %iocb, i32 255, i32 64)
  tail call void @__might_fault(ptr noundef nonnull @.str.98, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_iocb, i32 64, i32 -1226833920) #16, !srcloc !346
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !330

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %iocb, i32 noundef 64) #12
  %2 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !338
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %iocb, ptr noundef %user_iocb, i32 noundef 64) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !339
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !330

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %entry.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %iocb, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %aio_reserved2 = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 9
  %6 = ptrtoint ptr %aio_reserved2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %aio_reserved2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %if.end22, label %do.body, !prof !330

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_submit_one.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_submit_one, %if.then20)) #12
          to label %cleanup [label %if.then20], !srcloc !342

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_submit_one.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %aio_buf = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 6
  %8 = ptrtoint ptr %aio_buf to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %aio_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %lor.lhs.false, label %if.end22.do.body42_crit_edge, !prof !330

if.end22.do.body42_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

lor.lhs.false:                                    ; preds = %if.end22
  %aio_nbytes = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 7
  %11 = ptrtoint ptr %aio_nbytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %aio_nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %12)
  %.not = icmp ult i64 %12, 2147483648
  br i1 %.not, label %if.end58, label %lor.lhs.false.do.body42_crit_edge, !prof !373

lor.lhs.false.do.body42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

do.body42:                                        ; preds = %lor.lhs.false.do.body42_crit_edge, %if.end22.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @io_submit_one.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@io_submit_one, %if.then54)) #12
          to label %cleanup [label %if.then54], !srcloc !342

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @io_submit_one.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.91) #12
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr @kiocb_cachep, align 4
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end58.cleanup_crit_edge, label %if.end.i, !prof !337

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end58
  %call.i.i5 = call fastcc zeroext i1 @__get_reqs_available(ptr noundef %ctx) #12
  br i1 %call.i.i5, label %if.end.i.if.end70_crit_edge, label %if.end.i.i6

if.end.i.if.end70_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end.i.i6:                                      ; preds = %if.end.i
  %completion_lock.i.i.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 18, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %completion_lock.i.i.i) #12
  %completed_events.i.i.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %completed_events.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %completed_events.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i6.get_reqs_available.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i6.get_reqs_available.exit.i_crit_edge:  ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_reqs_available.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i6
  %16 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 18
  %ring_pages.i.i.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  %17 = ptrtoint ptr %ring_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring_pages.i.i.i, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i7 = or i32 %21, 512
  %22 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %26 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %20, i32 noundef %or.i.i.i.i7) #12
  %head1.i.i.i = getelementptr inbounds %struct.aio_ring, ptr %call.i.i.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %head1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head1.i.i.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %34 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %39, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %40 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %16, align 128
  %nr_events.i.i.i.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 7
  %46 = ptrtoint ptr %nr_events.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_events.i.i.i.i, align 4
  %rem.i.i.i.i = urem i32 %33, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %rem.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %45, %rem.i.i.i.i
  %sub.i.i.i.i = sub i32 %45, %rem.i.i.i.i
  %sub3.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %47, i32 0
  %events_in_ring.0.i.i.i.i = add i32 %sub3.i.i.i.i, %sub.i.i.i.i
  %48 = ptrtoint ptr %completed_events.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %completed_events.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %events_in_ring.0.i.i.i.i)
  %tobool.not.not.i.i.i.i = icmp ugt i32 %49, %events_in_ring.0.i.i.i.i
  br i1 %tobool.not.not.i.i.i.i, label %if.end10.i.i.i.i, label %if.then.i.i.i.get_reqs_available.exit.i_crit_edge

if.then.i.i.i.get_reqs_available.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_reqs_available.exit.i

if.end10.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = call i32 @llvm.usub.sat.i32(i32 %49, i32 %events_in_ring.0.i.i.i.i) #12
  %sub12.i.i.i.i = sub i32 %49, %50
  %51 = ptrtoint ptr %completed_events.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub12.i.i.i.i, ptr %completed_events.i.i.i, align 4
  call fastcc void @put_reqs_available(ptr noundef %ctx, i32 noundef %50) #12
  br label %get_reqs_available.exit.i

get_reqs_available.exit.i:                        ; preds = %if.end10.i.i.i.i, %if.then.i.i.i.get_reqs_available.exit.i_crit_edge, %if.end.i.i6.get_reqs_available.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %completion_lock.i.i.i) #12
  %call1.i.i = call fastcc zeroext i1 @__get_reqs_available(ptr noundef %ctx) #12
  br i1 %call1.i.i, label %get_reqs_available.exit.i.if.end70_crit_edge, label %if.then13.i, !prof !330

get_reqs_available.exit.i.if.end70_crit_edge:     ; preds = %get_reqs_available.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then13.i:                                      ; preds = %get_reqs_available.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = load ptr, ptr @kiocb_cachep, align 4
  call void @kmem_cache_free(ptr noundef %52, ptr noundef nonnull %call.i) #12
  br label %cleanup

if.end70:                                         ; preds = %get_reqs_available.exit.i.if.end70_crit_edge, %if.end.i.if.end70_crit_edge
  %reqs.i = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 2
  call fastcc void @percpu_ref_get(ptr noundef %reqs.i) #12
  %ki_ctx.i = getelementptr inbounds %struct.aio_kiocb, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %ki_ctx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctx, ptr %ki_ctx.i, align 8
  %ki_list.i = getelementptr inbounds %struct.aio_kiocb, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %ki_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %ki_list.i, ptr %ki_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.aio_kiocb, ptr %call.i, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ki_list.i, ptr %prev.i.i, align 4
  %ki_refcnt.i = getelementptr inbounds %struct.aio_kiocb, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt.i, i32 noundef 4) #12
  %56 = ptrtoint ptr %ki_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 2, ptr %ki_refcnt.i, align 8
  %ki_eventfd.i = getelementptr inbounds %struct.aio_kiocb, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %ki_eventfd.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ki_eventfd.i, align 4
  %call72 = call fastcc i32 @__io_submit_one(ptr noundef nonnull %iocb, ptr noundef %user_iocb, ptr noundef nonnull %call.i)
  call fastcc void @iocb_put(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end70.cleanup_crit_edge, label %if.then80, !prof !330

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @iocb_destroy(ptr noundef nonnull %call.i)
  call fastcc void @put_reqs_available(ptr noundef %ctx, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end70.cleanup_crit_edge, %if.then13.i, %if.end58.cleanup_crit_edge, %if.then54, %do.body42, %if.then20, %do.body, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.then20 ], [ -22, %if.then54 ], [ %call72, %if.then80 ], [ 0, %if.end70.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body42 ], [ -14, %if.then11.i.i ], [ -11, %if.then13.i ], [ -11, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iocb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__io_submit_one(ptr nocapture noundef readonly %iocb, ptr noundef %user_iocb, ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  %apt.i = alloca %struct.aio_poll_table, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aio_fildes = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 5
  %0 = ptrtoint ptr %aio_fildes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aio_fildes, align 4
  %call = tail call ptr @fget(i32 noundef %1) #12
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %req, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !337

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %aio_flags = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 10
  %3 = ptrtoint ptr %aio_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aio_flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %aio_resfd = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 11
  %5 = ptrtoint ptr %aio_resfd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aio_resfd, align 4
  %call6 = tail call ptr @eventfd_ctx_fdget(i32 noundef %6) #12
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 6
  %7 = ptrtoint ptr %ki_eventfd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %ki_eventfd, align 4
  br label %if.end11

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call6 to i32
  br label %return

if.end11:                                         ; preds = %cleanup.thread, %if.end.if.end11_crit_edge
  %aio_key = getelementptr inbounds %struct.iocb, ptr %user_iocb, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1963) #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !338
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %aio_key, i32 0, i32 -1226833921) #12, !srcloc !374
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end37, label %do.body22, !prof !330

do.body22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__io_submit_one.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__io_submit_one, %if.then33)) #12
          to label %return [label %if.then33], !srcloc !342

if.then33:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__io_submit_one.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #12
  br label %return

if.end37:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %user_iocb to i32
  %conv = zext i32 %13 to i64
  %ki_res = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 3
  %obj = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %obj to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %obj, align 8
  %15 = ptrtoint ptr %iocb to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iocb, align 8
  %17 = ptrtoint ptr %ki_res to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ki_res, align 8
  %res = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 3, i32 2
  %aio_lio_opcode = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 3
  %18 = call ptr @memset(ptr %res, i32 0, i32 16)
  %19 = ptrtoint ptr %aio_lio_opcode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %aio_lio_opcode, align 8
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %do.body59 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb44
    i16 7, label %sw.bb47
    i16 8, label %sw.bb50
    i16 2, label %sw.bb53
    i16 3, label %sw.bb55
    i16 5, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call fastcc i32 @aio_read(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext false)
  br label %return

sw.bb44:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = tail call fastcc i32 @aio_write(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %return

sw.bb47:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call fastcc i32 @aio_read(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext true)
  br label %return

sw.bb50:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call fastcc i32 @aio_write(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %return

sw.bb53:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = tail call fastcc i32 @aio_fsync(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext false)
  br label %return

sw.bb55:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call fastcc i32 @aio_fsync(ptr noundef %req, ptr noundef %iocb, i1 noundef zeroext true)
  br label %return

sw.bb57:                                          ; preds = %if.end37
  %ki_ctx.i = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %ki_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ki_ctx.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %apt.i) #12
  %24 = getelementptr inbounds i8, ptr %apt.i, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777215, ptr %24, align 4
  %aio_buf.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 6
  %26 = ptrtoint ptr %aio_buf.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %aio_buf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %27)
  %28 = icmp ult i64 %27, 65536
  br i1 %28, label %if.end.i, label %sw.bb57.aio_poll.exit_crit_edge

sw.bb57.aio_poll.exit_crit_edge:                  ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_poll.exit

if.end.i:                                         ; preds = %sw.bb57
  %aio_offset.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 8
  %29 = ptrtoint ptr %aio_offset.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %aio_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool.not.i = icmp eq i64 %30, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.aio_poll.exit_crit_edge

if.end.i.aio_poll.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_poll.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %aio_nbytes.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 7
  %31 = ptrtoint ptr %aio_nbytes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %aio_nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool4.not.i = icmp eq i64 %32, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.aio_poll.exit_crit_edge

lor.lhs.false.i.aio_poll.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_poll.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %aio_rw_flags.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 1
  %33 = ptrtoint ptr %aio_rw_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %aio_rw_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i = icmp eq i32 %34, 0
  br i1 %tobool6.not.i, label %do.body.i, label %lor.lhs.false5.i.aio_poll.exit_crit_edge

lor.lhs.false5.i.aio_poll.exit_crit_edge:         ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_poll.exit

do.body.i:                                        ; preds = %lor.lhs.false5.i
  %work.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %35 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @aio_poll.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry12.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 7, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @aio_poll_complete_work, ptr %func.i, align 4
  %39 = ptrtoint ptr %aio_buf.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %aio_buf.i, align 8
  %conv15.i = trunc i64 %40 to i32
  %41 = and i32 %conv15.i, 10215
  %or16.i = or i32 %41, 24
  %events.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 2
  %42 = ptrtoint ptr %events.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or16.i, ptr %events.i, align 4
  %head.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 1
  %43 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %head.i, align 4
  %cancelled.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 3
  %44 = ptrtoint ptr %cancelled.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cancelled.i, align 4
  %work_scheduled.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 4
  %45 = ptrtoint ptr %work_scheduled.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %work_scheduled.i, align 1
  %work_need_resched.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 5
  %46 = ptrtoint ptr %work_need_resched.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %work_need_resched.i, align 2
  %47 = ptrtoint ptr %apt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @aio_poll_queue_proc, ptr %apt.i, align 4
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %apt.i, i32 0, i32 1
  %48 = ptrtoint ptr %_key.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or16.i, ptr %_key.i, align 4
  %iocb19.i = getelementptr inbounds %struct.aio_poll_table, ptr %apt.i, i32 0, i32 1
  %49 = ptrtoint ptr %iocb19.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %req, ptr %iocb19.i, align 4
  %error.i = getelementptr inbounds %struct.aio_poll_table, ptr %apt.i, i32 0, i32 3
  %50 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -22, ptr %error.i, align 4
  %wait.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6
  %entry20.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6, i32 3
  %51 = ptrtoint ptr %entry20.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry20.i, ptr %entry20.i, align 4
  %prev.i124.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6, i32 3, i32 1
  %52 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry20.i, ptr %prev.i124.i, align 4
  %53 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %wait.i, align 4
  %private.i.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %private.i.i, align 4
  %func1.i.i = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6, i32 2
  %55 = ptrtoint ptr %func1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @aio_poll_wake, ptr %func1.i.i, align 4
  %56 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f_op.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %do.body.i.vfs_poll.exit.i_crit_edge, label %if.end.i.i, !prof !337

do.body.i.vfs_poll.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_poll.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 %61(ptr noundef %57, ptr noundef nonnull %apt.i) #12
  br label %vfs_poll.exit.i

vfs_poll.exit.i:                                  ; preds = %if.end.i.i, %do.body.i.vfs_poll.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.i.i ], [ 325, %do.body.i.vfs_poll.exit.i_crit_edge ]
  %62 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %events.i, align 4
  %and.i4 = and i32 %63, %retval.0.i.i
  %64 = getelementptr inbounds %struct.kioctx, ptr %23, i32 0, i32 16
  call void @_raw_spin_lock_irq(ptr noundef %64) #12
  %65 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %24, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool26.not.i = icmp eq i8 %66, 0
  br i1 %tobool26.not.i, label %vfs_poll.exit.i.if.end71.i_crit_edge, label %if.then29.i, !prof !337

vfs_poll.exit.i.if.end71.i_crit_edge:             ; preds = %vfs_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then29.i:                                      ; preds = %vfs_poll.exit.i
  %call30.i = call fastcc zeroext i1 @poll_iocb_lock_wq(ptr noundef %req) #12
  br i1 %call30.i, label %lor.lhs.false32.i, label %if.else.thread146.i

lor.lhs.false32.i:                                ; preds = %if.then29.i
  %67 = ptrtoint ptr %work_scheduled.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %work_scheduled.i, align 1, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool34.not.i = icmp eq i8 %68, 0
  br i1 %tobool34.not.i, label %if.end42.i, label %if.else.i

if.end42.i:                                       ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool43.not.i = icmp eq i32 %and.i4, 0
  br i1 %tobool43.not.i, label %lor.lhs.false44.i, label %if.end42.i.if.then47.i_crit_edge

if.end42.i.if.then47.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i

lor.lhs.false44.i:                                ; preds = %if.end42.i
  %69 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.i = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool46.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool46.not.i, label %lor.lhs.false44.i.if.then64.i_crit_edge, label %lor.lhs.false44.i.if.then47.i_crit_edge

lor.lhs.false44.i.if.then47.i_crit_edge:          ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i

lor.lhs.false44.i.if.then64.i_crit_edge:          ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then47.i:                                      ; preds = %lor.lhs.false44.i.if.then47.i_crit_edge, %if.end42.i.if.then47.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry20.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then47.i.if.end67.thread.i_crit_edge

if.then47.i.if.end67.thread.i_crit_edge:          ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.thread.i

if.end.i.i.i:                                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i124.i, align 4
  %72 = ptrtoint ptr %entry20.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %entry20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %if.end67.thread.i

if.end67.thread.i:                                ; preds = %if.end.i.i.i, %if.then47.i.if.end67.thread.i_crit_edge
  %76 = ptrtoint ptr %entry20.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry20.i, ptr %entry20.i, align 4
  %77 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry20.i, ptr %prev.i124.i, align 4
  br label %if.then69.i

if.else.i:                                        ; preds = %lor.lhs.false32.i
  %78 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool38.not.not.i = icmp eq i32 %79, 0
  %80 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %error.i, align 4
  br i1 %tobool38.not.not.i, label %if.else.i.if.then64.i_crit_edge, label %if.end67.i

if.else.i.if.then64.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.else.thread146.i:                              ; preds = %if.then29.i
  %81 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool38.not147.not.i = icmp eq i32 %82, 0
  %83 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %error.i, align 4
  br i1 %tobool38.not147.not.i, label %if.else.thread146.i.if.end81.critedge.i_crit_edge, label %if.end67.thread151.i

if.else.thread146.i.if.end81.critedge.i_crit_edge: ; preds = %if.else.thread146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.critedge.i

if.end67.thread151.i:                             ; preds = %if.else.thread146.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %cancelled.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store volatile i8 1, ptr %cancelled.i, align 4
  br label %if.end81.critedge.i

if.then64.i:                                      ; preds = %if.else.i.if.then64.i_crit_edge, %lor.lhs.false44.i.if.then64.i_crit_edge
  %ki_list.i = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 4
  %active_reqs.i = getelementptr inbounds %struct.kioctx, ptr %23, i32 0, i32 16, i32 1
  %prev.i125.i = getelementptr inbounds %struct.kioctx, ptr %23, i32 0, i32 16, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i125.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i125.i, align 4
  %call.i.i126.i = call zeroext i1 @__list_add_valid(ptr noundef %ki_list.i, ptr noundef %86, ptr noundef %active_reqs.i) #12
  br i1 %call.i.i126.i, label %if.end.i.i127.i, label %if.then64.i.list_add_tail.exit.i_crit_edge

if.then64.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i127.i:                                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %prev.i125.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %ki_list.i, ptr %prev.i125.i, align 4
  %88 = ptrtoint ptr %ki_list.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %active_reqs.i, ptr %ki_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %ki_list.i, ptr %86, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i127.i, %if.then64.i.list_add_tail.exit.i_crit_edge
  %ki_cancel.i = getelementptr inbounds %struct.aio_kiocb, ptr %req, i32 0, i32 2
  %91 = ptrtoint ptr %ki_cancel.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @aio_poll_cancel, ptr %ki_cancel.i, align 4
  br label %if.then69.i

if.end67.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %cancelled.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store volatile i8 1, ptr %cancelled.i, align 4
  br label %if.then69.i

if.then69.i:                                      ; preds = %if.end67.i, %list_add_tail.exit.i, %if.end67.thread.i
  %mask.0133.i = phi i32 [ 0, %list_add_tail.exit.i ], [ 0, %if.end67.i ], [ %and.i4, %if.end67.thread.i ]
  call fastcc void @poll_iocb_unlock_wq(ptr noundef %req) #12
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then69.i, %vfs_poll.exit.i.if.end71.i_crit_edge
  %mask.1.i = phi i32 [ %and.i4, %vfs_poll.exit.i.if.end71.i_crit_edge ], [ %mask.0133.i, %if.then69.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.i)
  %tobool72.not.i = icmp eq i32 %mask.1.i, 0
  br i1 %tobool72.not.i, label %if.end71.i.if.end81.critedge.i_crit_edge, label %if.then73.i

if.end71.i.if.end81.critedge.i_crit_edge:         ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.critedge.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = trunc i32 %mask.1.i to i16
  %conv45.i.i = and i16 %93, 10239
  %conv75.i = zext i16 %conv45.i.i to i64
  %94 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv75.i, ptr %res, align 8
  %95 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %error.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %64) #12
  call fastcc void @iocb_put(ptr noundef %req) #12
  br label %if.end81.i

if.end81.critedge.i:                              ; preds = %if.end71.i.if.end81.critedge.i_crit_edge, %if.end67.thread151.i, %if.else.thread146.i.if.end81.critedge.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %64) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end81.critedge.i, %if.then73.i
  %96 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %error.i, align 4
  br label %aio_poll.exit

aio_poll.exit:                                    ; preds = %if.end81.i, %lor.lhs.false5.i.aio_poll.exit_crit_edge, %lor.lhs.false.i.aio_poll.exit_crit_edge, %if.end.i.aio_poll.exit_crit_edge, %sw.bb57.aio_poll.exit_crit_edge
  %retval.0.i5 = phi i32 [ %97, %if.end81.i ], [ -22, %sw.bb57.aio_poll.exit_crit_edge ], [ -22, %lor.lhs.false5.i.aio_poll.exit_crit_edge ], [ -22, %lor.lhs.false.i.aio_poll.exit_crit_edge ], [ -22, %if.end.i.aio_poll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %apt.i) #12
  br label %return

do.body59:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__io_submit_one.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__io_submit_one, %if.then71)) #12
          to label %return [label %if.then71], !srcloc !342

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %aio_lio_opcode to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %aio_lio_opcode, align 8
  %conv73 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__io_submit_one.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.99, i32 noundef %conv73) #12
  br label %return

return:                                           ; preds = %if.then71, %do.body59, %aio_poll.exit, %sw.bb55, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb, %if.then33, %do.body22, %cleanup, %entry.return_crit_edge
  %retval.1 = phi i32 [ %8, %cleanup ], [ %retval.0.i5, %aio_poll.exit ], [ %call56, %sw.bb55 ], [ %call54, %sw.bb53 ], [ %call52, %sw.bb50 ], [ %call49, %sw.bb47 ], [ %call46, %sw.bb44 ], [ %call43, %sw.bb ], [ -9, %entry.return_crit_edge ], [ -14, %if.then33 ], [ -22, %if.then71 ], [ -14, %do.body22 ], [ -22, %do.body59 ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocb_put(ptr noundef %iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ki_refcnt = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !376
  tail call void @llvm.prefetch.p0(ptr %ki_refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ki_refcnt, ptr %ki_refcnt, i32 1, ptr elementtype(i32) %ki_refcnt) #12, !srcloc !377
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !330

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ki_refcnt, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !378
  tail call fastcc void @aio_complete(ptr noundef %iocb)
  %ki_eventfd.i = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 6
  %1 = ptrtoint ptr %ki_eventfd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ki_eventfd.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @eventfd_ctx_put(ptr noundef nonnull %2) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %3 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocb, align 8
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %if.end.i.iocb_destroy.exit_crit_edge, label %if.then3.i

if.end.i.iocb_destroy.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_destroy.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %4) #12
  br label %iocb_destroy.exit

iocb_destroy.exit:                                ; preds = %if.then3.i, %if.end.i.iocb_destroy.exit_crit_edge
  %ki_ctx.i = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 1
  %5 = ptrtoint ptr %ki_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ki_ctx.i, align 8
  %reqs.i = getelementptr inbounds %struct.kioctx, ptr %6, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %reqs.i) #12
  %7 = load ptr, ptr @kiocb_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %iocb) #12
  br label %if.end

if.end:                                           ; preds = %iocb_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocb_destroy(ptr noundef %iocb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 6
  %0 = ptrtoint ptr %ki_eventfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ki_eventfd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @eventfd_ctx_put(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %3) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ki_ctx, align 8
  %reqs = getelementptr inbounds %struct.kioctx, ptr %5, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %reqs)
  %6 = load ptr, ptr @kiocb_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %iocb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_reqs_available(ptr noundef %ctx, i32 noundef %nr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  %cpu = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu, align 8
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i66 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i66 to ptr
  %cpu18 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu18, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add19 = add i32 %12, %nr
  store i32 %add19, ptr %10, align 4
  %req_batch = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %req_batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %req_batch, align 4
  %mul68 = shl i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %mul68)
  %cmp21.not69 = icmp ult i32 %add19, %mul68
  br i1 %cmp21.not69, label %do.body12.do.body27_crit_edge, label %while.body.lr.ph

do.body12.do.body27_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

while.body.lr.ph:                                 ; preds = %do.body12
  %15 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i32 [ %14, %while.body.lr.ph ], [ %25, %while.body.while.body_crit_edge ]
  %17 = phi i32 [ %add19, %while.body.lr.ph ], [ %23, %while.body.while.body_crit_edge ]
  %sub = sub i32 %17, %16
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %10, align 4
  %19 = ptrtoint ptr %req_batch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_batch, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %20, ptr elementtype(i32) %15) #12, !srcloc !359
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  %24 = ptrtoint ptr %req_batch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_batch, align 4
  %mul = shl i32 %25, 1
  %cmp21.not = icmp ult i32 %23, %mul
  br i1 %cmp21.not, label %while.body.do.body27_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.do.body27_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

do.body27:                                        ; preds = %while.body.do.body27_crit_edge, %do.body12.do.body27_crit_edge
  br i1 %tobool.not, label %if.then36, label %do.body27.do.body38_crit_edge

do.body27.do.body38_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.then36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body38

do.body38:                                        ; preds = %if.then36, %do.body27.do.body38_crit_edge
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body38.do.end53_crit_edge, !prof !337

do.body38.do.end53_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38.do.end53_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !350
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__get_reqs_available(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  %cpu = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu, align 8
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i90 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i90 to ptr
  %cpu18 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu18, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %if.then20, label %do.body12.if.end39_crit_edge

do.body12.if.end39_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then20:                                        ; preds = %do.body12
  %13 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef 4) #12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %req_batch = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 5
  br label %do.body23

do.body23:                                        ; preds = %atomic_cmpxchg.exit.do.body23_crit_edge, %if.then20
  %avail.0 = phi i32 [ %15, %if.then20 ], [ %asmresult3.i.i.i, %atomic_cmpxchg.exit.do.body23_crit_edge ]
  %16 = ptrtoint ptr %req_batch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.0, i32 %17)
  %cmp24 = icmp ult i32 %avail.0, %17
  br i1 %cmp24, label %do.body23.do.body41_crit_edge, label %if.end27

do.body23.do.body41_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end27:                                         ; preds = %do.body23
  %sub = sub i32 %avail.0, %17
  %call.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !379
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end27
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 %avail.0, i32 %sub, ptr elementtype(i32) %13) #12, !srcloc !380
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !381
  %cmp32.not = icmp eq i32 %asmresult3.i.i.i, %avail.0
  br i1 %cmp32.not, label %cleanup.thread, label %atomic_cmpxchg.exit.do.body23_crit_edge

atomic_cmpxchg.exit.do.body23_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

cleanup.thread:                                   ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %req_batch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_batch, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  %add37 = add i32 %22, %20
  store i32 %add37, ptr %10, align 4
  br label %if.end39

if.end39:                                         ; preds = %cleanup.thread, %do.body12.if.end39_crit_edge
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %10, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.end39, %do.body23.do.body41_crit_edge
  %ret.0.off0 = phi i1 [ true, %if.end39 ], [ false, %do.body23.do.body41_crit_edge ]
  br i1 %tobool.not, label %if.then50, label %do.body41.do.body52_crit_edge

do.body41.do.body52_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

if.then50:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body52

do.body52:                                        ; preds = %if.then50, %do.body41.do.body52_crit_edge
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool60.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool60.not, label %if.then64, label %do.body52.cleanup73_crit_edge, !prof !337

do.body52.cleanup73_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup73

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %cleanup73

cleanup73:                                        ; preds = %if.then64, %do.body52.cleanup73_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !350
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_read(ptr noundef %req, ptr nocapture noundef readonly %iocb, i1 noundef zeroext %vectored) unnamed_addr #1 align 64 {
entry:
  %inline_vecs = alloca [8 x %struct.iovec], align 4
  %iovec = alloca ptr, align 4
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %inline_vecs) #12
  %0 = call ptr @memset(ptr %inline_vecs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iovec) #12
  %1 = ptrtoint ptr %iovec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inline_vecs, ptr %iovec, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %2 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %call = call fastcc i32 @aio_prep_rw(ptr noundef %req, ptr noundef %iocb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !337

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %f_op = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_iter, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end18, !prof !337

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %aio_buf.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 6
  %11 = ptrtoint ptr %aio_buf.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %aio_buf.i, align 8
  %conv.i = trunc i64 %12 to i32
  %13 = inttoptr i32 %conv.i to ptr
  %aio_nbytes.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 7
  %14 = ptrtoint ptr %aio_nbytes.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %aio_nbytes.i, align 8
  %conv2.i = trunc i64 %15 to i32
  br i1 %vectored, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %iovec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iovec, align 4
  %call.i = call i32 @import_single_range(i32 noundef 0, ptr noundef %13, i32 noundef %conv2.i, ptr noundef %17, ptr noundef nonnull %iter) #12
  %18 = ptrtoint ptr %iovec to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %iovec, align 4
  br label %aio_setup_rw.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call i32 @__import_iovec(i32 noundef 0, ptr noundef %13, i32 noundef %conv2.i, i32 noundef 8, ptr noundef nonnull %iovec, ptr noundef nonnull %iter, i1 noundef zeroext false) #12
  br label %aio_setup_rw.exit

aio_setup_rw.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %aio_setup_rw.exit.cleanup_crit_edge, label %if.end23

aio_setup_rw.exit.cleanup_crit_edge:              ; preds = %aio_setup_rw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %aio_setup_rw.exit
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 8
  %call25 = call i32 @rw_verify_area(i32 noundef 0, ptr noundef %4, ptr noundef %ki_pos, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  %21 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_op, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %read_iter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_iter.i, align 4
  %call.i1 = call i32 %24(ptr noundef %req, ptr noundef nonnull %iter) #12
  %25 = zext i32 %call.i1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i1, label %if.then27.sw.default.i_crit_edge [
    i32 -529, label %if.then27.if.end29_crit_edge
    i32 -512, label %if.then27.sw.bb.i_crit_edge
    i32 -513, label %if.then27.sw.bb.i_crit_edge2
    i32 -514, label %if.then27.sw.bb.i_crit_edge3
    i32 -516, label %if.then27.sw.bb.i_crit_edge4
  ]

if.then27.sw.bb.i_crit_edge4:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then27.sw.bb.i_crit_edge3:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then27.sw.bb.i_crit_edge2:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then27.sw.bb.i_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27.sw.default.i_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.then27.sw.bb.i_crit_edge, %if.then27.sw.bb.i_crit_edge2, %if.then27.sw.bb.i_crit_edge3, %if.then27.sw.bb.i_crit_edge4
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %if.then27.sw.default.i_crit_edge
  %ret.addr.0.i = phi i32 [ %call.i1, %if.then27.sw.default.i_crit_edge ], [ -4, %sw.bb.i ]
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ki_complete.i, align 8
  call void %27(ptr noundef %req, i32 noundef %ret.addr.0.i) #12
  br label %if.end29

if.end29:                                         ; preds = %sw.default.i, %if.then27.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %28 = ptrtoint ptr %iovec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iovec, align 4
  call void @kfree(ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %aio_setup_rw.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %retval.0.i, %aio_setup_rw.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iovec) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %inline_vecs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_write(ptr noundef %req, ptr nocapture noundef readonly %iocb, i1 noundef zeroext %vectored, i1 noundef zeroext %compat) #1 align 64 {
entry:
  %inline_vecs = alloca [8 x %struct.iovec], align 4
  %iovec = alloca ptr, align 4
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %inline_vecs) #12
  %0 = call ptr @memset(ptr %inline_vecs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iovec) #12
  %1 = ptrtoint ptr %iovec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inline_vecs, ptr %iovec, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %2 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %call = call fastcc i32 @aio_prep_rw(ptr noundef %req, ptr noundef %iocb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode, align 8
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !337

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %f_op = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_iter, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end18, !prof !337

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %aio_buf.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 6
  %11 = ptrtoint ptr %aio_buf.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %aio_buf.i, align 8
  %conv.i = trunc i64 %12 to i32
  %13 = inttoptr i32 %conv.i to ptr
  %aio_nbytes.i = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 7
  %14 = ptrtoint ptr %aio_nbytes.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %aio_nbytes.i, align 8
  %conv2.i = trunc i64 %15 to i32
  br i1 %vectored, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %iovec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iovec, align 4
  %call.i = call i32 @import_single_range(i32 noundef 1, ptr noundef %13, i32 noundef %conv2.i, ptr noundef %17, ptr noundef nonnull %iter) #12
  %18 = ptrtoint ptr %iovec to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %iovec, align 4
  br label %aio_setup_rw.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call i32 @__import_iovec(i32 noundef 1, ptr noundef %13, i32 noundef %conv2.i, i32 noundef 8, ptr noundef nonnull %iovec, ptr noundef nonnull %iter, i1 noundef zeroext false) #12
  br label %aio_setup_rw.exit

aio_setup_rw.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %aio_setup_rw.exit.cleanup_crit_edge, label %if.end23

aio_setup_rw.exit.cleanup_crit_edge:              ; preds = %aio_setup_rw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %aio_setup_rw.exit
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 8
  %call25 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef %4, ptr noundef %ki_pos, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then27:                                        ; preds = %if.end23
  %f_inode.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp30 = icmp eq i16 %25, -32768
  br i1 %cmp30, label %if.then32, label %if.then27.if.end36_crit_edge

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %if.then27
  %i_sb = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2
  call void @__might_sleep(ptr noundef nonnull @.str.109, i32 noundef 49) #12
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2, i32 0, i32 5
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %29) #12
  %30 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !382
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then32.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then32.rcu_sync_is_idle.exit.i.i.i_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then32
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 35, ptr noundef nonnull @.str.108) #12
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then32.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool7.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !330

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %36 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %27, i32 0, i32 32, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_count.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %45, %39
  %46 = inttoptr i32 %add.i.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add21.i.i.i = add i32 %48, 1
  store i32 %add21.i.i.i, ptr %46, align 4
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !337

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #12, !srcloc !350
  br label %sb_start_write.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #12
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %if.else.i.i.i, %do.end43.i.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !383
  %50 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i58.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %__here

__here:                                           ; preds = %sb_start_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f_inode.i, align 8
  %i_sb35 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %i_sb35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb35, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 32, i32 2, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map.i, i32 noundef ptrtoint (ptr blockaddress(@aio_write, %__here) to i32)) #12
  br label %if.end36

if.end36:                                         ; preds = %__here, %if.then27.if.end36_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 4
  %58 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ki_flags, align 8
  %or = or i32 %59, 262144
  store i32 %or, ptr %ki_flags, align 8
  %60 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_op, align 4
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %write_iter.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_iter.i, align 4
  %call.i62 = call i32 %63(ptr noundef %req, ptr noundef nonnull %iter) #12
  %64 = zext i32 %call.i62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call.i62, label %if.end36.sw.default.i_crit_edge [
    i32 -529, label %if.end36.if.end38_crit_edge
    i32 -512, label %if.end36.sw.bb.i_crit_edge
    i32 -513, label %if.end36.sw.bb.i_crit_edge63
    i32 -514, label %if.end36.sw.bb.i_crit_edge64
    i32 -516, label %if.end36.sw.bb.i_crit_edge65
  ]

if.end36.sw.bb.i_crit_edge65:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge64:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge63:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end36.sw.bb.i_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end36.if.end38_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end36.sw.default.i_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end36.sw.bb.i_crit_edge, %if.end36.sw.bb.i_crit_edge63, %if.end36.sw.bb.i_crit_edge64, %if.end36.sw.bb.i_crit_edge65
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %if.end36.sw.default.i_crit_edge
  %ret.addr.0.i = phi i32 [ %call.i62, %if.end36.sw.default.i_crit_edge ], [ -4, %sw.bb.i ]
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 2
  %65 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ki_complete.i, align 8
  call void %66(ptr noundef %req, i32 noundef %ret.addr.0.i) #12
  br label %if.end38

if.end38:                                         ; preds = %sw.default.i, %if.end36.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %67 = ptrtoint ptr %iovec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iovec, align 4
  call void @kfree(ptr noundef %68) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %aio_setup_rw.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %retval.0.i, %aio_setup_rw.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iovec) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %inline_vecs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_fsync(ptr noundef %req, ptr nocapture noundef readonly %iocb, i1 noundef zeroext %datasync) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %datasync to i8
  %aio_buf = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 6
  %0 = ptrtoint ptr %aio_buf to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %aio_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge, !prof !330

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %aio_offset = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 8
  %2 = ptrtoint ptr %aio_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %aio_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge, !prof !330

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %aio_nbytes = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 7
  %4 = ptrtoint ptr %aio_nbytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %aio_nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false2.return_crit_edge, !prof !330

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.rhs:                                          ; preds = %lor.lhs.false2
  %aio_rw_flags = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %aio_rw_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aio_rw_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end, label %lor.rhs.return_crit_edge, !prof !330

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.rhs
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %fsync = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %fsync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsync, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end17, !prof !337

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end17:                                         ; preds = %if.end
  %call = tail call ptr @prepare_creds() #12
  %creds = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %creds to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %creds, align 4
  %tobool19.not = icmp eq ptr %call, null
  br i1 %tobool19.not, label %if.end17.return_crit_edge, label %if.end21

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %datasync23 = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 2
  %15 = ptrtoint ptr %datasync23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %datasync23, align 4
  %work = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.110, ptr noundef nonnull @aio_fsync.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry28 = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fsync_iocb, ptr %req, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @aio_fsync_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work) #12
  br label %return

return:                                           ; preds = %if.end21, %if.end17.return_crit_edge, %if.end.return_crit_edge, %lor.rhs.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %lor.rhs.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -12, %if.end17.return_crit_edge ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_prep_rw(ptr nocapture noundef %req, ptr nocapture noundef readonly %iocb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %ki_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aio_complete_rw, ptr %ki_complete, align 8
  %private = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %private, align 4
  %aio_offset = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 8
  %2 = ptrtoint ptr %aio_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %aio_offset, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %ki_pos, align 8
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags.i, align 4
  %and.i = lshr i32 %8, 6
  %9 = and i32 %and.i, 16
  %and2.i = shl i32 %8, 1
  %10 = and i32 %and2.i, 131072
  %11 = or i32 %10, %9
  %and8.i = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %entry.if.then17.i_crit_edge

entry.if.then17.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %entry
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 18
  %12 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_mapping.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags.i, align 4
  %and10.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %and15.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false12.i.iocb_flags.exit_crit_edge, label %lor.lhs.false12.i.if.then17.i_crit_edge

lor.lhs.false12.i.if.then17.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

lor.lhs.false12.i.iocb_flags.exit_crit_edge:      ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit

if.then17.i:                                      ; preds = %lor.lhs.false12.i.if.then17.i_crit_edge, %lor.lhs.false.i.if.then17.i_crit_edge, %entry.if.then17.i_crit_edge
  %or18.i = or i32 %11, 2
  br label %iocb_flags.exit

iocb_flags.exit:                                  ; preds = %if.then17.i, %lor.lhs.false12.i.iocb_flags.exit_crit_edge
  %res.2.i = phi i32 [ %or18.i, %if.then17.i ], [ %11, %lor.lhs.false12.i.iocb_flags.exit_crit_edge ]
  %and21.i = lshr i32 %8, 18
  %22 = and i32 %and21.i, 4
  %23 = or i32 %res.2.i, %22
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 4
  %24 = ptrtoint ptr %ki_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ki_flags, align 8
  %aio_flags = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 10
  %25 = ptrtoint ptr %aio_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aio_flags, align 8
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %iocb_flags.exit.if.end_crit_edge, label %if.then

iocb_flags.exit.if.end_crit_edge:                 ; preds = %iocb_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %iocb_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %23, 65536
  %27 = ptrtoint ptr %ki_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %ki_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %iocb_flags.exit.if.end_crit_edge
  %f_write_hint.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 5
  %28 = ptrtoint ptr %f_write_hint.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_write_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.file_write_hint.exit_crit_edge

if.end.file_write_hint.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %30 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i.i, align 8
  %i_write_hint.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %i_write_hint.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_write_hint.i, align 1
  %conv.i = zext i8 %33 to i32
  br label %file_write_hint.exit

file_write_hint.exit:                             ; preds = %if.end.i, %if.end.file_write_hint.exit_crit_edge
  %retval.0.i56 = phi i32 [ %conv.i, %if.end.i ], [ %29, %if.end.file_write_hint.exit_crit_edge ]
  %34 = tail call i32 @llvm.umin.i32(i32 %retval.0.i56, i32 65536) #12
  %35 = trunc i32 %34 to i16
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 5
  %36 = ptrtoint ptr %ki_hint to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %ki_hint, align 4
  %37 = ptrtoint ptr %aio_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aio_flags, align 8
  %and6 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %file_write_hint.exit
  %aio_reqprio = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 4
  %39 = ptrtoint ptr %aio_reqprio to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aio_reqprio, align 2
  %conv = sext i16 %40 to i32
  %call9 = tail call i32 @ioprio_check_cap(i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_prep_rw.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_prep_rw, %if.then16)) #12
          to label %cleanup [label %if.then16], !srcloc !342

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_prep_rw.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, i32 noundef %call9) #12
  br label %cleanup

if.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %aio_reqprio to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aio_reqprio, align 2
  br label %if.end23

if.else:                                          ; preds = %file_write_hint.exit
  %43 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 151
  %47 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_context.i, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.else.if.end23_crit_edge, label %if.then.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i = getelementptr inbounds %struct.io_context, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ioprio.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.else.if.end23_crit_edge, %if.end18
  %retval.0.i58.sink = phi i16 [ %42, %if.end18 ], [ %50, %if.then.i ], [ 16388, %if.else.if.end23_crit_edge ]
  %ki_ioprio22 = getelementptr inbounds %struct.kiocb, ptr %req, i32 0, i32 6
  %51 = ptrtoint ptr %ki_ioprio22 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %retval.0.i58.sink, ptr %ki_ioprio22, align 2
  %aio_rw_flags = getelementptr inbounds %struct.iocb, ptr %iocb, i32 0, i32 1
  %52 = ptrtoint ptr %aio_rw_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %aio_rw_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i59 = icmp eq i32 %53, 0
  br i1 %tobool.not.i59, label %if.end23.if.end33_crit_edge, label %if.end.i60

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end.i60:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %53)
  %tobool1.not.i = icmp ult i32 %53, 32
  br i1 %tobool1.not.i, label %if.end5.i, label %if.end.i60.cleanup_crit_edge, !prof !330

if.end.i60.cleanup_crit_edge:                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i60
  %and6.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 8
  %f_mode.i = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_mode.i, align 8
  %and9.i = and i32 %57, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %kiocb_flags.0.i = phi i32 [ 0, %if.end5.i.if.end13.i_crit_edge ], [ 1048576, %if.then8.i.if.end13.i_crit_edge ]
  %and16.i = lshr i32 %53, 1
  %58 = and i32 %and16.i, 2
  %59 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ki_flags, align 8
  %or15.i = or i32 %58, %53
  %61 = or i32 %or15.i, %kiocb_flags.0.i
  %or21.i = or i32 %61, %60
  store i32 %or21.i, ptr %ki_flags, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end13.i, %if.end23.if.end33_crit_edge
  %62 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ki_flags, align 8
  %and35 = and i32 %63, -2
  store i32 %and35, ptr %ki_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then8.i.cleanup_crit_edge, %if.end.i60.cleanup_crit_edge, %if.then16, %do.body
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call9, %if.then16 ], [ %call9, %do.body ], [ -95, %if.end.i60.cleanup_crit_edge ], [ -95, %if.then8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aio_complete_rw(ptr noundef %kiocb, i32 noundef %res) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_list = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 4
  %0 = ptrtoint ptr %ki_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ki_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !384
  %cmp.i.not.i = icmp eq ptr %1, %ki_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

list_empty_careful.exit:                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %3, %ki_list
  br i1 %cmp.i.not, label %list_empty_careful.exit.if.end_crit_edge, label %list_empty_careful.exit.if.then_crit_edge

list_empty_careful.exit.if.then_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

list_empty_careful.exit.if.end_crit_edge:         ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_empty_careful.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ki_ctx.i = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ki_ctx.i, align 8
  %6 = getelementptr inbounds %struct.kioctx, ptr %5, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ki_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.aio_remove_iocb.exit_crit_edge

if.then.aio_remove_iocb.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %aio_remove_iocb.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %ki_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ki_list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %aio_remove_iocb.exit

aio_remove_iocb.exit:                             ; preds = %if.end.i.i.i, %if.then.aio_remove_iocb.exit_crit_edge
  %13 = ptrtoint ptr %ki_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %ki_list, align 4
  %prev.i.i = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call2.i) #12
  br label %if.end

if.end:                                           ; preds = %aio_remove_iocb.exit, %list_empty_careful.exit.if.end_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 4
  %15 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ki_flags, align 8
  %and = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %17 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kiocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %23)
  %cmp = icmp eq i16 %23, -32768
  br i1 %cmp, label %__here, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

__here:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 32, i32 2, i32 0, i32 5
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@aio_complete_rw, %__here) to i32)) #12
  br label %if.end8

if.end8:                                          ; preds = %__here, %if.then2.if.end8_crit_edge
  %26 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kiocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %32)
  %cmp.i22 = icmp eq i16 %32, -32768
  br i1 %cmp.i22, label %if.end.i, label %if.end8.if.end10_crit_edge

if.end8.if.end10_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i:                                         ; preds = %if.end8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %34, i32 0, i32 32, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %34, i32 0, i32 32, i32 2, i32 0, i32 5
  %35 = tail call ptr @llvm.returnaddress(i32 0) #12
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %36) #12
  %37 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !385
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.i.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 35, ptr noundef nonnull @.str.108) #12
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.i.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !330

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %34, i32 0, i32 32, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_count.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %52, %46
  %53 = inttoptr i32 %add.i.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add17.i.i.i = add i32 %55, -1
  store i32 %add17.i.i.i, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i.i.i.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !337

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #12, !srcloc !350
  br label %__sb_end_write.exit.i

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !386
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %34, i32 0, i32 32, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_count75.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i122.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %66, %60
  %67 = inttoptr i32 %add80.i.i.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add81.i.i.i = add i32 %69, -1
  store i32 %add81.i.i.i, ptr %67, align 4
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i123.i.i.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !337

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #12, !srcloc !350
  %writer.i.i.i = getelementptr %struct.super_block, ptr %34, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #12
  br label %__sb_end_write.exit.i

__sb_end_write.exit.i:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !387
  %71 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i120.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %__sb_end_write.exit.i, %if.end8.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %conv11 = sext i32 %res to i64
  %res12 = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %res12 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv11, ptr %res12, align 8
  %res2 = getelementptr inbounds %struct.aio_kiocb, ptr %kiocb, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %res2 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %res2, align 8
  tail call fastcc void @iocb_put(ptr noundef %kiocb)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioprio_check_cap(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aio_fsync_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %creds = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %creds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creds, align 4
  %call = tail call ptr @override_creds(ptr noundef %1) #12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %datasync = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %datasync to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %datasync, align 8, !range !375
  %6 = zext i8 %5 to i32
  %call1 = tail call i32 @vfs_fsync(ptr noundef %3, i32 noundef %6) #12
  %conv2 = sext i32 %call1 to i64
  %res = getelementptr i8, ptr %work, i32 100
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv2, ptr %res, align 8
  tail call void @revert_creds(ptr noundef %call) #12
  %8 = ptrtoint ptr %creds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creds, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %9) #12
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !337

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__invalid_creds(ptr noundef nonnull %9, ptr noundef nonnull @.str.111, i32 noundef 286) #12
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #12, !srcloc !332
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_cred(ptr noundef nonnull %9) #12
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  tail call fastcc void @iocb_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aio_poll_complete_work(ptr noundef %work) #1 align 64 {
entry:
  %pt = alloca %struct.poll_table_struct, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pt) #12
  %0 = getelementptr inbounds %struct.poll_table_struct, ptr %pt, i32 0, i32 1
  %1 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pt, align 4
  %events = getelementptr i8, ptr %work, i32 -28
  %2 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %events, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %ki_ctx = getelementptr i8, ptr %work, i32 44
  %5 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ki_ctx, align 8
  %cancelled = getelementptr i8, ptr %work, i32 -24
  %7 = ptrtoint ptr %cancelled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %cancelled, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_op.i, align 4
  %poll.i = getelementptr inbounds %struct.file_operations, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %poll.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %poll.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.vfs_poll.exit_crit_edge, label %if.end.i, !prof !337

if.then.vfs_poll.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_poll.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 %14(ptr noundef %10, ptr noundef nonnull %pt) #12
  br label %vfs_poll.exit

vfs_poll.exit:                                    ; preds = %if.end.i, %if.then.vfs_poll.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 325, %if.then.vfs_poll.exit_crit_edge ]
  %15 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %events, align 4
  %and = and i32 %16, %retval.0.i
  br label %if.end

if.end:                                           ; preds = %vfs_poll.exit, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %and, %vfs_poll.exit ]
  %17 = getelementptr inbounds %struct.kioctx, ptr %6, i32 0, i32 16
  call void @_raw_spin_lock_irq(ptr noundef %17) #12
  %call7 = call fastcc zeroext i1 @poll_iocb_lock_wq(ptr noundef %add.ptr)
  br i1 %call7, label %if.then8, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0)
  %tobool9.not = icmp eq i32 %mask.0, 0
  br i1 %tobool9.not, label %do.end12, label %if.then8.if.end26_crit_edge

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end12:                                         ; preds = %if.then8
  %18 = ptrtoint ptr %cancelled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %cancelled, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.then18, label %do.end12.if.end26_crit_edge

do.end12.if.end26_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then18:                                        ; preds = %do.end12
  %work_need_resched = getelementptr i8, ptr %work, i32 -22
  %20 = ptrtoint ptr %work_need_resched to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %work_need_resched, align 2, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work) #12
  %23 = ptrtoint ptr %work_need_resched to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %work_need_resched, align 2
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %work_scheduled = getelementptr i8, ptr %work, i32 -23
  %24 = ptrtoint ptr %work_scheduled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %work_scheduled, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  call fastcc void @poll_iocb_unlock_wq(ptr noundef %add.ptr)
  call void @_raw_spin_unlock_irq(ptr noundef %17) #12
  br label %cleanup

if.end26:                                         ; preds = %do.end12.if.end26_crit_edge, %if.then8.if.end26_crit_edge
  %entry27 = getelementptr i8, ptr %work, i32 -8
  %call.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry27) #12
  br i1 %call.i.i54, label %if.end.i.i, label %if.end26.list_del_init.exit_crit_edge

if.end26.list_del_init.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr i8, ptr %work, i32 -4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %entry27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entry27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end26.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i3.i = getelementptr i8, ptr %work, i32 -4
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry27, ptr %prev.i3.i, align 4
  call fastcc void @poll_iocb_unlock_wq(ptr noundef %add.ptr)
  br label %if.end28

if.end28:                                         ; preds = %list_del_init.exit, %if.end.if.end28_crit_edge
  %ki_list = getelementptr i8, ptr %work, i32 84
  %call.i.i55 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ki_list) #12
  br i1 %call.i.i55, label %if.end.i.i58, label %if.end28.list_del_init.exit60_crit_edge

if.end28.list_del_init.exit60_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit60

if.end.i.i58:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i56 = getelementptr i8, ptr %work, i32 88
  %33 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i56, align 4
  %35 = ptrtoint ptr %ki_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ki_list, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i57, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit60

list_del_init.exit60:                             ; preds = %if.end.i.i58, %if.end28.list_del_init.exit60_crit_edge
  %39 = ptrtoint ptr %ki_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %ki_list, ptr %ki_list, align 4
  %prev.i3.i59 = getelementptr i8, ptr %work, i32 88
  %40 = ptrtoint ptr %prev.i3.i59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ki_list, ptr %prev.i3.i59, align 4
  %41 = trunc i32 %mask.0 to i16
  %conv45.i = and i16 %41, 10239
  %conv = zext i16 %conv45.i to i64
  %res = getelementptr i8, ptr %work, i32 68
  %42 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %res, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %17) #12
  call fastcc void @iocb_put(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit60, %if.end24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aio_poll_queue_proc(ptr nocapture noundef readnone %file, ptr noundef %head, ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queued = getelementptr inbounds %struct.aio_poll_table, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %queued, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %error = getelementptr inbounds %struct.aio_poll_table, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -22, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %queued, align 4
  %error4 = getelementptr inbounds %struct.aio_poll_table, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error4, align 4
  %iocb = getelementptr inbounds %struct.aio_poll_table, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iocb, align 4
  %head5 = getelementptr inbounds %struct.poll_iocb, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %head5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %head5, align 4
  %8 = load ptr, ptr %iocb, align 4
  %wait = getelementptr inbounds %struct.poll_iocb, ptr %8, i32 0, i32 6
  tail call void @add_wait_queue(ptr noundef %head, ptr noundef %wait) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_poll_wake(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -16
  %0 = ptrtoint ptr %key to i32
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %events = getelementptr i8, ptr %wait, i32 -8
  %1 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %events, align 4
  %and = and i32 %2, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true6.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true6.critedge:                          ; preds = %land.lhs.true
  %work_scheduled = getelementptr i8, ptr %wait, i32 -3
  %3 = ptrtoint ptr %work_scheduled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %work_scheduled, align 1, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %do.body10, label %land.lhs.true6.critedge.if.else_crit_edge

land.lhs.true6.critedge.if.else_crit_edge:        ; preds = %land.lhs.true6.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body10:                                        ; preds = %land.lhs.true6.critedge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !348
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not = icmp eq i32 %and.i, 0
  br i1 %tobool19.not, label %if.then20, label %do.body10.do.end23_crit_edge

do.body10.do.end23_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.then20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body10.do.end23_crit_edge
  %ki_ctx = getelementptr i8, ptr %wait, i32 64
  %6 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ki_ctx, align 8
  %8 = getelementptr inbounds %struct.kioctx, ptr %7, i32 0, i32 16
  %call26 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body28, label %if.then61.critedge

do.body28:                                        ; preds = %do.end23
  br i1 %tobool19.not, label %if.then37, label %do.body28.do.body39_crit_edge

do.body28.do.body39_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

if.then37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body39

do.body39:                                        ; preds = %if.then37, %do.body28.do.body39_crit_edge
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !349
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool47.not, label %if.then51, label %do.body39.do.end54_crit_edge, !prof !337

do.body39.do.end54_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body39.do.end54_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #12, !srcloc !350
  br label %if.else

if.then61.critedge:                               ; preds = %do.end23
  %10 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ki_ctx, align 8
  %entry64 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry64) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then61.critedge.list_del_init.exit_crit_edge

if.then61.critedge.list_del_init.exit_crit_edge:  ; preds = %if.then61.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then61.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %entry64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry64, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then61.critedge.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry64, ptr %prev.i3.i, align 4
  %ki_list = getelementptr i8, ptr %wait, i32 104
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ki_list) #12
  br i1 %call.i.i165, label %if.end.i.i168, label %list_del_init.exit.list_del.exit_crit_edge

list_del_init.exit.list_del.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i168:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i166 = getelementptr i8, ptr %wait, i32 108
  %20 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i166, align 4
  %22 = ptrtoint ptr %ki_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ki_list, align 4
  %prev1.i.i.i167 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i167, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i168, %list_del_init.exit.list_del.exit_crit_edge
  %26 = ptrtoint ptr %ki_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %ki_list, align 4
  %prev.i = getelementptr i8, ptr %wait, i32 108
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %28 = trunc i32 %0 to i16
  %conv45.i = and i16 %28, 10239
  %conv66 = zext i16 %conv45.i to i64
  %res = getelementptr i8, ptr %wait, i32 88
  %29 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv66, ptr %res, align 8
  %ki_eventfd = getelementptr i8, ptr %wait, i32 116
  %30 = ptrtoint ptr %ki_eventfd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ki_eventfd, align 4
  %tobool67.not = icmp eq ptr %31, null
  br i1 %tobool67.not, label %list_del.exit.if.end81_crit_edge, label %land.lhs.true68

list_del.exit.if.end81_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.lhs.true68:                                  ; preds = %list_del.exit
  %32 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i169 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i169 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %in_eventfd_signal.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 65
  %36 = ptrtoint ptr %in_eventfd_signal.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %in_eventfd_signal.i, align 8
  %37 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i, label %land.lhs.true68.if.end81_crit_edge, label %if.end81.thread

land.lhs.true68.if.end81_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.end81.thread:                                  ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr i8, ptr %wait, i32 20
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %38 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr i8, ptr %wait, i32 36
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.110, ptr noundef nonnull @aio_poll_wake.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry75 = getelementptr i8, ptr %wait, i32 24
  %39 = ptrtoint ptr %entry75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry75, ptr %entry75, align 4
  %prev.i170 = getelementptr i8, ptr %wait, i32 28
  %40 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry75, ptr %prev.i170, align 4
  %func = getelementptr i8, ptr %wait, i32 32
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @aio_poll_put_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i171 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work) #12
  %43 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %5) #12
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true68.if.end81_crit_edge, %list_del.exit.if.end81_crit_edge
  %44 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %5) #12
  %tobool83.not = icmp eq ptr %add.ptr, null
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %if.then84

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iocb_put(ptr noundef nonnull %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %do.end54, %land.lhs.true6.critedge.if.else_crit_edge, %entry.if.else_crit_edge
  %work_scheduled86 = getelementptr i8, ptr %wait, i32 -3
  %45 = ptrtoint ptr %work_scheduled86 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %work_scheduled86, align 1, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool87.not = icmp eq i8 %46, 0
  br i1 %tobool87.not, label %if.else89, label %if.then88

if.then88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %work_need_resched = getelementptr i8, ptr %wait, i32 -2
  %47 = ptrtoint ptr %work_need_resched to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %work_need_resched, align 2
  br label %if.end93

if.else89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %work90 = getelementptr i8, ptr %wait, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i172 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %work90) #12
  %49 = ptrtoint ptr %work_scheduled86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %work_scheduled86, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then88
  %and94 = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.cleanup_crit_edge, label %do.body101

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body101:                                       ; preds = %if.end93
  %cancelled = getelementptr i8, ptr %wait, i32 -4
  %50 = ptrtoint ptr %cancelled to i32
  call void @__asan_store1_noabort(i32 %50)
  store volatile i8 1, ptr %cancelled, align 4
  %entry107 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i173 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry107) #12
  br i1 %call.i.i173, label %if.end.i.i176, label %do.body101.list_del_init.exit178_crit_edge

do.body101.list_del_init.exit178_crit_edge:       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit178

if.end.i.i176:                                    ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i174 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i174, align 4
  %53 = ptrtoint ptr %entry107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entry107, align 4
  %prev1.i.i.i175 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i175, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit178

list_del_init.exit178:                            ; preds = %if.end.i.i176, %do.body101.list_del_init.exit178_crit_edge
  %57 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i3.i177 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %prev.i3.i177 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry107, ptr %prev.i3.i177, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !388
  %head = getelementptr i8, ptr %wait, i32 -12
  %59 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr null, ptr %head, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit178, %if.end93.cleanup_crit_edge, %if.then84, %if.end81.cleanup_crit_edge, %if.end81.thread, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end81.cleanup_crit_edge ], [ 1, %if.then84 ], [ 1, %if.end93.cleanup_crit_edge ], [ 1, %list_del_init.exit178 ], [ 1, %if.end81.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @poll_iocb_lock_wq(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 696, ptr noundef nonnull @.str.71) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %head1 = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %head1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !389
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end10_crit_edge, label %if.then

rcu_read_lock.exit.if.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %rcu_read_lock.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull %5) #12
  %entry6 = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %entry6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %entry6, align 4
  %cmp.i.not = icmp eq ptr %7, %entry6
  br i1 %cmp.i.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull %5) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end, %rcu_read_lock.exit.if.end10_crit_edge
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14, label %if.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.end10
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %8 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i21 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %rcu_read_unlock.exit ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aio_poll_cancel(ptr noundef %iocb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @poll_iocb_lock_wq(ptr noundef %iocb)
  br i1 %call, label %do.body2, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body2:                                         ; preds = %entry
  %cancelled = getelementptr inbounds %struct.poll_iocb, ptr %iocb, i32 0, i32 3
  %0 = ptrtoint ptr %cancelled to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 1, ptr %cancelled, align 4
  %work_scheduled = getelementptr inbounds %struct.poll_iocb, ptr %iocb, i32 0, i32 4
  %1 = ptrtoint ptr %work_scheduled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %work_scheduled, align 1, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then7, label %do.body2.if.end_crit_edge

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr inbounds %struct.poll_iocb, ptr %iocb, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #12
  %4 = ptrtoint ptr %work_scheduled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %work_scheduled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body2.if.end_crit_edge
  tail call fastcc void @poll_iocb_unlock_wq(ptr noundef %iocb)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @poll_iocb_unlock_wq(ptr nocapture noundef readonly %req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.poll_iocb, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 724, ptr noundef nonnull @.str.72) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %2 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aio_poll_put_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  tail call fastcc void @iocb_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aio_complete(ptr noundef %iocb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_ctx = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 1
  %0 = ptrtoint ptr %ki_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ki_ctx, align 8
  %2 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 18
  %completion_lock = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 18, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %completion_lock) #12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 128
  %add = add i32 %4, 1
  %nr_events = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp6.not = icmp ult i32 %add, %6
  %spec.store.select = select i1 %cmp6.not, i32 %add, i32 0
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_pages, align 16
  %div125 = lshr i32 %add, 7
  %arrayidx = getelementptr ptr, ptr %8, i32 %div125
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %16 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #12
  %rem = and i32 %add, 127
  %add.ptr = getelementptr %struct.io_event, ptr %call.i.i, i32 %rem
  %ki_res = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %ki_res, i32 32)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %23 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %29 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %33 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring_pages, align 16
  %arrayidx17 = getelementptr ptr, ptr %34, i32 %div125
  %35 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx17, align 4
  tail call void @flush_dcache_page(ptr noundef %36) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_complete.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_complete, %if.then23)) #12
          to label %do.end35 [label %if.then23], !srcloc !342

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %obj = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %obj to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %obj, align 8
  %conv25 = trunc i64 %38 to i32
  %39 = inttoptr i32 %conv25 to ptr
  %40 = ptrtoint ptr %ki_res to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ki_res, align 8
  %res = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %res, align 8
  %res2 = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %res2 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %res2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_complete.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, ptr noundef %1, i32 noundef %spec.store.select, ptr noundef %iocb, ptr noundef %39, i64 noundef %41, i64 noundef %43, i64 noundef %45) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then23, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !390
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.store.select, ptr %2, align 128
  %47 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring_pages, align 16
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %51 = load i32, ptr @pgprot_kernel, align 4
  %or.i129 = or i32 %51, 512
  %52 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i130 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i130 to ptr
  %preempt_count.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i131, align 4
  %add.i.i.i132 = add i32 %55, 1
  store volatile i32 %add.i.i.i132, ptr %preempt_count.i.i.i.i131, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %56 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i133 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i1.i.i133 to ptr
  %task.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i.i134, align 8
  %pagefault_disabled.i.i.i.i135 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 213
  %60 = ptrtoint ptr %pagefault_disabled.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagefault_disabled.i.i.i.i135, align 8
  %inc.i.i.i.i136 = add i32 %61, 1
  store i32 %inc.i.i.i.i136, ptr %pagefault_disabled.i.i.i.i135, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i137 = tail call ptr @__kmap_local_page_prot(ptr noundef %50, i32 noundef %or.i129) #12
  %head42 = getelementptr inbounds %struct.aio_ring, ptr %call.i.i137, i32 0, i32 2
  %62 = ptrtoint ptr %head42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %head42, align 8
  %tail43 = getelementptr inbounds %struct.aio_ring, ptr %call.i.i137, i32 0, i32 3
  %64 = ptrtoint ptr %tail43 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.store.select, ptr %tail43, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i137) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %65 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i138 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i1.i138 to ptr
  %task.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i139, align 8
  %pagefault_disabled.i.i.i140 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 213
  %69 = ptrtoint ptr %pagefault_disabled.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pagefault_disabled.i.i.i140, align 8
  %dec.i.i.i141 = add i32 %70, -1
  store i32 %dec.i.i.i141, ptr %pagefault_disabled.i.i.i140, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %71 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i142 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i142 to ptr
  %preempt_count.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i143, align 4
  %sub.i.i144 = add i32 %74, -1
  store volatile i32 %sub.i.i144, ptr %preempt_count.i.i.i143, align 4
  %75 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ring_pages, align 16
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  tail call void @flush_dcache_page(ptr noundef %78) #12
  %completed_events = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 18, i32 1
  %79 = ptrtoint ptr %completed_events to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %completed_events, align 4
  %inc52 = add i32 %80, 1
  store i32 %inc52, ptr %completed_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc52)
  %cmp54 = icmp ugt i32 %inc52, 1
  br i1 %cmp54, label %if.then56, label %do.end35.if.end57_crit_edge

do.end35.if.end57_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then56:                                        ; preds = %do.end35
  %81 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_events, align 4
  %rem.i = urem i32 %63, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %rem.i)
  %cmp.not.i = icmp ult i32 %spec.store.select, %rem.i
  %sub.i = sub i32 %spec.store.select, %rem.i
  %sub3.i = select i1 %cmp.not.i, i32 %82, i32 0
  %events_in_ring.0.i = add i32 %sub3.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc52, i32 %events_in_ring.0.i)
  %tobool.not.not.i = icmp ugt i32 %inc52, %events_in_ring.0.i
  br i1 %tobool.not.not.i, label %if.end10.i, label %if.then56.if.end57_crit_edge

if.then56.if.end57_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.end10.i:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %83 = tail call i32 @llvm.usub.sat.i32(i32 %inc52, i32 %events_in_ring.0.i) #12
  %sub12.i = sub i32 %inc52, %83
  %84 = ptrtoint ptr %completed_events to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub12.i, ptr %completed_events, align 4
  tail call fastcc void @put_reqs_available(ptr noundef %1, i32 noundef %83) #12
  br label %if.end57

if.end57:                                         ; preds = %if.end10.i, %if.then56.if.end57_crit_edge, %do.end35.if.end57_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %completion_lock, i32 noundef %call2) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_complete.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_complete, %if.then71)) #12
          to label %do.end74 [label %if.then71], !srcloc !342

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_complete.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.112, ptr noundef %iocb, i32 noundef %spec.store.select) #12
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %if.end57
  %ki_eventfd = getelementptr inbounds %struct.aio_kiocb, ptr %iocb, i32 0, i32 6
  %85 = ptrtoint ptr %ki_eventfd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ki_eventfd, align 4
  %tobool75.not = icmp eq ptr %86, null
  br i1 %tobool75.not, label %do.end74.do.end83_crit_edge, label %if.then76

do.end74.do.end83_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end83

if.then76:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call i64 @eventfd_signal(ptr noundef nonnull %86, i64 noundef 1) #12
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.end74.do.end83_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !391
  %head.i = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 17, i32 1, i32 1
  %87 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %88, %head.i
  br i1 %cmp.i.i.not, label %do.end83.if.end90_crit_edge, label %if.then88

do.end83.if.end90_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then88:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  %wait = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 17, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %do.end83.if.end90_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_io_getevents(i32 noundef %ctx_id, i32 noundef %min_nr, i32 noundef %nr, ptr noundef %events, ptr noundef readonly %ts) unnamed_addr #1 align 64 {
entry:
  %__t.i = alloca %struct.hrtimer_sleeper, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ts, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %ts, align 8
  %.elt21 = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %1 = ptrtoint ptr %.elt21 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack22 = load i64, ptr %.elt21, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack22, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !337
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i64 [ %retval.0.i.i, %cond.true ], [ 9223372036854775807, %entry.cond.end_crit_edge ]
  %call1 = tail call fastcc ptr @lookup_ioctx(i32 noundef %ctx_id)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cond.end.if.end14_crit_edge, label %if.then, !prof !337

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %min_nr, i32 %nr)
  %cmp.not = icmp sle i32 %min_nr, %nr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %min_nr)
  %cmp5 = icmp sgt i32 %min_nr, -1
  %spec.select = and i1 %cmp5, %cmp.not
  br i1 %spec.select, label %if.then12, label %if.then.if.end_crit_edge, !prof !330

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond)
  %cmp.i = icmp eq i64 %cond, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then12
  %call.i.i = tail call fastcc i32 @aio_read_events_ring(ptr noundef nonnull %call1, ptr noundef %events, i32 noundef %nr) #12
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #12
  %dead.i.i = getelementptr inbounds %struct.kioctx, ptr %call1, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dead.i.i, i32 noundef 4) #12
  %3 = ptrtoint ptr %dead.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dead.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end5.i.i_crit_edge, label %if.then4.i.i, !prof !330

if.then.i.if.end5.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.if.end5.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -22, %if.then4.i.i ], [ %call.i.i, %if.then.i.if.end5.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %tobool6.not.i.i = icmp slt i32 %call.i.i, 1
  %spec.select100.i = select i1 %tobool6.not.i.i, i32 %ret.0.i.i, i32 %2
  br label %if.end

if.else.i:                                        ; preds = %if.then12
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1321) #12
  %call.i45.i = tail call fastcc i32 @aio_read_events_ring(ptr noundef nonnull %call1, ptr noundef %events, i32 noundef %nr) #12
  %5 = tail call i32 @llvm.smax.i32(i32 %call.i45.i, i32 0) #12
  %dead.i49.i = getelementptr inbounds %struct.kioctx, ptr %call1, i32 0, i32 1
  %call.i.i.i50.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dead.i49.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %dead.i49.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dead.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i51.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45.i)
  %tobool6.not.i55.i = icmp slt i32 %call.i45.i, 1
  br i1 %tobool.not.i51.i, label %if.end5.i56.i, label %if.end5.i56.thread.i, !prof !330

if.end5.i56.thread.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select102113.i = select i1 %tobool6.not.i55.i, i32 -22, i32 %5
  br label %if.end

if.end5.i56.i:                                    ; preds = %if.else.i
  %spec.select102.i = select i1 %tobool6.not.i55.i, i32 %call.i45.i, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %cmp9.i58.i = icmp slt i32 %call.i45.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select102.i, i32 %min_nr)
  %cmp10.i60.i = icmp sge i32 %spec.select102.i, %min_nr
  %or.cond.i = select i1 %cmp9.i58.i, i1 true, i1 %cmp10.i60.i
  br i1 %or.cond.i, label %if.end5.i56.i.if.end_crit_edge, label %if.then5.i

if.end5.i56.i.if.end_crit_edge:                   ; preds = %if.end5.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5.i:                                       ; preds = %if.end5.i56.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %__t.i) #12
  %8 = call ptr @memset(ptr %__t.i, i32 255, i32 56)
  call void @hrtimer_init_sleeper_on_stack(ptr noundef nonnull %__t.i, i32 noundef 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %cond)
  %cmp7.not.i = icmp eq i64 %cond, 9223372036854775807
  br i1 %cmp7.not.i, label %if.then5.i.if.end.i_crit_edge, label %if.then8.i

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %timer_slack_ns.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 189
  %13 = ptrtoint ptr %timer_slack_ns.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timer_slack_ns.i, align 8
  call void @hrtimer_start_range_ns(ptr noundef nonnull %__t.i, i64 noundef %cond, i64 noundef %14, i32 noundef 1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then5.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %wait.i = getelementptr inbounds %struct.kioctx, ptr %call1, i32 0, i32 17, i32 1
  %task17.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %__t.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.end.i
  %ret.4.i = phi i32 [ %spec.select102.i, %if.end.i ], [ %spec.select104.i, %cleanup.i ]
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %add.ptr.i63.i = getelementptr %struct.io_event, ptr %events, i32 %ret.4.i
  %sub.i64.i = sub i32 %nr, %ret.4.i
  %call.i65.i = call fastcc i32 @aio_read_events_ring(ptr noundef nonnull %call1, ptr noundef %add.ptr.i63.i, i32 noundef %sub.i64.i) #12
  %16 = call i32 @llvm.smax.i32(i32 %call.i65.i, i32 0) #12
  %spec.select103.i = add i32 %16, %ret.4.i
  %call.i.i.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %dead.i49.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %dead.i49.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dead.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i71.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select103.i)
  %tobool6.not.i75.i = icmp eq i32 %spec.select103.i, 0
  br i1 %tobool.not.i71.i, label %if.end5.i76.i, label %if.end5.i76.thread.i, !prof !330

if.end5.i76.thread.i:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select104119.i = select i1 %tobool6.not.i75.i, i32 -22, i32 %spec.select103.i
  br label %for.end.i

if.end5.i76.i:                                    ; preds = %for.cond.i
  %spec.select104.i = select i1 %tobool6.not.i75.i, i32 %call.i65.i, i32 %spec.select103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp9.i78.i = icmp slt i32 %call.i65.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select104.i, i32 %min_nr)
  %cmp10.i80.i = icmp sge i32 %spec.select104.i, %min_nr
  %or.cond105.i = select i1 %cmp9.i78.i, i1 true, i1 %cmp10.i80.i
  br i1 %or.cond105.i, label %if.end5.i76.i.for.end.i_crit_edge, label %if.end14.i

if.end5.i76.i.for.end.i_crit_edge:                ; preds = %if.end5.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end14.i:                                       ; preds = %if.end5.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %if.end14.i.__out.i_crit_edge

if.end14.i.__out.i_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i

if.end16.i:                                       ; preds = %if.end14.i
  %19 = ptrtoint ptr %task17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task17.i, align 8
  %tobool18.not.i = icmp eq ptr %20, null
  br i1 %tobool18.not.i, label %if.end16.i.for.end.i_crit_edge, label %cleanup.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %if.end5.i76.i.for.end.i_crit_edge, %if.end5.i76.thread.i
  %spec.select104124.i = phi i32 [ %spec.select104119.i, %if.end5.i76.thread.i ], [ %spec.select104.i, %if.end5.i76.i.for.end.i_crit_edge ], [ %spec.select104.i, %if.end16.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #12
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end14.i.__out.i_crit_edge
  %spec.select104123.i = phi i32 [ %spec.select104124.i, %for.end.i ], [ %spec.select104.i, %if.end14.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %call23.i = call i32 @hrtimer_cancel(ptr noundef nonnull %__t.i) #12
  call void @destroy_hrtimer_on_stack(ptr noundef nonnull %__t.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %__t.i) #12
  br label %if.end

if.end:                                           ; preds = %__out.i, %if.end5.i56.i.if.end_crit_edge, %if.end5.i56.thread.i, %if.end5.i.i, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.then.if.end_crit_edge ], [ %spec.select104123.i, %__out.i ], [ %spec.select100.i, %if.end5.i.i ], [ %spec.select102.i, %if.end5.i56.i.if.end_crit_edge ], [ %spec.select102113.i, %if.end5.i56.thread.i ]
  call fastcc void @percpu_ref_put(ptr noundef nonnull %call1)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %cond.end.if.end14_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ -22, %cond.end.if.end14_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper_on_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_hrtimer_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aio_read_events_ring(ptr noundef %ctx, ptr noundef %event, i32 noundef %nr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %task_state_change, align 4
  %5 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #12
  %ring_pages = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 10
  %6 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_pages, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %15 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i153 = tail call ptr @__kmap_local_page_prot(ptr noundef %9, i32 noundef %or.i) #12
  %head2 = getelementptr inbounds %struct.aio_ring, ptr %call.i.i153, i32 0, i32 2
  %21 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head2, align 8
  %tail3 = getelementptr inbounds %struct.aio_ring, ptr %call.i.i153, i32 0, i32 3
  %23 = ptrtoint ptr %tail3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail3, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i153) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %25 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !392
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_read_events_ring.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_read_events_ring, %if.then)) #12
          to label %do.end18 [label %if.then], !srcloc !342

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nr_events = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 7
  %35 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_events, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_read_events_ring.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef %22, i32 noundef %24, i32 noundef %36) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp eq i32 %22, %24
  br i1 %cmp, label %do.end18.cleanup94_crit_edge, label %if.end20

do.end18.cleanup94_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

if.end20:                                         ; preds = %do.end18
  %nr_events21 = getelementptr inbounds %struct.kioctx, ptr %ctx, i32 0, i32 7
  %37 = ptrtoint ptr %nr_events21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_events21, align 4
  %rem = urem i32 %22, %38
  %rem23 = urem i32 %24, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp24185 = icmp sgt i32 %nr, 0
  br i1 %cmp24185, label %if.end20.while.body_crit_edge, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end20.while.body_crit_edge
  %head.0187 = phi i32 [ %rem62, %cleanup.while.body_crit_edge ], [ %rem, %if.end20.while.body_crit_edge ]
  %ret.0186 = phi i32 [ %add59, %cleanup.while.body_crit_edge ], [ 0, %if.end20.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0187, i32 %rem23)
  %cmp25.not = icmp ugt i32 %head.0187, %rem23
  br i1 %cmp25.not, label %cond.false, label %while.body.cond.end_crit_edge

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %nr_events21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_events21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.body.cond.end_crit_edge
  %cond = phi i32 [ %40, %cond.false ], [ %rem23, %while.body.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0187, i32 %rem23)
  %cmp27 = icmp eq i32 %head.0187, %rem23
  br i1 %cmp27, label %cond.end.while.end_crit_edge, label %if.end29

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end29:                                         ; preds = %cond.end
  %sub = sub i32 %cond, %head.0187
  %add = add nuw i32 %head.0187, 1
  %41 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring_pages, align 16
  %div149 = lshr i32 %add, 7
  %arrayidx31 = getelementptr ptr, ptr %42, i32 %div149
  %43 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx31, align 4
  %rem32 = and i32 %add, 127
  %sub33 = sub i32 %nr, %ret.0186
  %45 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub33)
  %sub40 = sub nuw nsw i32 128, %rem32
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %sub40)
  tail call void @__might_sleep(ptr noundef nonnull @.str.132, i32 noundef 44) #12
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  %shr.i.i = lshr i32 %48, 30
  %49 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %shr.i.i, label %if.end29.if.then.i154_crit_edge [
    i32 2, label %if.end29.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end29.if.else.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end29.if.then.i154_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i154

is_highmem_idx.exit.i:                            ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %50 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp2.i.not.i = icmp eq i32 %50, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i154_crit_edge

is_highmem_idx.exit.i.if.then.i154_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i154

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i154:                                     ; preds = %is_highmem_idx.exit.i.if.then.i154_crit_edge, %if.end29.if.then.i154_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %44) #12
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end29.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %44) #12
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i154
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i154 ]
  %add.ptr = getelementptr %struct.io_event, ptr %event, i32 %ret.0186
  %add.ptr48 = getelementptr %struct.io_event, ptr %addr.0.i, i32 %rem32
  %mul = shl i32 %46, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %kmap.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !330

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %kmap.exit
  tail call void @__check_object_size(ptr noundef %add.ptr48, i32 noundef %mul, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.98, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %mul, i32 -1226833920) #16, !srcloc !393
  %asmresult.i.i = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr48, i32 noundef %mul) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %add.ptr48, i32 noundef %mul) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ], [ 1, %if.then27.i.i ], [ 1, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.132, i32 noundef 55) #12
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %44, align 4
  %shr.i.i155 = lshr i32 %53, 30
  %54 = zext i32 %shr.i.i155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %shr.i.i155, label %copy_to_user.exit.kunmap.exit_crit_edge [
    i32 2, label %copy_to_user.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i157
  ]

copy_to_user.exit.if.end.i_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

copy_to_user.exit.kunmap.exit_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit

is_highmem_idx.exit.i157:                         ; preds = %copy_to_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %55 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp2.i.not.i156 = icmp eq i32 %55, 2
  br i1 %cmp2.i.not.i156, label %is_highmem_idx.exit.i157.if.end.i_crit_edge, label %is_highmem_idx.exit.i157.kunmap.exit_crit_edge

is_highmem_idx.exit.i157.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit

is_highmem_idx.exit.i157.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i157.if.end.i_crit_edge, %copy_to_user.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %44) #12
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i157.kunmap.exit_crit_edge, %copy_to_user.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool50.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool50.not, label %cleanup, label %kunmap.exit.cleanup94_crit_edge, !prof !330

kunmap.exit.cleanup94_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

cleanup:                                          ; preds = %kunmap.exit
  %add59 = add i32 %46, %ret.0186
  %add60 = add i32 %46, %head.0187
  %56 = ptrtoint ptr %nr_events21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_events21, align 4
  %rem62 = urem i32 %add60, %57
  %cmp24 = icmp slt i32 %add59, %nr
  br i1 %cmp24, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cond.end.while.end_crit_edge, %if.end20.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end20.while.end_crit_edge ], [ %ret.0186, %cond.end.while.end_crit_edge ], [ %add59, %cleanup.while.end_crit_edge ]
  %head.0.lcssa = phi i32 [ %rem, %if.end20.while.end_crit_edge ], [ %rem23, %cond.end.while.end_crit_edge ], [ %rem62, %cleanup.while.end_crit_edge ]
  %58 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring_pages, align 16
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %62 = load i32, ptr @pgprot_kernel, align 4
  %or.i158 = or i32 %62, 512
  %63 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i.i159 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i159 to ptr
  %preempt_count.i.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i160, align 4
  %add.i.i.i161 = add i32 %66, 1
  store volatile i32 %add.i.i.i161, ptr %preempt_count.i.i.i.i160, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %67 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i.i162 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i.i162 to ptr
  %task.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i.i.i163, align 8
  %pagefault_disabled.i.i.i.i164 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 213
  %71 = ptrtoint ptr %pagefault_disabled.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pagefault_disabled.i.i.i.i164, align 8
  %inc.i.i.i.i165 = add i32 %72, 1
  store i32 %inc.i.i.i.i165, ptr %pagefault_disabled.i.i.i.i164, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call.i.i166 = tail call ptr @__kmap_local_page_prot(ptr noundef %61, i32 noundef %or.i158) #12
  %head68 = getelementptr inbounds %struct.aio_ring, ptr %call.i.i166, i32 0, i32 2
  %73 = ptrtoint ptr %head68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %head.0.lcssa, ptr %head68, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i166) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %74 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i1.i167 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i1.i167 to ptr
  %task.i.i.i168 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task.i.i.i168, align 8
  %pagefault_disabled.i.i.i169 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 213
  %78 = ptrtoint ptr %pagefault_disabled.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pagefault_disabled.i.i.i169, align 8
  %dec.i.i.i170 = add i32 %79, -1
  store i32 %dec.i.i.i170, ptr %pagefault_disabled.i.i.i169, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %80 = tail call i32 @llvm.read_register.i32(metadata !320) #12
  %and.i.i.i.i171 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i171 to ptr
  %preempt_count.i.i.i172 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i172, align 4
  %sub.i.i173 = add i32 %83, -1
  store volatile i32 %sub.i.i173, ptr %preempt_count.i.i.i172, align 4
  %84 = ptrtoint ptr %ring_pages to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring_pages, align 16
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void @flush_dcache_page(ptr noundef %87) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aio_read_events_ring.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aio_read_events_ring, %if.then89)) #12
          to label %cleanup94 [label %if.then89], !srcloc !342

if.then89:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aio_read_events_ring.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.127, i32 noundef %ret.0.lcssa, i32 noundef %head.0.lcssa, i32 noundef %rem23) #12
  br label %cleanup94

cleanup94:                                        ; preds = %if.then89, %while.end, %kunmap.exit.cleanup94_crit_edge, %do.end18.cleanup94_crit_edge
  %ret.3 = phi i32 [ 0, %do.end18.cleanup94_crit_edge ], [ %ret.0.lcssa, %if.then89 ], [ %ret.0.lcssa, %while.end ], [ -14, %kunmap.exit.cleanup94_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !106, !108, !110, !111, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !190, !192, !193, !194, !196, !197, !199, !201, !203, !204, !205, !206, !207, !208, !209, !210, !212, !213, !214, !215, !217, !219, !221, !222, !223, !224, !225, !226, !227, !228, !229, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !270, !271, !273, !275, !277, !279, !280, !281, !282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !313, !314, !315, !316, !317, !318, !319}
!llvm.named.register.sp = !{!320}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @__initcall__kmod_aio__296_307_aio_setup6, !1, !"__initcall__kmod_aio__296_307_aio_setup6", i1 false, i1 false}
!1 = !{!"../fs/aio.c", i32 307, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/aio.c", i32 594, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_kiocb_set_cancel_fn, !6, !"__ksymtab_kiocb_set_cancel_fn", i1 false, i1 false}
!6 = !{!"../fs/aio.c", i32 602, i32 1}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../fs/aio.c", i32 901, i32 4}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/aio.c", i32 1338, i32 1}
!11 = !{ptr @event_enter__io_setup, !10, !"event_enter__io_setup", i1 false, i1 false}
!12 = !{ptr @__event_enter__io_setup, !10, !"__event_enter__io_setup", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @event_exit__io_setup, !10, !"event_exit__io_setup", i1 false, i1 false}
!15 = !{ptr @__event_exit__io_setup, !10, !"__event_exit__io_setup", i1 false, i1 false}
!16 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__syscall_meta__io_setup, !10, !"__syscall_meta__io_setup", i1 false, i1 false}
!18 = !{ptr @__p_syscall_meta__io_setup, !10, !"__p_syscall_meta__io_setup", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/aio.c", i32 1407, i32 1}
!21 = !{ptr @event_enter__io_destroy, !20, !"event_enter__io_destroy", i1 false, i1 false}
!22 = !{ptr @__event_enter__io_destroy, !20, !"__event_enter__io_destroy", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @event_exit__io_destroy, !20, !"event_exit__io_destroy", i1 false, i1 false}
!25 = !{ptr @__event_exit__io_destroy, !20, !"__event_exit__io_destroy", i1 false, i1 false}
!26 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__syscall_meta__io_destroy, !20, !"__syscall_meta__io_destroy", i1 false, i1 false}
!28 = !{ptr @__p_syscall_meta__io_destroy, !20, !"__p_syscall_meta__io_destroy", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/aio.c", i32 2053, i32 1}
!31 = !{ptr @event_enter__io_submit, !30, !"event_enter__io_submit", i1 false, i1 false}
!32 = !{ptr @__event_enter__io_submit, !30, !"__event_enter__io_submit", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @event_exit__io_submit, !30, !"event_exit__io_submit", i1 false, i1 false}
!35 = !{ptr @__event_exit__io_submit, !30, !"__event_exit__io_submit", i1 false, i1 false}
!36 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__syscall_meta__io_submit, !30, !"__syscall_meta__io_submit", i1 false, i1 false}
!38 = !{ptr @__p_syscall_meta__io_submit, !30, !"__p_syscall_meta__io_submit", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/aio.c", i32 2147, i32 1}
!41 = !{ptr @event_enter__io_cancel, !40, !"event_enter__io_cancel", i1 false, i1 false}
!42 = !{ptr @__event_enter__io_cancel, !40, !"__event_enter__io_cancel", i1 false, i1 false}
!43 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @event_exit__io_cancel, !40, !"event_exit__io_cancel", i1 false, i1 false}
!45 = !{ptr @__event_exit__io_cancel, !40, !"__event_exit__io_cancel", i1 false, i1 false}
!46 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__syscall_meta__io_cancel, !40, !"__syscall_meta__io_cancel", i1 false, i1 false}
!48 = !{ptr @__p_syscall_meta__io_cancel, !40, !"__p_syscall_meta__io_cancel", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/aio.c", i32 2248, i32 1}
!51 = !{ptr @event_enter__io_pgetevents, !50, !"event_enter__io_pgetevents", i1 false, i1 false}
!52 = !{ptr @__event_enter__io_pgetevents, !50, !"__event_enter__io_pgetevents", i1 false, i1 false}
!53 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @event_exit__io_pgetevents, !50, !"event_exit__io_pgetevents", i1 false, i1 false}
!55 = !{ptr @__event_exit__io_pgetevents, !50, !"__event_exit__io_pgetevents", i1 false, i1 false}
!56 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__syscall_meta__io_pgetevents, !50, !"__syscall_meta__io_pgetevents", i1 false, i1 false}
!58 = !{ptr @__p_syscall_meta__io_pgetevents, !50, !"__p_syscall_meta__io_pgetevents", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/aio.c", i32 2283, i32 1}
!61 = !{ptr @event_enter__io_pgetevents_time32, !60, !"event_enter__io_pgetevents_time32", i1 false, i1 false}
!62 = !{ptr @__event_enter__io_pgetevents_time32, !60, !"__event_enter__io_pgetevents_time32", i1 false, i1 false}
!63 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @event_exit__io_pgetevents_time32, !60, !"event_exit__io_pgetevents_time32", i1 false, i1 false}
!65 = !{ptr @__event_exit__io_pgetevents_time32, !60, !"__event_exit__io_pgetevents_time32", i1 false, i1 false}
!66 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__syscall_meta__io_pgetevents_time32, !60, !"__syscall_meta__io_pgetevents_time32", i1 false, i1 false}
!68 = !{ptr @__p_syscall_meta__io_pgetevents_time32, !60, !"__p_syscall_meta__io_pgetevents_time32", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/aio.c", i32 2321, i32 1}
!71 = !{ptr @event_enter__io_getevents_time32, !70, !"event_enter__io_getevents_time32", i1 false, i1 false}
!72 = !{ptr @__event_enter__io_getevents_time32, !70, !"__event_enter__io_getevents_time32", i1 false, i1 false}
!73 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @event_exit__io_getevents_time32, !70, !"event_exit__io_getevents_time32", i1 false, i1 false}
!75 = !{ptr @__event_exit__io_getevents_time32, !70, !"__event_exit__io_getevents_time32", i1 false, i1 false}
!76 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__syscall_meta__io_getevents_time32, !70, !"__syscall_meta__io_getevents_time32", i1 false, i1 false}
!78 = !{ptr @__p_syscall_meta__io_getevents_time32, !70, !"__p_syscall_meta__io_getevents_time32", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/aio.c", i32 294, i32 12}
!81 = !{ptr @aio_setup.aio_fs, !82, !"aio_fs", i1 false, i1 false}
!82 = !{!"../fs/aio.c", i32 293, i32 33}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/aio.c", i32 300, i32 9}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/aio.c", i32 302, i32 17}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/aio.c", i32 303, i32 18}
!89 = !{ptr @aio_mnt, !90, !"aio_mnt", i1 false, i1 false}
!90 = !{!"../fs/aio.c", i32 256, i32 25}
!91 = !{ptr @kiocb_cachep, !92, !"kiocb_cachep", i1 false, i1 false}
!92 = !{!"../fs/aio.c", i32 253, i32 27}
!93 = !{ptr @kioctx_cachep, !94, !"kioctx_cachep", i1 false, i1 false}
!94 = !{!"../fs/aio.c", i32 254, i32 27}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/aio.c", i32 247, i32 2}
!97 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/aio.c", i32 229, i32 15}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/aio.c", i32 236, i32 15}
!102 = !{ptr @aio_sysctls, !103, !"aio_sysctls", i1 false, i1 false}
!103 = !{!"../fs/aio.c", i32 227, i32 25}
!104 = !{ptr @aio_nr, !105, !"aio_nr", i1 false, i1 false}
!105 = !{!"../fs/aio.c", i32 223, i32 22}
!106 = !{ptr @aio_max_nr, !107, !"aio_max_nr", i1 false, i1 false}
!107 = !{!"../fs/aio.c", i32 224, i32 22}
!108 = !{ptr @init_completion.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../include/linux/completion.h", i32 87, i32 2}
!110 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/aio.c", i32 222, i32 8}
!113 = !{ptr @aio_nr_lock, !112, !"aio_nr_lock", i1 false, i1 false}
!114 = !{ptr @.str.32, !10, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.33, !10, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @types__io_setup, !10, !"types__io_setup", i1 false, i1 false}
!117 = !{ptr @.str.34, !10, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.35, !10, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @args__io_setup, !10, !"args__io_setup", i1 false, i1 false}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/aio.c", i32 1350, i32 3}
!122 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__do_sys_io_setup.__UNIQUE_ID_ddebug356, !121, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!124 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/aio.c", i32 753, i32 3}
!127 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ioctx_alloc.__UNIQUE_ID_ddebug326, !126, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!129 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ioctx_alloc.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../fs/aio.c", i32 766, i32 2}
!132 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ioctx_alloc.__key.43, !134, !"__key", i1 false, i1 false}
!134 = !{!"../fs/aio.c", i32 767, i32 2}
!135 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ioctx_alloc.__key.45, !137, !"__key", i1 false, i1 false}
!137 = !{!"../fs/aio.c", i32 768, i32 2}
!138 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ioctx_alloc.__key.47, !140, !"__key", i1 false, i1 false}
!140 = !{!"../fs/aio.c", i32 772, i32 2}
!141 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/aio.c", i32 816, i32 2}
!144 = !{ptr @ioctx_alloc.__UNIQUE_ID_ddebug327, !143, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!145 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/aio.c", i32 833, i32 2}
!148 = !{ptr @ioctx_alloc.__UNIQUE_ID_ddebug328, !147, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!149 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @free_ioctx_reqs.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../fs/aio.c", i32 631, i32 2}
!152 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/aio.c", i32 613, i32 2}
!155 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @free_ioctx.__UNIQUE_ID_ddebug306, !154, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!157 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/aio.c", i32 532, i32 3}
!160 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @aio_setup_ring.__UNIQUE_ID_ddebug302, !159, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!162 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/aio.c", i32 547, i32 2}
!165 = !{ptr @aio_setup_ring.__UNIQUE_ID_ddebug303, !164, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!166 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/aio.c", i32 565, i32 2}
!169 = !{ptr @aio_setup_ring.__UNIQUE_ID_ddebug304, !168, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!170 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/aio.c", i32 272, i32 43}
!173 = !{ptr @aio_ctx_aops, !174, !"aio_ctx_aops", i1 false, i1 false}
!174 = !{!"../fs/aio.c", i32 480, i32 46}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/page-flags.h", i32 461, i32 1}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/mm.h", i32 717, i32 2}
!181 = !{ptr @aio_ring_fops, !182, !"aio_ring_fops", i1 false, i1 false}
!182 = !{!"../fs/aio.c", i32 398, i32 37}
!183 = !{ptr @aio_ring_vm_ops, !184, !"aio_ring_vm_ops", i1 false, i1 false}
!184 = !{!"../fs/aio.c", i32 382, i32 42}
!185 = distinct !{null, !186, !"__warned", i1 false, i1 false}
!186 = !{!"../fs/aio.c", i32 363, i32 10}
!187 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../fs/aio.c", i32 367, i32 9}
!190 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!191 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!192 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.71, !191, !"<string literal>", i1 false, i1 false}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!196 = !{ptr @.str.72, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!199 = distinct !{null, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!201 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/aio.c", i32 339, i32 3}
!203 = !{ptr @.str.76, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @aio_free_ring.__UNIQUE_ID_ddebug297, !202, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!205 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.78, !20, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @types__io_destroy, !20, !"types__io_destroy", i1 false, i1 false}
!208 = !{ptr @.str.79, !20, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @args__io_destroy, !20, !"args__io_destroy", i1 false, i1 false}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/aio.c", i32 1433, i32 2}
!212 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @__do_sys_io_destroy.__UNIQUE_ID_ddebug357, !211, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!214 = !{ptr @.str.82, !211, !"<string literal>", i1 false, i1 false}
!215 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!216 = !{!"../fs/aio.c", i32 1085, i32 10}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../fs/aio.c", i32 1091, i32 8}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!221 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.85, !30, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.86, !30, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @types__io_submit, !30, !"types__io_submit", i1 false, i1 false}
!225 = !{ptr @.str.87, !30, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.88, !30, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.89, !30, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @args__io_submit, !30, !"args__io_submit", i1 false, i1 false}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/aio.c", i32 2066, i32 3}
!231 = !{ptr @__do_sys_io_submit.__UNIQUE_ID_ddebug372, !230, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!232 = !{ptr @.str.91, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/aio.c", i32 2006, i32 3}
!234 = !{ptr @.str.92, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @io_submit_one.__UNIQUE_ID_ddebug370, !233, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!236 = !{ptr @.str.93, !233, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/aio.c", i32 2016, i32 3}
!239 = !{ptr @io_submit_one.__UNIQUE_ID_ddebug371, !238, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!240 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!243 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!246 = !{ptr @.str.98, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!248 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/aio.c", i32 1964, i32 3}
!250 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @__io_submit_one.__UNIQUE_ID_ddebug368, !249, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!252 = !{ptr @.str.101, !249, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.102, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/aio.c", i32 1989, i32 3}
!255 = !{ptr @__io_submit_one.__UNIQUE_ID_ddebug369, !254, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!256 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/aio.c", i32 1490, i32 4}
!259 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @aio_prep_rw.__UNIQUE_ID_ddebug358, !258, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!261 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!264 = !{ptr @.str.107, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.108, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.109, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!268 = !{ptr @aio_fsync.__key, !269, !"__key", i1 false, i1 false}
!269 = !{!"../fs/aio.c", i32 1637, i32 2}
!270 = !{ptr @.str.110, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../include/linux/cred.h", i32 286, i32 3}
!273 = !{ptr @aio_poll.__key, !274, !"__key", i1 false, i1 false}
!274 = !{!"../fs/aio.c", i32 1880, i32 2}
!275 = !{ptr @aio_poll_wake.__key, !276, !"__key", i1 false, i1 false}
!276 = !{!"../fs/aio.c", i32 1792, i32 4}
!277 = !{ptr @.str.112, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/aio.c", i32 1143, i32 2}
!279 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @aio_complete.__UNIQUE_ID_ddebug345, !278, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!281 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.115, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/aio.c", i32 1165, i32 2}
!284 = !{ptr @aio_complete.__UNIQUE_ID_ddebug347, !283, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!285 = !{ptr @.str.116, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.117, !40, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.118, !40, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @types__io_cancel, !40, !"types__io_cancel", i1 false, i1 false}
!289 = !{ptr @.str.119, !40, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.120, !40, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @args__io_cancel, !40, !"args__io_cancel", i1 false, i1 false}
!292 = !{ptr @.str.121, !50, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.122, !50, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @types__io_pgetevents, !50, !"types__io_pgetevents", i1 false, i1 false}
!295 = !{ptr @.str.123, !50, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.124, !50, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.125, !50, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.126, !50, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @args__io_pgetevents, !50, !"args__io_pgetevents", i1 false, i1 false}
!300 = !{ptr @.str.127, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/aio.c", i32 1228, i32 2}
!302 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @aio_read_events_ring.__UNIQUE_ID_ddebug349, !301, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!304 = !{ptr @.str.129, !301, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.130, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/aio.c", i32 1272, i32 2}
!307 = !{ptr @aio_read_events_ring.__UNIQUE_ID_ddebug355, !306, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!308 = !{ptr @.str.131, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.132, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!311 = !{ptr @.str.133, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../include/linux/sched/signal.h", i32 519, i32 3}
!313 = !{ptr @.str.134, !60, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @types__io_pgetevents_time32, !60, !"types__io_pgetevents_time32", i1 false, i1 false}
!315 = !{ptr @args__io_pgetevents_time32, !60, !"args__io_pgetevents_time32", i1 false, i1 false}
!316 = !{ptr @.str.135, !70, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.136, !70, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @types__io_getevents_time32, !70, !"types__io_getevents_time32", i1 false, i1 false}
!319 = !{ptr @args__io_getevents_time32, !70, !"args__io_getevents_time32", i1 false, i1 false}
!320 = !{!"sp"}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{!"branch_weights", i32 2000, i32 1}
!331 = !{i64 2148358751}
!332 = !{i64 2148273484, i64 2148273516, i64 2148273545, i64 2148273579, i64 2148273610, i64 2148273633}
!333 = !{i64 2148358980}
!334 = !{i64 2148530139}
!335 = !{i64 777067, i64 777084, i64 777108, i64 777134, i64 777152}
!336 = !{i64 2148530509}
!337 = !{!"branch_weights", i32 1, i32 2000}
!338 = !{i64 4724267}
!339 = !{i64 4724464}
!340 = !{i64 2152209697}
!341 = !{i64 2155843362, i64 2155843642, i64 2155843976, i64 2155844310}
!342 = !{i64 2148752114, i64 2148752119, i64 2148752132, i64 2148752176, i64 2148752210, i64 2148752231}
!343 = !{i64 2155855242, i64 2155855522, i64 2155855856, i64 2155856190}
!344 = !{i64 2155974111, i64 2155974421, i64 2155974735, i64 2155975049}
!345 = !{i64 2156011670, i64 2156011980, i64 2156012294, i64 2156012608}
!346 = !{i64 2152228712, i64 2152228737}
!347 = !{i64 2149552330}
!348 = !{i64 662780, i64 662841}
!349 = !{i64 665512}
!350 = !{i64 665797}
!351 = !{i64 2149552596}
!352 = !{!"auto-init"}
!353 = !{i64 2151375941}
!354 = !{i64 2150624978, i64 2150625469, i64 2150625015, i64 2150625071, i64 2150625105, i64 2150625129, i64 2150625170, i64 2150625191, i64 2150625219, i64 2150625253}
!355 = !{i64 2155068175}
!356 = !{i64 2152231529}
!357 = !{i64 2152231736}
!358 = !{i64 2155070946}
!359 = !{i64 2148270299, i64 2148270325, i64 2148270354, i64 2148270388, i64 2148270419, i64 2148270442}
!360 = !{i64 2155705112}
!361 = !{i64 2155722648}
!362 = !{i64 2155730391}
!363 = !{i64 2153751584, i64 2153752067, i64 2153751621, i64 2153751677, i64 2153751711, i64 2153751735, i64 2153751776, i64 2153751797, i64 2153751825, i64 2153751859}
!364 = !{i64 2151140832, i64 2151141323, i64 2151140869, i64 2151140925, i64 2151140959, i64 2151140983, i64 2151141024, i64 2151141045, i64 2151141073, i64 2151141107}
!365 = !{i64 2155667451, i64 2155667924, i64 2155667488, i64 2155667544, i64 2155667578, i64 2155667602, i64 2155667643, i64 2155667664, i64 2155667692, i64 2155667726}
!366 = !{i64 2153771496, i64 2153771980, i64 2153771533, i64 2153771589, i64 2153771623, i64 2153771647, i64 2153771688, i64 2153771709, i64 2153771737, i64 2153771771}
!367 = !{i64 2155669404, i64 2155669877, i64 2155669441, i64 2155669497, i64 2155669531, i64 2155669555, i64 2155669596, i64 2155669617, i64 2155669645, i64 2155669679}
!368 = !{i64 2155780090, i64 2155780370, i64 2155780704, i64 2155781038}
!369 = !{i64 718304, i64 718321}
!370 = !{i64 2148269718}
!371 = !{i64 754541, i64 754566, i64 754588, i64 754604, i64 754616, i64 754636, i64 754660, i64 754676, i64 754688}
!372 = !{i64 2148269906}
!373 = !{!"branch_weights", i32 4000000, i32 4001}
!374 = !{i64 2155922509, i64 2155922819, i64 2155923133, i64 2155923447}
!375 = !{i8 0, i8 2}
!376 = !{i64 2148359830}
!377 = !{i64 2148274294, i64 2148274326, i64 2148274355, i64 2148274389, i64 2148274420, i64 2148274443}
!378 = !{i64 2150426877}
!379 = !{i64 2148372122}
!380 = !{i64 754035, i64 754059, i64 754080, i64 754097, i64 754114}
!381 = !{i64 2148372348}
!382 = !{i64 2152399456}
!383 = !{i64 2152408306}
!384 = !{i64 2149057755}
!385 = !{i64 2152418260}
!386 = !{i64 2152427755}
!387 = !{i64 2152437232}
!388 = !{i64 2155903613}
!389 = !{i64 2155883232}
!390 = !{i64 2155800578}
!391 = !{i64 2155804708}
!392 = !{i64 2155806978}
!393 = !{i64 2152229393, i64 2152229418}
