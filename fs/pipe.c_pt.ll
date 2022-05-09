; ModuleID = '/llk/IR_all_yes/fs/pipe.c_pt.bc'
source_filename = "../fs/pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pipe_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_pipe_lock\09\09\09\09"
module asm "\09.long\09__crc_pipe_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pipe_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22pipe_lock\22\09\09\09\09\09"
module asm "__kstrtabns_pipe_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pipe_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_pipe_unlock\09\09\09\09"
module asm "\09.long\09__crc_pipe_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pipe_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22pipe_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_pipe_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_pipe_buf_try_steal\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_pipe_buf_try_steal\09\09\09\09"
module asm "\09.long\09__crc_generic_pipe_buf_try_steal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_try_steal:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_try_steal\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_try_steal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_pipe_buf_get\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_pipe_buf_get\09\09\09\09"
module asm "\09.long\09__crc_generic_pipe_buf_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_get\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_pipe_buf_release\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_pipe_buf_release\09\09\09\09"
module asm "\09.long\09__crc_generic_pipe_buf_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_release\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.69, %struct.trace_event, ptr, ptr, %union.anon.71, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.71 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.102, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.102 = type { %struct.atomic_t }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kuid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.15 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.15 = type { %struct.callback_head }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.103 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.104 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.106 = type { ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.watch_notification = type { i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.88, %union.anon.89 }
%union.anon.88 = type { ptr }
%union.anon.89 = type { i64 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.86, %struct.list_head, %struct.list_head, %union.anon.87 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.86 = type { %struct.list_head }
%union.anon.87 = type { %struct.hlist_node }

@__kstrtab_pipe_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pipe_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_pipe_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pipe_lock to i32), ptr @__kstrtab_pipe_lock, ptr @__kstrtabns_pipe_lock }, section "___ksymtab+pipe_lock", align 4
@__kstrtab_pipe_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pipe_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_pipe_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pipe_unlock to i32), ptr @__kstrtab_pipe_unlock, ptr @__kstrtabns_pipe_unlock }, section "___ksymtab+pipe_unlock", align 4
@__kstrtab_generic_pipe_buf_try_steal = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_try_steal = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_try_steal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_try_steal to i32), ptr @__kstrtab_generic_pipe_buf_try_steal, ptr @__kstrtabns_generic_pipe_buf_try_steal }, section "___ksymtab+generic_pipe_buf_try_steal", align 4
@__kstrtab_generic_pipe_buf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_get to i32), ptr @__kstrtab_generic_pipe_buf_get, ptr @__kstrtabns_generic_pipe_buf_get }, section "___ksymtab+generic_pipe_buf_get", align 4
@__kstrtab_generic_pipe_buf_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_release = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_release to i32), ptr @__kstrtab_generic_pipe_buf_release, ptr @__kstrtabns_generic_pipe_buf_release }, section "___ksymtab+generic_pipe_buf_release", align 4
@pipe_user_pages_soft = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@pipe_user_pages_hard = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pipe_max_size = internal global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@alloc_pipe_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pipe->rd_wait\00", [17 x i8] zeroinitializer }, align 32
@alloc_pipe_info.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pipe->wr_wait\00", [17 x i8] zeroinitializer }, align 32
@alloc_pipe_info.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pipe->mutex\00", [19 x i8] zeroinitializer }, align 32
@pipe_mnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pipefifo_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @pipe_read, ptr @pipe_write, ptr null, ptr null, ptr null, ptr @pipe_poll, ptr @pipe_ioctl, ptr null, ptr null, i32 0, ptr @fifo_open, ptr null, ptr @pipe_release, ptr null, ptr @pipe_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_pipe2\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__pipe2 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__pipe2, ptr @args__pipe2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pipe2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pipe2, i64 20) }, ptr @event_enter__pipe2, ptr @event_exit__pipe2 }, align 4
@event_enter__pipe2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.69 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.71 zeroinitializer, ptr @__syscall_meta__pipe2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pipe2 = internal global ptr @event_enter__pipe2, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_pipe2\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__pipe2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.69 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.71 zeroinitializer, ptr @__syscall_meta__pipe2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pipe2 = internal global ptr @event_exit__pipe2, section "_ftrace_events", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_pipe2\00", [22 x i8] zeroinitializer }, align 32
@types__pipe2 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@args__pipe2 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pipe2 = internal global ptr @__syscall_meta__pipe2, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_pipe\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__pipe = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 1, ptr @types__pipe, ptr @args__pipe, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pipe, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pipe, i64 20) }, ptr @event_enter__pipe, ptr @event_exit__pipe }, align 4
@event_enter__pipe = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.69 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.71 zeroinitializer, ptr @__syscall_meta__pipe, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pipe = internal global ptr @event_enter__pipe, section "_ftrace_events", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_pipe\00", [18 x i8] zeroinitializer }, align 32
@event_exit__pipe = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.69 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.71 zeroinitializer, ptr @__syscall_meta__pipe, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pipe = internal global ptr @event_exit__pipe, section "_ftrace_events", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pipe\00", [23 x i8] zeroinitializer }, align 32
@types__pipe = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@args__pipe = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pipe = internal global ptr @__syscall_meta__pipe, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/pipe.c\00", [22 x i8] zeroinitializer }, align 32
@__initcall__kmod_pipe__314_1506_init_pipe_fs5 = internal global ptr @init_pipe_fs, section ".initcall5.init", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@try_get_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/linux/mm.h\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"int *\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fildes\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@anon_pipe_buf_ops = internal constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @anon_pipe_buf_release, ptr @anon_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@memcg_kmem_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@pipe_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.33, i32 0, ptr @pipefs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@fs_pipe_sysctls = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.35, ptr @pipe_max_size, i32 4, i16 420, ptr null, ptr @proc_dopipe_max_size, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr @pipe_user_pages_hard, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr @pipe_user_pages_soft, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs_pipe_sysctls\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pipefs\00", [25 x i8] zeroinitializer }, align 32
@pipefs_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr @free_inode_nonrcu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pipefs_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pipefs_dname, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pipe:[%lu]\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pipe-max-size\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pipe-user-pages-hard\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pipe-user-pages-soft\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 21531, i64 22368, i64 22369]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1031, i64 1032]
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"pipe_user_pages_soft\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 60, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"pipe_user_pages_hard\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 59, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"pipe_max_size\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 54, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 811, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 812, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 818, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 929, i32 41 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"pipefifo_fops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1218, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"event_enter__pipe2\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"event_exit__pipe2\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"types__pipe2\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"args__pipe2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"event_enter__pipe\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"event_exit__pipe\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"types__pipe\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"args__pipe\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1031, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1048, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 788, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 260, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1177, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 717, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1026, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 174, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"anon_pipe_buf_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 214, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 414, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 34, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"pipe_fs_type\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1429, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"fs_pipe_sysctls\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1463, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1501, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1430, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"pipefs_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1407, i32 38 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 863, i32 47 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1465, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1472, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [13 x i8] c"../fs/pipe.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1479, i32 15 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__event_enter__pipe, ptr @__event_enter__pipe2, ptr @__event_exit__pipe, ptr @__event_exit__pipe2, ptr @__initcall__kmod_pipe__314_1506_init_pipe_fs5, ptr @__ksymtab_generic_pipe_buf_get, ptr @__ksymtab_generic_pipe_buf_release, ptr @__ksymtab_generic_pipe_buf_try_steal, ptr @__ksymtab_pipe_lock, ptr @__ksymtab_pipe_unlock, ptr @__p_syscall_meta__pipe, ptr @__p_syscall_meta__pipe2, ptr @__syscall_meta__pipe, ptr @__syscall_meta__pipe2, ptr @event_enter__pipe, ptr @event_enter__pipe2, ptr @event_exit__pipe, ptr @event_exit__pipe2, ptr @pipe_user_pages_soft, ptr @pipe_user_pages_hard, ptr @pipe_max_size, ptr @alloc_pipe_info.__key, ptr @.str, ptr @alloc_pipe_info.__key.1, ptr @.str.2, ptr @alloc_pipe_info.__key.3, ptr @.str.4, ptr @.str.5, ptr @pipefifo_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__pipe2, ptr @args__pipe2, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__pipe, ptr @args__pipe, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @anon_pipe_buf_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pipe_fs_type, ptr @.str.31, ptr @fs_pipe_sysctls, ptr @.str.32, ptr @.str.33, ptr @pipefs_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_user_pages_soft to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_user_pages_hard to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_max_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_info.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_info.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipefifo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pipe2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pipe2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pipe2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pipe2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pipe to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pipe to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pipe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pipe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_pipe_sysctls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipefs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_pipe2 = dso_local alias i32 (ptr, i32), ptr @__se_sys_pipe2
@sys_pipe = dso_local alias i32 (ptr), ptr @__se_sys_pipe

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pipe_lock(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.pipe_lock_nested.exit_crit_edge, label %if.then.i

entry.pipe_lock_nested.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock_nested.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %pipe, i32 noundef 1) #14
  br label %pipe_lock_nested.exit

pipe_lock_nested.exit:                            ; preds = %if.then.i, %entry.pipe_lock_nested.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pipe_unlock(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %files = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %files, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %pipe) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pipe_double_lock(ptr noundef %pipe1, ptr noundef %pipe2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pipe1, %pipe2
  br i1 %cmp, label %do.body2, label %do.end5, !prof !129

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/pipe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !130
  unreachable

do.end5:                                          ; preds = %entry
  %cmp6 = icmp ult ptr %pipe1, %pipe2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end5
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe1, i32 0, i32 11
  %0 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then7.pipe_lock_nested.exit_crit_edge, label %if.then.i

if.then7.pipe_lock_nested.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock_nested.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %pipe1, i32 noundef 1) #14
  br label %pipe_lock_nested.exit

pipe_lock_nested.exit:                            ; preds = %if.then.i, %if.then7.pipe_lock_nested.exit_crit_edge
  %files.i15 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe2, i32 0, i32 11
  %2 = ptrtoint ptr %files.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %files.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i16 = icmp eq i32 %3, 0
  br i1 %tobool.not.i16, label %pipe_lock_nested.exit.if.end8_crit_edge, label %if.then.i17

pipe_lock_nested.exit.if.end8_crit_edge:          ; preds = %pipe_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i17:                                      ; preds = %pipe_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull %pipe2, i32 noundef 2) #14
  br label %if.end8

if.else:                                          ; preds = %do.end5
  %files.i19 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe2, i32 0, i32 11
  %4 = ptrtoint ptr %files.i19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %files.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i20 = icmp eq i32 %5, 0
  br i1 %tobool.not.i20, label %if.else.pipe_lock_nested.exit22_crit_edge, label %if.then.i21

if.else.pipe_lock_nested.exit22_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock_nested.exit22

if.then.i21:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %pipe2, i32 noundef 1) #14
  br label %pipe_lock_nested.exit22

pipe_lock_nested.exit22:                          ; preds = %if.then.i21, %if.else.pipe_lock_nested.exit22_crit_edge
  %files.i23 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe1, i32 0, i32 11
  %6 = ptrtoint ptr %files.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %files.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i24 = icmp eq i32 %7, 0
  br i1 %tobool.not.i24, label %pipe_lock_nested.exit22.if.end8_crit_edge, label %if.then.i25

pipe_lock_nested.exit22.if.end8_crit_edge:        ; preds = %pipe_lock_nested.exit22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i25:                                      ; preds = %pipe_lock_nested.exit22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %pipe1, i32 noundef 2) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then.i25, %pipe_lock_nested.exit22.if.end8_crit_edge, %if.then.i17, %pipe_lock_nested.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @generic_pipe_buf_try_steal(ptr nocapture readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %4, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %page_count.exit.cleanup_crit_edge

page_count.exit.cleanup_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %page_count.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 788) #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i.i3 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i4 = icmp eq i32 %and.i.i3, 0
  br i1 %tobool.not.i.i4, label %if.end.i.i7, label %if.then.i.i6, !prof !131

if.then.i.i6:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i5 = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i7:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i7, %if.then.i.i6
  %retval.0.i.i8 = phi i32 [ %sub.i.i5, %if.then.i.i6 ], [ %11, %if.end.i.i7 ]
  %12 = inttoptr i32 %retval.0.i.i8 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !131

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.14) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #14
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and.i.i4.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #14, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.cleanup_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i.cleanup_crit_edge:           ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_trylock.exit.i.cleanup_crit_edge, %page_count.exit.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @generic_pipe_buf_get(ptr nocapture readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end38.i

land.rhs.i:                                       ; preds = %_compound_head.exit.i
  %.b43.i = load i1, ptr @try_get_page.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.try_get_page.exit_crit_edge, label %if.then.i, !prof !131

land.rhs.i.try_get_page.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %try_get_page.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @try_get_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1177, i32 noundef 9, ptr noundef null) #14
  br label %try_get_page.exit

if.end38.i:                                       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #14, !srcloc !135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@generic_pipe_buf_get, %if.then.i47.i)) #14
          to label %try_get_page.exit [label %if.then.i47.i], !srcloc !136

if.then.i47.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %6, i32 noundef 1) #14
  br label %try_get_page.exit

try_get_page.exit:                                ; preds = %if.then.i47.i, %if.end38.i, %if.then.i, %land.rhs.i.try_get_page.exit_crit_edge
  %10 = xor i1 %cmp.i, true
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_pipe_buf_release(ptr nocapture readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.17) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !139
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@generic_pipe_buf_release, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !136

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %6) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @account_pipe_buffers(ptr noundef %user, i32 noundef %old, i32 noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %new, %old
  %pipe_bufs = getelementptr inbounds %struct.user_struct, ptr %user, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs, ptr %pipe_bufs, i32 %sub, ptr elementtype(i32) %pipe_bufs) #14, !srcloc !142
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  ret i32 %asmresult.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @too_many_pipe_buffers_soft(i32 noundef %user_bufs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %user_bufs)
  %cmp = icmp ult i32 %0, %user_bufs
  %spec.select = and i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @too_many_pipe_buffers_hard(i32 noundef %user_bufs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %user_bufs)
  %cmp = icmp ult i32 %0, %user_bufs
  %spec.select = and i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pipe_is_unprivileged_user() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #14
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_pipe_info() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user1 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %user1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user1, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #14, !srcloc !144
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !129

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_uid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !131

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_uid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_uid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %.sink.i.i.i.i) #14
  br label %get_uid.exit

get_uid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_uid.exit_crit_edge
  %10 = load volatile i32, ptr @pipe_max_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 4197824, i32 noundef 268) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %get_uid.exit.out_free_uid_crit_edge, label %if.end

get_uid.exit.out_free_uid_crit_edge:              ; preds = %get_uid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_uid

if.end:                                           ; preds = %get_uid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp9 = icmp ult i32 %10, 65536
  br i1 %cmp9, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call zeroext i1 @capable(i32 noundef 24) #14
  %shr = lshr i32 %10, 12
  %spec.select = select i1 %call10, i32 16, i32 %shr
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end.if.end12_crit_edge
  %pipe_bufs.0 = phi i32 [ 16, %if.end.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %pipe_bufs.i = getelementptr inbounds %struct.user_struct, ptr %7, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i, ptr %pipe_bufs.i, i32 %pipe_bufs.0, ptr elementtype(i32) %pipe_bufs.i) #14, !srcloc !142
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %13 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp ult i32 %13, %asmresult.i.i.i.i.i
  %spec.select.i = and i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true15, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end12
  %call.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i, label %land.lhs.true15.if.end19_crit_edge, label %pipe_is_unprivileged_user.exit

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

pipe_is_unprivileged_user.exit:                   ; preds = %land.lhs.true15
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1.i, label %pipe_is_unprivileged_user.exit.if.end19_crit_edge, label %if.then17

pipe_is_unprivileged_user.exit.if.end19_crit_edge: ; preds = %pipe_is_unprivileged_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %pipe_is_unprivileged_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i32 2, %pipe_bufs.0
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i, ptr %pipe_bufs.i, i32 %sub.i, ptr elementtype(i32) %pipe_bufs.i) #14, !srcloc !142
  %asmresult.i.i.i.i.i72 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %pipe_is_unprivileged_user.exit.if.end19_crit_edge, %land.lhs.true15.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %pipe_bufs.1 = phi i32 [ 2, %if.then17 ], [ %pipe_bufs.0, %pipe_is_unprivileged_user.exit.if.end19_crit_edge ], [ %pipe_bufs.0, %if.end12.if.end19_crit_edge ], [ %pipe_bufs.0, %land.lhs.true15.if.end19_crit_edge ]
  %user_bufs.0 = phi i32 [ %asmresult.i.i.i.i.i72, %if.then17 ], [ %asmresult.i.i.i.i.i, %pipe_is_unprivileged_user.exit.if.end19_crit_edge ], [ %asmresult.i.i.i.i.i, %if.end12.if.end19_crit_edge ], [ %asmresult.i.i.i.i.i, %land.lhs.true15.if.end19_crit_edge ]
  %15 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i73 = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %user_bufs.0)
  %cmp.i74 = icmp ult i32 %15, %user_bufs.0
  %spec.select.i75 = and i1 %tobool.not.i73, %cmp.i74
  br i1 %spec.select.i75, label %land.lhs.true21, label %if.end19.if.end7.i.i_crit_edge

if.end19.if.end7.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

land.lhs.true21:                                  ; preds = %if.end19
  %call.i76 = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i76, label %land.lhs.true21.if.end7.i.i_crit_edge, label %pipe_is_unprivileged_user.exit80

land.lhs.true21.if.end7.i.i_crit_edge:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

pipe_is_unprivileged_user.exit80:                 ; preds = %land.lhs.true21
  %call1.i77 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1.i77, label %pipe_is_unprivileged_user.exit80.if.end7.i.i_crit_edge, label %pipe_is_unprivileged_user.exit80.out_revert_acct_crit_edge

pipe_is_unprivileged_user.exit80.out_revert_acct_crit_edge: ; preds = %pipe_is_unprivileged_user.exit80
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_revert_acct

pipe_is_unprivileged_user.exit80.if.end7.i.i_crit_edge: ; preds = %pipe_is_unprivileged_user.exit80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %pipe_is_unprivileged_user.exit80.if.end7.i.i_crit_edge, %land.lhs.true21.if.end7.i.i_crit_edge, %if.end19.if.end7.i.i_crit_edge
  %16 = mul nuw nsw i32 %pipe_bufs.1, 24
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 4197824) #18
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 18
  %17 = ptrtoint ptr %bufs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %bufs, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.out_revert_acct_crit_edge, label %do.body28

if.end7.i.i.out_revert_acct_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_revert_acct

do.body28:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %rd_wait, ptr noundef nonnull @.str, ptr noundef nonnull @alloc_pipe_info.__key) #14
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wr_wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @alloc_pipe_info.__key.1) #14
  %w_counter = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %w_counter to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %w_counter, align 4
  %r_counter = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %r_counter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %r_counter, align 8
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %max_usage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %pipe_bufs.1, ptr %max_usage, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %pipe_bufs.1, ptr %ring_size, align 8
  %nr_accounted = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %nr_accounted to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pipe_bufs.1, ptr %nr_accounted, align 8
  %user34 = getelementptr inbounds %struct.pipe_inode_info, ptr %call7.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %user34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %user34, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_pipe_info.__key.3) #14
  br label %cleanup

out_revert_acct:                                  ; preds = %if.end7.i.i.out_revert_acct_crit_edge, %pipe_is_unprivileged_user.exit80.out_revert_acct_crit_edge
  %sub.i81 = sub nsw i32 0, %pipe_bufs.1
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i, ptr %pipe_bufs.i, i32 %sub.i81, ptr elementtype(i32) %pipe_bufs.i) #14, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out_free_uid

out_free_uid:                                     ; preds = %out_revert_acct, %get_uid.exit.out_free_uid_crit_edge
  tail call void @free_uid(ptr noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_uid, %do.body28
  %retval.0 = phi ptr [ null, %out_free_uid ], [ %call7.i.i, %do.body28 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_pipe_info(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 20
  %0 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watch_queue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @watch_queue_clear(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %user = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 19
  %2 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user, align 4
  %nr_accounted = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 8
  %4 = ptrtoint ptr %nr_accounted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_accounted, align 4
  %sub.i = sub i32 0, %5
  %pipe_bufs.i = getelementptr inbounds %struct.user_struct, ptr %3, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i, ptr %pipe_bufs.i, i32 %sub.i, ptr elementtype(i32) %pipe_bufs.i) #14, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  tail call void @free_uid(ptr noundef %8) #14
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp34.not = icmp eq i32 %10, 0
  br i1 %cmp34.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %11 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bufs, align 4
  %ops = getelementptr %struct.pipe_buffer, ptr %12, i32 %i.035, i32 3
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %for.body.if.end5_crit_edge, label %if.then4

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr %struct.pipe_buffer, ptr %12, i32 %i.035
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  store ptr null, ptr %ops, align 4
  %release.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release.i, align 4
  tail call void %18(ptr noundef %pipe, ptr noundef %add.ptr) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body.if.end5_crit_edge
  %inc = add nuw i32 %i.035, 1
  %19 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_size, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %if.end.for.end_crit_edge
  %21 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %watch_queue, align 4
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %for.end.if.end10_crit_edge, label %if.then8

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_watch_queue(ptr noundef nonnull %22) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.end.if.end10_crit_edge
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 15
  %23 = ptrtoint ptr %tmp_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmp_page, align 4
  %tobool11.not = icmp eq ptr %24, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %24, i32 noundef 0) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %bufs15 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %25 = ptrtoint ptr %bufs15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bufs15, align 4
  tail call void @kfree(ptr noundef %26) #14
  tail call void @kfree(ptr noundef %pipe) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watch_queue_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_watch_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_pipe_files(ptr nocapture noundef %res, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp14.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pipe_mnt, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt_sb.i, align 4
  %call.i = tail call ptr @new_inode_pseudo(ptr noundef %2) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @get_next_ino() #14
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %call2.i = tail call ptr @alloc_pipe_info() #14
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %fail_iput.i, label %if.end

fail_iput.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iput(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 48
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %4, align 4
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call2.i, i32 0, i32 11
  %6 = ptrtoint ptr %files.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %files.i, align 4
  %writers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call2.i, i32 0, i32 10
  %7 = ptrtoint ptr %writers.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %writers.i, align 4
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %call2.i, i32 0, i32 9
  %8 = ptrtoint ptr %readers.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %readers.i, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pipefifo_fops, ptr %9, align 8
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 24
  %11 = ptrtoint ptr %i_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %i_state.i, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4480, ptr %call.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %13 = tail call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fsuid.i, align 4
  %21 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %22 = load ptr, ptr %task.i, align 8
  %cred13.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred13.i, align 16
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsgid.i, align 4
  %27 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp14.i) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp14.i, ptr noundef nonnull %call.i) #14
  %28 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp14.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp14.i) #14
  %29 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %30 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %and = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %call3 = call i32 @watch_queue_init(ptr noundef %32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  call void @free_pipe_info(ptr noundef %34)
  call void @iput(ptr noundef nonnull %call.i) #14
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %35 = load ptr, ptr @pipe_mnt, align 4
  %and8 = and i32 %flags, 67584
  %or = or i32 %and8, 1
  %call9 = call ptr @alloc_file_pseudo(ptr noundef nonnull %call.i, ptr noundef %35, ptr noundef nonnull @.str.5, i32 noundef %or, ptr noundef nonnull @pipefifo_fops) #14
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 4
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_pipe_info(ptr noundef %37)
  call void @iput(ptr noundef nonnull %call.i) #14
  %38 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %private_data = getelementptr inbounds %struct.file, ptr %call9, i32 0, i32 16
  %39 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %private_data, align 4
  %and14 = and i32 %flags, 2048
  %call16 = call ptr @alloc_file_clone(ptr noundef %call9, i32 noundef %and14, ptr noundef nonnull @pipefifo_fops) #14
  %40 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call16, ptr %res, align 4
  %cmp.i58 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %4, align 4
  br i1 %cmp.i58, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #14
  %files.i59 = getelementptr inbounds %struct.pipe_inode_info, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %files.i59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %files.i59, align 4
  %dec.i = add i32 %44, -1
  store i32 %dec.i, ptr %files.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i60 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i60, label %if.then.i, label %if.end4.critedge.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #14
  call void @free_pipe_info(ptr noundef %42) #14
  br label %put_pipe_info.exit

if.end4.critedge.i:                               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #14
  br label %put_pipe_info.exit

put_pipe_info.exit:                               ; preds = %if.end4.critedge.i, %if.then.i
  call void @fput(ptr noundef %call9) #14
  %46 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %res, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %private_data24 = getelementptr inbounds %struct.file, ptr %call16, i32 0, i32 16
  %49 = ptrtoint ptr %private_data24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %42, ptr %private_data24, align 4
  %arrayidx25 = getelementptr ptr, ptr %res, i32 1
  %50 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9, ptr %arrayidx25, align 4
  %51 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %res, align 4
  %call27 = call i32 @stream_open(ptr noundef nonnull %call.i, ptr noundef %52) #14
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx25, align 4
  %call29 = call i32 @stream_open(ptr noundef nonnull %call.i, ptr noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %put_pipe_info.exit, %if.then11, %if.then5, %fail_iput.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %38, %if.then11 ], [ %48, %put_pipe_info.exit ], [ 0, %if.end22 ], [ -23, %entry.cleanup_crit_edge ], [ -23, %fail_iput.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watch_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_clone(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_pipe_flags(ptr nocapture noundef %fd, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %files = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %files) #14
  %0 = ptrtoint ptr %files to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %files, align 4, !annotation !145
  %1 = getelementptr inbounds [2 x ptr], ptr %files, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !145
  %call = call fastcc i32 @__do_pipe_flags(ptr noundef %fd, ptr noundef nonnull %files, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fd, align 4
  %5 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %files, align 4
  tail call void @fd_install(i32 noundef %4, ptr noundef %6) #14
  %arrayidx2 = getelementptr i32, ptr %fd, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @fd_install(i32 noundef %8, ptr noundef %10) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %files) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_pipe_flags(ptr nocapture noundef writeonly %fd, ptr nocapture noundef %files, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -592001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @create_pipe_files(ptr noundef %files, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @get_unused_fd_flags(i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end3.err_read_pipe_crit_edge, label %if.end6

if.end3.err_read_pipe_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_read_pipe

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i32 @get_unused_fd_flags(i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %err_fdr, label %if.end10

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call4, ptr %fd, align 4
  %arrayidx11 = getelementptr i32, ptr %fd, i32 1
  %1 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call7, ptr %arrayidx11, align 4
  br label %cleanup

err_fdr:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_unused_fd(i32 noundef %call4) #14
  br label %err_read_pipe

err_read_pipe:                                    ; preds = %err_fdr, %if.end3.err_read_pipe_crit_edge
  %error.0 = phi i32 [ %call4, %if.end3.err_read_pipe_crit_edge ], [ %call7, %err_fdr ]
  %2 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %files, align 4
  tail call void @fput(ptr noundef %3) #14
  %arrayidx13 = getelementptr ptr, ptr %files, i32 1
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx13, align 4
  tail call void @fput(ptr noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %err_read_pipe, %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_read_pipe ], [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pipe2(i32 noundef %fildes, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %fildes to ptr
  %call.i = tail call fastcc i32 @do_pipe2(ptr noundef %0, i32 noundef %flags) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pipe(i32 noundef %fildes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %fildes to ptr
  %call.i = tail call fastcc i32 @do_pipe2(ptr noundef %0, i32 noundef 0) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pipe_wait_readable(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.pipe_unlock.exit_crit_edge, label %if.then.i

entry.pipe_unlock.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_unlock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %pipe) #14
  br label %pipe_unlock.exit

pipe_unlock.exit:                                 ; preds = %if.then.i, %entry.pipe_unlock.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1048) #14
  %head1.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %2 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %head1.i, align 4
  %tail6.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %4 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tail6.i, align 4
  %writers11.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 10
  %6 = ptrtoint ptr %writers11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %writers11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp ne i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i19 = icmp eq i32 %7, 0
  %spec.select.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i19
  br i1 %spec.select.i, label %pipe_unlock.exit.if.end11_crit_edge, label %if.then

pipe_unlock.exit.if.end11_crit_edge:              ; preds = %pipe_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %pipe_unlock.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 1
  %call532 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %9 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %head1.i, align 4
  %11 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tail6.i, align 4
  %13 = ptrtoint ptr %writers11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %writers11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i2333 = icmp ne i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i2434 = icmp eq i32 %14, 0
  %spec.select.i2535 = select i1 %cmp.i.i2333, i1 true, i1 %tobool.not.i2434
  br i1 %spec.select.i2535, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call536 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call532, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call536)
  %tobool.not = icmp eq i32 %call536, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %15 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %head1.i, align 4
  %17 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tail6.i, align 4
  %19 = ptrtoint ptr %writers11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %writers11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i.i23 = icmp ne i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i24 = icmp eq i32 %20, 0
  %spec.select.i25 = select i1 %cmp.i.i23, i1 true, i1 %tobool.not.i24
  br i1 %spec.select.i25, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end11

if.end11:                                         ; preds = %__out, %pipe_unlock.exit.if.end11_crit_edge
  %21 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.end11.pipe_lock.exit_crit_edge, label %if.then.i.i

if.end11.pipe_lock.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_lock_nested(ptr noundef %pipe, i32 noundef 1) #14
  br label %pipe_lock.exit

pipe_lock.exit:                                   ; preds = %if.then.i.i, %if.end11.pipe_lock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pipe_wait_writable(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.pipe_unlock.exit_crit_edge, label %if.then.i

entry.pipe_unlock.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_unlock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %pipe) #14
  br label %pipe_unlock.exit

pipe_unlock.exit:                                 ; preds = %if.then.i, %entry.pipe_unlock.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1055) #14
  %head1.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %2 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %head1.i, align 4
  %tail6.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %4 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tail6.i, align 4
  %max_usage11.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %6 = ptrtoint ptr %max_usage11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %max_usage11.i, align 4
  %sub.i.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %7)
  %cmp.i.not.i = icmp ult i32 %sub.i.i.i, %7
  br i1 %cmp.i.not.i, label %pipe_unlock.exit.if.end11_crit_edge, label %pipe_writable.exit

pipe_unlock.exit.if.end11_crit_edge:              ; preds = %pipe_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

pipe_writable.exit:                               ; preds = %pipe_unlock.exit
  %readers.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 9
  %8 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i19 = icmp eq i32 %9, 0
  br i1 %tobool.not.i19, label %pipe_writable.exit.if.end11_crit_edge, label %if.then

pipe_writable.exit.if.end11_crit_edge:            ; preds = %pipe_writable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %pipe_writable.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2
  %call535 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %11 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %head1.i, align 4
  %13 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tail6.i, align 4
  %15 = ptrtoint ptr %max_usage11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %max_usage11.i, align 4
  %sub.i.i.i2336 = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i2336, i32 %16)
  %cmp.i.not.i2437 = icmp ult i32 %sub.i.i.i2336, %16
  br i1 %cmp.i.not.i2437, label %if.then.for.end_crit_edge, label %if.then.pipe_writable.exit28_crit_edge

if.then.pipe_writable.exit28_crit_edge:           ; preds = %if.then
  br label %pipe_writable.exit28

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

pipe_writable.exit28:                             ; preds = %cleanup.pipe_writable.exit28_crit_edge, %if.then.pipe_writable.exit28_crit_edge
  %call538 = phi i32 [ %call5, %cleanup.pipe_writable.exit28_crit_edge ], [ %call535, %if.then.pipe_writable.exit28_crit_edge ]
  %17 = ptrtoint ptr %readers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %readers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i26 = icmp eq i32 %18, 0
  br i1 %tobool.not.i26, label %pipe_writable.exit28.for.end_crit_edge, label %if.end

pipe_writable.exit28.for.end_crit_edge:           ; preds = %pipe_writable.exit28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %pipe_writable.exit28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call538)
  %tobool.not = icmp eq i32 %call538, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %19 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %head1.i, align 4
  %21 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %tail6.i, align 4
  %23 = ptrtoint ptr %max_usage11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %max_usage11.i, align 4
  %sub.i.i.i23 = sub i32 %20, %22
  %cmp.i.not.i24 = icmp ult i32 %sub.i.i.i23, %24
  br i1 %cmp.i.not.i24, label %cleanup.for.end_crit_edge, label %cleanup.pipe_writable.exit28_crit_edge

cleanup.pipe_writable.exit28_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_writable.exit28

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %pipe_writable.exit28.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end11

if.end11:                                         ; preds = %__out, %pipe_writable.exit.if.end11_crit_edge, %pipe_unlock.exit.if.end11_crit_edge
  %25 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end11.pipe_lock.exit_crit_edge, label %if.then.i.i

if.end11.pipe_lock.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_lock_nested(ptr noundef %pipe, i32 noundef 1) #14
  br label %pipe_lock.exit

pipe_lock.exit:                                   ; preds = %if.then.i.i, %if.end11.pipe_lock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_read(ptr nocapture noundef readonly %iocb, ptr noundef %to) #0 align 64 {
entry:
  %n = alloca %struct.watch_notification, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup177_crit_edge, label %if.end, !prof !129

entry.cleanup177_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup177

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 1) #14
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %11)
  %cmp.i = icmp uge i32 %sub.i.i, %11
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 6
  %note_loss = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 7
  %12 = getelementptr inbounds %struct.watch_notification, ptr %n, i32 0, i32 1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 18
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 1
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 10
  %f_flags = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 2
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 17
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end148, %if.end
  %wake_next_reader.0.off0.ph = phi i1 [ true, %if.end148 ], [ false, %if.end ]
  %was_full.0.off0.ph = phi i1 [ %cmp.i298, %if.end148 ], [ %cmp.i, %if.end ]
  %total_len.0.ph = phi i32 [ %total_len.5, %if.end148 ], [ %1, %if.end ]
  br label %for.cond

for.cond:                                         ; preds = %cleanup95.for.cond_crit_edge, %for.cond.outer
  %ret.0 = phi i32 [ %add64, %cleanup95.for.cond_crit_edge ], [ 0, %for.cond.outer ]
  %total_len.0 = phi i32 [ %53, %cleanup95.for.cond_crit_edge ], [ %total_len.0.ph, %for.cond.outer ]
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %head, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail, align 4
  %17 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring_size, align 4
  %sub = add i32 %18, -1
  %19 = ptrtoint ptr %note_loss to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %note_loss, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %for.cond.if.end31_crit_edge, label %if.then12

for.cond.if.end31_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then12:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %total_len.0)
  %cmp13 = icmp ult i32 %total_len.0, 8
  br i1 %cmp13, label %if.then12.cleanup.thread_crit_edge, label %if.end18

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end18:                                         ; preds = %if.then12
  %21 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %n, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %12, align 4
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %n, i32 noundef 8, ptr noundef %to) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp23.not = icmp eq i32 %call3.i, 8
  br i1 %cmp23.not, label %cleanup, label %if.end18.cleanup.thread_crit_edge

if.end18.cleanup.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end18.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %.sink = phi i32 [ -105, %if.then12.cleanup.thread_crit_edge ], [ -14, %if.end18.cleanup.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp15 = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %cmp15, i32 %.sink, i32 %ret.0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #14
  br label %for.end159

cleanup:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %ret.0, 8
  %sub29 = add i32 %total_len.0, -8
  %23 = ptrtoint ptr %note_loss to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %note_loss, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #14
  br label %if.end31

if.end31:                                         ; preds = %cleanup, %for.cond.if.end31_crit_edge
  %ret.4 = phi i32 [ %add, %cleanup ], [ %ret.0, %for.cond.if.end31_crit_edge ]
  %total_len.2 = phi i32 [ %sub29, %cleanup ], [ %total_len.0, %for.cond.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i287 = icmp eq i32 %14, %16
  br i1 %cmp.i287, label %if.end31.if.end101_crit_edge, label %if.then33

if.end31.if.end101_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then33:                                        ; preds = %if.end31
  %24 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bufs, align 4
  %and = and i32 %sub, %16
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %25, i32 %and
  %len = getelementptr %struct.pipe_buffer, ptr %25, i32 %and, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %total_len.2)
  %cmp34 = icmp ugt i32 %27, %total_len.2
  br i1 %cmp34, label %if.then35, label %if.then33.if.end43_crit_edge

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then35:                                        ; preds = %if.then33
  %flags = getelementptr %struct.pipe_buffer, ptr %25, i32 %and, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and36 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then35.if.end43_crit_edge, label %if.then38

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp39 = icmp eq i32 %ret.4, 0
  %spec.select281 = select i1 %cmp39, i32 -105, i32 %ret.4
  br label %for.end159

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.then33.if.end43_crit_edge
  %chars.0 = phi i32 [ %27, %if.then33.if.end43_crit_edge ], [ %total_len.2, %if.then35.if.end43_crit_edge ]
  %ops.i = getelementptr %struct.pipe_buffer, ptr %25, i32 %and, i32 3
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end43.if.end50_crit_edge, label %pipe_buf_confirm.exit

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

pipe_buf_confirm.exit:                            ; preds = %if.end43
  %call.i = call i32 %33(ptr noundef %5, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %pipe_buf_confirm.exit.if.end50_crit_edge, label %if.then46

pipe_buf_confirm.exit.if.end50_crit_edge:         ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool47.not = icmp eq i32 %ret.4, 0
  %spec.select282 = select i1 %tobool47.not, i32 %call.i, i32 %ret.4
  br label %for.end159

if.end50:                                         ; preds = %pipe_buf_confirm.exit.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %offset = getelementptr %struct.pipe_buffer, ptr %25, i32 %and, i32 1
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset, align 4
  %call51 = call i32 @copy_page_to_iter(ptr noundef %35, i32 noundef %37, i32 noundef %chars.0, ptr noundef %to) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %chars.0)
  %cmp52 = icmp ult i32 %call51, %chars.0
  br i1 %cmp52, label %if.then59, label %if.end63, !prof !129

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool60.not = icmp eq i32 %ret.4, 0
  %spec.select283 = select i1 %tobool60.not, i32 -14, i32 %ret.4
  br label %for.end159

if.end63:                                         ; preds = %if.end50
  %add64 = add i32 %chars.0, %ret.4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %add66 = add i32 %39, %chars.0
  store i32 %add66, ptr %offset, align 4
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %sub68 = sub i32 %41, %chars.0
  %flags69 = getelementptr %struct.pipe_buffer, ptr %25, i32 %and, i32 4
  %42 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags69, align 4
  %and70 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %spec.store.select = select i1 %tobool71.not, i32 %sub68, i32 0
  %44 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool76.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool76.not, label %if.then77, label %if.end63.if.end87_crit_edge

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then77:                                        ; preds = %if.end63
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  store ptr null, ptr %ops.i, align 4
  %release.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release.i, align 4
  call void %48(ptr noundef %5, ptr noundef %arrayidx) #14
  call void @_raw_spin_lock_irq(ptr noundef %rd_wait) #14
  %49 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags69, align 4
  %and79 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then77.if.end83_crit_edge, label %if.then81

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %note_loss to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %note_loss, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then77.if.end83_crit_edge
  %inc = add i32 %16, 1
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc, ptr %tail, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #14
  br label %if.end87

if.end87:                                         ; preds = %if.end83, %if.end63.if.end87_crit_edge
  %tail9.0 = phi i32 [ %16, %if.end63.if.end87_crit_edge ], [ %inc, %if.end83 ]
  %53 = sub i32 %total_len.2, %chars.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool89.not427 = icmp eq i32 %53, 0
  %not.tobool71.not = xor i1 %tobool71.not, true
  %tobool89.not = select i1 %not.tobool71.not, i1 true, i1 %tobool89.not427
  br i1 %tobool89.not, label %if.end87.for.end159_crit_edge, label %cleanup95

if.end87.for.end159_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end159

cleanup95:                                        ; preds = %if.end87
  %cmp.i289 = icmp eq i32 %14, %tail9.0
  br i1 %cmp.i289, label %cleanup95.if.end101_crit_edge, label %cleanup95.for.cond_crit_edge

cleanup95.for.cond_crit_edge:                     ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

cleanup95.if.end101_crit_edge:                    ; preds = %cleanup95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.end101:                                        ; preds = %cleanup95.if.end101_crit_edge, %if.end31.if.end101_crit_edge
  %ret.9 = phi i32 [ %ret.4, %if.end31.if.end101_crit_edge ], [ %add64, %cleanup95.if.end101_crit_edge ]
  %total_len.5 = phi i32 [ %total_len.2, %if.end31.if.end101_crit_edge ], [ %53, %cleanup95.if.end101_crit_edge ]
  %54 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool102.not = icmp ne i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.9)
  %tobool105.not = icmp eq i32 %ret.9, 0
  %or.cond = select i1 %tobool102.not, i1 %tobool105.not, i1 false
  br i1 %or.cond, label %if.end107, label %if.end101.for.end159_crit_edge

if.end101.for.end159_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end159

if.end107:                                        ; preds = %if.end101
  %56 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_flags, align 4
  %and108 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.for.end159_crit_edge

if.end107.for.end159_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end159

if.end111:                                        ; preds = %if.end107
  call void @mutex_unlock(ptr noundef %5) #14
  br i1 %was_full.0.off0.ph, label %if.then119, label %if.end111.if.end120_crit_edge, !prof !129

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then119:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  call void @__wake_up_sync_key(ptr noundef %wr_wait, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #14
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end111.if.end120_crit_edge
  call void @kill_fasync(ptr noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 378) #14
  %58 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %head, align 4
  %60 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %tail, align 4
  %62 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.i.i = icmp ne i32 %59, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i290 = icmp eq i32 %63, 0
  %spec.select.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i290
  br i1 %spec.select.i, label %if.end120.if.end148_crit_edge, label %if.then128

if.end120.if.end148_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then128:                                       ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %64 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call132368 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %65 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %head, align 4
  %67 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %tail, align 4
  %69 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.i.i294369 = icmp ne i32 %66, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i295370 = icmp eq i32 %70, 0
  %spec.select.i296371 = select i1 %cmp.i.i294369, i1 true, i1 %tobool.not.i295370
  br i1 %spec.select.i296371, label %if.then128.if.end144.thread323_crit_edge, label %if.then128.if.end135_crit_edge

if.then128.if.end135_crit_edge:                   ; preds = %if.then128
  br label %if.end135

if.then128.if.end144.thread323_crit_edge:         ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144.thread323

if.end135:                                        ; preds = %cleanup139.if.end135_crit_edge, %if.then128.if.end135_crit_edge
  %call132372 = phi i32 [ %call132, %cleanup139.if.end135_crit_edge ], [ %call132368, %if.then128.if.end135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132372)
  %tobool136.not = icmp eq i32 %call132372, 0
  br i1 %tobool136.not, label %cleanup139, label %if.end144

cleanup139:                                       ; preds = %if.end135
  call void @schedule() #14
  %call132 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %71 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %head, align 4
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %tail, align 4
  %75 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp.i.i294 = icmp ne i32 %72, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i295 = icmp eq i32 %76, 0
  %spec.select.i296 = select i1 %cmp.i.i294, i1 true, i1 %tobool.not.i295
  br i1 %spec.select.i296, label %cleanup139.if.end144.thread323_crit_edge, label %cleanup139.if.end135_crit_edge

cleanup139.if.end135_crit_edge:                   ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

cleanup139.if.end144.thread323_crit_edge:         ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144.thread323

if.end144.thread323:                              ; preds = %cleanup139.if.end144.thread323_crit_edge, %if.then128.if.end144.thread323_crit_edge
  call void @finish_wait(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end148

if.end144:                                        ; preds = %if.end135
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132372)
  %cmp146 = icmp slt i32 %call132372, 0
  br i1 %cmp146, label %if.end144.cleanup177_crit_edge, label %if.end144.if.end148_crit_edge

if.end144.if.end148_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.end144.cleanup177_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup177

if.end148:                                        ; preds = %if.end144.if.end148_crit_edge, %if.end144.thread323, %if.end120.if.end148_crit_edge
  call void @mutex_lock_nested(ptr noundef %5, i32 noundef 1) #14
  %77 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %head, align 4
  %79 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tail, align 4
  %81 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_usage, align 4
  %sub.i.i297 = sub i32 %78, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i297, i32 %82)
  %cmp.i298 = icmp uge i32 %sub.i.i297, %82
  br label %for.cond.outer

for.end159:                                       ; preds = %if.end107.for.end159_crit_edge, %if.end101.for.end159_crit_edge, %if.end87.for.end159_crit_edge, %if.then59, %if.then46, %if.then38, %cleanup.thread
  %ret.10332 = phi i32 [ %spec.select, %cleanup.thread ], [ %spec.select283, %if.then59 ], [ %spec.select282, %if.then46 ], [ %spec.select281, %if.then38 ], [ %add64, %if.end87.for.end159_crit_edge ], [ -11, %if.end107.for.end159_crit_edge ], [ %ret.9, %if.end101.for.end159_crit_edge ]
  %83 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %head, align 4
  %85 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp.i299 = icmp ne i32 %84, %86
  %spec.select286 = and i1 %cmp.i299, %wake_next_reader.0.off0.ph
  call void @mutex_unlock(ptr noundef %5) #14
  br i1 %was_full.0.off0.ph, label %if.then166, label %for.end159.if.end168_crit_edge

for.end159.if.end168_crit_edge:                   ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.then166:                                       ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #16
  call void @__wake_up_sync_key(ptr noundef %wr_wait, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #14
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %for.end159.if.end168_crit_edge
  br i1 %spec.select286, label %if.then170, label %if.end168.if.end172_crit_edge

if.end168.if.end172_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then170:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  call void @__wake_up_sync_key(ptr noundef %rd_wait, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #14
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end168.if.end172_crit_edge
  call void @kill_fasync(ptr noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.10332)
  %cmp174 = icmp sgt i32 %ret.10332, 0
  br i1 %cmp174, label %if.then175, label %if.end172.cleanup177_crit_edge

if.end172.cleanup177_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup177

if.then175:                                       ; preds = %if.end172
  %87 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %f_flags, align 4
  %and.i = and i32 %88, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i300 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i300, label %if.then.i, label %if.then175.cleanup177_crit_edge

if.then175.cleanup177_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup177

if.then.i:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #16
  %f_path.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #14
  br label %cleanup177

cleanup177:                                       ; preds = %if.then.i, %if.then175.cleanup177_crit_edge, %if.end172.cleanup177_crit_edge, %if.end144.cleanup177_crit_edge, %entry.cleanup177_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup177_crit_edge ], [ %ret.10332, %if.end172.cleanup177_crit_edge ], [ %ret.10332, %if.then175.cleanup177_crit_edge ], [ %ret.10332, %if.then.i ], [ -512, %if.end144.cleanup177_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_write(ptr nocapture noundef readonly %iocb, ptr noundef %from) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup219_crit_edge, label %if.end, !prof !129

entry.cleanup219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup219

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 1) #14
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %call5 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %11, i32 noundef 0) #14
  br label %out

if.end6:                                          ; preds = %if.end
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %watch_queue, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end6
  %head10 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head10, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i = icmp eq i32 %15, %17
  %and = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool12.not, i1 true, i1 %cmp.i
  br i1 %brmerge, label %if.end9.if.end47_crit_edge, label %if.then14

if.end9.if.end47_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then14:                                        ; preds = %if.end9
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_size, align 4
  %sub = add i32 %19, -1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 18
  %20 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bufs, align 4
  %sub15 = add i32 %15, -1
  %and16 = and i32 %sub, %sub15
  %arrayidx = getelementptr %struct.pipe_buffer, ptr %21, i32 %and16
  %offset17 = getelementptr %struct.pipe_buffer, ptr %21, i32 %and16, i32 1
  %22 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset17, align 4
  %len = getelementptr %struct.pipe_buffer, ptr %21, i32 %and16, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add = add i32 %25, %23
  %flags = getelementptr %struct.pipe_buffer, ptr %21, i32 %and16, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and18 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  %add21 = add i32 %add, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add21)
  %cmp22 = icmp ult i32 %add21, 4097
  %or.cond = select i1 %tobool19.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then23, label %if.then14.if.end47_crit_edge

if.then14.if.end47_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then23:                                        ; preds = %if.then14
  %ops.i = getelementptr %struct.pipe_buffer, ptr %21, i32 %and16, i32 3
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then23.if.end27_crit_edge, label %pipe_buf_confirm.exit

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

pipe_buf_confirm.exit:                            ; preds = %if.then23
  %call.i = tail call i32 %31(ptr noundef %3, ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %pipe_buf_confirm.exit.if.end27_crit_edge, label %pipe_buf_confirm.exit.out_crit_edge

pipe_buf_confirm.exit.out_crit_edge:              ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

pipe_buf_confirm.exit.if.end27_crit_edge:         ; preds = %pipe_buf_confirm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %pipe_buf_confirm.exit.if.end27_crit_edge, %if.then23.if.end27_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %call28 = tail call i32 @copy_page_from_iter(ptr noundef %33, i32 noundef %add, i32 noundef %and, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %and)
  %cmp29 = icmp slt i32 %call28, %and
  br i1 %cmp29, label %if.end27.out_crit_edge, label %if.end37, !prof !129

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end37:                                         ; preds = %if.end27
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add39 = add i32 %35, %call28
  store i32 %add39, ptr %len, align 4
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool41.not = icmp eq i32 %37, 0
  br i1 %tobool41.not, label %if.end37.out_crit_edge, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end47:                                         ; preds = %if.end37.if.end47_crit_edge, %if.then14.if.end47_crit_edge, %if.end9.if.end47_crit_edge
  %ret.2 = phi i32 [ 0, %if.end9.if.end47_crit_edge ], [ %call28, %if.end37.if.end47_crit_edge ], [ 0, %if.then14.if.end47_crit_edge ]
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 5
  %ring_size63 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 6
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 15
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 1
  %bufs66.le = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 18
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 16
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 2
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.end184, %if.end47
  %ret.3.ph.ph = phi i32 [ %ret.2, %if.end47 ], [ %ret.6, %if.end184 ]
  %was_empty.0.ph.ph.in = phi i1 [ %cmp.i, %if.end47 ], [ %cmp.i371, %if.end184 ]
  %extract.t336 = phi i1 [ false, %if.end47 ], [ true, %if.end184 ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end140.for.cond.outer_crit_edge, %for.cond.outer.outer
  %ret.3.ph = phi i32 [ %ret.6, %if.end140.for.cond.outer_crit_edge ], [ %ret.3.ph.ph, %for.cond.outer.outer ]
  %38 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool49.not452 = icmp eq i32 %39, 0
  br i1 %tobool49.not452, label %for.cond.outer.if.then50_crit_edge, label %for.cond.outer.if.end57_crit_edge

for.cond.outer.if.end57_crit_edge:                ; preds = %for.cond.outer
  br label %if.end57

for.cond.outer.if.then50_crit_edge:               ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50

if.then50:                                        ; preds = %cleanup134.if.then50_crit_edge, %for.cond.outer.if.then50_crit_edge
  %40 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i348 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i348 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task52, align 8
  %call53 = call i32 @send_sig(i32 noundef 13, ptr noundef %43, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.ph)
  %tobool54.not = icmp eq i32 %ret.3.ph, 0
  %spec.select421 = select i1 %tobool54.not, i32 -32, i32 %ret.3.ph
  br label %out

if.end57:                                         ; preds = %cleanup134.if.end57_crit_edge, %for.cond.outer.if.end57_crit_edge
  %44 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head10, align 4
  %46 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail, align 4
  %48 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %49)
  %cmp.i349.not = icmp ult i32 %sub.i.i, %49
  br i1 %cmp.i349.not, label %if.then61, label %if.end57.if.end140_crit_edge

if.end57.if.end140_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

if.then61:                                        ; preds = %if.end57
  %50 = ptrtoint ptr %ring_size63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_size63, align 4
  %52 = ptrtoint ptr %tmp_page to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tmp_page, align 4
  %tobool70.not = icmp eq ptr %53, null
  br i1 %tobool70.not, label %if.then71, label %if.then61.if.end86_crit_edge

if.then61.if.end86_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then71:                                        ; preds = %if.then61
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 5246146, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool73.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool73.not, label %if.then82, label %if.end84, !prof !129

if.then82:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.ph)
  %tobool83.not = icmp eq i32 %ret.3.ph, 0
  %. = select i1 %tobool83.not, i32 -12, i32 %ret.3.ph
  br label %out

if.end84:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %tmp_page to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call38.i.i.i, ptr %tmp_page, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %if.then61.if.end86_crit_edge
  %page69.0 = phi ptr [ %53, %if.then61.if.end86_crit_edge ], [ %call38.i.i.i, %if.end84 ]
  call void @_raw_spin_lock_irq(ptr noundef %rd_wait) #14
  %55 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %head10, align 4
  %57 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tail, align 4
  %59 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_usage, align 4
  %sub.i.i350 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i350, i32 %60)
  %cmp.i351.not = icmp ult i32 %sub.i.i350, %60
  br i1 %cmp.i351.not, label %if.end94, label %cleanup134

if.end94:                                         ; preds = %if.end86
  %sub64.le = add i32 %51, -1
  %add95 = add i32 %56, 1
  %61 = ptrtoint ptr %head10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add95, ptr %head10, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #14
  %62 = ptrtoint ptr %bufs66.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bufs66.le, align 4
  %and100 = and i32 %56, %sub64.le
  %arrayidx101 = getelementptr %struct.pipe_buffer, ptr %63, i32 %and100
  %64 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %page69.0, ptr %arrayidx101, align 4
  %ops = getelementptr %struct.pipe_buffer, ptr %63, i32 %and100, i32 3
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @anon_pipe_buf_ops, ptr %ops, align 4
  %offset103 = getelementptr %struct.pipe_buffer, ptr %63, i32 %and100, i32 1
  %66 = ptrtoint ptr %offset103 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %offset103, align 4
  %len104 = getelementptr %struct.pipe_buffer, ptr %63, i32 %and100, i32 2
  %67 = ptrtoint ptr %len104 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %len104, align 4
  %68 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %f_flags.i, align 4
  %70 = and i32 %69, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool106.not = icmp eq i32 %70, 0
  %spec.select528 = select i1 %tobool106.not, i32 16, i32 8
  %71 = getelementptr %struct.pipe_buffer, ptr %63, i32 %and100, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select528, ptr %71, align 4
  %73 = ptrtoint ptr %tmp_page to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %tmp_page, align 4
  %call112 = call i32 @copy_page_from_iter(ptr noundef nonnull %page69.0, i32 noundef 0, i32 noundef 4096, ptr noundef %from) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call112)
  %cmp113 = icmp ult i32 %call112, 4096
  br i1 %cmp113, label %land.rhs, label %if.end94.if.end126_crit_edge

if.end94.if.end126_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

land.rhs:                                         ; preds = %if.end94
  %74 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool115.not = icmp eq i32 %75, 0
  br i1 %tobool115.not, label %land.rhs.if.end126_crit_edge, label %if.then122, !prof !131

land.rhs.if.end126_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

if.then122:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.ph)
  %tobool123.not = icmp eq i32 %ret.3.ph, 0
  %spec.select = select i1 %tobool123.not, i32 -14, i32 %ret.3.ph
  br label %out

if.end126:                                        ; preds = %land.rhs.if.end126_crit_edge, %if.end94.if.end126_crit_edge
  %add127 = add i32 %call112, %ret.3.ph
  %76 = ptrtoint ptr %offset103 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %offset103, align 4
  %77 = ptrtoint ptr %len104 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call112, ptr %len104, align 4
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool131.not = icmp eq i32 %79, 0
  br i1 %tobool131.not, label %if.end126.out_crit_edge, label %if.end126.if.end140_crit_edge

if.end126.if.end140_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

if.end126.out_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cleanup134:                                       ; preds = %if.end86
  call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #14
  %80 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %readers, align 4
  %tobool49.not = icmp eq i32 %81, 0
  br i1 %tobool49.not, label %cleanup134.if.then50_crit_edge, label %cleanup134.if.end57_crit_edge

cleanup134.if.end57_crit_edge:                    ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

cleanup134.if.then50_crit_edge:                   ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50

if.end140:                                        ; preds = %if.end126.if.end140_crit_edge, %if.end57.if.end140_crit_edge
  %head.1 = phi i32 [ %56, %if.end126.if.end140_crit_edge ], [ %45, %if.end57.if.end140_crit_edge ]
  %ret.6 = phi i32 [ %add127, %if.end126.if.end140_crit_edge ], [ %ret.3.ph, %if.end57.if.end140_crit_edge ]
  %82 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tail, align 4
  %84 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_usage, align 4
  %sub.i.i355 = sub i32 %head.1, %83
  %cmp.i356.not = icmp ult i32 %sub.i.i355, %85
  br i1 %cmp.i356.not, label %if.end140.for.cond.outer_crit_edge, label %if.end145

if.end140.for.cond.outer_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.outer

if.end145:                                        ; preds = %if.end140
  %86 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %f_flags.i, align 4
  %and146 = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end152, label %if.then148

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6)
  %tobool149.not = icmp eq i32 %ret.6, 0
  %spec.select422 = select i1 %tobool149.not, i32 -11, i32 %ret.6
  br label %out

if.end152:                                        ; preds = %if.end145
  %88 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i357 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i357 to ptr
  %task154 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task154 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task154, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %stack.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  %96 = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i358 = icmp eq i32 %96, 0
  br i1 %tobool.not.i358, label %signal_pending.exit, label %if.end152.if.then157_crit_edge, !prof !131

if.end152.if.then157_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then157

signal_pending.exit:                              ; preds = %if.end152
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %93, align 4
  %and1.i.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool156.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool156.not, label %if.end161, label %signal_pending.exit.if.then157_crit_edge

signal_pending.exit.if.then157_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then157

if.then157:                                       ; preds = %signal_pending.exit.if.then157_crit_edge, %if.end152.if.then157_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6)
  %tobool158.not = icmp eq i32 %ret.6, 0
  %spec.select423 = select i1 %tobool158.not, i32 -512, i32 %ret.6
  br label %out

if.end161:                                        ; preds = %signal_pending.exit
  call void @mutex_unlock(ptr noundef %3) #14
  br i1 %was_empty.0.ph.ph.in, label %if.then163, label %if.end161.if.end165_crit_edge

if.end161.if.end165_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then163:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  call void @__wake_up_sync_key(ptr noundef %rd_wait, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #14
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end161.if.end165_crit_edge
  call void @kill_fasync(ptr noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #14
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 571) #14
  %99 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %head10, align 4
  %101 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %tail, align 4
  %103 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %max_usage, align 4
  %sub.i.i.i = sub i32 %100, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %104)
  %cmp.i.not.i = icmp ult i32 %sub.i.i.i, %104
  br i1 %cmp.i.not.i, label %if.end165.if.end184_crit_edge, label %pipe_writable.exit

if.end165.if.end184_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

pipe_writable.exit:                               ; preds = %if.end165
  %105 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i361 = icmp eq i32 %106, 0
  br i1 %tobool.not.i361, label %pipe_writable.exit.if.end184_crit_edge, label %if.then170

pipe_writable.exit.if.end184_crit_edge:           ; preds = %pipe_writable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then170:                                       ; preds = %pipe_writable.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %107 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call173458 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %108 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %head10, align 4
  %110 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %tail, align 4
  %112 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %max_usage, align 4
  %sub.i.i.i365459 = sub i32 %109, %111
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i365459, i32 %113)
  %cmp.i.not.i366460 = icmp ult i32 %sub.i.i.i365459, %113
  br i1 %cmp.i.not.i366460, label %if.then170.for.end_crit_edge, label %if.then170.pipe_writable.exit370_crit_edge

if.then170.pipe_writable.exit370_crit_edge:       ; preds = %if.then170
  br label %pipe_writable.exit370

if.then170.for.end_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

pipe_writable.exit370:                            ; preds = %cleanup180.pipe_writable.exit370_crit_edge, %if.then170.pipe_writable.exit370_crit_edge
  %call173461 = phi i32 [ %call173, %cleanup180.pipe_writable.exit370_crit_edge ], [ %call173458, %if.then170.pipe_writable.exit370_crit_edge ]
  %114 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i368 = icmp eq i32 %115, 0
  br i1 %tobool.not.i368, label %pipe_writable.exit370.for.end_crit_edge, label %if.end176

pipe_writable.exit370.for.end_crit_edge:          ; preds = %pipe_writable.exit370
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end176:                                        ; preds = %pipe_writable.exit370
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173461)
  %tobool177.not = icmp eq i32 %call173461, 0
  br i1 %tobool177.not, label %cleanup180, label %if.end176.__out_crit_edge

if.end176.__out_crit_edge:                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup180:                                       ; preds = %if.end176
  call void @schedule() #14
  %call173 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %116 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %head10, align 4
  %118 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %tail, align 4
  %120 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %max_usage, align 4
  %sub.i.i.i365 = sub i32 %117, %119
  %cmp.i.not.i366 = icmp ult i32 %sub.i.i.i365, %121
  br i1 %cmp.i.not.i366, label %cleanup180.for.end_crit_edge, label %cleanup180.pipe_writable.exit370_crit_edge

cleanup180.pipe_writable.exit370_crit_edge:       ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_writable.exit370

cleanup180.for.end_crit_edge:                     ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup180.for.end_crit_edge, %pipe_writable.exit370.for.end_crit_edge, %if.then170.for.end_crit_edge
  call void @finish_wait(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end176.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end184

if.end184:                                        ; preds = %__out, %pipe_writable.exit.if.end184_crit_edge, %if.end165.if.end184_crit_edge
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 1) #14
  %122 = ptrtoint ptr %head10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %head10, align 4
  %124 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.i371 = icmp eq i32 %123, %125
  br label %for.cond.outer.outer

out:                                              ; preds = %if.then157, %if.then148, %if.end126.out_crit_edge, %if.then122, %if.then82, %if.then50, %if.end37.out_crit_edge, %if.end27.out_crit_edge, %pipe_buf_confirm.exit.out_crit_edge, %if.end6.out_crit_edge, %if.then3
  %ret.7 = phi i32 [ -32, %if.then3 ], [ -18, %if.end6.out_crit_edge ], [ %call28, %if.end37.out_crit_edge ], [ -14, %if.end27.out_crit_edge ], [ %call.i, %pipe_buf_confirm.exit.out_crit_edge ], [ %spec.select421, %if.then50 ], [ %spec.select422, %if.then148 ], [ %spec.select423, %if.then157 ], [ %., %if.then82 ], [ %spec.select, %if.then122 ], [ %add127, %if.end126.out_crit_edge ]
  %was_empty.1.off0 = phi i1 [ false, %if.then3 ], [ false, %if.end6.out_crit_edge ], [ false, %if.end37.out_crit_edge ], [ false, %if.end27.out_crit_edge ], [ false, %pipe_buf_confirm.exit.out_crit_edge ], [ %was_empty.0.ph.ph.in, %if.then50 ], [ %was_empty.0.ph.ph.in, %if.then148 ], [ %was_empty.0.ph.ph.in, %if.then157 ], [ %was_empty.0.ph.ph.in, %if.then82 ], [ %was_empty.0.ph.ph.in, %if.then122 ], [ %was_empty.0.ph.ph.in, %if.end126.out_crit_edge ]
  %wake_next_writer.1.off0 = phi i1 [ false, %if.then3 ], [ false, %if.end6.out_crit_edge ], [ false, %if.end37.out_crit_edge ], [ false, %if.end27.out_crit_edge ], [ false, %pipe_buf_confirm.exit.out_crit_edge ], [ %extract.t336, %if.then50 ], [ %extract.t336, %if.then148 ], [ %extract.t336, %if.then157 ], [ %extract.t336, %if.then82 ], [ %extract.t336, %if.then122 ], [ %extract.t336, %if.end126.out_crit_edge ]
  %head191 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 3
  %126 = ptrtoint ptr %head191 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %head191, align 4
  %tail192 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 4
  %128 = ptrtoint ptr %tail192 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tail192, align 4
  %max_usage193 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 5
  %130 = ptrtoint ptr %max_usage193 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_usage193, align 4
  %sub.i.i372 = sub i32 %127, %129
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i372, i32 %131)
  %cmp.i373.not = icmp ult i32 %sub.i.i372, %131
  %spec.select345 = and i1 %cmp.i373.not, %wake_next_writer.1.off0
  call void @mutex_unlock(ptr noundef %3) #14
  br i1 %was_empty.1.off0, label %out.if.then199_crit_edge, label %lor.lhs.false

out.if.then199_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then199

lor.lhs.false:                                    ; preds = %out
  %poll_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 14
  %132 = ptrtoint ptr %poll_usage to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %poll_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool198.not = icmp eq i32 %133, 0
  br i1 %tobool198.not, label %lor.lhs.false.if.end201_crit_edge, label %lor.lhs.false.if.then199_crit_edge

lor.lhs.false.if.then199_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then199

lor.lhs.false.if.end201_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end201

if.then199:                                       ; preds = %lor.lhs.false.if.then199_crit_edge, %out.if.then199_crit_edge
  %rd_wait200 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 1
  call void @__wake_up_sync_key(ptr noundef %rd_wait200, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #14
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %lor.lhs.false.if.end201_crit_edge
  %fasync_readers202 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 16
  call void @kill_fasync(ptr noundef %fasync_readers202, i32 noundef 29, i32 noundef 1) #14
  br i1 %spec.select345, label %if.then204, label %if.end201.if.end206_crit_edge

if.end201.if.end206_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

if.then204:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  %wr_wait205 = getelementptr inbounds %struct.pipe_inode_info, ptr %3, i32 0, i32 2
  call void @__wake_up_sync_key(ptr noundef %wr_wait205, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #14
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end201.if.end206_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %cmp207 = icmp sgt i32 %ret.7, 0
  br i1 %cmp207, label %land.lhs.true208, label %if.end206.cleanup219_crit_edge

if.end206.cleanup219_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup219

land.lhs.true208:                                 ; preds = %if.end206
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %134 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %137, i32 0, i32 32, i32 2
  %138 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i.i.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %141, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !148
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %land.lhs.true208.rcu_sync_is_idle.exit.i.i.i_crit_edge

land.lhs.true208.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %land.lhs.true208
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 35, ptr noundef nonnull @.str.30) #14
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true208.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %142 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool7.not.i.i.i.i = icmp eq i32 %143, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %if.else.i.i.i, !prof !131

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %144 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !149
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %137, i32 0, i32 32, i32 2, i32 0, i32 1
  %145 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read_count.i.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %153, %147
  %154 = inttoptr i32 %add.i.i.i to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %add19.i.i.i = add i32 %156, 1
  store i32 %add19.i.i.i, ptr %154, align 4
  %157 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !150
  %and.i.i.i.i.i = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then39.i.i.i, label %do.body3.i.i.i.do.end41.i.i.i_crit_edge, !prof !129

do.body3.i.i.i.do.end41.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41.i.i.i

if.then39.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end41.i.i.i

do.end41.i.i.i:                                   ; preds = %if.then39.i.i.i, %do.body3.i.i.i.do.end41.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %144) #14, !srcloc !151
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !152
  %158 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i61.i.i.i.c = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i61.i.i.i.c to ptr
  %preempt_count.i.i62.i.i.i.c = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i62.i.i.i.c to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i62.i.i.i.c, align 4
  %sub.i.i.i.i.c = add i32 %161, -1
  store volatile i32 %sub.i.i.i.i.c, ptr %preempt_count.i.i62.i.i.i.c, align 4
  br label %if.then211

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  %call48.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext true) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !152
  %162 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i61.i.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i61.i.i.i to ptr
  %preempt_count.i.i62.i.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i62.i.i.i, align 4
  %sub.i.i.i.i = add i32 %165, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i62.i.i.i, align 4
  br i1 %call48.i.i.i, label %if.else.i.i.i.if.then211_crit_edge, label %if.else.i.i.i.cleanup219_crit_edge

if.else.i.i.i.cleanup219_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup219

if.else.i.i.i.if.then211_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then211

if.then211:                                       ; preds = %if.else.i.i.i.if.then211_crit_edge, %do.end41.i.i.i
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %137, i32 0, i32 32, i32 2, i32 0, i32 5
  %166 = call ptr @llvm.returnaddress(i32 0) #14
  %167 = ptrtoint ptr %166 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %167) #14
  %call212 = call i32 @file_update_time(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  %spec.select346 = select i1 %tobool213.not, i32 %ret.7, i32 %call212
  %168 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %f_inode.i, align 8
  %i_sb217 = getelementptr inbounds %struct.inode, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %i_sb217 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_sb217, align 4
  %add.ptr1.i.i375 = getelementptr %struct.super_block, ptr %171, i32 0, i32 32, i32 2
  %dep_map.i.i.i376 = getelementptr %struct.super_block, ptr %171, i32 0, i32 32, i32 2, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i376, i32 noundef %167) #14
  %172 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i.i.i.i377 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i.i.i.i.i.i377 to ptr
  %preempt_count.i.i.i.i.i378 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %preempt_count.i.i.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %preempt_count.i.i.i.i.i378, align 4
  %add.i.i.i.i379 = add i32 %175, 1
  store volatile i32 %add.i.i.i.i379, ptr %preempt_count.i.i.i.i.i378, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !153
  %call.i.i.i.i380 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i380)
  %tobool.not.i.i.i.i381 = icmp eq i32 %call.i.i.i.i380, 0
  br i1 %tobool.not.i.i.i.i381, label %land.lhs.true.i.i.i.i384, label %if.then211.rcu_sync_is_idle.exit.i.i.i389_crit_edge

if.then211.rcu_sync_is_idle.exit.i.i.i389_crit_edge: ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i389

land.lhs.true.i.i.i.i384:                         ; preds = %if.then211
  %call1.i.i.i.i382 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i382)
  %tobool2.not.i.i.i.i383 = icmp eq i32 %call1.i.i.i.i382, 0
  br i1 %tobool2.not.i.i.i.i383, label %land.lhs.true.i.i.i.i384.rcu_sync_is_idle.exit.i.i.i389_crit_edge, label %land.lhs.true3.i.i.i.i386

land.lhs.true.i.i.i.i384.rcu_sync_is_idle.exit.i.i.i389_crit_edge: ; preds = %land.lhs.true.i.i.i.i384
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i389

land.lhs.true3.i.i.i.i386:                        ; preds = %land.lhs.true.i.i.i.i384
  %.b8.i.i.i.i385 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i385, label %land.lhs.true3.i.i.i.i386.rcu_sync_is_idle.exit.i.i.i389_crit_edge, label %if.then.i.i.i.i387

land.lhs.true3.i.i.i.i386.rcu_sync_is_idle.exit.i.i.i389_crit_edge: ; preds = %land.lhs.true3.i.i.i.i386
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_sync_is_idle.exit.i.i.i389

if.then.i.i.i.i387:                               ; preds = %land.lhs.true3.i.i.i.i386
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 35, ptr noundef nonnull @.str.30) #14
  br label %rcu_sync_is_idle.exit.i.i.i389

rcu_sync_is_idle.exit.i.i.i389:                   ; preds = %if.then.i.i.i.i387, %land.lhs.true3.i.i.i.i386.rcu_sync_is_idle.exit.i.i.i389_crit_edge, %land.lhs.true.i.i.i.i384.rcu_sync_is_idle.exit.i.i.i389_crit_edge, %if.then211.rcu_sync_is_idle.exit.i.i.i389_crit_edge
  %176 = ptrtoint ptr %add.ptr1.i.i375 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %add.ptr1.i.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool7.not.i.i.i.i388 = icmp eq i32 %177, 0
  br i1 %tobool7.not.i.i.i.i388, label %do.body3.i.i.i396, label %do.end49.i.i.i, !prof !131

do.body3.i.i.i396:                                ; preds = %rcu_sync_is_idle.exit.i.i.i389
  %178 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !149
  %read_count.i.i.i390 = getelementptr %struct.super_block, ptr %171, i32 0, i32 32, i32 2, i32 0, i32 1
  %179 = ptrtoint ptr %read_count.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read_count.i.i.i390, align 4
  %181 = ptrtoint ptr %180 to i32
  %182 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i.i391 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i.i391 to ptr
  %cpu.i.i.i392 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %cpu.i.i.i392 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpu.i.i.i392, align 4
  %arrayidx.i.i.i393 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i.i.i393, align 4
  %add.i.i.i394 = add i32 %187, %181
  %188 = inttoptr i32 %add.i.i.i394 to ptr
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %add17.i.i.i = add i32 %190, -1
  store i32 %add17.i.i.i, ptr %188, align 4
  %191 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !150
  %and.i.i.i.i.i395 = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i395)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i395, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i396.do.end39.i.i.i_crit_edge, !prof !129

do.body3.i.i.i396.do.end39.i.i.i_crit_edge:       ; preds = %do.body3.i.i.i396
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i396
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i396.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #14, !srcloc !151
  br label %sb_end_write.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i389
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !154
  %192 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !149
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %171, i32 0, i32 32, i32 2, i32 0, i32 1
  %193 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read_count75.i.i.i, align 4
  %195 = ptrtoint ptr %194 to i32
  %196 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i122.i.i.i = and i32 %196, -16384
  %197 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %201, %195
  %202 = inttoptr i32 %add80.i.i.i to ptr
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add81.i.i.i = add i32 %204, -1
  store i32 %add81.i.i.i, ptr %202, align 4
  %205 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !150
  %and.i.i123.i.i.i = and i32 %205, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !129

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %192) #14, !srcloc !151
  %writer.i.i.i = getelementptr %struct.super_block, ptr %171, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #14
  br label %sb_end_write.exit

sb_end_write.exit:                                ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !155
  %206 = call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i120.i.i.i = and i32 %206, -16384
  %207 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i397 = add i32 %209, -1
  store volatile i32 %sub.i.i.i.i397, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %cleanup219

cleanup219:                                       ; preds = %sb_end_write.exit, %if.else.i.i.i.cleanup219_crit_edge, %if.end206.cleanup219_crit_edge, %entry.cleanup219_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup219_crit_edge ], [ %spec.select346, %sb_end_write.exit ], [ %ret.7, %if.end206.cleanup219_crit_edge ], [ %ret.7, %if.else.i.i.i.cleanup219_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %poll_usage to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %poll_usage, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then.do.end_crit_edge, label %land.lhs.true.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.then
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %rd_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %6(ptr noundef %filp, ptr noundef nonnull %rd_wait, ptr noundef nonnull %wait) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode, align 8
  %and2 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %if.then4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then4:                                         ; preds = %if.end
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 2
  %tobool.not.i62 = icmp eq ptr %wait, null
  br i1 %tobool.not.i62, label %if.then4.do.end_crit_edge, label %land.lhs.true.i66

if.then4.do.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true.i66:                                ; preds = %if.then4
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait, align 4
  %tobool1.not.i63 = icmp eq ptr %10, null
  %tobool3.not.i64 = icmp eq ptr %wr_wait, null
  %or.cond.i65 = or i1 %tobool3.not.i64, %tobool1.not.i63
  br i1 %or.cond.i65, label %land.lhs.true.i66.do.end_crit_edge, label %if.then.i67

land.lhs.true.i66.do.end_crit_edge:               ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then.i67:                                      ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %10(ptr noundef %filp, ptr noundef nonnull %wr_wait, ptr noundef nonnull %wait) #14
  br label %do.end

do.end:                                           ; preds = %if.then.i67, %land.lhs.true.i66.do.end_crit_edge, %if.then4.do.end_crit_edge, %if.end.do.end_crit_edge, %if.then.do.end_crit_edge
  %head6 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %head6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %head6, align 4
  %tail11 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %tail11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tail11, align 4
  %15 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_mode, align 8
  %and13 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end.if.end23_crit_edge, label %if.then15

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  %spec.select = select i1 %cmp.i, i32 0, i32 65
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.then15.if.end23_crit_edge

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %f_version = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 14
  %19 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %f_version, align 8
  %w_counter = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %w_counter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %w_counter, align 4
  %conv = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv)
  %cmp.not = icmp eq i64 %20, %conv
  %or21 = or i32 %spec.select, 16
  %spec.select59 = select i1 %cmp.not, i32 %spec.select, i32 %or21
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.then15.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %mask.1 = phi i32 [ %spec.select, %if.then15.if.end23_crit_edge ], [ 0, %do.end.if.end23_crit_edge ], [ %spec.select59, %land.lhs.true ]
  %and25 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end36_crit_edge, label %if.then27

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_usage, align 4
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %24)
  %cmp.i69.not = icmp ult i32 %sub.i.i, %24
  %or30 = or i32 %mask.1, 260
  %spec.select60 = select i1 %cmp.i69.not, i32 %or30, i32 %mask.1
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  %or34 = or i32 %spec.select60, 8
  %spec.select61 = select i1 %tobool32.not, i32 %or34, i32 %spec.select60
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end23.if.end36_crit_edge
  %mask.3 = phi i32 [ %mask.1, %if.end23.if.end36_crit_edge ], [ %spec.select61, %if.then27 ]
  ret i32 %mask.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 21531, label %sw.bb
    i32 22368, label %sw.bb4
    i32 22369, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 1) #14
  %head1 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head1, align 4
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail2, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_size, align 4
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not26 = icmp eq i32 %6, %4
  br i1 %cmp.not26, label %sw.bb.while.end_crit_edge, label %while.body.lr.ph

sw.bb.while.end_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %sw.bb
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bufs, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.028 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %tail.027 = phi i32 [ %6, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %and = and i32 %tail.027, %sub
  %len = getelementptr %struct.pipe_buffer, ptr %10, i32 %and, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add = add i32 %12, %count.028
  %inc = add i32 %tail.027, 1
  %cmp.not = icmp eq i32 %inc, %4
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sw.bb.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %sw.bb.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #14
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 626) #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !156
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %count.0.lcssa, i32 -1226833921) #14, !srcloc !159
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #14, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 1) #14
  %call5 = tail call i32 @watch_queue_set_size(ptr noundef %1, i32 noundef %arg) #14
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = inttoptr i32 %arg to ptr
  %call7 = tail call i32 @watch_queue_set_filter(ptr noundef %1, ptr noundef %18) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %17, %while.end ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346981957, i32 %3)
  %cmp = icmp eq i32 %3, 1346981957
  %f_version = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 14
  %4 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %f_version, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #14
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %files = getelementptr inbounds %struct.pipe_inode_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %files, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %files, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  br label %if.end17

if.else:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  %call = tail call ptr @alloc_pipe_info()
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.else
  %files5 = getelementptr inbounds %struct.pipe_inode_info, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %files5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %files5, align 4
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #14
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else14, label %if.then10, !prof !131

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %files11 = getelementptr inbounds %struct.pipe_inode_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %files11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %files11, align 4
  %inc12 = add i32 %14, 1
  store i32 %inc12, ptr %files11, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  tail call void @free_pipe_info(ptr noundef nonnull %call)
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  br label %if.end17

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %5, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then10, %if.then
  %pipe.0 = phi ptr [ %7, %if.then ], [ %16, %if.then10 ], [ %call, %if.else14 ]
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pipe.0, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %pipe.0, i32 noundef 1) #14
  %call18 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #14
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %19 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_mode, align 8
  %and = and i32 %20, 3
  %21 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and, label %if.end17.err_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 3, label %sw.bb68
  ]

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

sw.bb:                                            ; preds = %if.end17
  %r_counter = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 12
  %22 = ptrtoint ptr %r_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r_counter, align 4
  %inc19 = add i32 %23, 1
  store i32 %inc19, ptr %r_counter, align 4
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 9
  %24 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %readers, align 4
  %inc20 = add i32 %25, 1
  store i32 %inc20, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %if.then22, label %sw.bb.if.end23_crit_edge

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %sw.bb.if.end23_crit_edge
  br i1 %cmp, label %if.end23.sw.epilog_crit_edge, label %land.lhs.true

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end23
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 10
  %26 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then26:                                        ; preds = %land.lhs.true
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %28 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags, align 4
  %and27 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %w_counter32 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 13
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %w_counter32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %w_counter32, align 4
  %conv = zext i32 %31 to i64
  %32 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %f_version, align 8
  br label %sw.epilog

if.else31:                                        ; preds = %if.then26
  %call33 = tail call fastcc i32 @wait_for_partner(ptr noundef %pipe.0, ptr noundef %w_counter32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else31.sw.epilog_crit_edge, label %err_rd

if.else31.sw.epilog_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end17
  br i1 %cmp, label %sw.bb39.if.end49_crit_edge, label %land.lhs.true41

sw.bb39.if.end49_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true41:                                  ; preds = %sw.bb39
  %f_flags42 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %33 = ptrtoint ptr %f_flags42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_flags42, align 4
  %and43 = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.end49_crit_edge, label %land.lhs.true45

land.lhs.true41.if.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %readers46 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 9
  %35 = ptrtoint ptr %readers46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %readers46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool47.not = icmp eq i32 %36, 0
  br i1 %tobool47.not, label %land.lhs.true45.err_crit_edge, label %land.lhs.true45.if.end49_crit_edge

land.lhs.true45.if.end49_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true45.err_crit_edge:                    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end49:                                         ; preds = %land.lhs.true45.if.end49_crit_edge, %land.lhs.true41.if.end49_crit_edge, %sw.bb39.if.end49_crit_edge
  %w_counter50 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 13
  %37 = ptrtoint ptr %w_counter50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %w_counter50, align 4
  %inc51 = add i32 %38, 1
  store i32 %inc51, ptr %w_counter50, align 4
  %writers52 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 10
  %39 = ptrtoint ptr %writers52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writers52, align 4
  %inc53 = add i32 %40, 1
  store i32 %inc53, ptr %writers52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not = icmp eq i32 %40, 0
  br i1 %tobool54.not, label %if.then55, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait.i153 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i153, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end49.if.end56_crit_edge
  br i1 %cmp, label %if.end56.sw.epilog_crit_edge, label %land.lhs.true58

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true58:                                  ; preds = %if.end56
  %readers59 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 9
  %41 = ptrtoint ptr %readers59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %readers59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool60.not = icmp eq i32 %42, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true58.sw.epilog_crit_edge

land.lhs.true58.sw.epilog_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then61:                                        ; preds = %land.lhs.true58
  %r_counter62 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 12
  %call63 = tail call fastcc i32 @wait_for_partner(ptr noundef %pipe.0, ptr noundef %r_counter62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.sw.epilog_crit_edge, label %err_wr

if.then61.sw.epilog_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end17
  %readers69 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 9
  %43 = ptrtoint ptr %readers69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %readers69, align 4
  %inc70 = add i32 %44, 1
  store i32 %inc70, ptr %readers69, align 4
  %writers71 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 10
  %45 = ptrtoint ptr %writers71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writers71, align 4
  %inc72 = add i32 %46, 1
  store i32 %inc72, ptr %writers71, align 4
  %r_counter73 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 12
  %47 = ptrtoint ptr %r_counter73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %r_counter73, align 4
  %inc74 = add i32 %48, 1
  store i32 %inc74, ptr %r_counter73, align 4
  %w_counter75 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 13
  %49 = ptrtoint ptr %w_counter75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %w_counter75, align 4
  %inc76 = add i32 %50, 1
  store i32 %inc76, ptr %w_counter75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp78 = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp81 = icmp eq i32 %46, 0
  %or.cond = select i1 %cmp78, i1 true, i1 %cmp81
  br i1 %or.cond, label %if.then83, label %sw.bb68.sw.epilog_crit_edge

sw.bb68.sw.epilog_crit_edge:                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then83:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait.i154 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait.i154, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then83, %sw.bb68.sw.epilog_crit_edge, %if.then61.sw.epilog_crit_edge, %land.lhs.true58.sw.epilog_crit_edge, %if.end56.sw.epilog_crit_edge, %if.else31.sw.epilog_crit_edge, %if.then29, %land.lhs.true.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %pipe.0) #14
  br label %cleanup

err_rd:                                           ; preds = %if.else31
  %51 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %readers, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool86.not = icmp eq i32 %dec, 0
  br i1 %tobool86.not, label %if.then87, label %err_rd.err_crit_edge

err_rd.err_crit_edge:                             ; preds = %err_rd
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then87:                                        ; preds = %err_rd
  call void @__sanitizer_cov_trace_pc() #16
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %err

err_wr:                                           ; preds = %if.then61
  %53 = ptrtoint ptr %writers52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writers52, align 4
  %dec90 = add i32 %54, -1
  store i32 %dec90, ptr %writers52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90)
  %tobool91.not = icmp eq i32 %dec90, 0
  br i1 %tobool91.not, label %if.then92, label %err_wr.err_crit_edge

err_wr.err_crit_edge:                             ; preds = %err_wr
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then92:                                        ; preds = %err_wr
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  br label %err

err:                                              ; preds = %if.then92, %err_wr.err_crit_edge, %if.then87, %err_rd.err_crit_edge, %land.lhs.true45.err_crit_edge, %if.end17.err_crit_edge
  %ret.0 = phi i32 [ -6, %land.lhs.true45.err_crit_edge ], [ -22, %if.end17.err_crit_edge ], [ -512, %if.then87 ], [ -512, %err_rd.err_crit_edge ], [ -512, %if.then92 ], [ -512, %err_wr.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pipe.0) #14
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #14
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe.0, i32 0, i32 11
  %55 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %files.i, align 4
  %dec.i = add i32 %56, -1
  store i32 %dec.i, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.critedge.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  tail call void @free_pipe_info(ptr noundef %pipe.0) #14
  br label %cleanup

if.end4.critedge.i:                               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4.critedge.i, %if.then.i, %sw.epilog, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then.i ], [ %ret.0, %if.end4.critedge.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 1) #14
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %readers, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %readers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writers, align 4
  %dec5 = add i32 %9, -1
  store i32 %dec5, ptr %writers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %readers7 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %readers7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %readers7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp ne i32 %11, 0
  %writers9 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %writers9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writers9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  %cmp.not = xor i1 %tobool8.not, %tobool10.not
  br i1 %cmp.not, label %if.end6.if.end14_crit_edge, label %if.then13

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %rd_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wr_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #14
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 17
  tail call void @kill_fasync(ptr noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #14
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #14
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %files.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.critedge.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %16 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %16, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #14
  tail call void @free_pipe_info(ptr noundef %1) #14
  br label %put_pipe_info.exit

if.end4.critedge.i:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #14
  br label %put_pipe_info.exit

put_pipe_info.exit:                               ; preds = %if.end4.critedge.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 1) #14
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 16
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %fasync_readers) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval1.0)
  %cmp = icmp sgt i32 %retval1.0, -1
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 17
  %call6 = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %fasync_writers) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.then5.if.end16_crit_edge

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.then5
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true8.if.end16_crit_edge, label %if.then12

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  %fasync_readers13 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 16
  %call14 = tail call i32 @fasync_helper(i32 noundef -1, ptr noundef %filp, i32 noundef 0, ptr noundef %fasync_readers13) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true8.if.end16_crit_edge, %if.then5.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %retval1.1 = phi i32 [ %call6, %if.then12 ], [ %call6, %land.lhs.true8.if.end16_crit_edge ], [ %call6, %if.then5.if.end16_crit_edge ], [ %retval1.0, %if.end.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #14
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @round_pipe_size(i32 noundef %size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %size)
  %cmp = icmp ugt i32 %size, -2147483648
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp1 = icmp ult i32 %size, 4096
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %size, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #14, !range !160
  %add = sub nuw nsw i32 32, %0
  %shl = shl nuw i32 1, %add
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 4096, %if.end.return_crit_edge ], [ %shl, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pipe_resize_ring(ptr noundef %pipe, i32 noundef %nr_slots) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 6
  %0 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_size, align 4
  %sub = add i32 %1, -1
  %head1 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %2 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1, align 4
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %4 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail2, align 4
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %nr_slots)
  %cmp = icmp ugt i32 %sub.i, %nr_slots
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_slots, i32 24) #14
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !129

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 4206016) #18
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end10, !prof !129

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp11.not = icmp eq i32 %3, %5
  br i1 %cmp11.not, label %if.end10.if.end29_crit_edge, label %if.then12

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then12:                                        ; preds = %if.end10
  %and = and i32 %3, %sub
  %and13 = and i32 %5, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and13)
  %cmp14 = icmp ugt i32 %and, %and13
  br i1 %cmp14, label %if.then12.if.end29.sink.split_crit_edge, label %if.else

if.then12.if.end29.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.then12
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 4
  %sub18 = sub i32 %10, %and13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19.not = icmp eq i32 %and, 0
  br i1 %cmp19.not, label %if.else.if.end29.sink.split_crit_edge, label %if.then20

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.sink.split

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr21 = getelementptr %struct.pipe_buffer, ptr %call8.i.i, i32 %sub18
  %bufs22 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %11 = ptrtoint ptr %bufs22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bufs22, align 4
  %mul23 = mul i32 %and, 24
  %13 = call ptr @memcpy(ptr %add.ptr21, ptr %12, i32 %mul23)
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then20, %if.else.if.end29.sink.split_crit_edge, %if.then12.if.end29.sink.split_crit_edge
  %sub.i.sink = phi i32 [ %sub.i, %if.then12.if.end29.sink.split_crit_edge ], [ %sub18, %if.then20 ], [ %sub18, %if.else.if.end29.sink.split_crit_edge ]
  %bufs16 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %14 = ptrtoint ptr %bufs16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufs16, align 4
  %add.ptr = getelementptr %struct.pipe_buffer, ptr %15, i32 %and13
  %mul = mul i32 %sub.i.sink, 24
  %16 = call ptr @memcpy(ptr %call8.i.i, ptr %add.ptr, i32 %mul)
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end10.if.end29_crit_edge
  %bufs30 = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 18
  %17 = ptrtoint ptr %bufs30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bufs30, align 4
  tail call void @kfree(ptr noundef %18) #14
  %19 = ptrtoint ptr %bufs30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %bufs30, align 4
  %20 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %nr_slots, ptr %ring_size, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %21 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_usage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %nr_slots)
  %cmp33 = icmp ugt i32 %22, %nr_slots
  br i1 %cmp33, label %if.then34, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %max_usage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %nr_slots, ptr %max_usage, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29.if.end36_crit_edge
  %24 = ptrtoint ptr %tail2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tail2, align 4
  %25 = ptrtoint ptr %head1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %head1, align 4
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_pipe_info(ptr nocapture noundef readonly %file, i1 noundef zeroext %for_splice) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp ne ptr %3, @pipefifo_fops
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %for_splice, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watch_queue, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pipe_fcntl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %2 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp ne ptr %3, @pipefifo_fops
  %tobool.not.i = icmp eq ptr %1, null
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 1) #14
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 1031, label %sw.bb
    i32 1032, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %watch_queue.i = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %watch_queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %watch_queue.i, align 4
  %tobool.not.i8 = icmp eq ptr %6, null
  br i1 %tobool.not.i8, label %if.end.i9, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i9:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %arg)
  %cmp.i.i = icmp ugt i32 %arg, -2147483648
  br i1 %cmp.i.i, label %if.end.i9.sw.epilog_crit_edge, label %if.end.i.i

if.end.i9.sw.epilog_crit_edge:                    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %arg)
  %cmp1.i.i = icmp ult i32 %arg, 4096
  br i1 %cmp1.i.i, label %if.end.i.i.if.end3.i_crit_edge, label %round_pipe_size.exit.i

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

round_pipe_size.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %arg, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 false) #14, !range !160
  %add.i.i = sub nuw nsw i32 32, %7
  %shl.i.i = shl nuw i32 1, %add.i.i
  %shr.i = lshr i32 %shl.i.i, 12
  br label %if.end3.i

if.end3.i:                                        ; preds = %round_pipe_size.exit.i, %if.end.i.i.if.end3.i_crit_edge
  %shr70.i = phi i32 [ %shr.i, %round_pipe_size.exit.i ], [ 1, %if.end.i.i.if.end3.i_crit_edge ]
  %retval.0.i69.i = phi i32 [ %shl.i.i, %round_pipe_size.exit.i ], [ 4096, %if.end.i.i.if.end3.i_crit_edge ]
  %max_usage.i = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_usage.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr70.i, i32 %9)
  %cmp.i = icmp ugt i32 %shr70.i, %9
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %10 = load i32, ptr @pipe_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i69.i, i32 %10)
  %cmp4.i = icmp ugt i32 %retval.0.i69.i, %10
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call6.i, label %land.lhs.true5.i.if.end8.i_crit_edge, label %land.lhs.true5.i.sw.epilog_crit_edge

land.lhs.true5.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true5.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true5.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end3.i.if.end8.i_crit_edge
  %user.i = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user.i, align 4
  %nr_accounted.i = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %nr_accounted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_accounted.i, align 4
  %sub.i52.i = sub i32 %shr70.i, %14
  %pipe_bufs.i.i = getelementptr inbounds %struct.user_struct, ptr %12, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i.i, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i.i, ptr %pipe_bufs.i.i, i32 %sub.i52.i, ptr elementtype(i32) %pipe_bufs.i.i) #14, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  %16 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_usage.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr70.i, i32 %17)
  %cmp11.i = icmp ugt i32 %shr70.i, %17
  br i1 %cmp11.i, label %land.lhs.true12.i, label %if.end8.i.if.end18.i_crit_edge

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %18 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i53.i = icmp ult i32 %18, %asmresult.i.i.i.i.i.i
  %spec.select.i.i = and i1 %tobool.not.i.i, %cmp.i53.i
  br i1 %spec.select.i.i, label %land.lhs.true12.i.land.lhs.true15.i_crit_edge, label %lor.lhs.false.i

land.lhs.true12.i.land.lhs.true15.i_crit_edge:    ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true15.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true12.i
  %19 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i54.i = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i55.i = icmp ult i32 %19, %asmresult.i.i.i.i.i.i
  %spec.select.i56.i = and i1 %tobool.not.i54.i, %cmp.i55.i
  br i1 %spec.select.i56.i, label %lor.lhs.false.i.land.lhs.true15.i_crit_edge, label %lor.lhs.false.i.if.end18.i_crit_edge

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

lor.lhs.false.i.land.lhs.true15.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true15.i

land.lhs.true15.i:                                ; preds = %lor.lhs.false.i.land.lhs.true15.i_crit_edge, %land.lhs.true12.i.land.lhs.true15.i_crit_edge
  %call.i.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call.i.i, label %land.lhs.true15.i.if.end18.i_crit_edge, label %pipe_is_unprivileged_user.exit.i

land.lhs.true15.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

pipe_is_unprivileged_user.exit.i:                 ; preds = %land.lhs.true15.i
  %call1.i.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1.i.i, label %pipe_is_unprivileged_user.exit.i.if.end18.i_crit_edge, label %pipe_is_unprivileged_user.exit.i.out_revert_acct.i_crit_edge

pipe_is_unprivileged_user.exit.i.out_revert_acct.i_crit_edge: ; preds = %pipe_is_unprivileged_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_revert_acct.i

pipe_is_unprivileged_user.exit.i.if.end18.i_crit_edge: ; preds = %pipe_is_unprivileged_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %pipe_is_unprivileged_user.exit.i.if.end18.i_crit_edge, %land.lhs.true15.i.if.end18.i_crit_edge, %lor.lhs.false.i.if.end18.i_crit_edge, %if.end8.i.if.end18.i_crit_edge
  %call19.i = tail call i32 @pipe_resize_ring(ptr noundef nonnull %1, i32 noundef %shr70.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end18.i.out_revert_acct.i_crit_edge, label %if.end22.i

if.end18.i.out_revert_acct.i_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_revert_acct.i

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %max_usage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr70.i, ptr %max_usage.i, align 4
  %21 = ptrtoint ptr %nr_accounted.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr70.i, ptr %nr_accounted.i, align 4
  %mul.i = and i32 %retval.0.i69.i, -4096
  br label %sw.epilog

out_revert_acct.i:                                ; preds = %if.end18.i.out_revert_acct.i_crit_edge, %pipe_is_unprivileged_user.exit.i.out_revert_acct.i_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %if.end18.i.out_revert_acct.i_crit_edge ], [ -1, %pipe_is_unprivileged_user.exit.i.out_revert_acct.i_crit_edge ]
  %22 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user.i, align 4
  %24 = ptrtoint ptr %nr_accounted.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_accounted.i, align 4
  %sub.i57.i = sub i32 %25, %shr70.i
  %pipe_bufs.i58.i = getelementptr inbounds %struct.user_struct, ptr %23, i32 0, i32 3
  %call.i.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_bufs.i58.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %pipe_bufs.i58.i, i32 1, i32 3, i32 1) #14
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_bufs.i58.i, ptr %pipe_bufs.i58.i, i32 %sub.i57.i, ptr elementtype(i32) %pipe_bufs.i58.i) #14, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_usage, align 4
  %mul = shl i32 %28, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %out_revert_acct.i, %if.end22.i, %land.lhs.true5.i.sw.epilog_crit_edge, %if.end.i9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %mul, %sw.bb2 ], [ -22, %if.end.sw.epilog_crit_edge ], [ %ret.0.i, %out_revert_acct.i ], [ %mul.i, %if.end22.i ], [ -16, %sw.bb.sw.epilog_crit_edge ], [ -1, %land.lhs.true5.i.sw.epilog_crit_edge ], [ -22, %if.end.i9.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_pipe_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @pipe_fs_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @kern_mount(ptr noundef nonnull @pipe_fs_type) #14
  store ptr %call1, ptr @pipe_mnt, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call1 to i32
  %call5 = tail call i32 @unregister_filesystem(ptr noundef nonnull @pipe_fs_type) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end6_crit_edge ], [ %0, %if.then3 ], [ 0, %if.then.if.end6_crit_edge ]
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.31, ptr noundef nonnull @fs_pipe_sysctls, ptr noundef nonnull @.str.32) #14
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_pipe2(ptr noundef %fildes, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %files = alloca [2 x ptr], align 4
  %fd = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %files) #14
  %0 = ptrtoint ptr %files to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %files, align 4, !annotation !145
  %1 = getelementptr inbounds [2 x ptr], ptr %files, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd) #14
  %3 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fd, align 4, !annotation !145
  %4 = getelementptr inbounds [2 x i32], ptr %fd, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !145
  %call = call fastcc i32 @__do_pipe_flags(ptr noundef nonnull %fd, ptr noundef nonnull %files, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.i, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.if.then7_crit_edge, label %if.end.i.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.end.i.i:                                       ; preds = %if.then.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %fildes, i32 8, i32 -1226833920) #19, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.if.then7_crit_edge

if.end.i.i.if.then7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fd, i32 noundef 8) #14
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %fildes, ptr noundef nonnull %fd, i32 noundef 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool4.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool4.not, label %if.else, label %copy_to_user.exit.if.then7_crit_edge, !prof !131

copy_to_user.exit.if.then7_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %copy_to_user.exit.if.then7_crit_edge, %if.end.i.i.if.then7_crit_edge, %if.then.i.if.then7_crit_edge
  %7 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %files, align 4
  call void @fput(ptr noundef %8) #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @fput(ptr noundef %10) #14
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fd, align 4
  call void @put_unused_fd(i32 noundef %12) #14
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @put_unused_fd(i32 noundef %14) #14
  br label %if.end15

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fd, align 4
  %17 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %files, align 4
  call void @fd_install(i32 noundef %16, ptr noundef %18) #14
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @fd_install(i32 noundef %20, ptr noundef %22) #14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7, %entry.if.end15_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end15_crit_edge ], [ -14, %if.then7 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %files) #14
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anon_pipe_buf_release(ptr nocapture noundef %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %4, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %land.lhs.true, label %page_count.exit.if.else_crit_edge

page_count.exit.if.else_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %page_count.exit
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 15
  %9 = ptrtoint ptr %tmp_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmp_page, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %tmp_page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %tmp_page, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %page_count.exit.if.else_crit_edge
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %2, align 4
  %and.i.i6 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i6, 0
  br i1 %tobool.not.i.i7, label %if.end.i.i10, label %if.then.i.i9, !prof !131

if.then.i.i9:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i8 = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i10:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i10, %if.then.i.i9
  %retval.0.i.i11 = phi i32 [ %sub.i.i8, %if.then.i.i9 ], [ %14, %if.end.i.i10 ]
  %15 = inttoptr i32 %retval.0.i.i11 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.17) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !139
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@anon_pipe_buf_release, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !136

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %15, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %15) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @anon_pipe_buf_try_steal(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %if.then.i.i7, !prof !131

if.then.i.i7:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i6 = add i32 %4, -1
  br label %page_count.exit

if.end.i.i8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %1 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %5, %if.end.i.i8 ]
  %6 = inttoptr i32 %retval.0.i.i9 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %page_count.exit.cleanup_crit_edge

page_count.exit.cleanup_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %page_count.exit
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memcg_kmem_enabled_key, i32 1), ptr blockaddress(@anon_pipe_buf_try_steal, %memcg_kmem_uncharge_page.exit)) #14
          to label %if.then.i11 [label %memcg_kmem_uncharge_page.exit], !srcloc !162

if.then.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__memcg_kmem_uncharge_page(ptr noundef %1, i32 noundef 0) #14
  br label %memcg_kmem_uncharge_page.exit

memcg_kmem_uncharge_page.exit:                    ; preds = %if.then.i11, %if.end
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !131

if.then.i:                                        ; preds = %memcg_kmem_uncharge_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.27) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #14, !srcloc !163
  unreachable

do.body7.i:                                       ; preds = %memcg_kmem_uncharge_page.exit
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !131

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, -1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !131

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i34.i = add i32 %18, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %19, %if.end.i36.i ]
  %20 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.28) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !131

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i41.i = add i32 %18, -1
  br label %__SetPageLocked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %1 to i32
  br label %__SetPageLocked.exit

__SetPageLocked.exit:                             ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %21, %if.end.i43.i ]
  %22 = inttoptr i32 %retval.0.i44.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %or.i.i = or i32 %24, 1
  store i32 %or.i.i, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %__SetPageLocked.exit, %page_count.exit.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__memcg_kmem_uncharge_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watch_queue_set_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watch_queue_set_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_partner(ptr noundef %pipe, ptr nocapture noundef readonly %cnt) unnamed_addr #0 align 64 {
entry:
  %rdwait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rdwait) #14
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %rdwait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %rdwait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %rdwait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %rdwait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %rdwait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rdwait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 1
  %files.i = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %entry
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @prepare_to_wait(ptr noundef %rd_wait, ptr noundef nonnull %rdwait, i32 noundef 1) #14
  %17 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %while.body.pipe_unlock.exit_crit_edge, label %if.then.i

while.body.pipe_unlock.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_unlock.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %pipe) #14
  br label %pipe_unlock.exit

pipe_unlock.exit:                                 ; preds = %if.then.i, %while.body.pipe_unlock.exit_crit_edge
  call void @schedule() #14
  call void @finish_wait(ptr noundef %rd_wait, ptr noundef nonnull %rdwait) #14
  %19 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %files.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %pipe_unlock.exit.pipe_lock.exit_crit_edge, label %if.then.i.i

pipe_unlock.exit.pipe_lock.exit_crit_edge:        ; preds = %pipe_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pipe_lock.exit

if.then.i.i:                                      ; preds = %pipe_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_lock_nested(ptr noundef %pipe, i32 noundef 1) #14
  br label %pipe_lock.exit

pipe_lock.exit:                                   ; preds = %if.then.i.i, %pipe_unlock.exit.pipe_lock.exit_crit_edge
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i15 = icmp eq i32 %27, 0
  br i1 %tobool.not.i15, label %signal_pending.exit, label %pipe_lock.exit.while.end_crit_edge, !prof !131

pipe_lock.exit.while.end_crit_edge:               ; preds = %pipe_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

signal_pending.exit:                              ; preds = %pipe_lock.exit
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i = and i32 %29, 1
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %signal_pending.exit.while.end_crit_edge, %pipe_lock.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %30 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %31)
  %cmp8 = icmp eq i32 %14, %31
  %cond = select i1 %cmp8, i32 -512, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rdwait) #14
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipefs_init_fs_context(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 1346981957) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pipefs_ops, ptr %call, align 4
  %dops = getelementptr inbounds %struct.pseudo_fs_context, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %dops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pipefs_dentry_operations, ptr %dops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pipefs_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull @.str.34, i32 noundef %3) #14
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dopipe_max_size(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @do_proc_douintvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos, ptr noundef nonnull @do_proc_dopipe_max_size_conv, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dopipe_max_size_conv(ptr nocapture noundef %lvalp, ptr nocapture noundef %valp, i32 noundef %write, ptr nocapture noundef readnone %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %lvalp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lvalp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %1)
  %cmp.i = icmp ugt i32 %1, -2147483648
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp1.i = icmp ult i32 %1, 4096
  %sub.i = add i32 %1, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 false) #14, !range !160
  %add.i = sub nuw nsw i32 32, %2
  %shl.i = shl nuw i32 1, %add.i
  %retval.0.i.ph = select i1 %cmp1.i, i32 4096, i32 %shl.i
  %3 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i.ph, ptr %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %valp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %valp, align 4
  %6 = ptrtoint ptr %lvalp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %lvalp, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end.i, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.return_crit_edge ], [ 0, %if.end.i ], [ 0, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !78, !80, !81, !83, !85, !86, !87, !89, !91, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__ksymtab_pipe_lock, !1, !"__ksymtab_pipe_lock", i1 false, i1 false}
!1 = !{!"../fs/pipe.c", i32 92, i32 1}
!2 = !{ptr @__ksymtab_pipe_unlock, !3, !"__ksymtab_pipe_unlock", i1 false, i1 false}
!3 = !{!"../fs/pipe.c", i32 99, i32 1}
!4 = !{ptr @__ksymtab_generic_pipe_buf_try_steal, !5, !"__ksymtab_generic_pipe_buf_try_steal", i1 false, i1 false}
!5 = !{!"../fs/pipe.c", i32 181, i32 1}
!6 = !{ptr @__ksymtab_generic_pipe_buf_get, !7, !"__ksymtab_generic_pipe_buf_get", i1 false, i1 false}
!7 = !{!"../fs/pipe.c", i32 197, i32 1}
!8 = !{ptr @__ksymtab_generic_pipe_buf_release, !9, !"__ksymtab_generic_pipe_buf_release", i1 false, i1 false}
!9 = !{!"../fs/pipe.c", i32 212, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../fs/pipe.c", i32 786, i32 29}
!12 = !{ptr @alloc_pipe_info.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/pipe.c", i32 811, i32 3}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @alloc_pipe_info.__key.1, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/pipe.c", i32 812, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @alloc_pipe_info.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/pipe.c", i32 818, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/pipe.c", i32 929, i32 41}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/pipe.c", i32 1026, i32 1}
!25 = !{ptr @event_enter__pipe2, !24, !"event_enter__pipe2", i1 false, i1 false}
!26 = !{ptr @__event_enter__pipe2, !24, !"__event_enter__pipe2", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @event_exit__pipe2, !24, !"event_exit__pipe2", i1 false, i1 false}
!29 = !{ptr @__event_exit__pipe2, !24, !"__event_exit__pipe2", i1 false, i1 false}
!30 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__syscall_meta__pipe2, !24, !"__syscall_meta__pipe2", i1 false, i1 false}
!32 = !{ptr @__p_syscall_meta__pipe2, !24, !"__p_syscall_meta__pipe2", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/pipe.c", i32 1031, i32 1}
!35 = !{ptr @event_enter__pipe, !34, !"event_enter__pipe", i1 false, i1 false}
!36 = !{ptr @__event_enter__pipe, !34, !"__event_enter__pipe", i1 false, i1 false}
!37 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @event_exit__pipe, !34, !"event_exit__pipe", i1 false, i1 false}
!39 = !{ptr @__event_exit__pipe, !34, !"__event_exit__pipe", i1 false, i1 false}
!40 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__syscall_meta__pipe, !34, !"__syscall_meta__pipe", i1 false, i1 false}
!42 = !{ptr @__p_syscall_meta__pipe, !34, !"__p_syscall_meta__pipe", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/pipe.c", i32 1048, i32 2}
!45 = !{ptr @pipefifo_fops, !46, !"pipefifo_fops", i1 false, i1 false}
!46 = !{!"../fs/pipe.c", i32 1218, i32 30}
!47 = !{ptr @__initcall__kmod_pipe__314_1506_init_pipe_fs5, !48, !"__initcall__kmod_pipe__314_1506_init_pipe_fs5", i1 false, i1 false}
!48 = !{!"../fs/pipe.c", i32 1506, i32 1}
!49 = !{ptr @pipe_user_pages_hard, !50, !"pipe_user_pages_hard", i1 false, i1 false}
!50 = !{!"../fs/pipe.c", i32 59, i32 22}
!51 = !{ptr @pipe_mnt, !52, !"pipe_mnt", i1 false, i1 false}
!52 = !{!"../fs/pipe.c", i32 856, i32 25}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/mm.h", i32 1177, i32 6}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/mm.h", i32 717, i32 2}
!64 = !{ptr @pipe_user_pages_soft, !65, !"pipe_user_pages_soft", i1 false, i1 false}
!65 = !{!"../fs/pipe.c", i32 60, i32 22}
!66 = !{ptr @pipe_max_size, !67, !"pipe_max_size", i1 false, i1 false}
!67 = !{!"../fs/pipe.c", i32 54, i32 21}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../fs/pipe.c", i32 898, i32 17}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../fs/pipe.c", i32 899, i32 17}
!72 = !{ptr @.str.19, !24, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.20, !24, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @types__pipe2, !24, !"types__pipe2", i1 false, i1 false}
!75 = !{ptr @.str.21, !24, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.22, !24, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @args__pipe2, !24, !"args__pipe2", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!80 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!85 = !{ptr @types__pipe, !34, !"types__pipe", i1 false, i1 false}
!86 = !{ptr @args__pipe, !34, !"args__pipe", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!89 = !{ptr @anon_pipe_buf_ops, !90, !"anon_pipe_buf_ops", i1 false, i1 false}
!90 = !{!"../fs/pipe.c", i32 214, i32 41}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!93 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!96 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/pipe.c", i32 1501, i32 2}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/pipe.c", i32 1430, i32 11}
!103 = !{ptr @pipe_fs_type, !104, !"pipe_fs_type", i1 false, i1 false}
!104 = !{!"../fs/pipe.c", i32 1429, i32 32}
!105 = !{ptr @pipefs_ops, !106, !"pipefs_ops", i1 false, i1 false}
!106 = !{!"../fs/pipe.c", i32 1407, i32 38}
!107 = !{ptr @pipefs_dentry_operations, !108, !"pipefs_dentry_operations", i1 false, i1 false}
!108 = !{!"../fs/pipe.c", i32 867, i32 39}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/pipe.c", i32 863, i32 47}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/pipe.c", i32 1465, i32 15}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/pipe.c", i32 1472, i32 15}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/pipe.c", i32 1479, i32 15}
!117 = !{ptr @fs_pipe_sysctls, !118, !"fs_pipe_sysctls", i1 false, i1 false}
!118 = !{!"../fs/pipe.c", i32 1463, i32 25}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2155554511, i64 2155554985, i64 2155554548, i64 2155554604, i64 2155554638, i64 2155554662, i64 2155554703, i64 2155554724, i64 2155554752, i64 2155554786}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2150255114, i64 2150255605, i64 2150255151, i64 2150255207, i64 2150255241, i64 2150255265, i64 2150255306, i64 2150255327, i64 2150255355, i64 2150255389}
!133 = !{i64 2148708974, i64 2148709006, i64 2148709035, i64 2148709069, i64 2148709100, i64 2148709123}
!134 = !{i64 2148798079}
!135 = !{i64 2148700116, i64 2148700142, i64 2148700171, i64 2148700205, i64 2148700236, i64 2148700259}
!136 = !{i64 2148300793, i64 2148300798, i64 2148300811, i64 2148300855, i64 2148300889, i64 2148300910}
!137 = !{i64 2153146112, i64 2153146595, i64 2153146149, i64 2153146205, i64 2153146239, i64 2153146263, i64 2153146304, i64 2153146325, i64 2153146353, i64 2153146387}
!138 = !{i64 2148788592}
!139 = !{i64 2148703301, i64 2148703333, i64 2148703362, i64 2148703396, i64 2148703427, i64 2148703450}
!140 = !{i64 2148788821}
!141 = !{i64 2148785551}
!142 = !{i64 2148700836, i64 2148700868, i64 2148700897, i64 2148700931, i64 2148700962, i64 2148700985}
!143 = !{i64 2148785780}
!144 = !{i64 2148701646, i64 2148701678, i64 2148701707, i64 2148701741, i64 2148701772, i64 2148701795}
!145 = !{!"auto-init"}
!146 = !{i64 2155574882}
!147 = !{i8 0, i8 2}
!148 = !{i64 2152940221}
!149 = !{i64 1104796, i64 1104857}
!150 = !{i64 1107528}
!151 = !{i64 1107813}
!152 = !{i64 2152949071}
!153 = !{i64 2152949813}
!154 = !{i64 2152959308}
!155 = !{i64 2152968785}
!156 = !{i64 5255901}
!157 = !{i64 5256098}
!158 = !{i64 2152741331}
!159 = !{i64 2155602331, i64 2155602611, i64 2155602945, i64 2155603279}
!160 = !{i32 0, i32 33}
!161 = !{i64 2152761027, i64 2152761052}
!162 = !{i64 2148301196, i64 2148301201, i64 2148301222, i64 2148301266, i64 2148301300, i64 2148301321}
!163 = !{i64 2150269442, i64 2150269933, i64 2150269479, i64 2150269535, i64 2150269569, i64 2150269593, i64 2150269634, i64 2150269655, i64 2150269683, i64 2150269717}
!164 = !{i64 2150271822, i64 2150272313, i64 2150271859, i64 2150271915, i64 2150271949, i64 2150271973, i64 2150272014, i64 2150272035, i64 2150272063, i64 2150272097}
