; ModuleID = '/llk/IR_all_yes/fs/fat/file.c_pt.bc'
source_filename = "../fs/fat/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fat_getattr\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_getattr\09\09\09\09"
module asm "\09.long\09__crc_fat_getattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_getattr\22\09\09\09\09\09"
module asm "__kstrtabns_fat_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_setattr\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_setattr\09\09\09\09"
module asm "\09.long\09__crc_fat_setattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_fat_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fat_entry = type { i32, %union.anon.83, i32, [2 x ptr], ptr }
%union.anon.83 = type { [2 x ptr] }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }

@fat_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @fat_generic_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr @fat_file_release, ptr @fat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @fat_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_fat_getattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_getattr = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_getattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_getattr to i32), ptr @__kstrtab_fat_getattr, ptr @__kstrtabns_fat_getattr }, section "___ksymtab_gpl+fat_getattr", align 4
@__kstrtab_fat_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_setattr to i32), ptr @__kstrtab_fat_setattr, ptr @__kstrtabns_fat_setattr }, section "___ksymtab_gpl+fat_setattr", align 4
@fat_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/fat/file.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: invalid cluster chain (i_pos %lld)\00", [57 x i8] zeroinitializer }, align 32
@__func__.fat_free = private unnamed_addr constant [9 x i8] c"fat_free\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1074033169, i64 2147774992, i64 2147774995, i64 3222820985]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435455]
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"fat_file_operations\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 203, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 32, i32 9 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 156, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [17 x i8] c"../fs/fat/file.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 358, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fat_getattr, ptr @__ksymtab_fat_setattr, ptr @fat_file_operations, ptr @.str, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_generic_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %range.i = alloca %struct.fstrim_range, align 8
  %ia.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192304, label %sw.bb
    i32 1074033169, label %sw.bb2
    i32 -2147192301, label %sw.bb4
    i32 -1072146311, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i.i) #7
  %i_attrs.i.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %i_attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_attrs.i.i, align 8
  %conv.i.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 16384
  %conv4.i.i = or i8 %conv.i.i, 16
  %attrs.0.i.i = select i1 %cmp.i.i, i8 %conv4.i.i, i8 %conv.i.i
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  br i1 %cmp.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb
  %rodir.i.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 12
  %13 = ptrtoint ptr %rodir.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i.i.i = load i16, ptr %rodir.i.i.i, align 4
  %14 = and i16 %bf.load.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.fat_ioctl_get_attributes.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.i.fat_ioctl_get_attributes.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_get_attributes.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_dmask.i.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 3
  br label %fat_mode_can_hold_ro.exit.i.i

if.else.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fmask.i.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 2
  br label %fat_mode_can_hold_ro.exit.i.i

fat_mode_can_hold_ro.exit.i.i:                    ; preds = %if.else.i.i.i, %if.end.i.i.i
  %mask.0.in.in.i.i.i = phi ptr [ %fs_dmask.i.i.i, %if.end.i.i.i ], [ %fs_fmask.i.i.i, %if.else.i.i.i ]
  %15 = ptrtoint ptr %mask.0.in.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %mask.0.in.i.i.i = load i16, ptr %mask.0.in.in.i.i.i, align 2
  %mask.0.i.i.i = and i16 %mask.0.in.i.i.i, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %mask.0.i.i.i)
  %tobool13.not.i.not.i.i = icmp eq i16 %mask.0.i.i.i, 146
  br i1 %tobool13.not.i.not.i.i, label %fat_mode_can_hold_ro.exit.i.i.fat_ioctl_get_attributes.exit_crit_edge, label %land.lhs.true.i.i

fat_mode_can_hold_ro.exit.i.i.fat_ioctl_get_attributes.exit_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_get_attributes.exit

land.lhs.true.i.i:                                ; preds = %fat_mode_can_hold_ro.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = and i16 %7, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool9.not.i.i = icmp eq i16 %16, 0
  %17 = zext i1 %tobool9.not.i.i to i8
  %spec.select.i.i = or i8 %attrs.0.i.i, %17
  br label %fat_ioctl_get_attributes.exit

fat_ioctl_get_attributes.exit:                    ; preds = %land.lhs.true.i.i, %fat_mode_can_hold_ro.exit.i.i.fat_ioctl_get_attributes.exit_crit_edge, %if.then.i.i.i.fat_ioctl_get_attributes.exit_crit_edge
  %attrs.1.i.i = phi i8 [ %attrs.0.i.i, %fat_mode_can_hold_ro.exit.i.i.fat_ioctl_get_attributes.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ], [ %conv4.i.i, %if.then.i.i.i.fat_ioctl_get_attributes.exit_crit_edge ]
  %conv.i = zext i8 %attrs.1.i.i to i32
  tail call void @up_read(ptr noundef %i_rwsem.i.i) #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 32) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !34
  %and.i.i = and i32 %20, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv.i, i32 -1226833921) #7, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp.i = icmp eq i16 %28, 16384
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ia.i) #7
  %29 = call ptr @memset(ptr %ia.i, i32 255, i32 80)
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 44) #7
  %30 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i15 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i15 to ptr
  %cpu_domain.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i16) #3, !srcloc !34
  %and.i.i17 = and i32 %32, -13
  %or.i.i18 = or i32 %and.i.i17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i18) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #7, !srcloc !38
  %asmresult.i = extractvalue { i32, i32 } %33, 0
  %asmresult4.i = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb2.fat_ioctl_set_attributes.exit_crit_edge

sw.bb2.fat_ioctl_set_attributes.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_set_attributes.exit

if.end.i:                                         ; preds = %sw.bb2
  %call6.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.fat_ioctl_set_attributes.exit_crit_edge

if.end.i.fat_ioctl_set_attributes.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_set_attributes.exit

if.end9.i:                                        ; preds = %if.end.i
  %i_rwsem.i.i19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i19) #7
  %and10.i = and i32 %asmresult4.i, 231
  %i_attrs.i = getelementptr i8, ptr %1, i32 -128
  %34 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_attrs.i, align 8
  %and12.i = and i32 %35, 8
  %cond.i = select i1 %cmp.i, i32 16, i32 0
  %or.i = or i32 %and10.i, %cond.i
  %or14.i = or i32 %or.i, %and12.i
  %conv.i.i20 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %38)
  %cmp.i.i21 = icmp eq i16 %38, 16384
  %conv4.i.i22 = or i8 %conv.i.i20, 16
  %attrs.0.i.i23 = select i1 %cmp.i.i21, i8 %conv4.i.i22, i8 %conv.i.i20
  br i1 %cmp.i.i21, label %if.then.i.i.i28, label %if.end9.i.fat_mode_can_hold_ro.exit.i.i29_crit_edge

if.end9.i.fat_mode_can_hold_ro.exit.i.i29_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_mode_can_hold_ro.exit.i.i29

if.then.i.i.i28:                                  ; preds = %if.end9.i
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i24 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i.i.i.i24, align 16
  %rodir.i.i.i25 = getelementptr inbounds %struct.msdos_sb_info, ptr %42, i32 0, i32 19, i32 12
  %43 = ptrtoint ptr %rodir.i.i.i25 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i.i26 = load i16, ptr %rodir.i.i.i25, align 4
  %44 = and i16 %bf.load.i.i.i26, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i.i.i27 = icmp eq i16 %44, 0
  br i1 %tobool.not.i.i.i27, label %if.then.i.i.i28.fat_make_attrs.exit.i_crit_edge, label %if.then.i.i.i28.fat_mode_can_hold_ro.exit.i.i29_crit_edge

if.then.i.i.i28.fat_mode_can_hold_ro.exit.i.i29_crit_edge: ; preds = %if.then.i.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_mode_can_hold_ro.exit.i.i29

if.then.i.i.i28.fat_make_attrs.exit.i_crit_edge:  ; preds = %if.then.i.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_make_attrs.exit.i

fat_mode_can_hold_ro.exit.i.i29:                  ; preds = %if.then.i.i.i28.fat_mode_can_hold_ro.exit.i.i29_crit_edge, %if.end9.i.fat_mode_can_hold_ro.exit.i.i29_crit_edge
  br label %fat_make_attrs.exit.i

fat_make_attrs.exit.i:                            ; preds = %fat_mode_can_hold_ro.exit.i.i29, %if.then.i.i.i28.fat_make_attrs.exit.i_crit_edge
  %attrs.1.i.i30 = phi i8 [ %conv4.i.i22, %if.then.i.i.i28.fat_make_attrs.exit.i_crit_edge ], [ %attrs.0.i.i23, %fat_mode_can_hold_ro.exit.i.i29 ]
  %conv16.i = zext i8 %attrs.1.i.i30 to i32
  %45 = ptrtoint ptr %ia.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65, ptr %ia.i, align 8
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %ia.i, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime.i, ptr noundef %1) #7
  br i1 %cmp.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %fat_make_attrs.exit.i
  %and.i112.i = and i32 %asmresult4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112.i)
  %tobool.not.i.i = icmp eq i32 %and.i112.i, 0
  br i1 %tobool.not.i.i, label %if.then19.i.if.then12.i.i_crit_edge, label %land.lhs.true4.i.critedge.i

if.then19.i.if.then12.i.i_crit_edge:              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i.i

land.lhs.true4.i.critedge.i:                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %rodir.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 19, i32 12
  %46 = ptrtoint ptr %rodir.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load.i.i = load i16, ptr %rodir.i.i, align 4
  %47 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool5.not.i.i = icmp eq i16 %47, 0
  %spec.select.i = select i1 %tobool5.not.i.i, i16 511, i16 365
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true4.i.critedge.i, %if.then19.i.if.then12.i.i_crit_edge
  %mode.addr.034.i.i = phi i16 [ %spec.select.i, %land.lhs.true4.i.critedge.i ], [ 511, %if.then19.i.if.then12.i.i_crit_edge ]
  %fs_dmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 19, i32 3
  br label %if.end30.i

if.else.i:                                        ; preds = %fat_make_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 8
  %50 = and i16 %49, 73
  %and.i115.i = and i32 %asmresult4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115.i)
  %tobool.not.i116.i = icmp eq i32 %and.i115.i, 0
  %mode.addr.0.i125.v.i = select i1 %tobool.not.i116.i, i16 438, i16 292
  %mode.addr.0.i125.i = or i16 %50, %mode.addr.0.i125.v.i
  %fs_fmask.i131.i = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 19, i32 2
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then12.i.i
  %fs_fmask.i131.sink.i = phi ptr [ %fs_fmask.i131.i, %if.else.i ], [ %fs_dmask.i.i, %if.then12.i.i ]
  %mode.addr.0.i125.sink.i = phi i16 [ %mode.addr.0.i125.i, %if.else.i ], [ %mode.addr.034.i.i, %if.then12.i.i ]
  %.sink.i = phi i16 [ -32768, %if.else.i ], [ 16384, %if.then12.i.i ]
  %51 = ptrtoint ptr %fs_fmask.i131.sink.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %.sink35.i136.i = load i16, ptr %fs_fmask.i131.sink.i, align 2
  %neg21.i137.i = xor i16 %.sink35.i136.i, -1
  %and22.i138.i = and i16 %mode.addr.0.i125.sink.i, %neg21.i137.i
  %or23.i139.i = or i16 %and22.i138.i, %.sink.i
  %ia_mode29.i = getelementptr inbounds %struct.iattr, ptr %ia.i, i32 0, i32 1
  %52 = ptrtoint ptr %ia_mode29.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or23.i139.i, ptr %ia_mode29.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp31.i = icmp ne i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or14.i)
  %cmp33.not.i = icmp eq i32 %or14.i, 16
  %or.cond.i = select i1 %cmp31.i, i1 true, i1 %cmp33.not.i
  br i1 %or.cond.i, label %if.end36.i, label %if.end30.i.out_unlock_inode.i_crit_edge

if.end30.i.out_unlock_inode.i_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock_inode.i

if.end36.i:                                       ; preds = %if.end30.i
  %sys_immutable.i = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 19, i32 12
  %55 = ptrtoint ptr %sys_immutable.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i = load i16, ptr %sys_immutable.i, align 4
  %56 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool37.not.i = icmp eq i16 %56, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end45.i_crit_edge, label %land.lhs.true38.i

if.end36.i.if.end45.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

land.lhs.true38.i:                                ; preds = %if.end36.i
  %or39.i = or i32 %asmresult4.i, %conv16.i
  %and40.i = and i32 %or39.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true38.i.if.end45.i_crit_edge, label %land.lhs.true42.i

land.lhs.true38.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

land.lhs.true42.i:                                ; preds = %land.lhs.true38.i
  %call43.i = call zeroext i1 @capable(i32 noundef 9) #7
  br i1 %call43.i, label %land.lhs.true42.i.if.end45.i_crit_edge, label %land.lhs.true42.i.out_unlock_inode.i_crit_edge

land.lhs.true42.i.out_unlock_inode.i_crit_edge:   ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock_inode.i

land.lhs.true42.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %land.lhs.true42.i.if.end45.i_crit_edge, %land.lhs.true38.i.if.end45.i_crit_edge, %if.end36.i.if.end45.i_crit_edge
  %dentry.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dentry.i, align 4
  %call46.i = call i32 @security_inode_setattr(ptr noundef %58, ptr noundef nonnull %ia.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.out_unlock_inode.i_crit_edge

if.end45.i.out_unlock_inode.i_crit_edge:          ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock_inode.i

if.end49.i:                                       ; preds = %if.end45.i
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %59 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %63 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dentry.i, align 4
  %call53.i = call i32 @fat_setattr(ptr noundef %62, ptr noundef %64, ptr noundef nonnull %ia.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end49.i.out_unlock_inode.i_crit_edge

if.end49.i.out_unlock_inode.i_crit_edge:          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock_inode.i

if.end56.i:                                       ; preds = %if.end49.i
  %65 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dentry.i, align 4
  %67 = ptrtoint ptr %ia.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ia.i, align 8
  %and.i = shl i32 %68, 1
  %69 = and i32 %and.i, 4
  %and1.i = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %mask.1.i = select i1 %tobool2.not.i, i32 %69, i32 4
  %or9.i = or i32 %mask.1.i, 2
  %and6.i = lshr i32 %68, 2
  %70 = and i32 %and6.i, 2
  %71 = or i32 %mask.1.i, %70
  %and11.i = and i32 %68, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and11.i)
  %cmp.i50 = icmp eq i32 %and11.i, 48
  br i1 %cmp.i50, label %if.then12.i, label %if.else.i51

if.then12.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %or13.i = or i32 %70, 4
  br label %if.end25.i

if.else.i51:                                      ; preds = %if.end56.i
  %and14.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #9
  %or17.i = or i32 %71, 1
  br label %if.end25.i

if.else18.i:                                      ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %spec.select48.i = select i1 %tobool20.not.i, i32 %71, i32 %or9.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %if.then16.i, %if.then12.i
  %mask.3.i = phi i32 [ %or13.i, %if.then12.i ], [ %or17.i, %if.then16.i ], [ %spec.select48.i, %if.else18.i ]
  %and26.i = shl i32 %68, 2
  %72 = and i32 %and26.i, 4
  %73 = or i32 %mask.3.i, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool31.not.i = icmp eq i32 %73, 0
  br i1 %tobool31.not.i, label %if.end25.i.fsnotify_change.exit_crit_edge, label %if.then32.i

if.end25.i.fsnotify_change.exit_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_change.exit

if.then32.i:                                      ; preds = %if.end25.i
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 5
  %74 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i52 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %i_sb.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb.i.i.i52, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #7
  %78 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i.i53 = icmp eq i32 %79, 0
  br i1 %cmp.i.i.i53, label %if.then32.i.fsnotify_change.exit_crit_edge, label %if.end.i.i.i54

if.then32.i.fsnotify_change.exit_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_change.exit

if.end.i.i.i54:                                   ; preds = %if.then32.i
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %75, align 8
  %82 = and i16 %81, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %82)
  %cmp2.i.i.i = icmp eq i16 %82, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i54.if.end8.i.i.i_crit_edge

if.end.i.i.i54.if.end8.i.i.i_crit_edge:           ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i54
  %or.i.i.i = or i32 %73, 1073741824
  %83 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %66, align 8
  %and5.i.i.i = and i32 %84, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i55 = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i55, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i54.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ %or.i.i.i, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ %73, %if.end.i.i.i54.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 3
  %85 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %86, %66
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %66, i32 noundef %mask.addr.0.i.i.i, ptr noundef %66, i32 noundef 3) #7
  br label %fsnotify_change.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ %or.i.i.i, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %66, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %75, i32 noundef 0) #7
  br label %fsnotify_change.exit

fsnotify_change.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.then32.i.fsnotify_change.exit_crit_edge, %if.end25.i.fsnotify_change.exit_crit_edge
  %87 = ptrtoint ptr %sys_immutable.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load62.i = load i16, ptr %sys_immutable.i, align 4
  %88 = and i16 %bf.load62.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool66.not.i = icmp eq i16 %88, 0
  br i1 %tobool66.not.i, label %fsnotify_change.exit.if.end76.i_crit_edge, label %if.then67.i

fsnotify_change.exit.if.end76.i_crit_edge:        ; preds = %fsnotify_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then67.i:                                      ; preds = %fsnotify_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags73.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %89 = ptrtoint ptr %i_flags73.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_flags73.i, align 4
  %and74.i = and i32 %90, -9
  %and68.i = shl i32 %asmresult4.i, 1
  %91 = and i32 %and68.i, 8
  %or71.sink.i = or i32 %and74.i, %91
  store i32 %or71.sink.i, ptr %i_flags73.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then67.i, %fsnotify_change.exit.if.end76.i_crit_edge
  %92 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 33
  %94 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %1, align 8
  %98 = and i16 %97, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %98)
  %cmp.i.i43 = icmp eq i16 %98, 16384
  br i1 %cmp.i.i43, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end76.i
  %rodir.i.i44 = getelementptr inbounds %struct.msdos_sb_info, ptr %95, i32 0, i32 19, i32 12
  %99 = ptrtoint ptr %rodir.i.i44 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i.i45 = load i16, ptr %rodir.i.i44, align 4
  %100 = and i16 %bf.load.i.i45, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i.i46 = icmp eq i16 %100, 0
  br i1 %tobool.not.i.i46, label %if.then.i.i.if.else.i48_crit_edge, label %if.end.i.i

if.then.i.i.if.else.i48_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i48

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_dmask.i.i47 = getelementptr inbounds %struct.msdos_sb_info, ptr %95, i32 0, i32 19, i32 3
  br label %fat_mode_can_hold_ro.exit.i

if.else.i.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %95, i32 0, i32 19, i32 2
  br label %fat_mode_can_hold_ro.exit.i

fat_mode_can_hold_ro.exit.i:                      ; preds = %if.else.i.i, %if.end.i.i
  %mask.0.in.in.i.i = phi ptr [ %fs_dmask.i.i47, %if.end.i.i ], [ %fs_fmask.i.i, %if.else.i.i ]
  %101 = ptrtoint ptr %mask.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %mask.0.in.i.i = load i16, ptr %mask.0.in.in.i.i, align 2
  %mask.0.i.i = and i16 %mask.0.in.i.i, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %mask.0.i.i)
  %tobool13.not.i.not.i = icmp eq i16 %mask.0.i.i, 146
  br i1 %tobool13.not.i.not.i, label %fat_mode_can_hold_ro.exit.i.if.else.i48_crit_edge, label %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge

fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_save_attrs.exit

fat_mode_can_hold_ro.exit.i.if.else.i48_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i48

if.else.i48:                                      ; preds = %fat_mode_can_hold_ro.exit.i.if.else.i48_crit_edge, %if.then.i.i.if.else.i48_crit_edge
  br label %fat_save_attrs.exit

fat_save_attrs.exit:                              ; preds = %if.else.i48, %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge
  %.sink12.i = phi i32 [ 47, %if.else.i48 ], [ 46, %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge ]
  %102 = and i32 %.sink12.i, %or14.i
  %103 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %i_attrs.i, align 8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %out_unlock_inode.i

out_unlock_inode.i:                               ; preds = %fat_save_attrs.exit, %if.end49.i.out_unlock_inode.i_crit_edge, %if.end45.i.out_unlock_inode.i_crit_edge, %land.lhs.true42.i.out_unlock_inode.i_crit_edge, %if.end30.i.out_unlock_inode.i_crit_edge
  %err.0.i = phi i32 [ %call46.i, %if.end45.i.out_unlock_inode.i_crit_edge ], [ %call53.i, %if.end49.i.out_unlock_inode.i_crit_edge ], [ 0, %fat_save_attrs.exit ], [ -22, %if.end30.i.out_unlock_inode.i_crit_edge ], [ -1, %land.lhs.true42.i.out_unlock_inode.i_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i.i19) #7
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %fat_ioctl_set_attributes.exit

fat_ioctl_set_attributes.exit:                    ; preds = %out_unlock_inode.i, %if.end.i.fat_ioctl_set_attributes.exit_crit_edge, %sw.bb2.fat_ioctl_set_attributes.exit_crit_edge
  %err.1.i = phi i32 [ %asmresult.i, %sw.bb2.fat_ioctl_set_attributes.exit_crit_edge ], [ %call6.i, %if.end.i.fat_ioctl_set_attributes.exit_crit_edge ], [ %err.0.i, %out_unlock_inode.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ia.i) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb.i31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %104 = ptrtoint ptr %i_sb.i31 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i31, align 4
  %s_fs_info.i.i32 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i.i32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i.i32, align 16
  %vol_id.i = getelementptr inbounds %struct.msdos_sb_info, ptr %107, i32 0, i32 25
  %108 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vol_id.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 122) #7
  %110 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i33 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i33 to ptr
  %cpu_domain.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 4
  %112 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i34) #3, !srcloc !34
  %and.i.i35 = and i32 %112, -13
  %or.i.i36 = or i32 %and.i.i35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i36) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %113 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %109, i32 -1226833921) #7, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %i_sb.i37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %114 = ptrtoint ptr %i_sb.i37 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb.i37, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range.i) #7
  %116 = getelementptr inbounds %struct.fstrim_range, ptr %range.i, i32 0, i32 2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 26
  %117 = call ptr @memset(ptr %range.i, i32 255, i32 24)
  %118 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %119, i32 0, i32 18
  %120 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bd_queue.i.i, align 4
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call1.i, label %if.end.i39, label %sw.bb6.fat_ioctl_fitrim.exit_crit_edge

sw.bb6.fat_ioctl_fitrim.exit_crit_edge:           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_fitrim.exit

if.end.i39:                                       ; preds = %sw.bb6
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %121, i32 0, i32 11
  %122 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %queue_flags.i, align 4
  %124 = and i32 %123, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i38 = icmp eq i32 %124, 0
  br i1 %tobool.not.i38, label %if.end.i39.fat_ioctl_fitrim.exit_crit_edge, label %if.end4.i

if.end.i39.fat_ioctl_fitrim.exit_crit_edge:       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_fitrim.exit

if.end4.i:                                        ; preds = %if.end.i39
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end4.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.if.then11.i.i.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  %125 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #10
  %asmresult.i.i.i = extractvalue { i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i40, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !41

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i40:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 24) #7
  %126 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !34
  %and.i.i.i.i.i = and i32 %128, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8.i, label %if.end.i.i.i40.if.then11.i.i.i_crit_edge, !prof !41

if.end.i.i.i40.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i40.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end4.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i40.if.then11.i.i.i_crit_edge ], [ 24, %if.end4.i.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %range.i, i32 %sub.i.i.i
  %129 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %fat_ioctl_fitrim.exit

if.end8.i:                                        ; preds = %if.end.i.i.i40
  %130 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %116, align 8
  %conv.i41 = trunc i64 %131 to i32
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %121, i32 0, i32 37, i32 18
  %132 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %discard_granularity.i, align 4
  %134 = call i32 @llvm.umax.i32(i32 %133, i32 %conv.i41) #7
  %conv10.i = zext i32 %134 to i64
  %135 = ptrtoint ptr %116 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv10.i, ptr %116, align 8
  %call12.i = call i32 @fat_trim_fs(ptr noundef %1, ptr noundef nonnull %range.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end8.i.fat_ioctl_fitrim.exit_crit_edge, label %if.then.i34.i

if.end8.i.fat_ioctl_fitrim.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_fitrim.exit

if.then.i34.i:                                    ; preds = %if.end8.i
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i33.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i33.i, label %if.then.i34.i.fat_ioctl_fitrim.exit_crit_edge, label %copy_to_user.exit.i

if.then.i34.i.fat_ioctl_fitrim.exit_crit_edge:    ; preds = %if.then.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_ioctl_fitrim.exit

copy_to_user.exit.i:                              ; preds = %if.then.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i38.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i, i32 noundef 24) #7
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %range.i, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i42 = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %fat_ioctl_fitrim.exit

fat_ioctl_fitrim.exit:                            ; preds = %copy_to_user.exit.i, %if.then.i34.i.fat_ioctl_fitrim.exit_crit_edge, %if.end8.i.fat_ioctl_fitrim.exit_crit_edge, %if.then11.i.i.i, %if.end.i39.fat_ioctl_fitrim.exit_crit_edge, %sw.bb6.fat_ioctl_fitrim.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %sw.bb6.fat_ioctl_fitrim.exit_crit_edge ], [ -95, %if.end.i39.fat_ioctl_fitrim.exit_crit_edge ], [ %call12.i, %if.end8.i.fat_ioctl_fitrim.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i34.i.fat_ioctl_fitrim.exit_crit_edge ], [ %spec.select.i42, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fat_ioctl_fitrim.exit, %sw.bb4, %fat_ioctl_set_attributes.exit, %fat_ioctl_get_attributes.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fat_ioctl_fitrim.exit ], [ %113, %sw.bb4 ], [ %err.1.i, %fat_ioctl_set_attributes.exit ], [ %21, %fat_ioctl_get_attributes.exit ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @__generic_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %fat_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fat_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping, align 8
  %call2 = tail call i32 @sync_mapping_buffers(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %call7 = tail call i32 @blkdev_issue_flush(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_file_release(ptr noundef %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end67_crit_edge, label %land.lhs.true

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

land.lhs.true:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %flush = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 12
  %6 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %flush, align 4
  %7 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end67_crit_edge, label %if.then

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @fat_flush_inodes(ptr noundef %3, ptr noundef %inode, ptr noundef null) #7
  br label %__here

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@fat_file_release, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 2, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  %call66 = tail call i32 @io_schedule_timeout(i32 noundef 10) #7
  br label %if.end67

if.end67:                                         ; preds = %__here, %land.lhs.true.if.end67_crit_edge, %entry.if.end67_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp = icmp eq i16 %10, -32768
  br i1 %cmp, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool6.not = icmp eq i32 %mode, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %11 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_blocks, align 8
  %shl = shl i64 %12, 9
  %add = add i64 %len, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl)
  %cmp8.not = icmp sgt i64 %add, %shl
  br i1 %cmp8.not, label %if.end11, label %if.then7.error_crit_edge

if.then7.error_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %if.then7
  %sub = sub i64 %add, %shl
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cluster_size, align 4
  %sub13 = add i32 %14, -1
  %conv14 = zext i32 %sub13 to i64
  %add15 = add i64 %sub, %conv14
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cluster_bits, align 2
  %sh_prom = zext i16 %16 to i64
  %shr = ashr i64 %add15, %sh_prom
  %conv17 = trunc i64 %shr to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end11
  %nr_cluster.0 = phi i32 [ %conv17, %if.end11 ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_cluster.0)
  %cmp18 = icmp sgt i32 %nr_cluster.0, 0
  br i1 %cmp18, label %while.body, label %while.cond.error_crit_edge

while.cond.error_crit_edge:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %nr_cluster.0, -1
  %call20 = tail call i32 @fat_add_cluster(ptr noundef %3) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %while.body.while.cond_crit_edge, label %while.body.error_crit_edge

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.else:                                          ; preds = %if.end4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.else
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !43
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %18 = tail call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %19) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %19) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call ptr @llvm.returnaddress(i32 0) #7
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %21) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %21) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !44
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !45

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #7, !srcloc !46
  %23 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !48
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %26, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %24, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %26, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %27 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %29 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %30, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %add24 = add i64 %len, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add24, i64 %28)
  %cmp26.not = icmp sgt i64 %add24, %28
  br i1 %cmp26.not, label %if.end29, label %i_size_read.exit.error_crit_edge

i_size_read.exit.error_crit_edge:                 ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end29:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @fat_cont_expand(ptr noundef %3, i64 noundef %add24)
  br label %error

error:                                            ; preds = %if.end29, %i_size_read.exit.error_crit_edge, %while.body.error_crit_edge, %while.cond.error_crit_edge, %if.then7.error_crit_edge
  %err.1 = phi i32 [ 0, %if.then7.error_crit_edge ], [ 0, %i_size_read.exit.error_crit_edge ], [ %call31, %if.end29 ], [ 0, %while.cond.error_crit_edge ], [ %call20, %while.body.error_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %error ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_truncate_blocks(ptr noundef %inode, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %fatent.i = alloca %struct.fat_entry, align 4
  %fclus.i = alloca i32, align 4
  %dclus.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %cluster_size1 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cluster_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_size1, align 4
  %mmu_private = getelementptr i8, ptr %inode, i32 -144
  %6 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp = icmp sgt i64 %7, %offset
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %offset, ptr %mmu_private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %add = add i64 %conv, %offset
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cluster_bits, align 2
  %sh_prom = zext i16 %10 to i64
  %shr = ashr i64 %add, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %i_start1.i = getelementptr i8, ptr %inode, i32 -136
  %11 = ptrtoint ptr %i_start1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_start1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.end.fat_free.exit_crit_edge, label %if.end.i

if.end.fat_free.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_free.exit

if.end.i:                                         ; preds = %if.end
  tail call void @fat_cache_inval_inode(ptr noundef %inode) #7
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %16, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.i.lor.end.i_crit_edge

if.end.i.lor.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags.i, align 4
  %and3.i = and i32 %18, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end.i.lor.end.i_crit_edge
  %19 = phi i1 [ true, %if.end.i.lor.end.i_crit_edge ], [ %tobool4.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %19 to i32
  %20 = ptrtoint ptr %i_start1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_start1.i, align 8
  %i_logstart8.i = getelementptr i8, ptr %inode, i32 -132
  %22 = ptrtoint ptr %i_logstart8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_logstart8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %tobool9.not.i = icmp eq i32 %conv6, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %lor.end.i.if.end15.i_crit_edge

lor.end.i.if.end15.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then10.i:                                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %i_start1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %i_start1.i, align 8
  %25 = ptrtoint ptr %i_logstart8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %i_logstart8.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %lor.end.i.if.end15.i_crit_edge
  %i_attrs.i = getelementptr i8, ptr %inode, i32 -128
  %26 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_attrs.i, align 8
  %or.i = or i32 %27, 32
  store i32 %or.i, ptr %i_attrs.i, align 8
  %call17.i = tail call i32 @fat_truncate_time(ptr noundef %inode, ptr noundef null, i32 noundef 6) #7
  br i1 %19, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end15.i
  %call20.i = tail call i32 @fat_sync_inode(ptr noundef %inode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then19.i.if.end28.i_crit_edge, label %if.then22.i

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %i_start1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %i_start1.i, align 8
  %29 = ptrtoint ptr %i_logstart8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %i_logstart8.i, align 4
  br label %fat_free.exit

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then19.i.if.end28.i_crit_edge
  br i1 %tobool9.not.i, label %if.end28.i.if.end62.i_crit_edge, label %if.then30.i

if.end28.i.if.end62.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent.i) #7
  %30 = getelementptr inbounds %struct.fat_entry, ptr %fatent.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.fat_entry, ptr %fatent.i, i32 0, i32 2
  %32 = getelementptr inbounds i8, ptr %fatent.i, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus.i) #7
  %34 = ptrtoint ptr %fclus.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %fclus.i, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclus.i) #7
  %35 = ptrtoint ptr %dclus.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %dclus.i, align 4, !annotation !51
  %sub.i = add i32 %conv6, -1
  %call31.i = call i32 @fat_get_cluster(ptr noundef %inode, i32 noundef %sub.i, ptr noundef nonnull %fclus.i, ptr noundef nonnull %dclus.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %call31.i)
  %cmp35.i = icmp eq i32 %call31.i, 268435455
  %or.cond.i = or i1 %cmp32.i, %cmp35.i
  br i1 %or.cond.i, label %if.then30.i.cleanup.thread.i_crit_edge, label %if.end38.i

if.then30.i.cleanup.thread.i_crit_edge:           ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end38.i:                                       ; preds = %if.then30.i
  %36 = ptrtoint ptr %fatent.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %fatent.i, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %30, align 4
  %38 = call ptr @memset(ptr %31, i32 0, i32 16)
  %39 = ptrtoint ptr %dclus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dclus.i, align 4
  %call39.i = call i32 @fat_ent_read(ptr noundef %inode, ptr noundef nonnull %fatent.i, i32 noundef %40) #7
  %41 = zext i32 %call39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call39.i, label %if.else46.i [
    i32 268435455, label %if.then41.i
    i32 0, label %if.then44.i
  ]

if.then41.i:                                      ; preds = %if.end38.i
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %30, align 4
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp14.i.i = icmp sgt i32 %44, 0
  br i1 %cmp14.i.i, label %if.then41.i.for.body.i.i_crit_edge, label %if.then41.i.cleanup.thread.i_crit_edge

if.then41.i.cleanup.thread.i_crit_edge:           ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then41.i.for.body.i.i_crit_edge:               ; preds = %if.then41.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %if.then41.i.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.then41.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fat_entry, ptr %fatent.i, i32 0, i32 3, i32 %i.015.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %46) #7
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %47 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %31, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %48
  br i1 %cmp.i.i, label %brelse.exit.i.i.for.body.i.i_crit_edge, label %brelse.exit.i.i.cleanup.thread.i_crit_edge

brelse.exit.i.i.cleanup.thread.i_crit_edge:       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_pos.i = getelementptr i8, ptr %inode, i32 -120
  %49 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_pos.i, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fat_free, i64 noundef %50) #11
  br label %if.end55.i

if.else46.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp47.i = icmp sgt i32 %call39.i, 0
  br i1 %cmp47.i, label %if.then48.i, label %if.else46.i.if.end55.i_crit_edge

if.else46.i.if.end55.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then48.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  %call49.i = call i32 @fat_ent_write(ptr noundef %inode, ptr noundef nonnull %fatent.i, i32 noundef 268435455, i32 noundef %lor.ext.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  %spec.select.i = select i1 %tobool50.not.i, i32 %call39.i, i32 %call49.i
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then48.i, %if.else46.i.if.end55.i_crit_edge, %if.then44.i
  %ret.0.i = phi i32 [ -5, %if.then44.i ], [ %call39.i, %if.else46.i.if.end55.i_crit_edge ], [ %spec.select.i, %if.then48.i ]
  %51 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %30, align 4
  %52 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp14.i13.i = icmp sgt i32 %53, 0
  br i1 %cmp14.i13.i, label %if.end55.i.for.body.i17.i_crit_edge, label %if.end55.i.cleanup.i_crit_edge

if.end55.i.cleanup.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end55.i.for.body.i17.i_crit_edge:              ; preds = %if.end55.i
  br label %for.body.i17.i

for.body.i17.i:                                   ; preds = %brelse.exit.i21.i.for.body.i17.i_crit_edge, %if.end55.i.for.body.i17.i_crit_edge
  %i.015.i14.i = phi i32 [ %inc.i19.i, %brelse.exit.i21.i.for.body.i17.i_crit_edge ], [ 0, %if.end55.i.for.body.i17.i_crit_edge ]
  %arrayidx.i15.i = getelementptr %struct.fat_entry, ptr %fatent.i, i32 0, i32 3, i32 %i.015.i14.i
  %54 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i15.i, align 4
  %tobool.not.i.i16.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i16.i, label %for.body.i17.i.brelse.exit.i21.i_crit_edge, label %if.then.i.i18.i

for.body.i17.i.brelse.exit.i21.i_crit_edge:       ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i21.i

if.then.i.i18.i:                                  ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %55) #7
  br label %brelse.exit.i21.i

brelse.exit.i21.i:                                ; preds = %if.then.i.i18.i, %for.body.i17.i.brelse.exit.i21.i_crit_edge
  %inc.i19.i = add nuw nsw i32 %i.015.i14.i, 1
  %56 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %31, align 4
  %cmp.i20.i = icmp slt i32 %inc.i19.i, %57
  br i1 %cmp.i20.i, label %brelse.exit.i21.i.for.body.i17.i_crit_edge, label %brelse.exit.i21.i.cleanup.i_crit_edge

brelse.exit.i21.i.cleanup.i_crit_edge:            ; preds = %brelse.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

brelse.exit.i21.i.for.body.i17.i_crit_edge:       ; preds = %brelse.exit.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i17.i

cleanup.thread.i:                                 ; preds = %brelse.exit.i.i.cleanup.thread.i_crit_edge, %if.then41.i.cleanup.thread.i_crit_edge, %if.then30.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent.i) #7
  br label %fat_free.exit

cleanup.i:                                        ; preds = %brelse.exit.i21.i.cleanup.i_crit_edge, %if.end55.i.cleanup.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp56.i = icmp slt i32 %ret.0.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent.i) #7
  br i1 %cmp56.i, label %cleanup.i.fat_free.exit_crit_edge, label %cleanup.i.if.end62.i_crit_edge

cleanup.i.if.end62.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

cleanup.i.fat_free.exit_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_free.exit

if.end62.i:                                       ; preds = %cleanup.i.if.end62.i_crit_edge, %if.end28.i.if.end62.i_crit_edge
  %free_start.1.i = phi i32 [ %ret.0.i, %cleanup.i.if.end62.i_crit_edge ], [ %21, %if.end28.i.if.end62.i_crit_edge ]
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %cluster_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cluster_bits.i, align 2
  %conv.i = zext i16 %61 to i32
  %sub64.i = add nsw i32 %conv.i, -9
  %shl.i = shl i32 %conv6, %sub64.i
  %conv65.i = sext i32 %shl.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %62 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv65.i, ptr %i_blocks.i, align 8
  %call66.i = call i32 @fat_free_clusters(ptr noundef %inode, i32 noundef %free_start.1.i) #7
  br label %fat_free.exit

fat_free.exit:                                    ; preds = %if.end62.i, %cleanup.i.fat_free.exit_crit_edge, %cleanup.thread.i, %if.then22.i, %if.end.fat_free.exit_crit_edge
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  %call9 = call i32 @fat_flush_inodes(ptr noundef %64, ptr noundef %inode, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_getattr(ptr noundef %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef %mnt_userns, ptr noundef %3, ptr noundef %stat) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cluster_size, align 4
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %10 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blksize, align 4
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i14 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i14, align 16
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 19, i32 10
  %14 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nfs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp = icmp eq i8 %15, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inode_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #7
  %i_pos1.i = getelementptr i8, ptr %3, i32 -120
  %16 = ptrtoint ptr %i_pos1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_pos1.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #7
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %18 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ino, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  %and = and i32 %7, 65920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %allow_utime1.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 11
  %8 = ptrtoint ptr %allow_utime1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %allow_utime1.i, align 2
  %10 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %20, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.then.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

if.then.i_uid_into_mnt.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  %cmp.i21.i.i.i = icmp eq ptr %20, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %20, [1 x i32] %22) #7
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_uid_into_mnt.exit.i

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i.i) #7
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, %if.then.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ -1, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge ], [ %.unpack.i.i, %if.then.i_uid_into_mnt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %retval.sroa.0.0.i.i.i
  br i1 %cmp.i.i, label %i_uid_into_mnt.exit.i.if.end8_crit_edge, label %if.then.i

i_uid_into_mnt.exit.i.if.end8_crit_edge:          ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i:                                        ; preds = %i_uid_into_mnt.exit.i
  %23 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i25.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 53
  %25 = ptrtoint ptr %s_user_ns.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_user_ns.i.i25.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.i26.i = load i32, ptr %i_gid.i.i, align 8
  %28 = insertvalue [1 x i32] undef, i32 %.unpack.i26.i, 0
  %cmp.i.i.i28.i = icmp eq ptr %26, %mnt_userns
  %spec.select.i.i.i29.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i28.i
  br i1 %spec.select.i.i.i29.i, label %if.then.i.i_gid_into_mnt.exit.i_crit_edge, label %if.end.i.i31.i

if.then.i.i_gid_into_mnt.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_gid_into_mnt.exit.i

if.end.i.i31.i:                                   ; preds = %if.then.i
  %cmp.i21.i.i30.i = icmp eq ptr %26, @init_user_ns
  br i1 %cmp.i21.i.i30.i, label %if.end.i.i31.i.if.end7.i.i35.i_crit_edge, label %if.else.i.i33.i

if.end.i.i31.i.if.end7.i.i35.i_crit_edge:         ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i35.i

if.else.i.i33.i:                                  ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i32.i = tail call i32 @from_kgid(ptr noundef %26, [1 x i32] %28) #7
  br label %if.end7.i.i35.i

if.end7.i.i35.i:                                  ; preds = %if.else.i.i33.i, %if.end.i.i31.i.if.end7.i.i35.i_crit_edge
  %gid.0.i.i.i = phi i32 [ %call6.i.i32.i, %if.else.i.i33.i ], [ %.unpack.i26.i, %if.end.i.i31.i.if.end7.i.i35.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i.i)
  %cmp.i.i34.i = icmp eq i32 %gid.0.i.i.i, -1
  br i1 %cmp.i.i34.i, label %if.end7.i.i35.i.i_gid_into_mnt.exit.i_crit_edge, label %if.end9.i.i37.i

if.end7.i.i35.i.i_gid_into_mnt.exit.i_crit_edge:  ; preds = %if.end7.i.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_gid_into_mnt.exit.i

if.end9.i.i37.i:                                  ; preds = %if.end7.i.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i36.i = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i.i) #7
  br label %i_gid_into_mnt.exit.i

i_gid_into_mnt.exit.i:                            ; preds = %if.end9.i.i37.i, %if.end7.i.i35.i.i_gid_into_mnt.exit.i_crit_edge, %if.then.i.i_gid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i38.i = phi i32 [ %call10.i.i36.i, %if.end9.i.i37.i ], [ -1, %if.end7.i.i35.i.i_gid_into_mnt.exit.i_crit_edge ], [ %.unpack.i26.i, %if.then.i.i_gid_into_mnt.exit.i_crit_edge ]
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i38.i, 0
  %call11.i = tail call i32 @in_group_p([1 x i32] %.fca.0.insert.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %29 = lshr i16 %9, 3
  %spec.select.i = select i1 %tobool.not.i, i16 %9, i16 %29
  %30 = and i16 %spec.select.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool15.not.i = icmp eq i16 %30, 0
  br i1 %tobool15.not.i, label %i_gid_into_mnt.exit.i.if.end8_crit_edge, label %if.then5

i_gid_into_mnt.exit.i.if.end8_crit_edge:          ; preds = %i_gid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %i_gid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attr, align 8
  %and7 = and i32 %32, -65921
  store i32 %and7, ptr %attr, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %i_gid_into_mnt.exit.i.if.end8_crit_edge, %i_uid_into_mnt.exit.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #7
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %7, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %quiet = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %34 = ptrtoint ptr %quiet to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %quiet, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool13.not = icmp sgt i16 %bf.load, -1
  %spec.select = select i1 %tobool13.not, i32 %call9, i32 0
  br label %out

if.end16:                                         ; preds = %if.end8
  %and18 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end32_crit_edge, label %if.then20

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then20:                                        ; preds = %if.end16
  tail call void @inode_dio_wait(ptr noundef %5) #7
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %35 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp = icmp sgt i64 %36, %38
  br i1 %cmp, label %if.then21, label %if.then20.if.end32_crit_edge

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then21:                                        ; preds = %if.then20
  %call23 = tail call fastcc i32 @fat_cont_expand(ptr noundef %5, i64 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.then21
  %39 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %cmp26 = icmp eq i32 %40, 8
  br i1 %cmp26, label %lor.lhs.false.out_crit_edge, label %if.end28

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %and30 = and i32 %40, -9
  %41 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and30, ptr %attr, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.then20.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  %42 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr, align 8
  %and34 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.lor.lhs.false39_crit_edge, label %land.lhs.true

if.end32.lor.lhs.false39_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false39

land.lhs.true:                                    ; preds = %if.end32
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %options36 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  %44 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack175 = load i32, ptr %ia_uid, align 8
  %45 = ptrtoint ptr %options36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack176 = load i32, ptr %options36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack175, i32 %.unpack176)
  %cmp.i = icmp eq i32 %.unpack175, %.unpack176
  br i1 %cmp.i, label %land.lhs.true.lor.lhs.false39_crit_edge, label %land.lhs.true.if.then58.critedge_crit_edge

land.lhs.true.if.then58.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58.critedge

land.lhs.true.lor.lhs.false39_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true.lor.lhs.false39_crit_edge, %if.end32.lor.lhs.false39_crit_edge
  %and41 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false39.lor.lhs.false48_crit_edge, label %land.lhs.true43

lor.lhs.false39.lor.lhs.false48_crit_edge:        ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false48

land.lhs.true43:                                  ; preds = %lor.lhs.false39
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %fs_gid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack = load i32, ptr %ia_gid, align 4
  %47 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack174 = load i32, ptr %fs_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack174)
  %cmp.i178 = icmp eq i32 %.unpack, %.unpack174
  br i1 %cmp.i178, label %land.lhs.true43.lor.lhs.false48_crit_edge, label %land.lhs.true43.if.then58.critedge_crit_edge

land.lhs.true43.if.then58.critedge_crit_edge:     ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58.critedge

land.lhs.true43.lor.lhs.false48_crit_edge:        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %land.lhs.true43.lor.lhs.false48_crit_edge, %lor.lhs.false39.lor.lhs.false48_crit_edge
  %and50 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %lor.lhs.false48.if.end80_crit_edge, label %land.lhs.true52

lor.lhs.false48.if.end80_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

land.lhs.true52:                                  ; preds = %lor.lhs.false48
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %48 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ia_mode, align 4
  %50 = and i16 %49, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool54.not = icmp eq i16 %50, 0
  br i1 %tobool54.not, label %if.then71, label %land.lhs.true52.if.then58.critedge_crit_edge

land.lhs.true52.if.then58.critedge_crit_edge:     ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58.critedge

if.then58.critedge:                               ; preds = %land.lhs.true52.if.then58.critedge_crit_edge, %land.lhs.true43.if.then58.critedge_crit_edge, %land.lhs.true.if.then58.critedge_crit_edge
  %quiet60 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %51 = ptrtoint ptr %quiet60 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load61 = load i16, ptr %quiet60, align 4
  %bf.load61.lobit = ashr i16 %bf.load61, 15
  %52 = xor i16 %bf.load61.lobit, -1
  %.not = sext i16 %52 to i32
  br label %out

if.then71:                                        ; preds = %land.lhs.true52
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %5, align 8
  %55 = and i16 %54, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %55)
  %cmp.i179 = icmp eq i16 %55, -32768
  %fs_fmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 2
  %fs_dmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 3
  %mask.0.in.i = select i1 %cmp.i179, ptr %fs_fmask.i, ptr %fs_dmask.i
  %56 = ptrtoint ptr %mask.0.in.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %mask.0.i = load i16, ptr %mask.0.in.i, align 2
  %57 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ia_mode, align 2
  %conv4.i = zext i16 %mask.0.i to i32
  %59 = and i16 %mask.0.i, 4095
  %neg.i = xor i16 %59, 4095
  %and5.i = and i16 %neg.i, %58
  %conv7.i = zext i16 %and5.i to i32
  %and8.i = and i32 %conv7.i, 365
  %60 = and i16 %54, 365
  %and11.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and8.i, i32 %and11.i)
  %cmp12.not.i = icmp eq i32 %and8.i, %and11.i
  br i1 %cmp12.not.i, label %if.end15.i, label %if.then71.if.then76_crit_edge

if.then71.if.then76_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.end15.i:                                       ; preds = %if.then71
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %61 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %55)
  %cmp.i.i180 = icmp eq i16 %55, 16384
  br i1 %cmp.i.i180, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  %rodir.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 19, i32 12
  %65 = ptrtoint ptr %rodir.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i.i = load i16, ptr %rodir.i.i, align 4
  %66 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.else29.i_crit_edge, label %if.end.i.i

if.then.i.i.if.else29.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_dmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 19, i32 3
  br label %fat_mode_can_hold_ro.exit.i

if.else.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 19, i32 2
  br label %fat_mode_can_hold_ro.exit.i

fat_mode_can_hold_ro.exit.i:                      ; preds = %if.else.i.i, %if.end.i.i
  %mask.0.in.in.i.i = phi ptr [ %fs_dmask.i.i, %if.end.i.i ], [ %fs_fmask.i.i, %if.else.i.i ]
  %67 = ptrtoint ptr %mask.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %mask.0.in.i.i = load i16, ptr %mask.0.in.in.i.i, align 2
  %mask.0.i.i = and i16 %mask.0.in.i.i, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %mask.0.i.i)
  %tobool13.not.i.not.i = icmp eq i16 %mask.0.i.i, 146
  br i1 %tobool13.not.i.not.i, label %fat_mode_can_hold_ro.exit.i.if.else29.i_crit_edge, label %if.then16.i

fat_mode_can_hold_ro.exit.i.if.else29.i_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29.i

if.then16.i:                                      ; preds = %fat_mode_can_hold_ro.exit.i
  %and18.i = and i32 %conv7.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.fat_sanitize_mode.exit_crit_edge, label %land.lhs.true.i

if.then16.i.fat_sanitize_mode.exit_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_sanitize_mode.exit

land.lhs.true.i:                                  ; preds = %if.then16.i
  %neg23.i = and i32 %conv4.i, 146
  %and24.i = xor i32 %neg23.i, 146
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %and24.i)
  %cmp25.not.i = icmp eq i32 %and18.i, %and24.i
  br i1 %cmp25.not.i, label %land.lhs.true.i.fat_sanitize_mode.exit_crit_edge, label %land.lhs.true.i.if.then76_crit_edge

land.lhs.true.i.if.then76_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

land.lhs.true.i.fat_sanitize_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_sanitize_mode.exit

if.else29.i:                                      ; preds = %fat_mode_can_hold_ro.exit.i.if.else29.i_crit_edge, %if.then.i.i.if.else29.i_crit_edge
  %and31.i = and i32 %conv7.i, 146
  %neg33.i = and i32 %conv4.i, 146
  %and34.i = xor i32 %neg33.i, 146
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.i, i32 %and34.i)
  %cmp35.not.i = icmp eq i32 %and31.i, %and34.i
  br i1 %cmp35.not.i, label %if.else29.i.fat_sanitize_mode.exit_crit_edge, label %if.else29.i.if.then76_crit_edge

if.else29.i.if.then76_crit_edge:                  ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.else29.i.fat_sanitize_mode.exit_crit_edge:     ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fat_sanitize_mode.exit

fat_sanitize_mode.exit:                           ; preds = %if.else29.i.fat_sanitize_mode.exit_crit_edge, %land.lhs.true.i.fat_sanitize_mode.exit_crit_edge, %if.then16.i.fat_sanitize_mode.exit_crit_edge
  %or41.i = or i16 %and5.i, -4096
  %and43.i = and i16 %or41.i, %58
  %68 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %and43.i, ptr %ia_mode, align 2
  br label %if.end80

if.then76:                                        ; preds = %if.else29.i.if.then76_crit_edge, %land.lhs.true.i.if.then76_crit_edge, %if.then71.if.then76_crit_edge
  %and78 = and i32 %43, -2
  %69 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and78, ptr %attr, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %fat_sanitize_mode.exit, %lor.lhs.false48.if.end80_crit_edge
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attr, align 8
  %and82 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.if.end95_crit_edge, label %if.then84

if.end80.if.end95_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then84:                                        ; preds = %if.end80
  %ia_size85 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %72 = ptrtoint ptr %ia_size85 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ia_size85, align 8
  %call86 = tail call i32 @fat_block_truncate_page(ptr noundef %5, i64 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.then84.out_crit_edge

if.then84.out_crit_edge:                          ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end89:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %truncate_lock = getelementptr i8, ptr %5, i32 -96
  tail call void @down_write(ptr noundef %truncate_lock) #7
  %74 = ptrtoint ptr %ia_size85 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ia_size85, align 8
  tail call void @truncate_setsize(ptr noundef %5, i64 noundef %75) #7
  %76 = ptrtoint ptr %ia_size85 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ia_size85, align 8
  tail call void @fat_truncate_blocks(ptr noundef %5, i64 noundef %77)
  tail call void @up_write(ptr noundef %truncate_lock) #7
  br label %if.end95

if.end95:                                         ; preds = %if.end89, %if.end80.if.end95_crit_edge
  %78 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attr, align 8
  %and97 = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end101_crit_edge, label %if.then99

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %call100 = tail call i32 @fat_truncate_time(ptr noundef %5, ptr noundef %ia_atime, i32 noundef 1) #7
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end95.if.end101_crit_edge
  %80 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %attr, align 8
  %and103 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end107_crit_edge, label %if.then105

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %call106 = tail call i32 @fat_truncate_time(ptr noundef %5, ptr noundef %ia_ctime, i32 noundef 4) #7
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101.if.end107_crit_edge
  %82 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %attr, align 8
  %and109 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end113_crit_edge, label %if.then111

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %call112 = tail call i32 @fat_truncate_time(ptr noundef %5, ptr noundef %ia_mtime, i32 noundef 2) #7
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end107.if.end113_crit_edge
  %84 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %attr, align 8
  %and115 = and i32 %85, -113
  store i32 %and115, ptr %attr, align 8
  tail call void @setattr_copy(ptr noundef %mnt_userns, ptr noundef %5, ptr noundef %attr) #7
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #7
  br label %out

out:                                              ; preds = %if.end113, %if.then84.out_crit_edge, %if.then58.critedge, %lor.lhs.false.out_crit_edge, %if.then21.out_crit_edge, %if.then12
  %error.3 = phi i32 [ %call23, %if.then21.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call86, %if.then84.out_crit_edge ], [ 0, %if.end113 ], [ %spec.select, %if.then12 ], [ %.not, %if.then58.critedge ]
  ret i32 %error.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_cont_expand(ptr noundef %inode, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  %call = tail call i32 @generic_cont_expand_simple(ptr noundef %inode, i64 noundef %size) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fat_truncate_time(ptr noundef %inode, ptr noundef null, i32 noundef 6) #7
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and4 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %sub7 = add i64 %size, -1
  %call8 = tail call i32 @filemap_fdatawrite_range(ptr noundef %1, i64 noundef %3, i64 noundef %sub7) #7
  %call9 = tail call i32 @sync_mapping_buffers(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %tobool10.not, i32 %call9, i32 %call8
  %call13 = tail call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool14.not = icmp eq i32 %spec.select, 0
  %err.1 = select i1 %tobool14.not, i32 %call13, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool17.not = icmp eq i32 %err.1, 0
  br i1 %tobool17.not, label %if.then18, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then18:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @filemap_fdatawait_range(ptr noundef %1, i64 noundef %3, i64 noundef %sub7) #7
  br label %out

out:                                              ; preds = %if.then18, %if.then6.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %err.3 = phi i32 [ %call, %entry.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %err.1, %if.then6.out_crit_edge ], [ %call21, %if.then18 ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_block_truncate_page(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_cluster(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_cont_expand_simple(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @fat_file_operations, !1, !"fat_file_operations", i1 false, i1 false}
!1 = !{!"../fs/fat/file.c", i32 203, i32 30}
!2 = !{ptr @__ksymtab_fat_getattr, !3, !"__ksymtab_fat_getattr", i1 false, i1 false}
!3 = !{!"../fs/fat/file.c", i32 411, i32 1}
!4 = !{ptr @__ksymtab_fat_setattr, !5, !"__ksymtab_fat_setattr", i1 false, i1 false}
!5 = !{!"../fs/fat/file.c", i32 561, i32 1}
!6 = !{ptr @fat_file_inode_operations, !7, !"fat_file_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/fat/file.c", i32 563, i32 31}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fat/file.c", i32 32, i32 9}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/fat/file.c", i32 180, i32 3}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/fat/file.c", i32 358, i32 4}
!21 = !{ptr @__func__.fat_free, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../fs/fat/file.c", i32 456, i32 14}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 5011609}
!35 = !{i64 5011806}
!36 = !{i64 2152497039}
!37 = !{i64 2155211299, i64 2155211579, i64 2155211913, i64 2155212247}
!38 = !{i64 2155222850, i64 2155223130, i64 2155223464, i64 2155223798}
!39 = !{i64 2152719129}
!40 = !{i64 2155232578, i64 2155232858, i64 2155233192, i64 2155233526}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2155245588}
!43 = !{i64 794976, i64 795037}
!44 = !{i64 797708}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 797993}
!47 = !{i64 2152814561}
!48 = !{i64 2152814403}
!49 = !{i64 2152814731}
!50 = !{i64 2150013031}
!51 = !{!"auto-init"}
