; ModuleID = '/llk/IR_all_yes/fs/coredump.c_pt.bc'
source_filename = "../fs/coredump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dump_emit\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_emit\09\09\09\09"
module asm "\09.long\09__crc_dump_emit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_emit\22\09\09\09\09\09"
module asm "__kstrtabns_dump_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dump_skip_to\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_skip_to\09\09\09\09"
module asm "\09.long\09__crc_dump_skip_to\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_skip_to:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_skip_to\22\09\09\09\09\09"
module asm "__kstrtabns_dump_skip_to:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dump_skip\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_skip\09\09\09\09"
module asm "\09.long\09__crc_dump_skip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_skip\22\09\09\09\09\09"
module asm "__kstrtabns_dump_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dump_align\22, \22a\22\09"
module asm "\09.weak\09__crc_dump_align\09\09\09\09"
module asm "\09.long\09__crc_dump_align\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_align:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_align\22\09\09\09\09\09"
module asm "__kstrtabns_dump_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.97, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.21 }
%union.anon.21 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.12 }
%union.anon.12 = type { i32 }
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
%union.anon.97 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.11 }
%union.anon.11 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.50 }
%union.anon.50 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.60, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.core_name = type { ptr, i32, i32 }
%struct.coredump_params = type { ptr, ptr, ptr, i32, i32, i64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.anon.14 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.77 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.77 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.104 = type { %struct.callback_head }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.106 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.spinlock, i32 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.19, %union.anon.87, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.87 = type { %struct.atomic_t }
%struct.core_vma_metadata = type { i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.15, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }

@do_coredump.core_dump_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@do_coredump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014format_corename failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_coredump\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/coredump.c\00", [18 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr = internal global ptr @do_coredump._entry, section ".printk_index", align 4
@do_coredump._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014Aborting core\0A\00", [47 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.5 = internal global ptr @do_coredump._entry.3, section ".printk_index", align 4
@do_coredump._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Process %d(%s) has RLIMIT_CORE set to 1\0A\00", [53 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.8 = internal global ptr @do_coredump._entry.6, section ".printk_index", align 4
@do_coredump._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.10 = internal global ptr @do_coredump._entry.9, section ".printk_index", align 4
@core_pipe_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@do_coredump._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Pid %d(%s) over core_pipe_limit\0A\00", [61 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.13 = internal global ptr @do_coredump._entry.11, section ".printk_index", align 4
@do_coredump._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014Skipping core dump\0A\00", [42 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.16 = internal global ptr @do_coredump._entry.14, section ".printk_index", align 4
@do_coredump._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s failed to allocate memory\0A\00", [32 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.19 = internal global ptr @do_coredump._entry.17, section ".printk_index", align 4
@do_coredump._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Core dump to |%s pipe failed\0A\00", [32 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.22 = internal global ptr @do_coredump._entry.20, section ".printk_index", align 4
@do_coredump._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014Pid %d(%s) can only dump core to fully qualified path!\0A\00", [38 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.25 = internal global ptr @do_coredump._entry.23, section ".printk_index", align 4
@do_coredump._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.27 = internal global ptr @do_coredump._entry.26, section ".printk_index", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@do_coredump._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@do_coredump._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Core dump to %s aborted: cannot preserve file owner\0A\00", [41 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.31 = internal global ptr @do_coredump._entry.29, section ".printk_index", align 4
@do_coredump._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@do_coredump._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016Core dump to %s aborted: cannot preserve file permissions\0A\00", [35 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.35 = internal global ptr @do_coredump._entry.33, section ".printk_index", align 4
@do_coredump._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Core dump to |%s disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@do_coredump._entry_ptr.38 = internal global ptr @do_coredump._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_dump_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_emit to i32), ptr @__kstrtab_dump_emit, ptr @__kstrtabns_dump_emit }, section "___ksymtab+dump_emit", align 4
@__kstrtab_dump_skip_to = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_skip_to = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_skip_to = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_skip_to to i32), ptr @__kstrtab_dump_skip_to, ptr @__kstrtabns_dump_skip_to }, section "___ksymtab+dump_skip_to", align 4
@__kstrtab_dump_skip = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_skip = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_skip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_skip to i32), ptr @__kstrtab_dump_skip, ptr @__kstrtabns_dump_skip }, section "___ksymtab+dump_skip", align 4
@__kstrtab_dump_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_align = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_align to i32), ptr @__kstrtab_dump_align, ptr @__kstrtabns_dump_align }, section "___ksymtab+dump_align", align 4
@suid_dumpable = external dso_local local_unnamed_addr global i32, align 4
@core_pattern = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@validate_coredump_safety._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"\014Unsafe core_pattern used with fs.suid_dumpable=2.\0APipe handler or fully qualified core dump path required.\0ASet kernel.core_pattern before fs.suid_dumpable.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"validate_coredump_safety\00", [39 x i8] zeroinitializer }, align 32
@validate_coredump_safety._entry_ptr = internal global ptr @validate_coredump_safety._entry, section ".printk_index", align 4
@__initcall__kmod_coredump__411_949_init_fs_coredump_sysctls5 = internal global ptr @init_fs_coredump_sysctls, section ".initcall5.init", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zap_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@core_name_size = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lld\00", [27 x i8] zeroinitializer }, align 32
@uts_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@core_uses_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".%d\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s (path unknown)\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@__dump_skip.zeroes = internal global [4096 x i8] zeroinitializer, align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@coredump_sysctls = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.61, ptr @core_uses_pid, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.62, ptr @core_pattern, i32 128, i16 420, ptr null, ptr @proc_dostring_coredump, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.63, ptr @core_pipe_limit, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coredump_sysctls\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_uses_pid\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"core_pattern\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"core_pipe_limit\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 37, i64 69, i64 73, i64 80, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 112, i64 115, i64 116, i64 117]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 124]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 124]
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"core_dump_count\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 523, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 574, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 575, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 595, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 598, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"core_pipe_limit\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 57, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 605, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 607, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 614, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 632, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 646, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 649, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 718, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 723, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 745, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 758, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"core_pattern\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 58, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 901, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 87, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 359, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 57, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"core_name_size\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 59, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 237, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 257, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 275, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 299, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 305, i32 29 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 322, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"core_uses_pid\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 56, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 342, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 145, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 163, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 49, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 34, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 286, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 717, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"coredump_sysctls\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 919, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 946, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 921, i32 15 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 928, i32 15 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [17 x i8] c"../fs/coredump.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 935, i32 15 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__initcall__kmod_coredump__411_949_init_fs_coredump_sysctls5, ptr @__ksymtab_dump_align, ptr @__ksymtab_dump_emit, ptr @__ksymtab_dump_skip, ptr @__ksymtab_dump_skip_to, ptr @do_coredump._entry, ptr @do_coredump._entry.11, ptr @do_coredump._entry.14, ptr @do_coredump._entry.17, ptr @do_coredump._entry.20, ptr @do_coredump._entry.23, ptr @do_coredump._entry.26, ptr @do_coredump._entry.29, ptr @do_coredump._entry.3, ptr @do_coredump._entry.33, ptr @do_coredump._entry.36, ptr @do_coredump._entry.6, ptr @do_coredump._entry.9, ptr @do_coredump._entry_ptr, ptr @do_coredump._entry_ptr.10, ptr @do_coredump._entry_ptr.13, ptr @do_coredump._entry_ptr.16, ptr @do_coredump._entry_ptr.19, ptr @do_coredump._entry_ptr.22, ptr @do_coredump._entry_ptr.25, ptr @do_coredump._entry_ptr.27, ptr @do_coredump._entry_ptr.31, ptr @do_coredump._entry_ptr.35, ptr @do_coredump._entry_ptr.38, ptr @do_coredump._entry_ptr.5, ptr @do_coredump._entry_ptr.8, ptr @validate_coredump_safety._entry, ptr @validate_coredump_safety._entry_ptr, ptr @do_coredump.core_dump_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @core_pipe_limit, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @do_coredump._rs, ptr @.str.28, ptr @.str.30, ptr @do_coredump._rs.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @core_pattern, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @core_name_size, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @core_uses_pid, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @coredump_sysctls, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump.core_dump_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pipe_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_coredump._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pattern to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_coredump_safety._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_name_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_uses_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coredump_sysctls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_coredump(ptr noundef %siginfo) local_unnamed_addr #0 align 64 {
entry:
  %core_state = alloca %struct.core_state, align 4
  %cn = alloca %struct.core_name, align 4
  %cprm = alloca %struct.coredump_params, align 8
  %root = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %core_state) #18
  %0 = call ptr @memset(ptr %core_state, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cn) #18
  %1 = ptrtoint ptr %cn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cn, align 4, !annotation !145
  %2 = getelementptr inbounds %struct.core_name, ptr %cn, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !145
  %4 = getelementptr inbounds %struct.core_name, ptr %cn, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !145
  %6 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cprm) #18
  %12 = getelementptr inbounds i8, ptr %cprm, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %12, align 8, !annotation !145
  %14 = ptrtoint ptr %cprm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %siginfo, ptr %cprm, align 8
  %regs = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 1
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack, align 4
  %add.ptr5 = getelementptr i8, ptr %18, i32 16304
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr5, ptr %regs, align 4
  %file = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 2
  %20 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %file, align 8
  %limit = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 3
  %21 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 111
  %25 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %26, i32 0, i32 51, i32 4
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 8
  %29 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %limit, align 4
  %mm_flags = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 4
  %flags = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 43
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %32 = ptrtoint ptr %mm_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mm_flags, align 8
  %written = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 5
  %to_skip = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  %binfmt7 = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 41
  %33 = call ptr @memset(ptr %written, i32 0, i32 24)
  %34 = ptrtoint ptr %binfmt7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %binfmt7, align 8
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %entry.cleanup286_crit_edge, label %lor.lhs.false

entry.cleanup286_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup286

lor.lhs.false:                                    ; preds = %entry
  %core_dump = getelementptr inbounds %struct.linux_binfmt, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %core_dump to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core_dump, align 4
  %tobool8.not = icmp eq ptr %37, null
  %and.i338 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i338)
  %tobool11.not = icmp eq i32 %and.i338, 0
  %or.cond441 = select i1 %tobool8.not, i1 true, i1 %tobool11.not
  br i1 %or.cond441, label %lor.lhs.false.cleanup286_crit_edge, label %if.end13

lor.lhs.false.cleanup286_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup286

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = tail call ptr @prepare_creds() #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup286_crit_edge, label %if.end17

if.end13.cleanup286_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup286

if.end17:                                         ; preds = %if.end13
  %38 = ptrtoint ptr %mm_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mm_flags, align 8
  %and.i339 = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i339)
  %cmp = icmp eq i32 %and.i339, 2
  br i1 %cmp, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %fsuid = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 10
  %40 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fsuid, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %41 = ptrtoint ptr %siginfo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %siginfo, align 4
  %43 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i340 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i340 to ptr
  %task.i341 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i341 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i341, align 8
  %startup.i = getelementptr inbounds %struct.core_state, ptr %core_state, i32 0, i32 2
  %47 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %startup.i, align 4
  %wait.i.i = getelementptr inbounds %struct.core_state, ptr %core_state, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #18
  %dumper.i = getelementptr inbounds %struct.core_state, ptr %core_state, i32 0, i32 1
  %48 = ptrtoint ptr %dumper.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %dumper.i, align 4
  %next.i = getelementptr inbounds %struct.core_state, ptr %core_state, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %next.i, align 4
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 111
  %50 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %signal1.i.i, align 16
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 112
  %52 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sighand.i.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %53) #18
  %flags.i.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 12
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 8
  %and.i20.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end21.coredump_wait.exit.thread_crit_edge

if.end21.coredump_wait.exit.thread_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_wait.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end21
  %group_exec_task.i.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 10
  %56 = ptrtoint ptr %group_exec_task.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %group_exec_task.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.coredump_wait.exit.thread_crit_edge

land.lhs.true.i.i.coredump_wait.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_wait.exit.thread

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %core_state3.i.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 13
  %58 = ptrtoint ptr %core_state3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %core_state, ptr %core_state3.i.i, align 4
  %59 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %signal1.i.i, align 16
  %flags.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %flags.i.i.i, align 8
  %62 = load ptr, ptr %signal1.i.i, align 16
  %group_exit_code.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %group_exit_code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %42, ptr %group_exit_code.i.i.i, align 8
  %64 = load ptr, ptr %signal1.i.i, align 16
  %group_stop_count.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %group_stop_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %group_stop_count.i.i.i, align 4
  %call.i.i.i = call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b42.i.i.i = load i1, ptr @zap_process.__warned, align 1
  br i1 %.b42.i.i.i, label %land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @zap_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 359, ptr noundef nonnull @.str.43) #18
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %if.then.i.i.do.end.i.i.i_crit_edge
  %66 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %signal1.i.i, align 16
  %thread_head.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %thread_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn43.i.i.i = load volatile ptr, ptr %thread_head.i.i.i, align 4
  %cmp.not46.i.i.i = icmp eq ptr %.pn43.i.i.i, %thread_head.i.i.i
  br i1 %cmp.not46.i.i.i, label %do.end.i.i.i.zap_threads.exit.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.zap_threads.exit.i_crit_edge:        ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %zap_threads.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn48.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn43.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %nr.047.i.i.i = phi i32 [ %nr.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %t.049.i.i.i = getelementptr i8, ptr %.pn48.i.i.i, i32 -1404
  call void @task_clear_jobctl_pending(ptr noundef %t.049.i.i.i, i32 noundef 1703936) #18
  %69 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i, align 8
  %cmp15.not.i.i.i = icmp eq ptr %t.049.i.i.i, %72
  br i1 %cmp15.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true16.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

land.lhs.true16.i.i.i:                            ; preds = %for.body.i.i.i
  %flags17.i.i.i = getelementptr i8, ptr %.pn48.i.i.i, i32 -1392
  %73 = ptrtoint ptr %flags17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags17.i.i.i, align 4
  %and.i.i.i = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then19.i.i.i, label %land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

if.then19.i.i.i:                                  ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %signal20.i.i.i = getelementptr i8, ptr %.pn48.i.i.i, i32 316
  %75 = ptrtoint ptr %signal20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %signal20.i.i.i, align 4
  %or.i.i.i.i = or i32 %76, 256
  store i32 %or.i.i.i.i, ptr %signal20.i.i.i, align 4
  call void @signal_wake_up_state(ptr noundef %t.049.i.i.i, i32 noundef 256) #18
  %inc.i.i.i = add i32 %nr.047.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then19.i.i.i, %land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %nr.1.i.i.i = phi i32 [ %nr.047.i.i.i, %land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge ], [ %inc.i.i.i, %if.then19.i.i.i ], [ %nr.047.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %77 = ptrtoint ptr %.pn48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i.i.i = load volatile ptr, ptr %.pn48.i.i.i, align 4
  %78 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %signal1.i.i, align 16
  %thread_head13.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 3
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %thread_head13.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.zap_threads.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.inc.i.i.i.zap_threads.exit.i_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %zap_threads.exit.i

coredump_wait.exit.thread:                        ; preds = %land.lhs.true.i.i.coredump_wait.exit.thread_crit_edge, %if.end21.coredump_wait.exit.thread_crit_edge
  %80 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sighand.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %81) #18
  br label %do.body.i

zap_threads.exit.i:                               ; preds = %for.inc.i.i.i.zap_threads.exit.i_crit_edge, %do.end.i.i.i.zap_threads.exit.i_crit_edge
  %nr.0.lcssa.i.i.i = phi i32 [ 0, %do.end.i.i.i.zap_threads.exit.i_crit_edge ], [ %nr.1.i.i.i, %for.inc.i.i.i.zap_threads.exit.i_crit_edge ]
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %82 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stack.i.i.i, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %83) #18
  %flags4.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %84 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags4.i.i, align 4
  %or.i.i = or i32 %85, 512
  store i32 %or.i.i, ptr %flags4.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %core_state, i32 noundef 4) #18
  %86 = ptrtoint ptr %core_state to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 %nr.0.lcssa.i.i.i, ptr %core_state, align 4
  %87 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sighand.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %88) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0.lcssa.i.i.i)
  %cmp.i = icmp sgt i32 %nr.0.lcssa.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %zap_threads.exit.i.coredump_wait.exit_crit_edge

zap_threads.exit.i.coredump_wait.exit_crit_edge:  ; preds = %zap_threads.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_wait.exit

if.then.i:                                        ; preds = %zap_threads.exit.i
  %89 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i21.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i21.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i, align 8
  %flags.i22.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i22.i, align 4
  %or.i23.i = or i32 %94, 1073741824
  store i32 %or.i23.i, ptr %flags.i22.i, align 4
  call void @wait_for_completion(ptr noundef %startup.i) #18
  %95 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i24.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i24.i to ptr
  %task.i25.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i25.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i25.i, align 8
  %flags.i26.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %flags.i26.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i26.i, align 4
  %and.i27.i = and i32 %100, -1073741825
  store i32 %and.i27.i, ptr %flags.i26.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !146
  %101 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i28.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i28.i to ptr
  %task.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i29.i, align 8
  %flags.i.i30.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %flags.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i.i30.i, align 4
  %and.i4.i.i = and i32 %106, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i31.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i31.i, label %if.then.i.i32.i, label %if.then.i.if.end.i.i.i_crit_edge

if.then.i.if.end.i.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

if.then.i.i32.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @debug_check_no_locks_held() #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i32.i, %if.then.i.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 57) #18
  %107 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i.i.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %111 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i.i.i.i.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.freezer_count.exit.i_crit_edge, label %freezing.exit.i.i.i.i, !prof !147

if.end.i.i.i.freezer_count.exit.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %freezer_count.exit.i

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %110) #18
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge, !prof !148

freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge: ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %freezer_count.exit.i

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #18
  br label %freezer_count.exit.i

freezer_count.exit.i:                             ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge, %if.end.i.i.i.freezer_count.exit.i_crit_edge
  %112 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %ptr.036.i = load ptr, ptr %next.i, align 4
  %cmp7.not37.i = icmp eq ptr %ptr.036.i, null
  br i1 %cmp7.not37.i, label %freezer_count.exit.i.if.end26_crit_edge, label %freezer_count.exit.i.while.body.i_crit_edge

freezer_count.exit.i.while.body.i_crit_edge:      ; preds = %freezer_count.exit.i
  br label %while.body.i

freezer_count.exit.i.if.end26_crit_edge:          ; preds = %freezer_count.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %freezer_count.exit.i.while.body.i_crit_edge
  %ptr.038.i = phi ptr [ %ptr.0.i, %while.body.i.while.body.i_crit_edge ], [ %ptr.036.i, %freezer_count.exit.i.while.body.i_crit_edge ]
  %113 = ptrtoint ptr %ptr.038.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ptr.038.i, align 4
  %call9.i = call i32 @wait_task_inactive(ptr noundef %114, i32 noundef 0) #18
  %next10.i = getelementptr inbounds %struct.core_thread, ptr %ptr.038.i, i32 0, i32 1
  %115 = ptrtoint ptr %next10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %ptr.0.i = load ptr, ptr %next10.i, align 4
  %cmp7.not.i = icmp eq ptr %ptr.0.i, null
  br i1 %cmp7.not.i, label %while.body.i.coredump_wait.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.coredump_wait.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_wait.exit

coredump_wait.exit:                               ; preds = %while.body.i.coredump_wait.exit_crit_edge, %zap_threads.exit.i.coredump_wait.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0.lcssa.i.i.i)
  %cmp24 = icmp slt i32 %nr.0.lcssa.i.i.i, 0
  br i1 %cmp24, label %coredump_wait.exit.do.body.i_crit_edge, label %coredump_wait.exit.if.end26_crit_edge

coredump_wait.exit.if.end26_crit_edge:            ; preds = %coredump_wait.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

coredump_wait.exit.do.body.i_crit_edge:           ; preds = %coredump_wait.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end26:                                         ; preds = %coredump_wait.exit.if.end26_crit_edge, %freezer_count.exit.i.if.end26_crit_edge
  %call27 = call ptr @override_creds(ptr noundef nonnull %call14) #18
  %116 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i342 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i342 to ptr
  %task.i343 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i343, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 99
  %120 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cred1.i, align 16
  %122 = load i8, ptr @core_pattern, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %122)
  %cmp.i344 = icmp eq i8 %122, 124
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %2, align 4
  %124 = ptrtoint ptr %cn to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %cn, align 4
  %125 = load i32, ptr @core_name_size, align 4
  %call.i.i345 = call noalias ptr @krealloc(ptr noundef null, i32 noundef %125, i32 noundef 3264) #21
  %tobool.not.i.i346 = icmp eq ptr %call.i.i345, null
  br i1 %tobool.not.i.i346, label %if.end26.do.end_crit_edge, label %if.end.i.i

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end.i.i:                                       ; preds = %if.end26
  %126 = load i32, ptr @core_name_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %125)
  %cmp.i.i = icmp slt i32 %126, %125
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %125, ptr @core_name_size, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end.i_crit_edge
  %call4.i.i = call i32 @ksize(ptr noundef nonnull %call.i.i345) #18
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call4.i.i, ptr %4, align 4
  %128 = ptrtoint ptr %cn to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i.i345, ptr %cn, align 4
  %129 = ptrtoint ptr %call.i.i345 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %call.i.i345, align 1
  br i1 %cmp.i344, label %if.then6.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3264, i32 noundef 256) #22
  %tobool8.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i, label %if.then6.i.do.end_crit_edge, label %cleanup.i

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

cleanup.i:                                        ; preds = %if.then6.i
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %call7.i.i.i, align 8
  %132 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @core_pattern, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool12.not.not.i = icmp eq i8 %132, 0
  br i1 %tobool12.not.not.i, label %cleanup.i.do.end_crit_edge, label %cleanup.i.if.end15.i_crit_edge

cleanup.i.if.end15.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end15.i:                                       ; preds = %cleanup.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %argv.0 = phi ptr [ %call7.i.i.i, %cleanup.i.if.end15.i_crit_edge ], [ null, %if.end.i.if.end15.i_crit_edge ]
  %argc.0 = phi i32 [ 1, %cleanup.i.if.end15.i_crit_edge ], [ 0, %if.end.i.if.end15.i_crit_edge ]
  %pat_ptr.1.i = phi ptr [ getelementptr inbounds ([128 x i8], ptr @core_pattern, i32 0, i32 1), %cleanup.i.if.end15.i_crit_edge ], [ @core_pattern, %if.end.i.if.end15.i_crit_edge ]
  %gid.i = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 5
  %uid.i = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 4
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end107.i.while.cond.outer.i_crit_edge, %if.end15.i
  %argc.1 = phi i32 [ %argc.0, %if.end15.i ], [ %argc.3, %if.end107.i.while.cond.outer.i_crit_edge ]
  %pat_ptr.2.ph.i = phi ptr [ %pat_ptr.1.i, %if.end15.i ], [ %pat_ptr.3.i, %if.end107.i.while.cond.outer.i_crit_edge ]
  %pid_in_pattern.0.ph.i = phi i32 [ 0, %if.end15.i ], [ %pid_in_pattern.2.i, %if.end107.i.while.cond.outer.i_crit_edge ]
  %133 = ptrtoint ptr %pat_ptr.2.ph.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %pat_ptr.2.ph.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool16.not204.i = icmp eq i8 %134, 0
  br i1 %tobool16.not204.i, label %while.cond.outer.i.out.i_crit_edge, label %while.body.i347.preheader

while.cond.outer.i.out.i_crit_edge:               ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

while.body.i347.preheader:                        ; preds = %while.cond.outer.i
  br i1 %cmp.i344, label %while.body.i347.preheader.while.body.i347_crit_edge, label %while.body.i347.preheader.if.end42.i_crit_edge

while.body.i347.preheader.if.end42.i_crit_edge:   ; preds = %while.body.i347.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42.i

while.body.i347.preheader.while.body.i347_crit_edge: ; preds = %while.body.i347.preheader
  br label %while.body.i347

while.body.i347:                                  ; preds = %if.then24.i.while.body.i347_crit_edge, %while.body.i347.preheader.while.body.i347_crit_edge
  %135 = phi i8 [ %142, %if.then24.i.while.body.i347_crit_edge ], [ %134, %while.body.i347.preheader.while.body.i347_crit_edge ]
  %was_space.0.off0206.i = phi i1 [ %spec.select.i, %if.then24.i.while.body.i347_crit_edge ], [ false, %while.body.i347.preheader.while.body.i347_crit_edge ]
  %pat_ptr.2205.i = phi ptr [ %incdec.ptr30.i, %if.then24.i.while.body.i347_crit_edge ], [ %pat_ptr.2.ph.i, %while.body.i347.preheader.while.body.i347_crit_edge ]
  %conv19.i = zext i8 %135 to i32
  %arrayidx20.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv19.i
  %136 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx20.i, align 1
  %138 = and i8 %137, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp22.not.i = icmp eq i8 %138, 0
  br i1 %cmp22.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %while.body.i347
  %139 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp26.not.i = icmp ne i32 %140, 0
  %spec.select.i = select i1 %cmp26.not.i, i1 true, i1 %was_space.0.off0206.i
  %incdec.ptr30.i = getelementptr i8, ptr %pat_ptr.2205.i, i32 1
  %141 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %incdec.ptr30.i, align 1
  %tobool16.not.i = icmp eq i8 %142, 0
  br i1 %tobool16.not.i, label %if.then24.i.if.end39_crit_edge, label %if.then24.i.while.body.i347_crit_edge

if.then24.i.while.body.i347_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i347

if.then24.i.if.end39_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.else.i:                                        ; preds = %while.body.i347
  br i1 %was_space.0.off0206.i, label %if.then32.i, label %if.else.i.if.end42thread-pre-split.i_crit_edge

if.else.i.if.end42thread-pre-split.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42thread-pre-split.i

if.then32.i:                                      ; preds = %if.else.i
  %call33.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.45, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.then32.i.if.then30_crit_edge

if.then32.i.if.then30_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30

if.end36.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #20
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %2, align 4
  %inc38.i = add i32 %argc.1, 1
  %arrayidx39.i = getelementptr i32, ptr %argv.0, i32 %argc.1
  %145 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx39.i, align 4
  br label %if.end42thread-pre-split.i

if.end42thread-pre-split.i:                       ; preds = %if.end36.i, %if.else.i.if.end42thread-pre-split.i_crit_edge
  %argc.2 = phi i32 [ %inc38.i, %if.end36.i ], [ %argc.1, %if.else.i.if.end42thread-pre-split.i_crit_edge ]
  %146 = ptrtoint ptr %pat_ptr.2205.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %.pr.i = load i8, ptr %pat_ptr.2205.i, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42thread-pre-split.i, %while.body.i347.preheader.if.end42.i_crit_edge
  %argc.3 = phi i32 [ %argc.2, %if.end42thread-pre-split.i ], [ %argc.1, %while.body.i347.preheader.if.end42.i_crit_edge ]
  %pat_ptr.2205211.i = phi ptr [ %pat_ptr.2205.i, %if.end42thread-pre-split.i ], [ %pat_ptr.2.ph.i, %while.body.i347.preheader.if.end42.i_crit_edge ]
  %147 = phi i8 [ %.pr.i, %if.end42thread-pre-split.i ], [ %134, %while.body.i347.preheader.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %147)
  %cmp44.not.i = icmp eq i8 %147, 37
  br i1 %cmp44.not.i, label %if.else50.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv43.i = zext i8 %147 to i32
  %incdec.ptr47.i = getelementptr i8, ptr %pat_ptr.2205211.i, i32 1
  %call49.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.45, i32 noundef %conv43.i) #18
  br label %if.end107.i

if.else50.i:                                      ; preds = %if.end42.i
  %incdec.ptr51.i = getelementptr i8, ptr %pat_ptr.2205211.i, i32 1
  %148 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %incdec.ptr51.i, align 1
  %150 = zext i8 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i8 %149, label %if.else50.i.sw.epilog.i_crit_edge [
    i8 0, label %if.else50.i.out.i_crit_edge
    i8 37, label %sw.bb53.i
    i8 112, label %sw.bb55.i
    i8 80, label %sw.bb60.i
    i8 105, label %sw.bb65.i
    i8 73, label %sw.bb70.i
    i8 117, label %sw.bb75.i
    i8 103, label %sw.bb78.i
    i8 100, label %sw.bb82.i
    i8 115, label %sw.bb85.i
    i8 116, label %sw.bb87.i
    i8 104, label %sw.bb91.i
    i8 101, label %sw.bb94.i
    i8 102, label %sw.bb99.i
    i8 69, label %sw.bb101.i
    i8 99, label %sw.bb103.i
  ]

if.else50.i.out.i_crit_edge:                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.else50.i.sw.epilog.i_crit_edge:                ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %call54.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.45, i32 noundef 37) #18
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %151 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task.i343, align 8
  %call.i183.i = call i32 @__task_pid_nr_ns(ptr noundef %152, i32 noundef 1, ptr noundef null) #18
  %call59.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %call.i183.i) #18
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %153 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task.i343, align 8
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 69
  %155 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tgid.i.i, align 4
  %call64.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %156) #18
  br label %sw.epilog.i

sw.bb65.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %157 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task.i343, align 8
  %call.i184.i = call i32 @__task_pid_nr_ns(ptr noundef %158, i32 noundef 0, ptr noundef null) #18
  %call69.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %call.i184.i) #18
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %159 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %task.i343, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 68
  %161 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pid.i.i, align 8
  %call74.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %162) #18
  br label %sw.epilog.i

sw.bb75.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %163 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.unpack180.i = load i32, ptr %uid.i, align 4
  %164 = insertvalue [1 x i32] undef, i32 %.unpack180.i, 0
  %call76.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %164) #18
  %call77.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.47, i32 noundef %call76.i) #18
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %165 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %.unpack.i = load i32, ptr %gid.i, align 4
  %166 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call80.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %166) #18
  %call81.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.47, i32 noundef %call80.i) #18
  br label %sw.epilog.i

sw.bb82.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %167 = ptrtoint ptr %mm_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mm_flags, align 8
  %and.i185.i = and i32 %168, 3
  %call84.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %and.i185.i) #18
  br label %sw.epilog.i

sw.bb85.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %169 = ptrtoint ptr %cprm to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cprm, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %call86.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.46, i32 noundef %172) #18
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %call88.i = call i64 @ktime_get_real_seconds() #18
  %call89.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.48, i64 noundef %call88.i) #18
  br label %sw.epilog.i

sw.bb91.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @down_read(ptr noundef nonnull @uts_sem) #18
  %173 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i348 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i348 to ptr
  %task.i.i349 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task.i.i349 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task.i.i349, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 110
  %177 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %uts_ns.i.i, align 4
  %nodename.i = getelementptr inbounds %struct.new_utsname, ptr %180, i32 0, i32 1
  %call93.i = call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.49, ptr noundef %nodename.i) #18
  call void @up_read(ptr noundef nonnull @uts_sem) #18
  br label %sw.epilog.i

sw.bb94.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %181 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i343, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 101
  %call98.i = call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.49, ptr noundef %comm.i) #18
  br label %sw.epilog.i

sw.bb99.i:                                        ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %call100.i = call fastcc i32 @cn_print_exe_file(ptr noundef nonnull %cn, i1 noundef zeroext true) #18
  br label %sw.epilog.i

sw.bb101.i:                                       ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %call102.i = call fastcc i32 @cn_print_exe_file(ptr noundef nonnull %cn, i1 noundef zeroext false) #18
  br label %sw.epilog.i

sw.bb103.i:                                       ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #20
  %183 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i186.i = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i186.i to ptr
  %task.i187.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %task.i187.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %task.i187.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %186, i32 0, i32 111
  %187 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %188, i32 0, i32 51, i32 4
  %189 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %call105.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.50, i32 noundef %190) #18
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb103.i, %sw.bb101.i, %sw.bb99.i, %sw.bb94.i, %sw.bb91.i, %sw.bb87.i, %sw.bb85.i, %sw.bb82.i, %sw.bb78.i, %sw.bb75.i, %sw.bb70.i, %sw.bb65.i, %sw.bb60.i, %sw.bb55.i, %sw.bb53.i, %if.else50.i.sw.epilog.i_crit_edge
  %pid_in_pattern.1.i = phi i32 [ %pid_in_pattern.0.ph.i, %if.else50.i.sw.epilog.i_crit_edge ], [ %pid_in_pattern.0.ph.i, %sw.bb103.i ], [ %pid_in_pattern.0.ph.i, %sw.bb101.i ], [ %pid_in_pattern.0.ph.i, %sw.bb99.i ], [ %pid_in_pattern.0.ph.i, %sw.bb94.i ], [ %pid_in_pattern.0.ph.i, %sw.bb91.i ], [ %pid_in_pattern.0.ph.i, %sw.bb87.i ], [ %pid_in_pattern.0.ph.i, %sw.bb85.i ], [ %pid_in_pattern.0.ph.i, %sw.bb82.i ], [ %pid_in_pattern.0.ph.i, %sw.bb78.i ], [ %pid_in_pattern.0.ph.i, %sw.bb75.i ], [ %pid_in_pattern.0.ph.i, %sw.bb70.i ], [ %pid_in_pattern.0.ph.i, %sw.bb65.i ], [ %pid_in_pattern.0.ph.i, %sw.bb60.i ], [ 1, %sw.bb55.i ], [ %pid_in_pattern.0.ph.i, %sw.bb53.i ]
  %err.2.i = phi i32 [ 0, %if.else50.i.sw.epilog.i_crit_edge ], [ %call105.i, %sw.bb103.i ], [ %call102.i, %sw.bb101.i ], [ %call100.i, %sw.bb99.i ], [ %call98.i, %sw.bb94.i ], [ %call93.i, %sw.bb91.i ], [ %call89.i, %sw.bb87.i ], [ %call86.i, %sw.bb85.i ], [ %call84.i, %sw.bb82.i ], [ %call81.i, %sw.bb78.i ], [ %call77.i, %sw.bb75.i ], [ %call74.i, %sw.bb70.i ], [ %call69.i, %sw.bb65.i ], [ %call64.i, %sw.bb60.i ], [ %call59.i, %sw.bb55.i ], [ %call54.i, %sw.bb53.i ]
  %incdec.ptr106.i = getelementptr i8, ptr %pat_ptr.2205211.i, i32 2
  br label %if.end107.i

if.end107.i:                                      ; preds = %sw.epilog.i, %if.then46.i
  %pat_ptr.3.i = phi ptr [ %incdec.ptr47.i, %if.then46.i ], [ %incdec.ptr106.i, %sw.epilog.i ]
  %pid_in_pattern.2.i = phi i32 [ %pid_in_pattern.0.ph.i, %if.then46.i ], [ %pid_in_pattern.1.i, %sw.epilog.i ]
  %err.3.i = phi i32 [ %call49.i, %if.then46.i ], [ %err.2.i, %sw.epilog.i ]
  %tobool108.not.i = icmp eq i32 %err.3.i, 0
  br i1 %tobool108.not.i, label %if.end107.i.while.cond.outer.i_crit_edge, label %if.end107.i.if.then30_crit_edge

if.end107.i.if.then30_crit_edge:                  ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30

if.end107.i.while.cond.outer.i_crit_edge:         ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer.i

out.i:                                            ; preds = %if.else50.i.out.i_crit_edge, %while.cond.outer.i.out.i_crit_edge
  %argc.4 = phi i32 [ %argc.1, %while.cond.outer.i.out.i_crit_edge ], [ %argc.3, %if.else50.i.out.i_crit_edge ]
  %cmp.not.i = xor i1 %cmp.i344, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid_in_pattern.0.ph.i)
  %tobool112.not.i = icmp eq i32 %pid_in_pattern.0.ph.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %tobool112.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true113.i, label %out.i.format_corename.exit_crit_edge

out.i.format_corename.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_corename.exit

land.lhs.true113.i:                               ; preds = %out.i
  %191 = load i32, ptr @core_uses_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool114.not.i = icmp eq i32 %191, 0
  br i1 %tobool114.not.i, label %land.lhs.true113.i.format_corename.exit_crit_edge, label %if.then115.i

land.lhs.true113.i.format_corename.exit_crit_edge: ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_corename.exit

if.then115.i:                                     ; preds = %land.lhs.true113.i
  %192 = ptrtoint ptr %task.i343 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task.i343, align 8
  %call.i188.i = call i32 @__task_pid_nr_ns(ptr noundef %193, i32 noundef 1, ptr noundef null) #18
  %call119.i = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %cn, ptr noundef nonnull @.str.51, i32 noundef %call.i188.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.then115.i.format_corename.exit_crit_edge, label %if.then115.i.if.then30_crit_edge

if.then115.i.if.then30_crit_edge:                 ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then30

if.then115.i.format_corename.exit_crit_edge:      ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %format_corename.exit

format_corename.exit:                             ; preds = %if.then115.i.format_corename.exit_crit_edge, %land.lhs.true113.i.format_corename.exit_crit_edge, %out.i.format_corename.exit_crit_edge
  br i1 %cmp.i344, label %format_corename.exit.if.end39_crit_edge, label %if.else

format_corename.exit.if.end39_crit_edge:          ; preds = %format_corename.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then30:                                        ; preds = %if.then115.i.if.then30_crit_edge, %if.end107.i.if.then30_crit_edge, %if.then32.i.if.then30_crit_edge
  %argc.6.ph = phi i32 [ %argc.4, %if.then115.i.if.then30_crit_edge ], [ %argc.3, %if.end107.i.if.then30_crit_edge ], [ %argc.1, %if.then32.i.if.then30_crit_edge ]
  %retval.1.i.ph = phi i32 [ %call119.i, %if.then115.i.if.then30_crit_edge ], [ %err.3.i, %if.end107.i.if.then30_crit_edge ], [ %call33.i, %if.then32.i.if.then30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.ph)
  %cmp31 = icmp slt i32 %retval.1.i.ph, 0
  br i1 %cmp31, label %if.then30.do.end_crit_edge, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then30.do.end_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %if.then30.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %if.then6.i.do.end_crit_edge, %if.end26.do.end_crit_edge
  %argv.1.ph417 = phi ptr [ %argv.0, %if.then30.do.end_crit_edge ], [ null, %if.end26.do.end_crit_edge ], [ null, %if.then6.i.do.end_crit_edge ], [ %call7.i.i.i, %cleanup.i.do.end_crit_edge ]
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #23
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #23
  br label %fail_unlock

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %format_corename.exit.if.end39_crit_edge, %if.then24.i.if.end39_crit_edge
  %argc.6391407 = phi i32 [ %argc.6.ph, %if.then30.if.end39_crit_edge ], [ %argc.4, %format_corename.exit.if.end39_crit_edge ], [ %argc.1, %if.then24.i.if.end39_crit_edge ]
  %194 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp41 = icmp eq i32 %195, 1
  br i1 %cmp41, label %do.end45, label %if.end58

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  %196 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %task, align 8
  %call.i = call i32 @__task_pid_nr_ns(ptr noundef %197, i32 noundef 1, ptr noundef null) #18
  %198 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 101
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call.i, ptr noundef %comm) #23
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #23
  br label %fail_unlock

if.end58:                                         ; preds = %if.end39
  %200 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %limit, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @do_coredump.core_dump_count, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !149
  call void @llvm.prefetch.p0(ptr nonnull @do_coredump.core_dump_count, i32 1, i32 3, i32 1) #18
  %201 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @do_coredump.core_dump_count, ptr nonnull @do_coredump.core_dump_count, i32 1, ptr nonnull elementtype(i32) @do_coredump.core_dump_count) #18, !srcloc !150
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %201, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !151
  %202 = load i32, ptr @core_pipe_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool61.not = icmp ne i32 %202, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %asmresult.i.i.i.i)
  %cmp62 = icmp ult i32 %202, %asmresult.i.i.i.i
  %or.cond = select i1 %tobool61.not, i1 %cmp62, i1 false
  br i1 %or.cond, label %do.end66, label %if.end81

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %203 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task, align 8
  %call.i350 = call i32 @__task_pid_nr_ns(ptr noundef %204, i32 noundef 1, ptr noundef null) #18
  %205 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %task, align 8
  %comm73 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 101
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call.i350, ptr noundef %comm73) #23
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #23
  br label %if.then282

if.end81:                                         ; preds = %if.end58
  %add = add i32 %argc.6391407, 1
  %207 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #18
  %208 = extractvalue { i32, i1 } %207, 1
  br i1 %208, label %if.end81.do.end87_crit_edge, label %if.end7.i, !prof !148

if.end81.do.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end87

if.end7.i:                                        ; preds = %if.end81
  %209 = extractvalue { i32, i1 } %207, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %209, i32 noundef 3264) #24
  %tobool83.not = icmp eq ptr %call8.i, null
  br i1 %tobool83.not, label %if.end7.i.do.end87_crit_edge, label %for.cond.preheader

if.end7.i.do.end87_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end87

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc.6391407)
  %cmp91450 = icmp sgt i32 %argc.6391407, 0
  br i1 %cmp91450, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %210 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cn, align 4
  br label %for.body

do.end87:                                         ; preds = %if.end7.i.do.end87_crit_edge, %if.end81.do.end87_crit_edge
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1) #23
  br label %if.then282

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %argi.0451 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %argv.0, i32 %argi.0451
  %212 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx, align 4
  %add.ptr92 = getelementptr i8, ptr %211, i32 %213
  %arrayidx93 = getelementptr ptr, ptr %call8.i, i32 %argi.0451
  %214 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %add.ptr92, ptr %arrayidx93, align 4
  %inc = add nuw nsw i32 %argi.0451, 1
  %exitcond.not = icmp eq i32 %inc, %argc.6391407
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %argi.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %argc.6391407, %for.body.for.end_crit_edge ]
  %arrayidx94 = getelementptr ptr, ptr %call8.i, i32 %argi.0.lcssa
  %215 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %arrayidx94, align 4
  %216 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %call8.i, align 128
  %call96 = call ptr @call_usermodehelper_setup(ptr noundef %217, ptr noundef nonnull %call8.i, ptr noundef null, i32 noundef 3264, ptr noundef nonnull @umh_pipe_setup, ptr noundef null, ptr noundef nonnull %cprm) #18
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %do.end105.critedge, label %if.then98

if.then98:                                        ; preds = %for.end
  %call99 = call i32 @call_usermodehelper_exec(ptr noundef nonnull %call96, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %phi.cmp = icmp eq i32 %call99, 0
  call void @kfree(ptr noundef nonnull %call8.i) #18
  br i1 %phi.cmp, label %if.then98.if.end240_crit_edge, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then98.if.end240_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end240

do.end105.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call8.i) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end105.critedge, %if.then98.cleanup_crit_edge
  %218 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cn, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %219) #23
  br label %close_fail

if.else:                                          ; preds = %format_corename.exit
  %220 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %limit, align 4
  %min_coredump = getelementptr inbounds %struct.linux_binfmt, ptr %35, i32 0, i32 5
  %222 = ptrtoint ptr %min_coredump to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %min_coredump, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %223)
  %cmp114 = icmp ult i32 %221, %223
  br i1 %cmp114, label %if.else.fail_unlock_crit_edge, label %if.end116

if.else.fail_unlock_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_unlock

if.end116:                                        ; preds = %if.else
  %224 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cn, align 4
  br i1 %cmp, label %land.lhs.true118, label %if.then143.critedge

land.lhs.true118:                                 ; preds = %if.end116
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %225, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %227)
  %cmp121.not = icmp eq i8 %227, 47
  br i1 %cmp121.not, label %if.then149.critedge, label %do.end126

do.end126:                                        ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #20
  %228 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task, align 8
  %call.i358 = call i32 @__task_pid_nr_ns(ptr noundef %229, i32 noundef 1, ptr noundef null) #18
  %230 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %task, align 8
  %comm133 = getelementptr inbounds %struct.task_struct, ptr %231, i32 0, i32 101
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call.i358, ptr noundef %comm133) #23
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #23
  br label %fail_unlock

if.then143.critedge:                              ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #20
  %call145 = call ptr @getname_kernel(ptr noundef %225) #18
  %call146 = call i32 @do_unlinkat(i32 noundef -100, ptr noundef %call145) #18
  %232 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cn, align 4
  %call155 = call ptr @filp_open(ptr noundef %233, i32 noundef 164034, i16 noundef zeroext 384) #18
  %234 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call155, ptr %file, align 8
  br label %if.end157

if.then149.critedge:                              ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #18
  %235 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 4, !annotation !145
  %236 = getelementptr inbounds %struct.path, ptr %root, i32 0, i32 1
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr inttoptr (i32 -1 to ptr), ptr %236, align 4, !annotation !145
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 127)) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 128
  call fastcc void @get_fs_root(ptr noundef %238, ptr noundef nonnull %root)
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 127)) #18
  %239 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cn, align 4
  %call151 = call ptr @file_open_root(ptr noundef nonnull %root, ptr noundef %240, i32 noundef 164034, i16 noundef zeroext 384) #18
  %241 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call151, ptr %file, align 8
  call void @path_put(ptr noundef nonnull %root) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #18
  %242 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %242)
  %.pr = load ptr, ptr %file, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then149.critedge, %if.then143.critedge
  %243 = phi ptr [ %call155, %if.then143.critedge ], [ %.pr, %if.then149.critedge ]
  %cmp.i359 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i359, label %if.end157.fail_unlock_crit_edge, label %if.end161

if.end157.fail_unlock_crit_edge:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_unlock

if.end161:                                        ; preds = %if.end157
  %f_inode.i = getelementptr inbounds %struct.file, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %f_inode.i, align 8
  %246 = getelementptr inbounds %struct.inode, ptr %245, i32 0, i32 12
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp164 = icmp ugt i32 %248, 1
  br i1 %cmp164, label %if.end161.close_fail_crit_edge, label %if.end167

if.end161.close_fail_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.end167:                                        ; preds = %if.end161
  %dentry = getelementptr inbounds %struct.file, ptr %243, i32 0, i32 1, i32 1
  %249 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dentry, align 4
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %250, i32 0, i32 2, i32 1
  %251 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i360.not = icmp eq ptr %252, null
  br i1 %tobool.not.i.i360.not, label %if.end167.close_fail_crit_edge, label %if.end172

if.end167.close_fail_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.end172:                                        ; preds = %if.end167
  %253 = ptrtoint ptr %245 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %245, align 8
  %255 = and i16 %254, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %255)
  %cmp174 = icmp eq i16 %255, -32768
  br i1 %cmp174, label %if.end177, label %if.end172.close_fail_crit_edge

if.end172.close_fail_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.end177:                                        ; preds = %if.end172
  %f_path.i = getelementptr inbounds %struct.file, ptr %243, i32 0, i32 1
  %256 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %257, i32 0, i32 3
  %258 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !152
  %call180 = call fastcc i32 @i_uid_into_mnt(ptr noundef %259, ptr noundef %245)
  %260 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %task, align 8
  %cred188 = getelementptr inbounds %struct.task_struct, ptr %261, i32 0, i32 99
  %262 = ptrtoint ptr %cred188 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cred188, align 16
  %fsuid189 = getelementptr inbounds %struct.cred, ptr %263, i32 0, i32 10
  %264 = ptrtoint ptr %fsuid189 to i32
  call void @__asan_load4_noabort(i32 %264)
  %agg.tmp181.sroa.0.0.copyload = load i32, ptr %fsuid189, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call180, i32 %agg.tmp181.sroa.0.0.copyload)
  %cmp.i361 = icmp eq i32 %call180, %agg.tmp181.sroa.0.0.copyload
  br i1 %cmp.i361, label %if.end204, label %if.then193

if.then193:                                       ; preds = %if.end177
  %call194 = call i32 @___ratelimit(ptr noundef nonnull @do_coredump._rs, ptr noundef nonnull @.str.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then193.close_fail_crit_edge, label %do.end199

if.then193.close_fail_crit_edge:                  ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

do.end199:                                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #20
  %265 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cn, align 4
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %266) #23
  br label %close_fail

if.end204:                                        ; preds = %if.end177
  %267 = ptrtoint ptr %245 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %245, align 8
  %269 = and i16 %268, 447
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %269)
  %cmp208.not = icmp eq i16 %269, 384
  br i1 %cmp208.not, label %if.end221, label %if.then210

if.then210:                                       ; preds = %if.end204
  %call211 = call i32 @___ratelimit(ptr noundef nonnull @do_coredump._rs.32, ptr noundef nonnull @.str.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.then210.close_fail_crit_edge, label %do.end216

if.then210.close_fail_crit_edge:                  ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

do.end216:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #20
  %270 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cn, align 4
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %271) #23
  br label %close_fail

if.end221:                                        ; preds = %if.end204
  %272 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %file, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %273, i32 0, i32 8
  %274 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %f_mode, align 8
  %and223 = and i32 %275, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %close_fail.thread, label %if.end226

if.end226:                                        ; preds = %if.end221
  %dentry229 = getelementptr inbounds %struct.file, ptr %273, i32 0, i32 1, i32 1
  %276 = ptrtoint ptr %dentry229 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dentry229, align 4
  %call231 = call i32 @do_truncate(ptr noundef %259, ptr noundef %277, i64 noundef 0, i32 noundef 0, ptr noundef %273) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end226.if.end240_crit_edge, label %if.end226.close_fail_crit_edge

if.end226.close_fail_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.end226.if.end240_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end240

if.end240:                                        ; preds = %if.end226.if.end240_crit_edge, %if.then98.if.end240_crit_edge
  %tobool29.not393 = phi i1 [ true, %if.end226.if.end240_crit_edge ], [ false, %if.then98.if.end240_crit_edge ]
  %call241 = call i32 @unshare_files() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %if.end240.close_fail_crit_edge

if.end240.close_fail_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.end244:                                        ; preds = %if.end240
  %call245 = call fastcc zeroext i1 @dump_interrupted()
  br i1 %call245, label %if.end244.if.end268_crit_edge, label %if.then246

if.end244.if.end268_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end268

if.then246:                                       ; preds = %if.end244
  %278 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %file, align 8
  %tobool248.not = icmp eq ptr %279, null
  br i1 %tobool248.not, label %do.end252, label %if.end256

do.end252:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #20
  %280 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cn, align 4
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %281) #23
  br label %close_fail

if.end256:                                        ; preds = %if.then246
  call fastcc void @file_start_write(ptr noundef nonnull %279)
  %282 = ptrtoint ptr %core_dump to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %core_dump, align 4
  %call259 = call i32 %283(ptr noundef nonnull %cprm) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260 = icmp ne i32 %call259, 0
  %frombool = zext i1 %tobool260 to i8
  %284 = ptrtoint ptr %to_skip to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %to_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %285)
  %tobool262.not = icmp eq i64 %285, 0
  br i1 %tobool262.not, label %if.end256.if.end266_crit_edge, label %if.then263

if.end256.if.end266_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end266

if.then263:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #20
  %dec = add i64 %285, -1
  %286 = ptrtoint ptr %to_skip to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %dec, ptr %to_skip, align 8
  %call265 = call i32 @dump_emit(ptr noundef nonnull %cprm, ptr noundef nonnull @.str.39, i32 noundef 1)
  br label %if.end266

if.end266:                                        ; preds = %if.then263, %if.end256.if.end266_crit_edge
  %287 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %file, align 8
  call fastcc void @file_end_write(ptr noundef %288)
  br label %if.end268

if.end268:                                        ; preds = %if.end266, %if.end244.if.end268_crit_edge
  %core_dumped.0 = phi i8 [ 0, %if.end244.if.end268_crit_edge ], [ %frombool, %if.end266 ]
  br i1 %tobool29.not393, label %if.end268.close_fail_crit_edge, label %land.lhs.true270

if.end268.close_fail_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

land.lhs.true270:                                 ; preds = %if.end268
  %289 = load i32, ptr @core_pipe_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool271.not = icmp eq i32 %289, 0
  br i1 %tobool271.not, label %land.lhs.true270.close_fail_crit_edge, label %if.then272

land.lhs.true270.close_fail_crit_edge:            ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_fail

if.then272:                                       ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #20
  %290 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %file, align 8
  call fastcc void @wait_for_dump_helpers(ptr noundef %291)
  br label %close_fail

close_fail:                                       ; preds = %if.then272, %land.lhs.true270.close_fail_crit_edge, %if.end268.close_fail_crit_edge, %do.end252, %if.end240.close_fail_crit_edge, %if.end226.close_fail_crit_edge, %do.end216, %if.then210.close_fail_crit_edge, %do.end199, %if.then193.close_fail_crit_edge, %if.end172.close_fail_crit_edge, %if.end167.close_fail_crit_edge, %if.end161.close_fail_crit_edge, %cleanup
  %tobool29.not396.ph = phi i1 [ true, %if.end226.close_fail_crit_edge ], [ true, %if.then210.close_fail_crit_edge ], [ true, %do.end216 ], [ true, %if.then193.close_fail_crit_edge ], [ true, %do.end199 ], [ true, %if.end172.close_fail_crit_edge ], [ true, %if.end167.close_fail_crit_edge ], [ true, %if.end161.close_fail_crit_edge ], [ %tobool29.not393, %do.end252 ], [ true, %if.end268.close_fail_crit_edge ], [ false, %land.lhs.true270.close_fail_crit_edge ], [ false, %if.then272 ], [ %tobool29.not393, %if.end240.close_fail_crit_edge ], [ false, %cleanup ]
  %core_dumped.1.ph = phi i8 [ 0, %if.end226.close_fail_crit_edge ], [ 0, %if.then210.close_fail_crit_edge ], [ 0, %do.end216 ], [ 0, %if.then193.close_fail_crit_edge ], [ 0, %do.end199 ], [ 0, %if.end172.close_fail_crit_edge ], [ 0, %if.end167.close_fail_crit_edge ], [ 0, %if.end161.close_fail_crit_edge ], [ 0, %do.end252 ], [ %core_dumped.0, %if.end268.close_fail_crit_edge ], [ %core_dumped.0, %land.lhs.true270.close_fail_crit_edge ], [ %core_dumped.0, %if.then272 ], [ 0, %if.end240.close_fail_crit_edge ], [ 0, %cleanup ]
  %292 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %292)
  %.pr440 = load ptr, ptr %file, align 8
  %tobool276.not = icmp eq ptr %.pr440, null
  br i1 %tobool276.not, label %fail_dropcount, label %if.then277

close_fail.thread:                                ; preds = %if.end221
  %tobool276.not464 = icmp eq ptr %273, null
  br i1 %tobool276.not464, label %close_fail.thread.fail_unlock_crit_edge, label %if.then277.thread

close_fail.thread.fail_unlock_crit_edge:          ; preds = %close_fail.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_unlock

if.then277.thread:                                ; preds = %close_fail.thread
  call void @__sanitizer_cov_trace_pc() #20
  %call279471 = call i32 @filp_close(ptr noundef nonnull %273, ptr noundef null) #18
  br label %fail_unlock

if.then277:                                       ; preds = %close_fail
  %call279 = call i32 @filp_close(ptr noundef nonnull %.pr440, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %core_dumped.1.ph)
  %extract.t336437 = icmp ne i8 %core_dumped.1.ph, 0
  br i1 %tobool29.not396.ph, label %if.then277.fail_unlock_crit_edge, label %if.then277.if.then282_crit_edge

if.then277.if.then282_crit_edge:                  ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then282

if.then277.fail_unlock_crit_edge:                 ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_unlock

fail_dropcount:                                   ; preds = %close_fail
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %core_dumped.1.ph)
  %extract.t336 = icmp ne i8 %core_dumped.1.ph, 0
  br i1 %tobool29.not396.ph, label %fail_dropcount.fail_unlock_crit_edge, label %fail_dropcount.if.then282_crit_edge

fail_dropcount.if.then282_crit_edge:              ; preds = %fail_dropcount
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then282

fail_dropcount.fail_unlock_crit_edge:             ; preds = %fail_dropcount
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_unlock

if.then282:                                       ; preds = %fail_dropcount.if.then282_crit_edge, %if.then277.if.then282_crit_edge, %do.end87, %do.end66
  %extract.t336439 = phi i1 [ %extract.t336437, %if.then277.if.then282_crit_edge ], [ %extract.t336, %fail_dropcount.if.then282_crit_edge ], [ false, %do.end66 ], [ false, %do.end87 ]
  %call.i.i337 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @do_coredump.core_dump_count, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr nonnull @do_coredump.core_dump_count, i32 1, i32 3, i32 1) #18
  %293 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @do_coredump.core_dump_count, ptr nonnull @do_coredump.core_dump_count, i32 1, ptr nonnull elementtype(i32) @do_coredump.core_dump_count) #18, !srcloc !153
  br label %fail_unlock

fail_unlock:                                      ; preds = %if.then282, %fail_dropcount.fail_unlock_crit_edge, %if.then277.fail_unlock_crit_edge, %if.then277.thread, %close_fail.thread.fail_unlock_crit_edge, %if.end157.fail_unlock_crit_edge, %do.end126, %if.else.fail_unlock_crit_edge, %do.end45, %do.end
  %argv.1386 = phi ptr [ %argv.0, %if.then282 ], [ %argv.0, %fail_dropcount.fail_unlock_crit_edge ], [ %argv.0, %if.then277.fail_unlock_crit_edge ], [ %argv.0, %do.end45 ], [ %argv.1.ph417, %do.end ], [ %argv.0, %do.end126 ], [ %argv.0, %if.else.fail_unlock_crit_edge ], [ %argv.0, %if.end157.fail_unlock_crit_edge ], [ %argv.0, %if.then277.thread ], [ %argv.0, %close_fail.thread.fail_unlock_crit_edge ]
  %core_dumped.3.off0 = phi i1 [ %extract.t336439, %if.then282 ], [ %extract.t336, %fail_dropcount.fail_unlock_crit_edge ], [ %extract.t336437, %if.then277.fail_unlock_crit_edge ], [ false, %do.end45 ], [ false, %do.end ], [ false, %do.end126 ], [ false, %if.else.fail_unlock_crit_edge ], [ false, %if.end157.fail_unlock_crit_edge ], [ false, %if.then277.thread ], [ false, %close_fail.thread.fail_unlock_crit_edge ]
  call void @kfree(ptr noundef %argv.1386) #18
  %294 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cn, align 4
  call void @kfree(ptr noundef %295) #18
  %296 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i362 = and i32 %296, -16384
  %297 = inttoptr i32 %and.i.i362 to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %297, i32 0, i32 2
  %298 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %task1.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %299, i32 0, i32 112
  %300 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %301) #18
  br i1 %core_dumped.3.off0, label %land.lhs.true.i, label %fail_unlock.if.end.i365_crit_edge

fail_unlock.if.end.i365_crit_edge:                ; preds = %fail_unlock
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i365

land.lhs.true.i:                                  ; preds = %fail_unlock
  %302 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %task1.i, align 8
  %signal.i.i363 = getelementptr inbounds %struct.task_struct, ptr %303, i32 0, i32 116, i32 1
  %304 = ptrtoint ptr %signal.i.i363 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %signal.i.i363, align 4
  %306 = and i32 %305, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool5.not.i = icmp eq i32 %306, 0
  br i1 %tobool5.not.i, label %if.then.i364, label %land.lhs.true.i.if.end.i365_crit_edge

land.lhs.true.i.if.end.i365_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i365

if.then.i364:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %303, i32 0, i32 111
  %307 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %signal.i, align 16
  %group_exit_code.i = getelementptr inbounds %struct.signal_struct, ptr %308, i32 0, i32 8
  %309 = ptrtoint ptr %group_exit_code.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %group_exit_code.i, align 8
  %or.i = or i32 %310, 128
  store i32 %or.i, ptr %group_exit_code.i, align 8
  br label %if.end.i365

if.end.i365:                                      ; preds = %if.then.i364, %land.lhs.true.i.if.end.i365_crit_edge, %fail_unlock.if.end.i365_crit_edge
  %311 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %task1.i, align 8
  %signal10.i = getelementptr inbounds %struct.task_struct, ptr %312, i32 0, i32 111
  %313 = ptrtoint ptr %signal10.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %signal10.i, align 16
  %core_state.i = getelementptr inbounds %struct.signal_struct, ptr %314, i32 0, i32 13
  %315 = ptrtoint ptr %core_state.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %core_state.i, align 4
  %next11.i = getelementptr inbounds %struct.core_state, ptr %316, i32 0, i32 1, i32 1
  %317 = ptrtoint ptr %next11.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %next11.i, align 4
  store ptr null, ptr %core_state.i, align 4
  %319 = load ptr, ptr %task1.i, align 8
  %sighand18.i = getelementptr inbounds %struct.task_struct, ptr %319, i32 0, i32 112
  %320 = ptrtoint ptr %sighand18.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %sighand18.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %321) #18
  %cmp.not29.i = icmp eq ptr %318, null
  br i1 %cmp.not29.i, label %if.end.i365.coredump_finish.exit_crit_edge, label %if.end.i365.while.body.i367_crit_edge

if.end.i365.while.body.i367_crit_edge:            ; preds = %if.end.i365
  br label %while.body.i367

if.end.i365.coredump_finish.exit_crit_edge:       ; preds = %if.end.i365
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_finish.exit

while.body.i367:                                  ; preds = %while.body.i367.while.body.i367_crit_edge, %if.end.i365.while.body.i367_crit_edge
  %next.030.i = phi ptr [ %323, %while.body.i367.while.body.i367_crit_edge ], [ %318, %if.end.i365.while.body.i367_crit_edge ]
  %next20.i = getelementptr inbounds %struct.core_thread, ptr %next.030.i, i32 0, i32 1
  %322 = ptrtoint ptr %next20.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %next20.i, align 4
  %324 = ptrtoint ptr %next.030.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %next.030.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !154
  %326 = ptrtoint ptr %next.030.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr null, ptr %next.030.i, align 4
  %call26.i = call i32 @wake_up_process(ptr noundef %325) #18
  %cmp.not.i366 = icmp eq ptr %323, null
  br i1 %cmp.not.i366, label %while.body.i367.coredump_finish.exit_crit_edge, label %while.body.i367.while.body.i367_crit_edge

while.body.i367.while.body.i367_crit_edge:        ; preds = %while.body.i367
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i367

while.body.i367.coredump_finish.exit_crit_edge:   ; preds = %while.body.i367
  call void @__sanitizer_cov_trace_pc() #20
  br label %coredump_finish.exit

coredump_finish.exit:                             ; preds = %while.body.i367.coredump_finish.exit_crit_edge, %if.end.i365.coredump_finish.exit_crit_edge
  call void @revert_creds(ptr noundef %call27) #18
  br label %do.body.i

do.body.i:                                        ; preds = %coredump_finish.exit, %coredump_wait.exit.do.body.i_crit_edge, %coredump_wait.exit.thread
  %call.i.i368 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call14) #18
  br i1 %call.i.i368, label %if.then.i.i369, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !148

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__validate_creds.exit.i

if.then.i.i369:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__invalid_creds(ptr noundef nonnull %call14, ptr noundef nonnull @.str.57, i32 noundef 286) #18
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i369, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i370 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call14, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %call14, i32 1, i32 3, i32 1) #18
  %327 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call14, ptr nonnull %call14, i32 1, ptr nonnull elementtype(i32) %call14) #18, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %327, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i371 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i371, label %if.then1.i, label %__validate_creds.exit.i.cleanup286_crit_edge

__validate_creds.exit.i.cleanup286_crit_edge:     ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup286

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__put_cred(ptr noundef nonnull %call14) #18
  br label %cleanup286

cleanup286:                                       ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup286_crit_edge, %if.end13.cleanup286_crit_edge, %lor.lhs.false.cleanup286_crit_edge, %entry.cleanup286_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cprm) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cn) #18
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %core_state) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umh_pipe_setup(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %new) #0 align 64 {
entry:
  %files = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %files) #18
  %0 = ptrtoint ptr %files to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %files, align 4, !annotation !145
  %1 = getelementptr inbounds [2 x ptr], ptr %files, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !145
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call = call i32 @create_pipe_files(ptr noundef nonnull %files, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %file = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %file, align 8
  %8 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %files, align 4
  %call2 = call i32 @replace_fd(i32 noundef 0, ptr noundef %9, i32 noundef 0) #18
  %10 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %files, align 4
  call void @fput(ptr noundef %11) #18
  %12 = call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal, align 16
  %arrayidx5 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 51, i32 4
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx5, align 8
  %.compoundliteral.sroa.2.0.arrayidx5.sroa_idx = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 51, i32 4, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx5.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %.compoundliteral.sroa.2.0.arrayidx5.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %files) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unlinkat(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_fs_root(ptr noundef %fs, ptr noundef %root) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #18
  %root1 = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 5
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %root1, align 4
  %2 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %root, align 4
  tail call void @path_get(ptr noundef %root) #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i_uid_into_mnt(ptr noundef %mnt_userns, ptr nocapture noundef readonly %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %i_uid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %cmp.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i = icmp eq ptr %3, %mnt_userns
  %spec.select.i.i = or i1 %cmp.i.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.mapped_kuid_fs.exit_crit_edge, label %if.end.i

entry.mapped_kuid_fs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mapped_kuid_fs.exit

if.end.i:                                         ; preds = %entry
  %cmp.i21.i = icmp eq ptr %3, @init_user_ns
  br i1 %cmp.i21.i, label %if.end.i.if.end7.i_crit_edge, label %if.else.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i = tail call i32 @from_kuid(ptr noundef %3, [1 x i32] %5) #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %uid.0.i = phi i32 [ %call6.i, %if.else.i ], [ %.unpack, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i)
  %cmp.i = icmp eq i32 %uid.0.i, -1
  br i1 %cmp.i, label %if.end7.i.mapped_kuid_fs.exit_crit_edge, label %if.end9.i

if.end7.i.mapped_kuid_fs.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mapped_kuid_fs.exit

if.end9.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  %call10.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i) #18
  br label %mapped_kuid_fs.exit

mapped_kuid_fs.exit:                              ; preds = %if.end9.i, %if.end7.i.mapped_kuid_fs.exit_crit_edge, %entry.mapped_kuid_fs.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ %call10.i, %if.end9.i ], [ -1, %if.end7.i.mapped_kuid_fs.exit_crit_edge ], [ %.unpack, %entry.mapped_kuid_fs.exit_crit_edge ]
  ret i32 %retval.sroa.0.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_truncate(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dump_interrupted() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %entry.lor.rhs_crit_edge, label %fatal_signal_pending.exit

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs

fatal_signal_pending.exit:                        ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.lor.rhs_crit_edge, label %fatal_signal_pending.exit.lor.end_crit_edge

fatal_signal_pending.exit.lor.end_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.end

fatal_signal_pending.exit.lor.rhs_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs

lor.rhs:                                          ; preds = %fatal_signal_pending.exit.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %11 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i5 = icmp eq i32 %11, 0
  br i1 %tobool.not.i5, label %lor.rhs.lor.end_crit_edge, label %if.end.i, !prof !147

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.end

if.end.i:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %3) #18
  br label %lor.end

lor.end:                                          ; preds = %if.end.i, %lor.rhs.lor.end_crit_edge, %fatal_signal_pending.exit.lor.end_crit_edge
  %12 = phi i1 [ true, %fatal_signal_pending.exit.lor.end_crit_edge ], [ %call4.i, %if.end.i ], [ false, %lor.rhs.lor.end_crit_edge ]
  ret i1 %12
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.54, i32 noundef 49) #18
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #18
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %8) #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !158
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 35, ptr noundef nonnull @.str.56) #18
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !147

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !159
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add21.i.i.i = add i32 %27, 1
  store i32 %add21.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !160
  %and.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !148

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #18, !srcloc !161
  br label %sb_start_write.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #18
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !162
  %29 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i58.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %return

return:                                           ; preds = %sb_start_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dump_emit(ptr nocapture noundef %cprm, ptr noundef %addr, i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %to_skip = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  %0 = ptrtoint ptr %to_skip to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %to_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %entry
  %file1.i = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 2
  %2 = ptrtoint ptr %file1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1.i, align 8
  %f_op.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op.i, align 4
  %llseek.i = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %llseek.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %llseek.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.not.i = icmp eq ptr %7, @no_llseek
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %if.then
  %conv = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv)
  %cmp1130.i = icmp ugt i32 %conv, 4096
  br i1 %cmp1130.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.__dump_skip.exit_crit_edge

while.cond.preheader.i.__dump_skip.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__dump_skip.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

if.then.i:                                        ; preds = %if.then
  %8 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.lor.rhs.i.i_crit_edge, label %fatal_signal_pending.exit.i.i

if.then.i.lor.rhs.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs.i.i

fatal_signal_pending.exit.i.i:                    ; preds = %if.then.i
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 116, i32 1
  %16 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signal.i.i.i.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %fatal_signal_pending.exit.i.i.lor.rhs.i.i_crit_edge, label %fatal_signal_pending.exit.i.i.return_crit_edge

fatal_signal_pending.exit.i.i.return_crit_edge:   ; preds = %fatal_signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

fatal_signal_pending.exit.i.i.lor.rhs.i.i_crit_edge: ; preds = %fatal_signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %fatal_signal_pending.exit.i.i.lor.rhs.i.i_crit_edge, %if.then.i.lor.rhs.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %19 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i5.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i5.i.i, label %lor.rhs.i.i.lor.lhs.false.i_crit_edge, label %dump_interrupted.exit.i, !prof !147

lor.rhs.i.i.lor.lhs.false.i_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

dump_interrupted.exit.i:                          ; preds = %lor.rhs.i.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %11) #18
  br i1 %call4.i.i.i, label %dump_interrupted.exit.i.return_crit_edge, label %dump_interrupted.exit.i.lor.lhs.false.i_crit_edge

dump_interrupted.exit.i.lor.lhs.false.i_crit_edge: ; preds = %dump_interrupted.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

dump_interrupted.exit.i.return_crit_edge:         ; preds = %dump_interrupted.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false.i:                                  ; preds = %dump_interrupted.exit.i.lor.lhs.false.i_crit_edge, %lor.rhs.i.i.lor.lhs.false.i_crit_edge
  %20 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_op.i, align 4
  %llseek5.i = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %llseek5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %llseek5.i, align 4
  %conv.i = and i64 %1, 4294967295
  %call6.i = tail call i64 %23(ptr noundef %3, i64 noundef %conv.i, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6.i)
  %cmp7.i = icmp slt i64 %call6.i, 0
  br i1 %cmp7.i, label %lor.lhs.false.i.return_crit_edge, label %__dump_skip.exit.thread13

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

__dump_skip.exit.thread13:                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  %pos.i = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 6
  %24 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos.i, align 8
  %add.i = add i64 %25, %conv.i
  store i64 %add.i, ptr %pos.i, align 8
  br label %if.end

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %nr.addr.031.i = phi i32 [ %sub.i, %if.end16.i.while.body.i_crit_edge ], [ %conv, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call13.i = tail call fastcc i32 @__dump_emit(ptr noundef %cprm, ptr noundef nonnull @__dump_skip.zeroes, i32 noundef 4096) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %while.body.i.return_crit_edge, label %if.end16.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end16.i:                                       ; preds = %while.body.i
  %sub.i = add i32 %nr.addr.031.i, -4096
  %cmp11.i = icmp ugt i32 %sub.i, 4096
  br i1 %cmp11.i, label %if.end16.i.while.body.i_crit_edge, label %if.end16.i.__dump_skip.exit_crit_edge

if.end16.i.__dump_skip.exit_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__dump_skip.exit

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

__dump_skip.exit:                                 ; preds = %if.end16.i.__dump_skip.exit_crit_edge, %while.cond.preheader.i.__dump_skip.exit_crit_edge
  %nr.addr.0.lcssa.i = phi i32 [ %conv, %while.cond.preheader.i.__dump_skip.exit_crit_edge ], [ %sub.i, %if.end16.i.__dump_skip.exit_crit_edge ]
  %call17.i = tail call fastcc i32 @__dump_emit(ptr noundef %cprm, ptr noundef nonnull @__dump_skip.zeroes, i32 noundef %nr.addr.0.lcssa.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool2.not = icmp eq i32 %call17.i, 0
  br i1 %tobool2.not, label %__dump_skip.exit.return_crit_edge, label %__dump_skip.exit.if.end_crit_edge

__dump_skip.exit.if.end_crit_edge:                ; preds = %__dump_skip.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

__dump_skip.exit.return_crit_edge:                ; preds = %__dump_skip.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %__dump_skip.exit.if.end_crit_edge, %__dump_skip.exit.thread13
  %26 = ptrtoint ptr %to_skip to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %to_skip, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %call6 = tail call fastcc i32 @__dump_emit(ptr noundef %cprm, ptr noundef %addr, i32 noundef %nr)
  br label %return

return:                                           ; preds = %if.end5, %__dump_skip.exit.return_crit_edge, %while.body.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %dump_interrupted.exit.i.return_crit_edge, %fatal_signal_pending.exit.i.i.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %__dump_skip.exit.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %dump_interrupted.exit.i.return_crit_edge ], [ 0, %fatal_signal_pending.exit.i.i.return_crit_edge ], [ 0, %while.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #18
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !163
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 35, ptr noundef nonnull @.str.56) #18
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !147

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !159
  %read_count.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add17.i.i = add i32 %27, -1
  store i32 %add17.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !160
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !148

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #18, !srcloc !161
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !164
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !159
  %read_count75.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_count75.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i122.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add80.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add81.i.i = add i32 %41, -1
  store i32 %add81.i.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !160
  %and.i.i123.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !148

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #18, !srcloc !161
  %writer.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #18
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !165
  %43 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i.i120.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  br label %return

return:                                           ; preds = %__sb_end_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_dump_helpers(ptr nocapture noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @pipe_lock(ptr noundef %1) #18
  %readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %readers, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %readers, align 4
  %writers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writers, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %writers, align 4
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1
  tail call void @__wake_up_sync(ptr noundef %rd_wait, i32 noundef 1) #18
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #18
  tail call void @pipe_unlock(ptr noundef %1) #18
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 471) #18
  %6 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #18
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #18
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #18
  %9 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp839 = icmp eq i32 %10, 1
  br i1 %cmp839, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call40 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call38, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #18
  %call = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #18
  %11 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %readers, align 4
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry) #18
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #18
  br label %if.end13

if.end13:                                         ; preds = %__out, %entry.if.end13_crit_edge
  call void @pipe_lock(ptr noundef %1) #18
  %13 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %readers, align 4
  %dec16 = add i32 %14, -1
  store i32 %dec16, ptr %readers, align 4
  %15 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writers, align 4
  %inc18 = add i32 %16, 1
  store i32 %inc18, ptr %writers, align 4
  call void @pipe_unlock(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dump_emit(ptr nocapture noundef %cprm, ptr noundef %addr, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %file1 = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 2
  %0 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #18
  %f_pos = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pos, align 8
  %written = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 5
  %5 = ptrtoint ptr %written to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %written, align 8
  %conv = sext i32 %nr to i64
  %add = add i64 %6, %conv
  %limit = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 3
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit, align 4
  %conv2 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv2)
  %cmp = icmp sgt i64 %add, %conv2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !135) #18
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.lor.rhs.i_crit_edge, label %fatal_signal_pending.exit.i

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs.i

fatal_signal_pending.exit.i:                      ; preds = %if.end
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 116, i32 1
  %17 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signal.i.i.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.lor.rhs.i_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

fatal_signal_pending.exit.i.lor.rhs.i_crit_edge:  ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fatal_signal_pending.exit.i.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %20 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i5.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i5.i, label %lor.rhs.i.if.end5_crit_edge, label %dump_interrupted.exit, !prof !147

lor.rhs.i.if.end5_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

dump_interrupted.exit:                            ; preds = %lor.rhs.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %12) #18
  br i1 %call4.i.i, label %dump_interrupted.exit.cleanup_crit_edge, label %dump_interrupted.exit.if.end5_crit_edge

dump_interrupted.exit.if.end5_crit_edge:          ; preds = %dump_interrupted.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

dump_interrupted.exit.cleanup_crit_edge:          ; preds = %dump_interrupted.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %dump_interrupted.exit.if.end5_crit_edge, %lor.rhs.i.if.end5_crit_edge
  %call6 = call i32 @__kernel_write(ptr noundef %1, ptr noundef %addr, i32 noundef %nr, ptr noundef nonnull %pos) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %nr)
  %cmp7.not = icmp eq i32 %call6, %nr
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos, align 8
  %23 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %f_pos, align 8
  %24 = ptrtoint ptr %written to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %written, align 8
  %add14 = add i64 %25, %conv
  store i64 %add14, ptr %written, align 8
  %pos16 = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 6
  %26 = ptrtoint ptr %pos16 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos16, align 8
  %add17 = add i64 %27, %conv
  store i64 %add17, ptr %pos16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %dump_interrupted.exit.cleanup_crit_edge, %fatal_signal_pending.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dump_interrupted.exit.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dump_skip_to(ptr nocapture noundef %cprm, i32 noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %pos to i64
  %pos1 = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 6
  %0 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos1, align 8
  %sub = sub i64 %conv, %1
  %to_skip = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  %2 = ptrtoint ptr %to_skip to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub, ptr %to_skip, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dump_skip(ptr nocapture noundef %cprm, i32 noundef %nr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %nr to i64
  %to_skip = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  %0 = ptrtoint ptr %to_skip to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %to_skip, align 8
  %add = add i64 %1, %conv
  store i64 %add, ptr %to_skip, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dump_user_range(ptr nocapture noundef %cprm, i32 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp25 = icmp ugt i32 %add, %start
  br i1 %cmp25, label %for.body.lr.ph, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %to_skip.i = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %addr.026 = phi i32 [ %start, %for.body.lr.ph ], [ %add14, %if.end9.for.body_crit_edge ]
  %call = tail call ptr @get_dump_page(i32 noundef %addr.026) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call, i32 noundef %or.i) #18
  %call2 = tail call i32 @dump_emit(ptr noundef %cprm, ptr noundef %call.i, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  tail call void @kunmap_local_indexed(ptr noundef %call.i) #18
  %1 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !147

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %6 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !148

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %8 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.58) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !166
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@dump_user_range, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !167

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %5, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %5) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  br i1 %tobool3.not, label %put_page.exit.cleanup15_crit_edge, label %put_page.exit.if.end9_crit_edge

put_page.exit.if.end9_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

put_page.exit.cleanup15_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup15

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %to_skip.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %to_skip.i, align 8
  %add.i = add i64 %11, 4096
  store i64 %add.i, ptr %to_skip.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %put_page.exit.if.end9_crit_edge
  %add14 = add i32 %addr.026, 4096
  %cmp = icmp ult i32 %add14, %add
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.cleanup15_crit_edge

if.end9.cleanup15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup15

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup15:                                        ; preds = %if.end9.cleanup15_crit_edge, %put_page.exit.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.4 = phi i32 [ 1, %entry.cleanup15_crit_edge ], [ 0, %put_page.exit.cleanup15_crit_edge ], [ 1, %if.end9.cleanup15_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dump_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dump_align(ptr nocapture noundef %cprm, i32 noundef %align) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 6
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %to_skip = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 7
  %2 = ptrtoint ptr %to_skip to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %to_skip, align 8
  %add = add i64 %3, %1
  %sub = add i32 %align, -1
  %4 = trunc i64 %add to i32
  %conv1 = and i32 %sub, %4
  %5 = tail call i32 @llvm.ctpop.i32(i32 %align), !range !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %tobool.not = icmp ult i32 %5, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool4.not = icmp eq i32 %conv1, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sub6 = sub i32 %align, %conv1
  %conv7 = zext i32 %sub6 to i64
  %add9 = add i64 %3, %conv7
  %6 = ptrtoint ptr %to_skip to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add9, ptr %to_skip, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then5 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @validate_coredump_safety() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suid_dumpable to i32))
  %0 = load i32, ptr @suid_dumpable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @core_pattern, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %1, label %do.end [
    i8 47, label %land.lhs.true.if.end_crit_edge
    i8 124, label %land.lhs.true.if.end_crit_edge7
  ]

land.lhs.true.if.end_crit_edge7:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge7, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fs_coredump_sysctls() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.59, ptr noundef nonnull @coredump_sysctls, ptr noundef nonnull @.str.60) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dump_vma_snapshot(ptr nocapture noundef readonly %cprm, ptr nocapture noundef %vma_count, ptr nocapture noundef %vma_meta, ptr nocapture noundef writeonly %vma_data_size_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !135) #18
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@dump_vma_snapshot, %if.then.i.i)) #18
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !167

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #18
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.14, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@dump_vma_snapshot, %if.then.i4.i)) #18
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !167

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #18
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  %call3 = tail call ptr @get_gate_vma(ptr noundef %5) #18
  %map_count = getelementptr inbounds %struct.anon.14, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_count, align 8
  %tobool4.not = icmp ne ptr %call3, null
  %cond = zext i1 %tobool4.not to i32
  %add = add i32 %7, %cond
  %8 = ptrtoint ptr %vma_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %vma_count, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 16) #18
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !148

kvmalloc_array.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %vma_meta to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vma_meta, align 4
  br label %if.then7

kvmalloc_array.exit:                              ; preds = %if.end
  %12 = extractvalue { i32, i1 } %9, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3264, i32 noundef -1) #24
  %13 = ptrtoint ptr %vma_meta to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %vma_meta, align 4
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %kvmalloc_array.exit.if.then7_crit_edge, label %if.end8

kvmalloc_array.exit.if.then7_crit_edge:           ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.then7:                                         ; preds = %kvmalloc_array.exit.if.then7_crit_edge, %kvmalloc_array.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@dump_vma_snapshot, %if.then.i.i69)) #18
          to label %mmap_write_unlock.exit [label %if.then.i.i69], !srcloc !167

if.then.i.i69:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #18
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i69, %if.then7
  tail call void @up_write(ptr noundef %mmap_lock.i) #18
  br label %cleanup

if.end8:                                          ; preds = %kvmalloc_array.exit
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool.not.i = icmp eq ptr %19, null
  %gate_vma..i = select i1 %tobool.not.i, ptr %call3, ptr %19
  %cmp.not83 = icmp eq ptr %gate_vma..i, null
  br i1 %cmp.not83, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %mm_flags = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %vma_dump_size.exit.for.body_crit_edge, %for.body.lr.ph
  %vma.086 = phi ptr [ %gate_vma..i, %for.body.lr.ph ], [ %retval.0.i77, %vma_dump_size.exit.for.body_crit_edge ]
  %vma_data_size.085 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %vma_dump_size.exit.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vma_dump_size.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vma_meta, align 4
  %add.ptr = getelementptr %struct.core_vma_metadata, ptr %21, i32 %i.084
  %22 = ptrtoint ptr %vma.086 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vma.086, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 1
  %25 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_end, align 4
  %end = getelementptr %struct.core_vma_metadata, ptr %21, i32 %i.084, i32 1
  %27 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %end, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 8
  %28 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_flags, align 4
  %flags = getelementptr %struct.core_vma_metadata, ptr %21, i32 %i.084, i32 2
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %flags, align 4
  %31 = ptrtoint ptr %mm_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mm_flags, align 8
  %vm_mm.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 6
  %33 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_mm.i.i, align 4
  %call.i.i71 = tail call ptr @get_gate_vma(ptr noundef %34) #18
  %cmp.i.i = icmp eq ptr %call.i.i71, %vma.086
  br i1 %cmp.i.i, label %for.body.whole.i_crit_edge, label %if.end.i.i

for.body.whole.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

if.end.i.i:                                       ; preds = %for.body
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 12
  %35 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i.always_dump_vma.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.always_dump_vma.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %always_dump_vma.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %name.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.always_dump_vma.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.always_dump_vma.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %always_dump_vma.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call6.i.i = tail call ptr %38(ptr noundef nonnull %vma.086) #18
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %land.lhs.true3.i.i.always_dump_vma.exit.i_crit_edge, label %land.lhs.true3.i.i.whole.i_crit_edge

land.lhs.true3.i.i.whole.i_crit_edge:             ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

land.lhs.true3.i.i.always_dump_vma.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %always_dump_vma.exit.i

always_dump_vma.exit.i:                           ; preds = %land.lhs.true3.i.i.always_dump_vma.exit.i_crit_edge, %land.lhs.true.i.i.always_dump_vma.exit.i_crit_edge, %if.end.i.i.always_dump_vma.exit.i_crit_edge
  %call10.i.i = tail call ptr @arch_vma_name(ptr noundef nonnull %vma.086) #18
  %tobool11.not.i.not.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.not.i, label %if.end.i72, label %always_dump_vma.exit.i.whole.i_crit_edge

always_dump_vma.exit.i.whole.i_crit_edge:         ; preds = %always_dump_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

if.end.i72:                                       ; preds = %always_dump_vma.exit.i
  %39 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vm_flags, align 4
  %41 = and i32 %40, 67125248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.end44.i, label %if.end.i72.vma_dump_size.exit_crit_edge

if.end.i72.vma_dump_size.exit_crit_edge:          ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #20
  br label %vma_dump_size.exit

if.end44.i:                                       ; preds = %if.end.i72
  %and46.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end56.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end44.i
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 14
  %43 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vm_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_inode.i.i, align 8
  %47 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i73 = icmp eq i32 %49, 0
  br i1 %cmp.i73, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then48.i
  %and50.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %cond.true.i.vma_dump_size.exit_crit_edge, label %cond.true.i.whole.i_crit_edge

cond.true.i.whole.i_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

cond.true.i.vma_dump_size.exit_crit_edge:         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %vma_dump_size.exit

cond.false.i:                                     ; preds = %if.then48.i
  %and52.i = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.false.i.vma_dump_size.exit_crit_edge, label %cond.false.i.whole.i_crit_edge

cond.false.i.whole.i_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

cond.false.i.vma_dump_size.exit_crit_edge:        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %vma_dump_size.exit

if.end56.i:                                       ; preds = %if.end44.i
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 11
  %50 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %anon_vma.i, align 4
  %tobool57.not.i = icmp eq ptr %51, null
  %and59.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %or.cond.i = or i1 %tobool60.not.i, %tobool57.not.i
  br i1 %or.cond.i, label %if.end62.i, label %if.end56.i.whole.i_crit_edge

if.end56.i.whole.i_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

if.end62.i:                                       ; preds = %if.end56.i
  %vm_file63.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 14
  %52 = ptrtoint ptr %vm_file63.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vm_file63.i, align 4
  %cmp64.i = icmp eq ptr %53, null
  br i1 %cmp64.i, label %if.end62.i.vma_dump_size.exit_crit_edge, label %if.end66.i

if.end62.i.vma_dump_size.exit_crit_edge:          ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %vma_dump_size.exit

if.end66.i:                                       ; preds = %if.end62.i
  %and67.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end66.i.whole.i_crit_edge

if.end66.i.whole.i_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %whole.i

if.end70.i:                                       ; preds = %if.end66.i
  %and71.i = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end86.i_crit_edge, label %land.lhs.true73.i

if.end70.i.if.end86.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86.i

land.lhs.true73.i:                                ; preds = %if.end70.i
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 13
  %54 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp74.i = icmp ne i32 %55, 0
  %and77.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  %or.cond115.i = select i1 %cmp74.i, i1 true, i1 %tobool78.not.i
  br i1 %or.cond115.i, label %land.lhs.true73.i.if.end86.i_crit_edge, label %do.end.i

land.lhs.true73.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86.i

do.end.i:                                         ; preds = %land.lhs.true73.i
  %f_inode.i112.i = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %f_inode.i112.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_inode.i112.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load volatile i16, ptr %57, align 8
  %60 = and i16 %59, 73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp83.not.i = icmp eq i16 %60, 0
  br i1 %cmp83.not.i, label %do.end.i.if.end86.i_crit_edge, label %do.end.i.vma_dump_size.exit_crit_edge

do.end.i.vma_dump_size.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %vma_dump_size.exit

do.end.i.if.end86.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end.i.if.end86.i_crit_edge, %land.lhs.true73.i.if.end86.i_crit_edge, %if.end70.i.if.end86.i_crit_edge
  br label %vma_dump_size.exit

whole.i:                                          ; preds = %if.end66.i.whole.i_crit_edge, %if.end56.i.whole.i_crit_edge, %cond.false.i.whole.i_crit_edge, %cond.true.i.whole.i_crit_edge, %always_dump_vma.exit.i.whole.i_crit_edge, %land.lhs.true3.i.i.whole.i_crit_edge, %for.body.whole.i_crit_edge
  %61 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vm_end, align 4
  %63 = ptrtoint ptr %vma.086 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vma.086, align 4
  %sub.i = sub i32 %62, %64
  br label %vma_dump_size.exit

vma_dump_size.exit:                               ; preds = %whole.i, %if.end86.i, %do.end.i.vma_dump_size.exit_crit_edge, %if.end62.i.vma_dump_size.exit_crit_edge, %cond.false.i.vma_dump_size.exit_crit_edge, %cond.true.i.vma_dump_size.exit_crit_edge, %if.end.i72.vma_dump_size.exit_crit_edge
  %retval.0.i74 = phi i32 [ %sub.i, %whole.i ], [ 0, %if.end86.i ], [ 0, %if.end.i72.vma_dump_size.exit_crit_edge ], [ 0, %cond.false.i.vma_dump_size.exit_crit_edge ], [ 0, %cond.true.i.vma_dump_size.exit_crit_edge ], [ 0, %if.end62.i.vma_dump_size.exit_crit_edge ], [ 4096, %do.end.i.vma_dump_size.exit_crit_edge ]
  %dump_size = getelementptr %struct.core_vma_metadata, ptr %21, i32 %i.084, i32 3
  %65 = ptrtoint ptr %dump_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i74, ptr %dump_size, align 4
  %add14 = add i32 %retval.0.i74, %vma_data_size.085
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.086, i32 0, i32 2
  %66 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i75 = icmp eq ptr %67, null
  %cmp.i76 = icmp eq ptr %vma.086, %call3
  %.gate_vma.i = select i1 %cmp.i76, ptr null, ptr %call3
  %retval.0.i77 = select i1 %tobool.not.i75, ptr %.gate_vma.i, ptr %67
  %inc = add i32 %i.084, 1
  %cmp.not = icmp eq ptr %retval.0.i77, null
  br i1 %cmp.not, label %vma_dump_size.exit.for.end_crit_edge, label %vma_dump_size.exit.for.body_crit_edge

vma_dump_size.exit.for.body_crit_edge:            ; preds = %vma_dump_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

vma_dump_size.exit.for.end_crit_edge:             ; preds = %vma_dump_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %vma_dump_size.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %inc, %vma_dump_size.exit.for.end_crit_edge ]
  %vma_data_size.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %add14, %vma_dump_size.exit.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@dump_vma_snapshot, %if.then.i.i78)) #18
          to label %mmap_write_unlock.exit80 [label %if.then.i.i78], !srcloc !167

if.then.i.i78:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #18
  br label %mmap_write_unlock.exit80

mmap_write_unlock.exit80:                         ; preds = %if.then.i.i78, %for.end
  tail call void @up_write(ptr noundef %mmap_lock.i) #18
  %68 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vma_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %69)
  %cmp16.not = icmp eq i32 %i.0.lcssa, %69
  br i1 %cmp16.not, label %if.end40, label %do.end, !prof !147

do.end:                                           ; preds = %mmap_write_unlock.exit80
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1125, i32 noundef 9, ptr noundef null) #18
  %70 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vma_meta, align 4
  tail call void @kvfree(ptr noundef %71) #18
  br label %cleanup

if.end40:                                         ; preds = %mmap_write_unlock.exit80
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %vma_data_size_ptr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %vma_data_size.0.lcssa, ptr %vma_data_size_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end, %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.end40 ], [ -12, %mmap_write_unlock.exit ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cn_printf(ptr nocapture noundef %cn, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #18
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %arg, align 4, !annotation !145
  call void @llvm.va_start(ptr nonnull %arg)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %arg, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc i32 @cn_vprintf(ptr noundef %cn, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %arg)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cn_esc_printf(ptr nocapture noundef %cn, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.core_name, ptr %cn, i32 0, i32 1
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #18
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %arg, align 4, !annotation !145
  call void @llvm.va_start(ptr nonnull %arg)
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %arg, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc i32 @cn_vprintf(ptr noundef %cn, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  %sub = sub i32 %5, %1
  %6 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %sub, label %if.then.if.end_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true9
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cn, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %10)
  %cmp3 = icmp eq i8 %10, 46
  br i1 %cmp3, label %land.lhs.true.if.then21_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

land.lhs.true9:                                   ; preds = %if.then
  %11 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cn, align 4
  %arrayidx11 = getelementptr i8, ptr %12, i32 %1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %14)
  %cmp13 = icmp eq i8 %14, 46
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true9
  %add = add i32 %1, 1
  %arrayidx17 = getelementptr i8, ptr %12, i32 %add
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp19 = icmp eq i8 %16, 46
  br i1 %cmp19, label %land.lhs.true15.if.then21_crit_edge, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true15.if.then21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true15.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %17 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cn, align 4
  %arrayidx23 = getelementptr i8, ptr %18, i32 %1
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 33, ptr %arrayidx23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then21, %land.lhs.true15.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp25 = icmp eq i32 %21, %1
  br i1 %cmp25, label %if.then27, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call28 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef %cn, ptr noundef nonnull @.str.52)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then27 ], [ 0, %if.end.if.end30_crit_edge ], [ %call, %entry.if.end30_crit_edge ]
  %22 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %23)
  %cmp3267 = icmp slt i32 %1, %23
  br i1 %cmp3267, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30.for.body_crit_edge
  %cur.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %1, %if.end30.for.body_crit_edge ]
  %24 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cn, align 4
  %arrayidx35 = getelementptr i8, ptr %25, i32 %cur.068
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %27)
  %cmp37 = icmp eq i8 %27, 47
  br i1 %cmp37, label %if.then39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 33, ptr %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %cur.068, 1
  %29 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used, align 4
  %cmp32 = icmp slt i32 %inc, %30
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #18
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cn_print_exe_file(ptr nocapture noundef %cn, i1 noundef zeroext %name_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !135) #18
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
  %call1 = tail call ptr @get_mm_exe_file(ptr noundef %5) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call4 = tail call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef %cn, ptr noundef nonnull @.str.53, ptr noundef %comm)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4096) #22
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end.put_exe_file_crit_edge, label %if.end8

if.end.put_exe_file_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_exe_file

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @file_path(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i, i32 noundef 4096) #18
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %call9 to i32
  br label %free_buf

if.end13:                                         ; preds = %if.end8
  br i1 %name_only, label %if.then15, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = tail call ptr @strrchr(ptr noundef %call9, i32 noundef 47)
  %tobool17.not = icmp eq ptr %call16, null
  %add.ptr = getelementptr i8, ptr %call16, i32 1
  %spec.select = select i1 %tobool17.not, ptr %call9, ptr %add.ptr
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end13.if.end20_crit_edge
  %path.0 = phi ptr [ %call9, %if.end13.if.end20_crit_edge ], [ %spec.select, %if.then15 ]
  %call21 = tail call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef %cn, ptr noundef nonnull @.str.49, ptr noundef %path.0)
  br label %free_buf

free_buf:                                         ; preds = %if.end20, %if.then11
  %ret.0 = phi i32 [ %9, %if.then11 ], [ %call21, %if.end20 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #18
  br label %put_exe_file

put_exe_file:                                     ; preds = %free_buf, %if.end.put_exe_file_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_buf ], [ -12, %if.end.put_exe_file_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call1) #18
  br label %cleanup

cleanup:                                          ; preds = %put_exe_file, %if.then
  %retval.0 = phi i32 [ %ret.1, %put_exe_file ], [ %call4, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cn_vprintf(ptr nocapture noundef %cn, ptr nocapture noundef readonly %fmt, [1 x i32] %arg.coerce) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.__va_list, align 4
  %arg_copy = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract = extractvalue [1 x i32] %arg.coerce, 0
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %arg.coerce.fca.0.extract, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg_copy) #18
  %1 = ptrtoint ptr %arg_copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %arg_copy, align 4, !annotation !145
  %size = getelementptr inbounds %struct.core_name, ptr %cn, i32 0, i32 2
  %used = getelementptr inbounds %struct.core_name, ptr %cn, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  %sub27 = sub i32 %3, %5
  call void @llvm.va_copy(ptr nonnull %arg_copy, ptr nonnull %arg)
  %6 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cn, align 4
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %add.ptr28 = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %arg_copy to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load29 = load i32, ptr %arg_copy, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %.fca.0.load29, 0
  %call31 = call i32 @vsnprintf(ptr noundef %add.ptr28, i32 noundef %sub27, ptr noundef %fmt, [1 x i32] %.fca.0.insert30)
  call void @llvm.va_end(ptr nonnull %arg_copy)
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %sub27)
  %cmp32 = icmp slt i32 %call31, %sub27
  br i1 %cmp32, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %expand_corename.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa = phi i32 [ %call31, %entry.if.then_crit_edge ], [ %call, %expand_corename.exit.if.then_crit_edge ]
  %11 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used, align 4
  %add = add i32 %12, %call.lcssa
  store i32 %add, ptr %used, align 4
  br label %cleanup

if.end:                                           ; preds = %expand_corename.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call34 = phi i32 [ %call, %expand_corename.exit.if.end_crit_edge ], [ %call31, %entry.if.end_crit_edge ]
  %sub33 = phi i32 [ %sub, %expand_corename.exit.if.end_crit_edge ], [ %sub27, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %add5 = sub i32 1, %sub33
  %sub6 = add i32 %add5, %call34
  %add7 = add i32 %sub6, %14
  %15 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cn, align 4
  %call.i = call noalias ptr @krealloc(ptr noundef %16, i32 noundef %add7, i32 noundef 3264) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %17 = load i32, ptr @core_name_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add7)
  %cmp.i = icmp slt i32 %17, %add7
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.expand_corename.exit_crit_edge

if.end.i.expand_corename.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %expand_corename.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %add7, ptr @core_name_size, align 4
  br label %expand_corename.exit

expand_corename.exit:                             ; preds = %if.then2.i, %if.end.i.expand_corename.exit_crit_edge
  %call4.i = call i32 @ksize(ptr noundef nonnull %call.i) #18
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call4.i, ptr %size, align 4
  %19 = ptrtoint ptr %cn to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %cn, align 4
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used, align 4
  %sub = sub i32 %call4.i, %21
  call void @llvm.va_copy(ptr nonnull %arg_copy, ptr nonnull %arg)
  %22 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cn, align 4
  %24 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %arg_copy to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.0.load = load i32, ptr %arg_copy, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %arg_copy)
  %cmp = icmp slt i32 %call, %sub
  br i1 %cmp, label %expand_corename.exit.if.then_crit_edge, label %expand_corename.exit.if.end_crit_edge

expand_corename.exit.if.end_crit_edge:            ; preds = %expand_corename.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

expand_corename.exit.if.then_crit_edge:           ; preds = %expand_corename.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg_copy) #18
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mm_exe_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_pipe_files(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dostring_coredump(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dostring(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suid_dumpable to i32))
  %0 = load i32, ptr @suid_dumpable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i = icmp eq i32 %0, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %1 = load i8, ptr @core_pattern, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %1, label %do.end.i [
    i8 47, label %land.lhs.true.i.if.end_crit_edge
    i8 124, label %land.lhs.true.i.if.end_crit_edge2
  ]

land.lhs.true.i.if.end_crit_edge2:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #23
  br label %if.end

if.end:                                           ; preds = %do.end.i, %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge2, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @do_coredump.core_dump_count, !1, !"core_dump_count", i1 false, i1 false}
!1 = !{!"../fs/coredump.c", i32 523, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/coredump.c", i32 574, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @do_coredump._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @do_coredump._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/coredump.c", i32 575, i32 4}
!10 = !{ptr @do_coredump._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @do_coredump._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/coredump.c", i32 595, i32 4}
!14 = !{ptr @do_coredump._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @do_coredump._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @do_coredump._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../fs/coredump.c", i32 598, i32 4}
!18 = !{ptr @do_coredump._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/coredump.c", i32 605, i32 4}
!21 = !{ptr @do_coredump._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @do_coredump._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/coredump.c", i32 607, i32 4}
!25 = !{ptr @do_coredump._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @do_coredump._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/coredump.c", i32 614, i32 4}
!29 = !{ptr @do_coredump._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @do_coredump._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/coredump.c", i32 632, i32 4}
!33 = !{ptr @do_coredump._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @do_coredump._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/coredump.c", i32 646, i32 4}
!37 = !{ptr @do_coredump._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @do_coredump._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @do_coredump._entry.26, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../fs/coredump.c", i32 649, i32 4}
!41 = !{ptr @do_coredump._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/coredump.c", i32 717, i32 8}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/coredump.c", i32 718, i32 4}
!46 = !{ptr @do_coredump._rs, !45, !"_rs", i1 false, i1 false}
!47 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @do_coredump._entry.29, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_coredump._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @do_coredump._rs.32, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/coredump.c", i32 723, i32 4}
!52 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @do_coredump._entry.33, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @do_coredump._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/coredump.c", i32 745, i32 4}
!57 = !{ptr @do_coredump._entry.36, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @do_coredump._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/coredump.c", i32 758, i32 21}
!61 = !{ptr @__ksymtab_dump_emit, !62, !"__ksymtab_dump_emit", i1 false, i1 false}
!62 = !{!"../fs/coredump.c", i32 836, i32 1}
!63 = !{ptr @__ksymtab_dump_skip_to, !64, !"__ksymtab_dump_skip_to", i1 false, i1 false}
!64 = !{!"../fs/coredump.c", i32 842, i32 1}
!65 = !{ptr @__ksymtab_dump_skip, !66, !"__ksymtab_dump_skip", i1 false, i1 false}
!66 = !{!"../fs/coredump.c", i32 848, i32 1}
!67 = !{ptr @__ksymtab_dump_align, !68, !"__ksymtab_dump_align", i1 false, i1 false}
!68 = !{!"../fs/coredump.c", i32 893, i32 1}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/coredump.c", i32 901, i32 3}
!71 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @validate_coredump_safety._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @validate_coredump_safety._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__initcall__kmod_coredump__411_949_init_fs_coredump_sysctls5, !75, !"__initcall__kmod_coredump__411_949_init_fs_coredump_sysctls5", i1 false, i1 false}
!75 = !{!"../fs/coredump.c", i32 949, i32 1}
!76 = !{ptr @core_pipe_limit, !77, !"core_pipe_limit", i1 false, i1 false}
!77 = !{!"../fs/coredump.c", i32 57, i32 21}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../fs/coredump.c", i32 359, i32 2}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../fs/coredump.c", i32 198, i32 28}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/coredump.c", i32 237, i32 25}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/coredump.c", i32 257, i32 25}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/coredump.c", i32 275, i32 25}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/coredump.c", i32 299, i32 25}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/coredump.c", i32 305, i32 29}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/coredump.c", i32 322, i32 25}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/coredump.c", i32 342, i32 23}
!102 = !{ptr @core_name_size, !103, !"core_name_size", i1 false, i1 false}
!103 = !{!"../fs/coredump.c", i32 59, i32 12}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/coredump.c", i32 145, i32 24}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/coredump.c", i32 163, i32 28}
!108 = !{ptr @core_uses_pid, !109, !"core_uses_pid", i1 false, i1 false}
!109 = !{!"../fs/coredump.c", i32 56, i32 12}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/cred.h", i32 286, i32 3}
!118 = !{ptr @__dump_skip.zeroes, !119, !"zeroes", i1 false, i1 false}
!119 = !{!"../fs/coredump.c", i32 809, i32 14}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/mm.h", i32 717, i32 2}
!122 = !{ptr @core_pattern, !123, !"core_pattern", i1 false, i1 false}
!123 = !{!"../fs/coredump.c", i32 58, i32 13}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/coredump.c", i32 946, i32 2}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/coredump.c", i32 921, i32 15}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/coredump.c", i32 928, i32 15}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/coredump.c", i32 935, i32 15}
!133 = !{ptr @coredump_sysctls, !134, !"coredump_sysctls", i1 false, i1 false}
!134 = !{!"../fs/coredump.c", i32 919, i32 25}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i64 2153001898}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2148692310}
!150 = !{i64 2148607595, i64 2148607627, i64 2148607656, i64 2148607690, i64 2148607721, i64 2148607744}
!151 = !{i64 2148692539}
!152 = !{i64 2152841110}
!153 = !{i64 2148609340, i64 2148609366, i64 2148609395, i64 2148609429, i64 2148609460, i64 2148609483}
!154 = !{i64 2156809278}
!155 = !{i64 2148695351}
!156 = !{i64 2148610060, i64 2148610092, i64 2148610121, i64 2148610155, i64 2148610186, i64 2148610209}
!157 = !{i64 2148695580}
!158 = !{i64 2152772792}
!159 = !{i64 1011555, i64 1011616}
!160 = !{i64 1014287}
!161 = !{i64 1014572}
!162 = !{i64 2152781642}
!163 = !{i64 2152791596}
!164 = !{i64 2152801091}
!165 = !{i64 2152810568}
!166 = !{i64 2153217591, i64 2153218074, i64 2153217628, i64 2153217684, i64 2153217718, i64 2153217742, i64 2153217783, i64 2153217804, i64 2153217832, i64 2153217866}
!167 = !{i64 2148227601, i64 2148227606, i64 2148227619, i64 2148227663, i64 2148227697, i64 2148227718}
!168 = !{i32 0, i32 33}
