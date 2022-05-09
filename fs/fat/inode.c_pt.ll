; ModuleID = '/llk/IR_all_yes/fs/fat/inode.c_pt.bc'
source_filename = "../fs/fat/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fat_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_attach\09\09\09\09"
module asm "\09.long\09__crc_fat_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fat_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_detach\09\09\09\09"
module asm "\09.long\09__crc_fat_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_detach\22\09\09\09\09\09"
module asm "__kstrtabns_fat_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_build_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_build_inode\09\09\09\09"
module asm "\09.long\09__crc_fat_build_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_build_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_build_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fat_build_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_sync_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_sync_inode\09\09\09\09"
module asm "\09.long\09__crc_fat_sync_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_sync_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_sync_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fat_sync_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_fill_super\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_fill_super\09\09\09\09"
module asm "\09.long\09__crc_fat_fill_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_fill_super\22\09\09\09\09\09"
module asm "__kstrtabns_fat_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_flush_inodes\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_flush_inodes\09\09\09\09"
module asm "\09.long\09__crc_fat_flush_inodes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_flush_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_flush_inodes\22\09\09\09\09\09"
module asm "__kstrtabns_fat_flush_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.match_token = type { i32, ptr }
%struct.fat_floppy_defaults = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.inode }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.fat_boot_sector = type { [3 x i8], [8 x i8], [2 x i8], i8, i16, i8, [2 x i8], [2 x i8], i8, i16, i16, i16, i32, i32, %union.anon.82 }
%union.anon.82 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i16, [2 x i8], i32, i16, i16, [6 x i16], i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.anon.83 = type { i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fat_boot_fsinfo = type { i32, [120 x i32], i32, i32, i32, [4 x i32] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__kstrtab_fat_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_attach to i32), ptr @__kstrtab_fat_attach, ptr @__kstrtabns_fat_attach }, section "___ksymtab_gpl+fat_attach", align 4
@__kstrtab_fat_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_detach to i32), ptr @__kstrtab_fat_detach, ptr @__kstrtabns_fat_detach }, section "___ksymtab_gpl+fat_detach", align 4
@fat_dir_operations = external dso_local constant %struct.file_operations, align 4
@fat_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@fat_file_operations = external dso_local constant %struct.file_operations, align 4
@fat_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @fat_writepage, ptr @fat_readpage, ptr @fat_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @fat_readahead, ptr @fat_write_begin, ptr @fat_write_end, ptr @_fat_bmap, ptr null, ptr null, ptr null, ptr @fat_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_fat_build_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_build_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_build_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_build_inode to i32), ptr @__kstrtab_fat_build_inode, ptr @__kstrtabns_fat_build_inode }, section "___ksymtab_gpl+fat_build_inode", align 4
@fat_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fat_sync_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_sync_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_sync_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_sync_inode to i32), ptr @__kstrtab_fat_sync_inode, ptr @__kstrtabns_fat_sync_inode }, section "___ksymtab_gpl+fat_sync_inode", align 4
@fat_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @fat_alloc_inode, ptr null, ptr @fat_free_inode, ptr null, ptr @fat_write_inode, ptr null, ptr @fat_evict_inode, ptr @fat_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_statfs, ptr @fat_remount, ptr null, ptr @fat_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@fat_export_ops = external dso_local constant %struct.export_operations, align 1
@fat_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&sbi->nfs_build_inode_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to read boot sector\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"logical sector size too small for device (logical sector size = %u)\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to set blocksize %u\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unable to read boot sector (logical sector size = %lu)\00", [41 x i8] zeroinitializer }, align 32
@fat_fill_super.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bread failed, FSINFO block (sector = %lu)\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Invalid FSINFO signature: 0x%08x, 0x%08x (sector = %lu)\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bogus number of directory entries (%u)\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"count of clusters too big (%u)\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cp%d\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codepage %s not found\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IO charset %s not found\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get root inode failed\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mounting with \22discard\22 option, but the device does not support discard\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't find a valid FAT filesystem\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_fat_fill_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_fill_super = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_fill_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_fill_super to i32), ptr @__kstrtab_fat_fill_super, ptr @__kstrtabns_fat_fill_super }, section "___ksymtab_gpl+fat_fill_super", align 4
@__kstrtab_fat_flush_inodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_flush_inodes = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_flush_inodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_flush_inodes to i32), ptr @__kstrtab_fat_flush_inodes, ptr @__kstrtabns_fat_flush_inodes }, section "___ksymtab_gpl+fat_flush_inodes", align 4
@__initcall__kmod_fat__293_1974_init_fat_fs6 = internal global ptr @init_fat_fs, section ".initcall6.init", align 4
@__exitcall_exit_fat_fs = internal global ptr @exit_fat_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [20 x i8] c"fat.file=fs/fat/fat\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [16 x i8] c"fat.license=GPL\00", section ".modinfo", align 1
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"corrupted file size (i_pos %lld, %lld)\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid FAT chain (i_pos %lld, last_block %llu)\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"corrupted directory (invalid entries)\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"corrupted directory (invalid i_start)\00", [58 x i8] zeroinitializer }, align 32
@__const.is_exec.exe_extensions = private unnamed_addr constant [10 x i8] c"EXECOMBAT\00", align 1
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unable to read inode block for updating (i_pos %lld)\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fat_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ei->truncate_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Failed to update on disk inode for unused fallocated blocks, inode could be corrupted. Please run fsck\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",fmask=%04o\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dmask=%04o\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",allow_utime=%04o\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",codepage=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",shortname=win95\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",shortname=winnt\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",shortname=mixed\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",shortname=lower\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",shortname=unknown\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",check=%c\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",usefree\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",quiet\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",showexec\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",sys_immutable\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dotsOK=yes\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nocase\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",utf8\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",uni_xlate\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",nonumtail\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",rodir\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",flush\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",time_offset=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",tz=UTC\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",errors=remount-ro\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",nfs=nostale_ro\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",nfs=stale_rw\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",dos1xfloppy\00", [19 x i8] zeroinitializer }, align 32
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@fat_tokens = internal constant { [42 x %struct.match_token], [80 x i8] } { [42 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.69 }, %struct.match_token { i32 2, ptr @.str.70 }, %struct.match_token { i32 0, ptr @.str.71 }, %struct.match_token { i32 1, ptr @.str.72 }, %struct.match_token { i32 2, ptr @.str.73 }, %struct.match_token { i32 0, ptr @.str.74 }, %struct.match_token { i32 3, ptr @.str.75 }, %struct.match_token { i32 4, ptr @.str.76 }, %struct.match_token { i32 5, ptr @.str.77 }, %struct.match_token { i32 6, ptr @.str.78 }, %struct.match_token { i32 7, ptr @.str.79 }, %struct.match_token { i32 8, ptr @.str.80 }, %struct.match_token { i32 9, ptr @.str.81 }, %struct.match_token { i32 10, ptr @.str.82 }, %struct.match_token { i32 11, ptr @.str.83 }, %struct.match_token { i32 12, ptr @.str.84 }, %struct.match_token { i32 13, ptr @.str.85 }, %struct.match_token { i32 14, ptr @.str.86 }, %struct.match_token { i32 15, ptr @.str.87 }, %struct.match_token { i32 30, ptr @.str.88 }, %struct.match_token { i32 31, ptr @.str.89 }, %struct.match_token { i32 38, ptr @.str.90 }, %struct.match_token { i32 33, ptr @.str.91 }, %struct.match_token { i32 34, ptr @.str.92 }, %struct.match_token { i32 35, ptr @.str.93 }, %struct.match_token { i32 36, ptr @.str.94 }, %struct.match_token { i32 39, ptr @.str.95 }, %struct.match_token { i32 39, ptr @.str.96 }, %struct.match_token { i32 40, ptr @.str.97 }, %struct.match_token { i32 42, ptr @.str.98 }, %struct.match_token { i32 29, ptr @.str.99 }, %struct.match_token { i32 29, ptr @.str.100 }, %struct.match_token { i32 29, ptr @.str.101 }, %struct.match_token { i32 29, ptr @.str.102 }, %struct.match_token { i32 29, ptr @.str.103 }, %struct.match_token { i32 29, ptr @.str.104 }, %struct.match_token { i32 29, ptr @.str.105 }, %struct.match_token { i32 29, ptr @.str.106 }, %struct.match_token { i32 29, ptr @.str.107 }, %struct.match_token { i32 29, ptr @.str.108 }, %struct.match_token { i32 29, ptr @.str.109 }, %struct.match_token { i32 41, ptr null }], [80 x i8] zeroinitializer }, align 32
@vfat_tokens = internal constant { [28 x %struct.match_token], [32 x i8] } { [28 x %struct.match_token] [%struct.match_token { i32 18, ptr @.str.110 }, %struct.match_token { i32 19, ptr @.str.111 }, %struct.match_token { i32 20, ptr @.str.112 }, %struct.match_token { i32 21, ptr @.str.113 }, %struct.match_token { i32 22, ptr @.str.114 }, %struct.match_token { i32 23, ptr @.str.115 }, %struct.match_token { i32 23, ptr @.str.116 }, %struct.match_token { i32 23, ptr @.str.117 }, %struct.match_token { i32 24, ptr @.str.118 }, %struct.match_token { i32 24, ptr @.str.119 }, %struct.match_token { i32 24, ptr @.str.120 }, %struct.match_token { i32 24, ptr @.str.67 }, %struct.match_token { i32 25, ptr @.str.121 }, %struct.match_token { i32 25, ptr @.str.122 }, %struct.match_token { i32 25, ptr @.str.123 }, %struct.match_token { i32 26, ptr @.str.124 }, %struct.match_token { i32 26, ptr @.str.125 }, %struct.match_token { i32 26, ptr @.str.126 }, %struct.match_token { i32 26, ptr @.str.127 }, %struct.match_token { i32 27, ptr @.str.128 }, %struct.match_token { i32 27, ptr @.str.129 }, %struct.match_token { i32 27, ptr @.str.130 }, %struct.match_token { i32 28, ptr @.str.131 }, %struct.match_token { i32 28, ptr @.str.132 }, %struct.match_token { i32 28, ptr @.str.133 }, %struct.match_token { i32 28, ptr @.str.134 }, %struct.match_token { i32 32, ptr @.str.135 }, %struct.match_token { i32 41, ptr null }], [32 x i8] zeroinitializer }, align 32
@msdos_tokens = internal constant { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 17, ptr @.str.136 }, %struct.match_token { i32 17, ptr @.str.137 }, %struct.match_token { i32 16, ptr @.str.138 }, %struct.match_token { i32 16, ptr @.str.139 }, %struct.match_token { i32 41, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\22%s\22 option is obsolete, not supported now\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unrecognized mount option \22%s\22 or missing value\00", [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"utf8 is not a recommended IO charset for FAT filesystems, filesystem will be case sensitive!\00", [35 x i8] zeroinitializer }, align 32
@fat_export_ops_nostale = external dso_local constant %struct.export_operations, align 1
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check=relaxed\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check=strict\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check=normal\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"check=r\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"check=s\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"check=n\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fmask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allow_utime=%o\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codepage=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usefree\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nocase\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quiet\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"showexec\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_immutable\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tz=UTC\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"time_offset=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errors=continue\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors=panic\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errors=remount-ro\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfs=stale_rw\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfs=nostale_ro\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dos1xfloppy\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"conv=binary\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conv=text\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conv=auto\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=b\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=t\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"conv=a\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fat=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blocksize=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cvf_format=%20s\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cvf_options=%100s\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"posix\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shortname=lower\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shortname=win95\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shortname=winnt\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shortname=mixed\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utf8=0\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"utf8=no\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"utf8=false\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"utf8=1\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"utf8=yes\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utf8=true\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uni_xlate=0\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uni_xlate=no\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uni_xlate=false\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uni_xlate=1\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uni_xlate=yes\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uni_xlate=true\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uni_xlate\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nonumtail=0\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nonumtail=no\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nonumtail=false\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nonumtail=1\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nonumtail=yes\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nonumtail=true\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nonumtail\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rodir\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nodots\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dotsOK=no\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dots\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dotsOK=yes\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bogus number of reserved sectors\00", [63 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bogus number of FAT structure\00", [34 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid media value (0x%02x)\00", [35 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bogus logical sector size %u\00", [35 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bogus sectors per cluster %u\00", [35 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bogus number of FAT sectors\00", [36 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"This doesn't look like a DOS 1.x volume\00", [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s; no bootstrapping code\00", [38 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s; DOS 2.x BPB is non-zero\00", [36 x i8] zeroinitializer }, align 32
@floppy_defaults = internal constant { [4 x %struct.fat_floppy_defaults], [48 x i8] } { [4 x %struct.fat_floppy_defaults] [%struct.fat_floppy_defaults { i32 320, i32 1, i32 64, i32 254, i32 1 }, %struct.fat_floppy_defaults { i32 360, i32 1, i32 64, i32 252, i32 2 }, %struct.fat_floppy_defaults { i32 640, i32 2, i32 112, i32 255, i32 1 }, %struct.fat_floppy_defaults { i32 720, i32 2, i32 112, i32 253, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"This looks like a DOS 1.x volume, but isn't a recognized floppy size (%llu sectors)\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"This looks like a DOS 1.x volume; assuming default BPB values\00", [34 x i8] zeroinitializer }, align 32
@fat_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sbi->inode_hash_lock\00", [42 x i8] zeroinitializer }, align 32
@dir_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sbi->dir_hash_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Volume was not properly unmounted. Some data may be corrupt. Please run fsck.\00", [50 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to read boot sector to mark fs as dirty\00", [49 x i8] zeroinitializer }, align 32
@fat_default_iocharset = internal global { [10 x i8], [22 x i8] } { [10 x i8] c"iso8859-1\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fat_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ei->cache_lru_lock\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.157 = internal global [43 x i64] [i64 41, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 38, i64 39, i64 40, i64 42]
@__sancov_gen_cov_switch_values.158 = internal global [11 x i64] [i64 9, i64 8, i64 240, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 64, i64 320, i64 360, i64 640, i64 720]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 16, i64 257, i64 258, i64 260, i64 516]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.162 = private unnamed_addr constant [9 x i8] c"fat_aops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 344, i32 46 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"fat_inode_cachep\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 743, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"fat_sops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 928, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1635, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1649, i32 15 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1649, i32 25 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1670, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1679, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1687, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1695, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1730, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1737, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1737, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1765, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1793, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1825, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1828, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1836, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1870, i32 25 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1878, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1888, i32 15 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1888, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 141, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 169, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 503, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 509, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 868, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 752, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 642, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 947, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 950, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 952, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 953, i32 16 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 955, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 958, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 961, i32 18 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 965, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 968, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 971, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 974, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 977, i32 16 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 982, i32 17 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 984, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 986, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 988, i32 15 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 990, i32 15 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 993, i32 16 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 995, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 998, i32 16 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1000, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1002, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1004, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1007, i32 15 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1010, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1012, i32 16 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1015, i32 15 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1017, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1019, i32 15 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1021, i32 15 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1023, i32 15 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1025, i32 15 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1027, i32 15 }
@___asan_gen_.361 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 14, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1165, i32 31 }
@___asan_gen_.366 = private unnamed_addr constant [11 x i8] c"fat_tokens\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1045, i32 28 }
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"vfat_tokens\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1096, i32 28 }
@___asan_gen_.372 = private unnamed_addr constant [13 x i8] c"msdos_tokens\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1089, i32 28 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1348, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1355, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1364, i32 31 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1365, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1046, i32 16 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1047, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1048, i32 16 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1049, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1050, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1051, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1052, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1053, i32 12 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1054, i32 14 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1055, i32 14 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1056, i32 14 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1057, i32 20 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1058, i32 17 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1059, i32 16 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1060, i32 15 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1061, i32 14 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1062, i32 17 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1063, i32 14 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1064, i32 18 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1065, i32 14 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1066, i32 15 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1067, i32 20 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1068, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1069, i32 18 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1070, i32 15 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1071, i32 16 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1072, i32 21 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1073, i32 21 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1074, i32 23 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1075, i32 20 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1076, i32 17 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1077, i32 17 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1078, i32 17 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1079, i32 17 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1080, i32 17 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1081, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1082, i32 17 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1083, i32 17 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1084, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1085, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1086, i32 17 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1097, i32 16 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1098, i32 24 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1099, i32 24 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1100, i32 24 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1101, i32 24 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1102, i32 16 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1103, i32 16 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1104, i32 16 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1105, i32 17 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1106, i32 17 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1107, i32 17 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1109, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1110, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1111, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1112, i32 19 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1113, i32 19 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1114, i32 19 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1115, i32 19 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1116, i32 21 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1117, i32 21 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1118, i32 21 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1119, i32 22 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1120, i32 22 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1121, i32 22 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1122, i32 22 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1123, i32 14 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1090, i32 15 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1091, i32 15 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1092, i32 13 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1093, i32 13 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1485, i32 5 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1490, i32 26 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1501, i32 26 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1510, i32 26 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1517, i32 26 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1524, i32 26 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1538, i32 32 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1548, i32 5 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1559, i32 5 }
@___asan_gen_.627 = private unnamed_addr constant [16 x i8] c"floppy_defaults\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 73, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1573, i32 5 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 1580, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 385, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 400, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 681, i32 30 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 689, i32 25 }
@___asan_gen_.654 = private unnamed_addr constant [22 x i8] c"fat_default_iocharset\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 65, i32 13 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 783, i32 39 }
@___asan_gen_.660 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.664 = private constant [18 x i8] c"../fs/fat/inode.c\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.664, i32 772, i32 2 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_exit_fat_fs, ptr @__initcall__kmod_fat__293_1974_init_fat_fs6, ptr @__ksymtab_fat_attach, ptr @__ksymtab_fat_build_inode, ptr @__ksymtab_fat_detach, ptr @__ksymtab_fat_fill_super, ptr @__ksymtab_fat_flush_inodes, ptr @__ksymtab_fat_sync_inode, ptr @exit_fat_fs, ptr @fat_destroy_inodecache, ptr @fat_aops, ptr @fat_inode_cachep, ptr @fat_sops, ptr @fat_fill_super.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fat_fill_super.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @fat_alloc_inode.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @ratelimit_state_init.__key, ptr @.str.60, ptr @.str.62, ptr @fat_tokens, ptr @vfat_tokens, ptr @msdos_tokens, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @floppy_defaults, ptr @.str.149, ptr @.str.150, ptr @fat_hash_init.__key, ptr @.str.151, ptr @dir_hash_init.__key, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @fat_default_iocharset, ptr @.str.155, ptr @init_once.__key, ptr @.str.156], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_fill_super.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_tokens to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfat_tokens to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdos_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @floppy_defaults to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_default_iocharset to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_add_cluster(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %cluster = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster) #11
  %0 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cluster, align 4, !annotation !370
  %call = call i32 @fat_alloc_clusters(ptr noundef %inode, ptr noundef nonnull %cluster, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cluster, align 4
  %call1 = call i32 @fat_chain_add(ptr noundef %inode, i32 noundef %2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cluster, align 4
  %call4 = call i32 @fat_free_clusters(ptr noundef %inode, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_clusters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_chain_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_block_truncate_page(ptr nocapture noundef readonly %inode, i64 noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call = tail call i32 @block_truncate_page(ptr noundef %1, i64 noundef %from, ptr noundef nonnull @fat_get_block) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %cluster.i.i = alloca i32, align 4
  %mapped_blocks.i = alloca i32, align 4
  %phys.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %2 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_blocks.i) #11
  %8 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mapped_blocks.i, align 4, !annotation !370
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys.i) #11
  %9 = ptrtoint ptr %phys.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %phys.i, align 8, !annotation !370
  %call1.i = call i32 @fat_bmap(ptr noundef %inode, i64 noundef %iblock, ptr noundef nonnull %phys.i, ptr noundef nonnull %mapped_blocks.i, i32 noundef %create, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__fat_get_block.exit.thread_crit_edge

entry.__fat_get_block.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fat_get_block.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool2.not.i = icmp eq i64 %11, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %bh_result, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then3.i.map_bh.exit.i_crit_edge

if.then3.i.map_bh.exit.i_crit_edge:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit.i

if.then.i.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit.i

map_bh.exit.i:                                    ; preds = %if.then.i.i.i, %if.then3.i.map_bh.exit.i_crit_edge
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev.i.i, align 4
  %b_bdev.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %17 = ptrtoint ptr %b_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %b_bdev.i.i, align 8
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %11, ptr %b_blocknr.i.i, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i.i, align 16
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %b_size, align 8
  %22 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapped_blocks.i, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %shr) #11
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool5.not.i = icmp eq i32 %create, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end_crit_edge, label %if.end7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end7.i:                                        ; preds = %if.end4.i
  %mmu_private.i = getelementptr i8, ptr %inode, i32 -144
  %25 = ptrtoint ptr %mmu_private.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mmu_private.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %28 to i64
  %shr.i = ashr i64 %26, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %iblock)
  %cmp9.not.i = icmp eq i64 %shr.i, %iblock
  br i1 %cmp9.not.i, label %if.end15.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_pos.i = getelementptr i8, ptr %inode, i32 -120
  %29 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_pos.i, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.20, i64 noundef %30, i64 noundef %26) #14
  br label %__fat_get_block.exit.thread

if.end15.i:                                       ; preds = %if.end7.i
  %conv.i = zext i8 %28 to i32
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %31 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_blocks.i, align 8
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom18.i = zext i32 %sub.i to i64
  %shr19.i = lshr i64 %32, %sh_prom18.i
  %conv20.i = trunc i64 %iblock to i32
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %7, align 4
  %conv21.i = zext i16 %34 to i32
  %sub22.i = add nsw i32 %conv21.i, -1
  %and.i = and i32 %sub22.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %shr19.i, i64 %iblock)
  %cmp24.i = icmp ugt i64 %shr19.i, %iblock
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %cmp24.i
  br i1 %or.cond.i, label %if.end15.i.if.end31.i_crit_edge, label %if.then26.i

if.end15.i.if.end31.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster.i.i) #11
  %35 = ptrtoint ptr %cluster.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %cluster.i.i, align 4, !annotation !370
  %call.i.i = call i32 @fat_alloc_clusters(ptr noundef %inode, ptr noundef nonnull %cluster.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i120.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i120.i, label %if.end.i.i, label %if.then26.i.fat_add_cluster.exit.thread.i_crit_edge

if.then26.i.fat_add_cluster.exit.thread.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_add_cluster.exit.thread.i

if.end.i.i:                                       ; preds = %if.then26.i
  %36 = ptrtoint ptr %cluster.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cluster.i.i, align 4
  %call1.i.i = call i32 @fat_chain_add(ptr noundef %inode, i32 noundef %37, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %fat_add_cluster.exit.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %cluster.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cluster.i.i, align 4
  %call4.i.i = call i32 @fat_free_clusters(ptr noundef %inode, i32 noundef %39) #11
  br label %fat_add_cluster.exit.thread.i

fat_add_cluster.exit.thread.i:                    ; preds = %if.then3.i.i, %if.then26.i.fat_add_cluster.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then26.i.fat_add_cluster.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster.i.i) #11
  br label %__fat_get_block.exit.thread

fat_add_cluster.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster.i.i) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %fat_add_cluster.exit.i, %if.end15.i.if.end31.i_crit_edge
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %7, align 4
  %conv33.i = zext i16 %41 to i32
  %sub34.i = sub i32 %conv33.i, %and.i
  %42 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub34.i, ptr %mapped_blocks.i, align 4
  %43 = call i32 @llvm.umin.i32(i32 %sub34.i, i32 %shr) #11
  %44 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv43.i = zext i8 %45 to i32
  %shl.i = shl i32 %43, %conv43.i
  %conv44.i = zext i32 %shl.i to i64
  %46 = ptrtoint ptr %mmu_private.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mmu_private.i, align 8
  %add.i = add i64 %47, %conv44.i
  store i64 %add.i, ptr %mmu_private.i, align 8
  %call47.i = call i32 @fat_bmap(ptr noundef %inode, i64 noundef %iblock, ptr noundef nonnull %phys.i, ptr noundef nonnull %mapped_blocks.i, i32 noundef %create, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end31.i.__fat_get_block.exit.thread_crit_edge

if.end31.i.__fat_get_block.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fat_get_block.exit.thread

if.end50.i:                                       ; preds = %if.end31.i
  %48 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %tobool51.not.i = icmp eq i64 %49, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %do.body.i

if.then52.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_pos54.i = getelementptr i8, ptr %inode, i32 -120
  %50 = ptrtoint ptr %i_pos54.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_pos54.i, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.21, i64 noundef %51, i64 noundef %shr19.i) #14
  br label %__fat_get_block.exit.thread

do.body.i:                                        ; preds = %if.end50.i
  %52 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mapped_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %53)
  %cmp56.not.i = icmp eq i32 %43, %53
  br i1 %cmp56.not.i, label %do.end67.i, label %do.body61.i, !prof !371

do.body61.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #11, !srcloc !372
  unreachable

do.end67.i:                                       ; preds = %do.body.i
  %54 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %bh_result, align 4
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end67.i.set_buffer_new.exit.i_crit_edge

do.end67.i.set_buffer_new.exit.i_crit_edge:       ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_new.exit.i

if.then.i.i:                                      ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #11
  br label %set_buffer_new.exit.i

set_buffer_new.exit.i:                            ; preds = %if.then.i.i, %do.end67.i.set_buffer_new.exit.i_crit_edge
  %57 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %phys.i, align 8
  %59 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bh_result, align 4
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i123.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i123.i, label %if.then.i.i124.i, label %set_buffer_new.exit.i.map_bh.exit130.i_crit_edge

set_buffer_new.exit.i.map_bh.exit130.i_crit_edge: ; preds = %set_buffer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit130.i

if.then.i.i124.i:                                 ; preds = %set_buffer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit130.i

map_bh.exit130.i:                                 ; preds = %if.then.i.i124.i, %set_buffer_new.exit.i.map_bh.exit130.i_crit_edge
  %s_bdev.i125.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %62 = ptrtoint ptr %s_bdev.i125.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_bdev.i125.i, align 4
  %b_bdev.i126.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %64 = ptrtoint ptr %b_bdev.i126.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %b_bdev.i126.i, align 8
  %b_blocknr.i127.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr.i127.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %58, ptr %b_blocknr.i127.i, align 8
  %s_blocksize.i128.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %s_blocksize.i128.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_blocksize.i128.i, align 16
  %68 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %b_size, align 8
  br label %if.end

__fat_get_block.exit.thread:                      ; preds = %if.then52.i, %if.end31.i.__fat_get_block.exit.thread_crit_edge, %fat_add_cluster.exit.thread.i, %if.then11.i, %entry.__fat_get_block.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %fat_add_cluster.exit.thread.i ], [ %call47.i, %if.end31.i.__fat_get_block.exit.thread_crit_edge ], [ %call1.i, %entry.__fat_get_block.exit.thread_crit_edge ], [ -5, %if.then52.i ], [ -5, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_blocks.i) #11
  br label %cleanup

if.end:                                           ; preds = %map_bh.exit130.i, %if.end4.i.if.end_crit_edge, %map_bh.exit.i
  %max_blocks.0 = phi i32 [ %shr, %if.end4.i.if.end_crit_edge ], [ %43, %map_bh.exit130.i ], [ %24, %map_bh.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_blocks.i) #11
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %s_blocksize_bits, align 4
  %conv1 = zext i8 %70 to i32
  %shl = shl i32 %max_blocks.0, %conv1
  %71 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl, ptr %b_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__fat_get_block.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %__fat_get_block.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_attach(ptr noundef %inode, i64 noundef %i_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %inode_hashtable = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 32
  %conv.i = trunc i64 %i_pos to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr = getelementptr %struct.hlist_head, ptr %inode_hashtable, i32 %shr.i.i
  %inode_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #11
  %i_pos3 = getelementptr i8, ptr %inode, i32 -120
  %6 = ptrtoint ptr %i_pos3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %i_pos, ptr %i_pos3, align 8
  %i_fat_hash = getelementptr i8, ptr %inode, i32 -112
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %i_fat_hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %i_fat_hash, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then.hlist_add_head.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %i_fat_hash, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then.hlist_add_head.exit_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %i_fat_hash, ptr %add.ptr, align 4
  %pprev34.i = getelementptr i8, ptr %inode, i32 -108
  %12 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %add.ptr, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #11
  br label %if.end

if.end:                                           ; preds = %hlist_add_head.exit, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp6 = icmp eq i16 %15, 16384
  br i1 %cmp6, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 10
  %16 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nfs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end16_crit_edge, label %if.then9

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %dir_hashtable = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 34
  %i_logstart = getelementptr i8, ptr %inode, i32 -132
  %18 = ptrtoint ptr %i_logstart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_logstart, align 4
  %mul.i.i.i33 = mul i32 %19, 1640531527
  %shr.i.i34 = lshr i32 %mul.i.i.i33, 24
  %add.ptr13 = getelementptr %struct.hlist_head, ptr %dir_hashtable, i32 %shr.i.i34
  %dir_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %dir_hash_lock) #11
  %i_dir_hash = getelementptr i8, ptr %inode, i32 -104
  %20 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr13, align 4
  %22 = ptrtoint ptr %i_dir_hash to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %i_dir_hash, align 4
  %tobool.not.i36 = icmp eq ptr %21, null
  br i1 %tobool.not.i36, label %if.then9.hlist_add_head.exit40_crit_edge, label %do.body12.i38

if.then9.hlist_add_head.exit40_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit40

do.body12.i38:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i37 = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %i_dir_hash, ptr %pprev.i37, align 4
  br label %hlist_add_head.exit40

hlist_add_head.exit40:                            ; preds = %do.body12.i38, %if.then9.hlist_add_head.exit40_crit_edge
  %24 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %i_dir_hash, ptr %add.ptr13, align 4
  %pprev34.i39 = getelementptr i8, ptr %inode, i32 -100
  %25 = ptrtoint ptr %pprev34.i39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %add.ptr13, ptr %pprev34.i39, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dir_hash_lock) #11
  br label %if.end16

if.end16:                                         ; preds = %hlist_add_head.exit40, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_detach(ptr nocapture noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #11
  %i_pos = getelementptr i8, ptr %inode, i32 -120
  %4 = ptrtoint ptr %i_pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %i_pos, align 8
  %i_fat_hash = getelementptr i8, ptr %inode, i32 -112
  %pprev.i.i = getelementptr i8, ptr %inode, i32 -108
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %i_fat_hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_fat_hash, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %6, align 4
  %tobool.not.i3.i = icmp eq ptr %8, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %11 = ptrtoint ptr %i_fat_hash to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %i_fat_hash, align 4
  %12 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #11
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %inode, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp = icmp eq i16 %15, 16384
  br i1 %cmp, label %land.lhs.true, label %hlist_del_init.exit.if.end_crit_edge

hlist_del_init.exit.if.end_crit_edge:             ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %hlist_del_init.exit
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 10
  %16 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nfs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %dir_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %dir_hash_lock) #11
  %i_dir_hash = getelementptr i8, ptr %inode, i32 -104
  %pprev.i.i18 = getelementptr i8, ptr %inode, i32 -100
  %18 = ptrtoint ptr %pprev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i18, align 4
  %tobool.not.i.not.i19 = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i19, label %if.then.hlist_del_init.exit25_crit_edge, label %if.then.i21

if.then.hlist_del_init.exit25_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit25

if.then.i21:                                      ; preds = %if.then
  %20 = ptrtoint ptr %i_dir_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_dir_hash, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %19, align 4
  %tobool.not.i3.i20 = icmp eq ptr %21, null
  br i1 %tobool.not.i3.i20, label %if.then.i21.__hlist_del.exit.i24_crit_edge, label %do.body13.i.i23

if.then.i21.__hlist_del.exit.i24_crit_edge:       ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i24

do.body13.i.i23:                                  ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i22 = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %pprev14.i.i22, align 4
  br label %__hlist_del.exit.i24

__hlist_del.exit.i24:                             ; preds = %do.body13.i.i23, %if.then.i21.__hlist_del.exit.i24_crit_edge
  %24 = ptrtoint ptr %i_dir_hash to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %i_dir_hash, align 4
  %25 = ptrtoint ptr %pprev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pprev.i.i18, align 4
  br label %hlist_del_init.exit25

hlist_del_init.exit25:                            ; preds = %__hlist_del.exit.i24, %if.then.hlist_del_init.exit25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dir_hash_lock) #11
  br label %if.end

if.end:                                           ; preds = %hlist_del_init.exit25, %land.lhs.true.if.end_crit_edge, %hlist_del_init.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fat_iget(ptr noundef readonly %sb, i64 noundef %i_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hashtable = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 32
  %conv.i = trunc i64 %i_pos to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr = getelementptr %struct.hlist_head, ptr %inode_hashtable, i32 %shr.i.i
  %inode_hash_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr3 = getelementptr i8, ptr %3, i32 -96
  %tobool4.not4851 = icmp eq ptr %add.ptr3, null
  %tobool4.not48 = or i1 %tobool.not, %tobool4.not4851
  br i1 %tobool4.not48, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %i.049 = phi ptr [ %add.ptr28, %for.inc.do.body_crit_edge ], [ %add.ptr3, %entry.do.body_crit_edge ]
  %vfs_inode = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049, i32 0, i32 12
  %i_sb = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049, i32 0, i32 12, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %cmp.not = icmp eq ptr %5, %sb
  br i1 %cmp.not, label %do.end12, label %do.body7, !prof !371

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 459, 0\0A.popsection", ""() #11, !srcloc !373
  unreachable

do.end12:                                         ; preds = %do.body
  %i_pos13 = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049, i32 0, i32 8
  %6 = ptrtoint ptr %i_pos13 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_pos13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %i_pos)
  %cmp14.not = icmp eq i64 %7, %i_pos
  br i1 %cmp14.not, label %if.end16, label %do.end12.for.inc_crit_edge

do.end12.for.inc_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %do.end12
  %call18 = tail call ptr @igrab(ptr noundef %vfs_inode) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.for.inc_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %do.end12.for.inc_crit_edge
  %i_fat_hash = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049, i32 0, i32 9
  %8 = ptrtoint ptr %i_fat_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_fat_hash, align 8
  %tobool24.not = icmp eq ptr %9, null
  %add.ptr28 = getelementptr i8, ptr %9, i32 -96
  %tobool4.not52 = icmp eq ptr %add.ptr28, null
  %tobool4.not = or i1 %tobool24.not, %tobool4.not52
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %inode.2 = phi ptr [ null, %entry.for.end_crit_edge ], [ %call18, %if.end16.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #11
  ret ptr %inode.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_fill_inode(ptr noundef %inode, ptr nocapture noundef readonly %de) local_unnamed_addr #0 align 64 {
entry:
  %exe_extensions.i = alloca [10 x i8], align 1
  %fclus.i = alloca i32, align 4
  %dclus.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_pos = getelementptr i8, ptr %inode, i32 -120
  %4 = ptrtoint ptr %i_pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %i_pos, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options, align 4
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %fs_gid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs_gid, align 4
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_gid, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !374
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %entry ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %11 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %11, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #11
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !371

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %call3 = tail call i32 @prandom_u32() #11
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %12 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3, ptr %i_generation, align 8
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 1
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %attr, align 1
  %15 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %inode_inc_iversion.exit.if.else_crit_edge, label %land.lhs.true

inode_inc_iversion.exit.if.else_crit_edge:        ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %inode_inc_iversion.exit
  %16 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %de, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.then [
    i8 0, label %land.lhs.true.if.else_crit_edge
    i8 -27, label %land.lhs.true.if.else_crit_edge236
  ]

land.lhs.true.if.else_crit_edge236:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %and10 = and i32 %call3, -2
  %19 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and10, ptr %i_generation, align 8
  %20 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %attr, align 1
  %conv.i = zext i8 %21 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.pre.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool11.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %rodir.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %22 = ptrtoint ptr %rodir.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %rodir.i, align 4
  %23 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool5.not.i = icmp eq i16 %23, 0
  %spec.select = select i1 %tobool5.not.i, i16 511, i16 365
  br label %if.then12.i

if.end.i:                                         ; preds = %if.then
  br i1 %tobool11.not.i, label %if.end.i.if.else.i_crit_edge, label %if.end.i.if.then12.i_crit_edge

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then12.i:                                      ; preds = %if.end.i.if.then12.i_crit_edge, %land.lhs.true4.i
  %mode.addr.034.i = phi i16 [ 511, %if.end.i.if.then12.i_crit_edge ], [ %spec.select, %land.lhs.true4.i ]
  %fs_dmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 3
  br label %fat_make_mode.exit

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %mode.addr.0.i226 = phi i16 [ 511, %if.end.i.if.else.i_crit_edge ], [ 365, %land.lhs.true.i.if.else.i_crit_edge ]
  %fs_fmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 2
  br label %fat_make_mode.exit

fat_make_mode.exit:                               ; preds = %if.else.i, %if.then12.i
  %.sink35.in.i = phi ptr [ %fs_fmask.i, %if.else.i ], [ %fs_dmask.i, %if.then12.i ]
  %mode.addr.0.sink.i = phi i16 [ %mode.addr.0.i226, %if.else.i ], [ %mode.addr.034.i, %if.then12.i ]
  %.sink.i = phi i16 [ -32768, %if.else.i ], [ 16384, %if.then12.i ]
  %24 = ptrtoint ptr %.sink35.in.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %.sink35.i = load i16, ptr %.sink35.in.i, align 2
  %neg21.i = xor i16 %.sink35.i, -1
  %and22.i = and i16 %mode.addr.0.sink.i, %neg21.i
  %or23.i = or i16 %and22.i, %.sink.i
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or23.i, ptr %inode, align 8
  %dir_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 22
  %26 = ptrtoint ptr %dir_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dir_ops, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %28 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %i_op, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fat_dir_operations, ptr %29, align 8
  %start.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 10
  %31 = ptrtoint ptr %start.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %start.i, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #11
  %conv.i159 = zext i16 %33 to i32
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %35)
  %cmp.i.i160 = icmp eq i8 %35, 32
  br i1 %cmp.i.i160, label %if.then.i161, label %fat_make_mode.exit.fat_get_start.exit_crit_edge

fat_make_mode.exit.fat_get_start.exit_crit_edge:  ; preds = %fat_make_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_get_start.exit

if.then.i161:                                     ; preds = %fat_make_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %starthi.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 7
  %36 = ptrtoint ptr %starthi.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %starthi.i, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #11
  %conv1.i = zext i16 %38 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i159
  br label %fat_get_start.exit

fat_get_start.exit:                               ; preds = %if.then.i161, %fat_make_mode.exit.fat_get_start.exit_crit_edge
  %cluster.0.i = phi i32 [ %or.i, %if.then.i161 ], [ %conv.i159, %fat_make_mode.exit.fat_get_start.exit_crit_edge ]
  %i_start = getelementptr i8, ptr %inode, i32 -136
  %39 = ptrtoint ptr %i_start to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cluster.0.i, ptr %i_start, align 8
  %i_logstart = getelementptr i8, ptr %inode, i32 -132
  %40 = ptrtoint ptr %i_logstart to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cluster.0.i, ptr %i_logstart, align 4
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus.i) #11
  %45 = ptrtoint ptr %fclus.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %fclus.i, align 4, !annotation !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclus.i) #11
  %46 = ptrtoint ptr %dclus.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %dclus.i, align 4, !annotation !370
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster.0.i)
  %cmp.i = icmp eq i32 %cluster.0.i, 0
  br i1 %cmp.i, label %fat_get_start.exit.if.end_crit_edge, label %if.end.i166

fat_get_start.exit.if.end_crit_edge:              ; preds = %fat_get_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i166:                                      ; preds = %fat_get_start.exit
  %call2.i = call i32 @fat_get_cluster(ptr noundef %inode, i32 noundef 268435455, ptr noundef nonnull %fclus.i, ptr noundef nonnull %dclus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %fat_calc_dir_size.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %fclus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fclus.i, align 4
  %add.i = add i32 %49, 1
  %cluster_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %44, i32 0, i32 1
  %50 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cluster_bits.i, align 2
  %conv.i167 = zext i16 %51 to i32
  %shl.i168 = shl i32 %add.i, %conv.i167
  %conv6.i = sext i32 %shl.i168 to i64
  %52 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv6.i, ptr %i_size.i, align 8
  br label %if.end

fat_calc_dir_size.exit:                           ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end5.i, %fat_get_start.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #11
  %53 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_size.i, align 8
  %mmu_private = getelementptr i8, ptr %inode, i32 -144
  %55 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %mmu_private, align 8
  %call23 = call i32 @fat_subdirs(ptr noundef %inode) #11
  call void @set_nlink(ptr noundef %inode, i32 noundef %call23) #11
  %56 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp.i171 = icmp ult i32 %60, 2
  br i1 %cmp.i171, label %if.end.fat_validate_dir.exit.thread_crit_edge, label %if.end.i173

if.end.fat_validate_dir.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_validate_dir.exit.thread

if.end.i173:                                      ; preds = %if.end
  %61 = ptrtoint ptr %i_start to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp1.i = icmp eq i32 %62, 0
  br i1 %cmp1.i, label %if.end.i173.fat_validate_dir.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i173.fat_validate_dir.exit.thread_crit_edge: ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_validate_dir.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i173
  %s_fs_info.i.i174 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i174 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i174, align 16
  %root_cluster.i = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %root_cluster.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %root_cluster.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %66)
  %cmp5.i = icmp eq i32 %62, %66
  br i1 %cmp5.i, label %lor.lhs.false.i.fat_validate_dir.exit.thread_crit_edge, label %lor.lhs.false.i.if.end53_crit_edge

lor.lhs.false.i.if.end53_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

lor.lhs.false.i.fat_validate_dir.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_validate_dir.exit.thread

fat_validate_dir.exit.thread:                     ; preds = %lor.lhs.false.i.fat_validate_dir.exit.thread_crit_edge, %if.end.i173.fat_validate_dir.exit.thread_crit_edge, %if.end.fat_validate_dir.exit.thread_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.22, %if.end.fat_validate_dir.exit.thread_crit_edge ], [ @.str.23, %lor.lhs.false.i.fat_validate_dir.exit.thread_crit_edge ], [ @.str.23, %if.end.i173.fat_validate_dir.exit.thread_crit_edge ]
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %57, i32 noundef 1, ptr noundef nonnull %.str.23.sink.i) #14
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %land.lhs.true.if.else_crit_edge236, %inode_inc_iversion.exit.if.else_crit_edge
  %or = or i32 %call3, 1
  %67 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or, ptr %i_generation, align 8
  %68 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %attr, align 1
  %showexec = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %70 = ptrtoint ptr %showexec to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load = load i16, ptr %showexec, align 4
  %71 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool32.not = icmp eq i16 %71, 0
  br i1 %tobool32.not, label %if.else.land.end_crit_edge, label %land.rhs

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %de, i32 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %exe_extensions.i) #11
  %72 = call ptr @memcpy(ptr %exe_extensions.i, ptr @__const.is_exec.exe_extensions, i32 10)
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add.ptr.i176 = getelementptr i8, ptr %walk.06.i, i32 3
  %73 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr.i176, align 1
  %tobool.not.i177 = icmp eq i8 %74, 0
  br i1 %tobool.not.i177, label %75, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %land.rhs
  %walk.06.i = phi ptr [ %add.ptr.i176, %for.cond.i.for.body.i_crit_edge ], [ %exe_extensions.i, %land.rhs ]
  %call.i = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %walk.06.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %is_exec.exit, label %for.cond.i

is_exec.exit:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %exe_extensions.i) #11
  br label %land.end

75:                                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %exe_extensions.i) #11
  br label %land.end

land.end:                                         ; preds = %75, %is_exec.exit, %if.else.land.end_crit_edge
  %76 = phi i16 [ 511, %if.else.land.end_crit_edge ], [ 438, %75 ], [ 511, %is_exec.exit ]
  %conv.i178 = zext i8 %69 to i32
  %and.i179 = and i32 %conv.i178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  %.pre.i181 = and i32 %conv.i178, 16
  br i1 %tobool.not.i180, label %land.end.if.end.i191_crit_edge, label %land.lhs.true.i183

land.end.if.end.i191_crit_edge:                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i191

land.lhs.true.i183:                               ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i181)
  %tobool3.not.i182 = icmp ne i32 %.pre.i181, 0
  %77 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool5.not.i186 = icmp eq i16 %77, 0
  %or.cond = select i1 %tobool3.not.i182, i1 %tobool5.not.i186, i1 false
  br i1 %or.cond, label %land.lhs.true.i183.if.then12.i194_crit_edge, label %if.then.i188

land.lhs.true.i183.if.then12.i194_crit_edge:      ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i194

if.then.i188:                                     ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #13
  %78 = and i16 %76, 365
  br label %if.end.i191

if.end.i191:                                      ; preds = %if.then.i188, %land.end.if.end.i191_crit_edge
  %mode.addr.0.i189 = phi i16 [ %78, %if.then.i188 ], [ %76, %land.end.if.end.i191_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i181)
  %tobool11.not.i190 = icmp eq i32 %.pre.i181, 0
  br i1 %tobool11.not.i190, label %if.else.i196, label %if.end.i191.if.then12.i194_crit_edge

if.end.i191.if.then12.i194_crit_edge:             ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i194

if.then12.i194:                                   ; preds = %if.end.i191.if.then12.i194_crit_edge, %land.lhs.true.i183.if.then12.i194_crit_edge
  %mode.addr.034.i192 = phi i16 [ %mode.addr.0.i189, %if.end.i191.if.then12.i194_crit_edge ], [ %76, %land.lhs.true.i183.if.then12.i194_crit_edge ]
  %fs_dmask.i193 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 3
  br label %fat_make_mode.exit204

if.else.i196:                                     ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #13
  %fs_fmask.i195 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 2
  br label %fat_make_mode.exit204

fat_make_mode.exit204:                            ; preds = %if.else.i196, %if.then12.i194
  %.sink35.in.i197 = phi ptr [ %fs_fmask.i195, %if.else.i196 ], [ %fs_dmask.i193, %if.then12.i194 ]
  %mode.addr.0.sink.i198 = phi i16 [ %mode.addr.0.i189, %if.else.i196 ], [ %mode.addr.034.i192, %if.then12.i194 ]
  %.sink.i199 = phi i16 [ -32768, %if.else.i196 ], [ 16384, %if.then12.i194 ]
  %79 = ptrtoint ptr %.sink35.in.i197 to i32
  call void @__asan_load2_noabort(i32 %79)
  %.sink35.i200 = load i16, ptr %.sink35.in.i197, align 2
  %neg21.i201 = xor i16 %.sink35.i200, -1
  %and22.i202 = and i16 %mode.addr.0.sink.i198, %neg21.i201
  %or23.i203 = or i16 %and22.i202, %.sink.i199
  %80 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %or23.i203, ptr %inode, align 8
  %start.i205 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 10
  %81 = ptrtoint ptr %start.i205 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %start.i205, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #11
  %conv.i206 = zext i16 %83 to i32
  %fat_bits.i.i207 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %84 = ptrtoint ptr %fat_bits.i.i207 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fat_bits.i.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %85)
  %cmp.i.i208 = icmp eq i8 %85, 32
  br i1 %cmp.i.i208, label %if.then.i213, label %fat_make_mode.exit204.fat_get_start.exit216_crit_edge

fat_make_mode.exit204.fat_get_start.exit216_crit_edge: ; preds = %fat_make_mode.exit204
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_get_start.exit216

if.then.i213:                                     ; preds = %fat_make_mode.exit204
  call void @__sanitizer_cov_trace_pc() #13
  %starthi.i209 = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 7
  %86 = ptrtoint ptr %starthi.i209 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %starthi.i209, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #11
  %conv1.i210 = zext i16 %88 to i32
  %shl.i211 = shl nuw i32 %conv1.i210, 16
  %or.i212 = or i32 %shl.i211, %conv.i206
  br label %fat_get_start.exit216

fat_get_start.exit216:                            ; preds = %if.then.i213, %fat_make_mode.exit204.fat_get_start.exit216_crit_edge
  %cluster.0.i214 = phi i32 [ %or.i212, %if.then.i213 ], [ %conv.i206, %fat_make_mode.exit204.fat_get_start.exit216_crit_edge ]
  %i_start42 = getelementptr i8, ptr %inode, i32 -136
  %89 = ptrtoint ptr %i_start42 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cluster.0.i214, ptr %i_start42, align 8
  %i_logstart46 = getelementptr i8, ptr %inode, i32 -132
  %90 = ptrtoint ptr %i_logstart46 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cluster.0.i214, ptr %i_logstart46, align 4
  %size = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 11
  %91 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %conv47 = zext i32 %93 to i64
  %i_size48 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %94 = ptrtoint ptr %i_size48 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv47, ptr %i_size48, align 8
  %i_op49 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %95 = ptrtoint ptr %i_op49 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @fat_file_inode_operations, ptr %i_op49, align 8
  %96 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @fat_file_operations, ptr %96, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %98 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @fat_aops, ptr %a_ops, align 4
  %101 = load i64, ptr %i_size48, align 8
  %mmu_private52 = getelementptr i8, ptr %inode, i32 -144
  %102 = ptrtoint ptr %mmu_private52 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %mmu_private52, align 8
  br label %if.end53

if.end53:                                         ; preds = %fat_get_start.exit216, %lor.lhs.false.i.if.end53_crit_edge
  %103 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %attr, align 1
  %105 = and i8 %104, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool57.not = icmp eq i8 %105, 0
  br i1 %tobool57.not, label %if.end53.if.end68_crit_edge, label %if.then58

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then58:                                        ; preds = %if.end53
  %sys_immutable = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %106 = ptrtoint ptr %sys_immutable to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load60 = load i16, ptr %sys_immutable, align 4
  %107 = and i16 %bf.load60, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool64.not = icmp eq i16 %107, 0
  br i1 %tobool64.not, label %if.then58.if.end68_crit_edge, label %if.then65

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %108 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_flags, align 4
  %or66 = or i32 %109, 8
  store i32 %or66, ptr %i_flags, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then58.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %110 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %attr, align 1
  %112 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 33
  %114 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %116 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %inode, align 8
  %118 = and i16 %117, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %118)
  %cmp.i.i221 = icmp eq i16 %118, 16384
  br i1 %cmp.i.i221, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end68
  %rodir.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %115, i32 0, i32 19, i32 12
  %119 = ptrtoint ptr %rodir.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i.i = load i16, ptr %rodir.i.i, align 4
  %120 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.i.i = icmp eq i16 %120, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.else.i222_crit_edge, label %if.end.i.i

if.then.i.i.if.else.i222_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i222

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fs_dmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %115, i32 0, i32 19, i32 3
  br label %fat_mode_can_hold_ro.exit.i

if.else.i.i:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %fs_fmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %115, i32 0, i32 19, i32 2
  br label %fat_mode_can_hold_ro.exit.i

fat_mode_can_hold_ro.exit.i:                      ; preds = %if.else.i.i, %if.end.i.i
  %mask.0.in.in.i.i = phi ptr [ %fs_dmask.i.i, %if.end.i.i ], [ %fs_fmask.i.i, %if.else.i.i ]
  %121 = ptrtoint ptr %mask.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %mask.0.in.i.i = load i16, ptr %mask.0.in.in.i.i, align 2
  %mask.0.i.i = and i16 %mask.0.in.i.i, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %mask.0.i.i)
  %tobool13.not.i.not.i = icmp eq i16 %mask.0.i.i, 146
  br i1 %tobool13.not.i.not.i, label %fat_mode_can_hold_ro.exit.i.if.else.i222_crit_edge, label %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge

fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_save_attrs.exit

fat_mode_can_hold_ro.exit.i.if.else.i222_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i222

if.else.i222:                                     ; preds = %fat_mode_can_hold_ro.exit.i.if.else.i222_crit_edge, %if.then.i.i.if.else.i222_crit_edge
  br label %fat_save_attrs.exit

fat_save_attrs.exit:                              ; preds = %if.else.i222, %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge
  %.sink12.i = phi i8 [ 47, %if.else.i222 ], [ 46, %fat_mode_can_hold_ro.exit.i.fat_save_attrs.exit_crit_edge ]
  %122 = and i8 %.sink12.i, %111
  %and3.i = zext i8 %122 to i32
  %i_attrs5.i = getelementptr i8, ptr %inode, i32 -128
  %123 = ptrtoint ptr %i_attrs5.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and3.i, ptr %i_attrs5.i, align 8
  %i_size70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %124 = ptrtoint ptr %i_size70 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %i_size70, align 8
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %126 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cluster_size, align 4
  %sub = add i32 %127, -1
  %conv71 = zext i32 %sub to i64
  %add = add i64 %125, %conv71
  %conv73 = zext i32 %127 to i64
  %neg = sub nsw i64 0, %conv73
  %and75 = and i64 %add, %neg
  %shr = ashr i64 %and75, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %128 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %shr, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %time = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 8
  %129 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %time, align 2
  %date = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 9
  %131 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %date, align 4
  call void @fat_time_fat2unix(ptr noundef %3, ptr noundef %i_mtime, i16 noundef zeroext %130, i16 noundef zeroext %132, i8 noundef zeroext 0) #11
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %133 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %133)
  %bf.load77 = load i16, ptr %isvfat, align 4
  %134 = and i16 %bf.load77, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool81.not = icmp eq i16 %134, 0
  br i1 %tobool81.not, label %if.else83, label %if.then82

if.then82:                                        ; preds = %fat_save_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ctime = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 4
  %135 = ptrtoint ptr %ctime to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %ctime, align 2
  %cdate = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 5
  %137 = ptrtoint ptr %cdate to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cdate, align 4
  %ctime_cs = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 3
  %139 = ptrtoint ptr %ctime_cs to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ctime_cs, align 1
  call void @fat_time_fat2unix(ptr noundef %3, ptr noundef %i_ctime, i16 noundef zeroext %136, i16 noundef zeroext %138, i8 noundef zeroext %140) #11
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %adate = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 6
  %141 = ptrtoint ptr %adate to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %adate, align 2
  call void @fat_time_fat2unix(ptr noundef %3, ptr noundef %i_atime, i16 noundef zeroext 0, i16 noundef zeroext %142, i8 noundef zeroext 0) #11
  br label %cleanup

if.else83:                                        ; preds = %fat_save_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = call i32 @fat_truncate_time(ptr noundef %inode, ptr noundef %i_mtime, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else83, %if.then82, %fat_validate_dir.exit.thread, %fat_calc_dir_size.exit
  %retval.0 = phi i32 [ %call2.i, %fat_calc_dir_size.exit ], [ 0, %if.else83 ], [ 0, %if.then82 ], [ -5, %fat_validate_dir.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_subdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_fat2unix(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fat_build_inode(ptr noundef %sb, ptr nocapture noundef readonly %de, i64 noundef %i_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %nfs.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 10
  %2 = ptrtoint ptr %nfs.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %if.then.i, label %entry.fat_lock_build_inode.exit_crit_edge

entry.fat_lock_build_inode.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_lock_build_inode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nfs_build_inode_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %nfs_build_inode_lock.i, i32 noundef 0) #11
  br label %fat_lock_build_inode.exit

fat_lock_build_inode.exit:                        ; preds = %if.then.i, %entry.fat_lock_build_inode.exit_crit_edge
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hashtable.i = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 32
  %conv.i.i = trunc i64 %i_pos to i32
  %mul.i.i.i.i = mul i32 %conv.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %inode_hashtable.i, i32 %shr.i.i.i
  %inode_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %add.ptr3.i = getelementptr i8, ptr %7, i32 -96
  %tobool4.not4851.i = icmp eq ptr %add.ptr3.i, null
  %tobool4.not48.i = or i1 %tobool.not.i, %tobool4.not4851.i
  br i1 %tobool4.not48.i, label %fat_lock_build_inode.exit.if.end_crit_edge, label %fat_lock_build_inode.exit.do.body.i_crit_edge

fat_lock_build_inode.exit.do.body.i_crit_edge:    ; preds = %fat_lock_build_inode.exit
  br label %do.body.i

fat_lock_build_inode.exit.if.end_crit_edge:       ; preds = %fat_lock_build_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %fat_lock_build_inode.exit.do.body.i_crit_edge
  %i.049.i = phi ptr [ %add.ptr28.i, %for.inc.i.do.body.i_crit_edge ], [ %add.ptr3.i, %fat_lock_build_inode.exit.do.body.i_crit_edge ]
  %vfs_inode.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 12
  %i_sb.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 12, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %cmp.not.i = icmp eq ptr %9, %sb
  br i1 %cmp.not.i, label %do.end12.i, label %do.body7.i, !prof !371

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 459, 0\0A.popsection", ""() #11, !srcloc !373
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %i_pos13.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 8
  %10 = ptrtoint ptr %i_pos13.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_pos13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %i_pos)
  %cmp14.not.i = icmp eq i64 %11, %i_pos
  br i1 %cmp14.not.i, label %if.end16.i, label %do.end12.i.for.inc.i_crit_edge

do.end12.i.for.inc.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end16.i:                                       ; preds = %do.end12.i
  %call18.i = tail call ptr @igrab(ptr noundef %vfs_inode.i) #11
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end16.i.for.inc.i_crit_edge, label %fat_iget.exit

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %do.end12.i.for.inc.i_crit_edge
  %i_fat_hash.i = getelementptr inbounds %struct.msdos_inode_info, ptr %i.049.i, i32 0, i32 9
  %12 = ptrtoint ptr %i_fat_hash.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_fat_hash.i, align 8
  %tobool24.not.i = icmp eq ptr %13, null
  %add.ptr28.i = getelementptr i8, ptr %13, i32 -96
  %tobool4.not52.i = icmp eq ptr %add.ptr28.i, null
  %tobool4.not.i = or i1 %tobool24.not.i, %tobool4.not52.i
  br i1 %tobool4.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fat_iget.exit:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  br label %out

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %fat_lock_build_inode.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  %call2 = tail call ptr @new_inode(ptr noundef %sb) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 1) #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %i_ino, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #11
  %call8 = tail call i32 @fat_fill_inode(ptr noundef nonnull %call2, ptr noundef %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iput(ptr noundef nonnull %call2) #11
  %15 = inttoptr i32 %call8 to ptr
  br label %out

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fat_attach(ptr noundef nonnull %call2, i64 noundef %i_pos)
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  tail call void @__insert_inode_hash(ptr noundef nonnull %call2, i32 noundef %17) #11
  br label %out

out:                                              ; preds = %if.end12, %if.then10, %if.end.out_crit_edge, %fat_iget.exit
  %inode.0 = phi ptr [ %call18.i, %fat_iget.exit ], [ %15, %if.then10 ], [ %call2, %if.end12 ], [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ]
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %nfs.i29 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 19, i32 10
  %20 = ptrtoint ptr %nfs.i29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nfs.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i30 = icmp eq i8 %21, 2
  br i1 %cmp.i30, label %if.then.i32, label %out.fat_unlock_build_inode.exit_crit_edge

out.fat_unlock_build_inode.exit_crit_edge:        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_unlock_build_inode.exit

if.then.i32:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %nfs_build_inode_lock.i31 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %nfs_build_inode_lock.i31) #11
  br label %fat_unlock_build_inode.exit

fat_unlock_build_inode.exit:                      ; preds = %if.then.i32, %out.fat_unlock_build_inode.exit_crit_edge
  ret ptr %inode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_set_iversion(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_version.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %i_version.i, i64 noundef 2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fat_destroy_inodecache() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @fat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_sync_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__fat_write_inode(ptr noundef %inode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fat_write_inode(ptr noundef %inode, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %atime = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %inode_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #11
  %i_pos1.i = getelementptr i8, ptr %inode, i32 -120
  %6 = ptrtoint ptr %i_pos1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_pos1.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not87 = icmp eq i64 %7, 0
  br i1 %tobool.not87, label %retry.preheader.cleanup_crit_edge, label %if.end3.lr.ph

retry.preheader.cleanup_crit_edge:                ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.lr.ph:                                    ; preds = %retry.preheader
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 24
  %dir_per_block.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 23
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  br label %if.end3

if.end3:                                          ; preds = %brelse.exit.if.end3_crit_edge, %if.end3.lr.ph
  %8 = phi i64 [ %7, %if.end3.lr.ph ], [ %20, %brelse.exit.if.end3_crit_edge ]
  %9 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %10 to i64
  %shr.i = ashr i64 %8, %sh_prom.i
  %11 = ptrtoint ptr %dir_per_block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir_per_block.i, align 4
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %14, i64 noundef %shr.i, i32 noundef %16, i32 noundef 8) #11
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i64 noundef %8) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #11
  %17 = ptrtoint ptr %i_pos1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_pos1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %18)
  %cmp10.not = icmp eq i64 %8, %18
  br i1 %cmp10.not, label %if.end13, label %brelse.exit

brelse.exit:                                      ; preds = %if.end7
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #11
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #11
  %19 = ptrtoint ptr %i_pos1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_pos1.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  %tobool.not = icmp eq i64 %20, 0
  br i1 %tobool.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.if.end3_crit_edge

brelse.exit.if.end3_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %sub.i.le = add i32 %12, -1
  %21 = trunc i64 %8 to i32
  %conv1.i.le = and i32 %sub.i.le, %21
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %24 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %inode, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp14 = icmp eq i16 %26, 16384
  br i1 %cmp14, label %if.end13.if.end19_crit_edge, label %if.else

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %conv17 = trunc i64 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end13.if.end19_crit_edge
  %.sink = phi i32 [ %29, %if.else ], [ 0, %if.end13.if.end19_crit_edge ]
  %30 = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 11
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %30, align 4
  %i_attrs.i = getelementptr i8, ptr %inode, i32 -128
  %32 = ptrtoint ptr %i_attrs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_attrs.i, align 8
  %conv.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inode, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %36)
  %cmp.i = icmp eq i16 %36, 16384
  %conv4.i = or i8 %conv.i, 16
  %attrs.0.i = select i1 %cmp.i, i8 %conv4.i, i8 %conv.i
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i.i, align 16
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end19
  %rodir.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %40, i32 0, i32 19, i32 12
  %41 = ptrtoint ptr %rodir.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i.i = load i16, ptr %rodir.i.i, align 4
  %42 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.fat_make_attrs.exit_crit_edge, label %if.end.i.i

if.then.i.i.fat_make_attrs.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_make_attrs.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fs_dmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %40, i32 0, i32 19, i32 3
  br label %fat_mode_can_hold_ro.exit.i

if.else.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %fs_fmask.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %40, i32 0, i32 19, i32 2
  br label %fat_mode_can_hold_ro.exit.i

fat_mode_can_hold_ro.exit.i:                      ; preds = %if.else.i.i, %if.end.i.i
  %mask.0.in.in.i.i = phi ptr [ %fs_dmask.i.i, %if.end.i.i ], [ %fs_fmask.i.i, %if.else.i.i ]
  %43 = ptrtoint ptr %mask.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %mask.0.in.i.i = load i16, ptr %mask.0.in.in.i.i, align 2
  %mask.0.i.i = and i16 %mask.0.in.i.i, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %mask.0.i.i)
  %tobool13.not.i.not.i = icmp eq i16 %mask.0.i.i, 146
  br i1 %tobool13.not.i.not.i, label %fat_mode_can_hold_ro.exit.i.fat_make_attrs.exit_crit_edge, label %land.lhs.true.i

fat_mode_can_hold_ro.exit.i.fat_make_attrs.exit_crit_edge: ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_make_attrs.exit

land.lhs.true.i:                                  ; preds = %fat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = and i16 %35, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool9.not.i = icmp eq i16 %44, 0
  %45 = zext i1 %tobool9.not.i to i8
  %spec.select.i = or i8 %attrs.0.i, %45
  br label %fat_make_attrs.exit

fat_make_attrs.exit:                              ; preds = %land.lhs.true.i, %fat_mode_can_hold_ro.exit.i.fat_make_attrs.exit_crit_edge, %if.then.i.i.fat_make_attrs.exit_crit_edge
  %attrs.1.i = phi i8 [ %attrs.0.i, %fat_mode_can_hold_ro.exit.i.fat_make_attrs.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %conv4.i, %if.then.i.i.fat_make_attrs.exit_crit_edge ]
  %attr = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 1
  %46 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %attrs.1.i, ptr %attr, align 1
  %i_logstart = getelementptr i8, ptr %inode, i32 -132
  %47 = ptrtoint ptr %i_logstart to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_logstart, align 4
  %conv.i75 = trunc i32 %48 to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv.i75) #11
  %start.i = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 10
  %50 = ptrtoint ptr %start.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %start.i, align 2
  %51 = lshr i32 %48, 16
  %conv1.i76 = trunc i32 %51 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv1.i76) #11
  %starthi.i = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 7
  %53 = ptrtoint ptr %starthi.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %starthi.i, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %time = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 8
  %date = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 9
  tail call void @fat_time_unix2fat(ptr noundef %3, ptr noundef %i_mtime, ptr noundef %time, ptr noundef %date, ptr noundef null) #11
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %54 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %isvfat, align 4
  %55 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool22.not = icmp eq i16 %55, 0
  br i1 %tobool22.not, label %fat_make_attrs.exit.if.end24_crit_edge, label %if.then23

fat_make_attrs.exit.if.end24_crit_edge:           ; preds = %fat_make_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %fat_make_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atime) #11
  %56 = ptrtoint ptr %atime to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %atime, align 2, !annotation !370
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ctime = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 4
  %cdate = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 5
  %ctime_cs = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 3
  tail call void @fat_time_unix2fat(ptr noundef %3, ptr noundef %i_ctime, ptr noundef %ctime, ptr noundef %cdate, ptr noundef %ctime_cs) #11
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %adate = getelementptr %struct.msdos_dir_entry, ptr %23, i32 %conv1.i.le, i32 6
  call void @fat_time_unix2fat(ptr noundef %3, ptr noundef %i_atime, ptr noundef nonnull %atime, ptr noundef %adate, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atime) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %fat_make_attrs.exit.if.end24_crit_edge
  call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #11
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool26.not = icmp eq i32 %wait, 0
  br i1 %tobool26.not, label %if.end24.brelse.exit79_crit_edge, label %if.then27

if.end24.brelse.exit79_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit79

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #11
  br label %brelse.exit79

brelse.exit79:                                    ; preds = %if.then27, %if.end24.brelse.exit79_crit_edge
  %err.0 = phi i32 [ %call28, %if.then27 ], [ 0, %if.end24.brelse.exit79_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit79, %brelse.exit.cleanup_crit_edge, %if.then6, %retry.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %brelse.exit79 ], [ -5, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %retry.preheader.cleanup_crit_edge ], [ 0, %brelse.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent, i32 noundef %isvfat, ptr nocapture noundef readonly %setup) #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  %buf = alloca [50 x i8], align 1
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %1 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2620) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup281_crit_edge, label %if.end

entry.cleanup281_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup281

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %or = or i32 %5, 2048
  store i32 %or, ptr %s_flags, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %6 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 19780, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %7 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fat_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %8 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fat_export_ops, ptr %s_export_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %9 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %s_time_gran, align 4
  %nfs_build_inode_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %nfs_build_inode_lock, ptr noundef nonnull @.str, ptr noundef nonnull @fat_fill_super.__key) #11
  %ratelimit = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 30
  %10 = call ptr @memset(ptr %ratelimit, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %ratelimit, ptr noundef nonnull @.str.60, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #11
  %interval1.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 30, i32 1
  %11 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %interval1.i, align 8
  %burst2.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 30, i32 2
  %12 = ptrtoint ptr %burst2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %burst2.i, align 4
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %13 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #11
  %14 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #11
  %15 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %option.i, align 4, !annotation !370
  %isvfat.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 12
  %16 = trunc i32 %isvfat to i16
  %17 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %isvfat.i, align 8
  %bf.value.i = shl i16 %16, 11
  %bf.shl.i = and i16 %bf.value.i, 2048
  %bf.clear.i = and i16 %bf.load.i, -2049
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %isvfat.i, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !360) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uid.i, align 4
  %26 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %options, align 8
  %fs_gid.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 1
  %27 = load ptr, ptr %task.i, align 8
  %cred7.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred7.i, align 16
  %gid.i = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gid.i, align 4
  %32 = ptrtoint ptr %fs_gid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fs_gid.i, align 4
  %call8.i = tail call i32 @current_umask() #11
  %conv.i = trunc i32 %call8.i to i16
  %fs_dmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 3
  %33 = ptrtoint ptr %fs_dmask.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %fs_dmask.i, align 2
  %fs_fmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %fs_fmask.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %fs_fmask.i, align 8
  %allow_utime.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 11
  %35 = ptrtoint ptr %allow_utime.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %allow_utime.i, align 2
  %codepage.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 4
  %36 = ptrtoint ptr %codepage.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 437, ptr %codepage.i, align 4
  %iocharset.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 6
  %37 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iocharset.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %38, @fat_default_iocharset
  br i1 %cmp.not.i.i, label %if.end.fat_reset_iocharset.exit.i_crit_edge, label %if.then.i.i

if.end.fat_reset_iocharset.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_reset_iocharset.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %38) #11
  %39 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fat_default_iocharset, ptr %iocharset.i.i, align 4
  br label %fat_reset_iocharset.exit.i

fat_reset_iocharset.exit.i:                       ; preds = %if.then.i.i, %if.end.fat_reset_iocharset.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isvfat)
  %tobool.not.i = icmp eq i32 %isvfat, 0
  %40 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load15.i = load i16, ptr %isvfat.i, align 8
  %bf.clear11.i = and i16 %bf.load15.i, 2183
  %.sink.i = select i1 %tobool.not.i, i16 0, i16 260
  %bf.shl48.i = select i1 %tobool.not.i, i16 0, i16 1024
  %41 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %.sink.i, ptr %41, align 8
  %name_check.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 8
  %43 = ptrtoint ptr %name_check.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 110, ptr %name_check.i, align 2
  %storemerge.i = select i1 %tobool.not.i, i16 264, i16 256
  %bf.set35.i = or i16 %storemerge.i, %bf.clear11.i
  %nfs.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 10
  %44 = ptrtoint ptr %nfs.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %nfs.i, align 4
  %errors.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 9
  %45 = ptrtoint ptr %errors.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %errors.i, align 1
  %bf.set50.i = or i16 %bf.set35.i, %bf.shl48.i
  store i16 %bf.set50.i, ptr %isvfat.i, align 8
  %46 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %options.addr.i, align 4
  %tobool52.not.i = icmp eq ptr %47, null
  br i1 %tobool52.not.i, label %fat_reset_iocharset.exit.i.out.i_crit_edge, label %while.cond.preheader.i

fat_reset_iocharset.exit.i.out.i_crit_edge:       ; preds = %fat_reset_iocharset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.cond.preheader.i:                           ; preds = %fat_reset_iocharset.exit.i
  %call55441.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.62) #11
  %cmp.not442.i = icmp eq ptr %call55441.i, null
  br i1 %cmp.not442.i, label %while.cond.preheader.i.out.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.out.i_crit_edge:           ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %time_offset220.i = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 19, i32 5
  %msdos_tokens.vfat_tokens.i = select i1 %tobool.not.i, ptr @msdos_tokens, ptr @vfat_tokens
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call55443.i = phi ptr [ %call55441.i, %while.body.lr.ph.i ], [ %call55.i, %cleanup.i.while.body.i_crit_edge ]
  %48 = ptrtoint ptr %call55443.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %call55443.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool57.not.i = icmp eq i8 %49, 0
  br i1 %tobool57.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end59.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end59.i:                                       ; preds = %while.body.i
  %call60.i = call i32 @match_token(ptr noundef nonnull %call55443.i, ptr noundef nonnull @fat_tokens, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %call60.i)
  %cmp61.i = icmp eq i32 %call60.i, 41
  br i1 %cmp61.i, label %if.then63.i, label %if.end59.i.if.end72.i_crit_edge

if.end59.i.if.end72.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %call67.i = call i32 @match_token(ptr noundef nonnull %call55443.i, ptr noundef nonnull %msdos_tokens.vfat_tokens.i, ptr noundef nonnull %args.i) #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then63.i, %if.end59.i.if.end72.i_crit_edge
  %token.0.i = phi i32 [ %call60.i, %if.end59.i.if.end72.i_crit_edge ], [ %call67.i, %if.then63.i ]
  %50 = zext i32 %token.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %token.0.i, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb74.i
    i32 0, label %sw.bb76.i
    i32 10, label %sw.bb78.i
    i32 11, label %sw.bb83.i
    i32 12, label %sw.bb93.i
    i32 13, label %sw.bb98.i
    i32 14, label %if.end72.i.cleanup.i_crit_edge
    i32 15, label %sw.bb104.i
    i32 3, label %sw.bb109.i
    i32 4, label %sw.bb130.i
    i32 5, label %sw.bb154.i
    i32 6, label %sw.bb163.i
    i32 7, label %sw.bb171.i
    i32 8, label %sw.bb179.i
    i32 9, label %sw.bb187.i
    i32 30, label %sw.bb195.i
    i32 38, label %sw.bb199.i
    i32 31, label %sw.bb215.i
    i32 33, label %sw.bb221.i
    i32 34, label %sw.bb223.i
    i32 35, label %sw.bb225.i
    i32 39, label %sw.bb227.i
    i32 40, label %sw.bb229.i
    i32 42, label %sw.bb231.i
    i32 16, label %sw.bb235.i
    i32 17, label %sw.bb240.i
    i32 18, label %sw.bb245.i
    i32 19, label %sw.bb252.i
    i32 20, label %sw.bb254.i
    i32 21, label %sw.bb256.i
    i32 22, label %sw.bb258.i
    i32 23, label %sw.bb260.i
    i32 24, label %sw.bb265.i
    i32 25, label %sw.bb270.i
    i32 26, label %sw.bb275.i
    i32 27, label %sw.bb280.i
    i32 28, label %sw.bb285.i
    i32 32, label %sw.bb290.i
    i32 36, label %sw.bb295.i
    i32 29, label %sw.bb299.i
  ]

if.end72.i.cleanup.i_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %name_check.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 115, ptr %name_check.i, align 2
  br label %cleanup.i

sw.bb74.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %name_check.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 114, ptr %name_check.i, align 2
  br label %cleanup.i

sw.bb76.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %name_check.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 110, ptr %name_check.i, align 2
  br label %cleanup.i

sw.bb78.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load80.i = load i16, ptr %isvfat.i, align 8
  %bf.set82.i = or i16 %bf.load80.i, 32
  store i16 %bf.set82.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb83.i:                                        ; preds = %if.end72.i
  br i1 %tobool.not.i, label %if.then85.i, label %if.else90.i

if.then85.i:                                      ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load87.i = load i16, ptr %isvfat.i, align 8
  %bf.set89.i = or i16 %bf.load87.i, 64
  store i16 %bf.set89.i, ptr %isvfat.i, align 8
  br label %cleanup.i

if.else90.i:                                      ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 258, ptr %41, align 8
  br label %cleanup.i

sw.bb93.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load95.i = load i16, ptr %isvfat.i, align 8
  %bf.set97.i = or i16 %bf.load95.i, -32768
  store i16 %bf.set97.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb98.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load100.i = load i16, ptr %isvfat.i, align 8
  %bf.set102.i = or i16 %bf.load100.i, 16384
  store i16 %bf.set102.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb104.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load106.i = load i16, ptr %isvfat.i, align 8
  %bf.set108.i = or i16 %bf.load106.i, 8192
  store i16 %bf.set108.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb109.i:                                       ; preds = %if.end72.i
  %call110.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %sw.bb109.i.parse_options.exit.thread_crit_edge

sw.bb109.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end113.i:                                      ; preds = %sw.bb109.i
  %60 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i, align 8
  %cred123.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 99
  %62 = ptrtoint ptr %cred123.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cred123.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %63, i32 0, i32 25
  %64 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %user_ns.i, align 4
  %66 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %option.i, align 4
  %call124.i = call i32 @make_kuid(ptr noundef %65, i32 noundef %67) #11
  %68 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call124.i, ptr %options, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call124.i)
  %cmp.i.not.i = icmp eq i32 %call124.i, -1
  br i1 %cmp.i.not.i, label %if.end113.i.parse_options.exit.thread_crit_edge, label %if.end113.i.cleanup.i_crit_edge

if.end113.i.cleanup.i_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end113.i.parse_options.exit.thread_crit_edge:  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

sw.bb130.i:                                       ; preds = %if.end72.i
  %call132.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %if.end135.i, label %sw.bb130.i.parse_options.exit.thread_crit_edge

sw.bb130.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end135.i:                                      ; preds = %sw.bb130.i
  %69 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i, align 8
  %cred145.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 99
  %71 = ptrtoint ptr %cred145.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cred145.i, align 16
  %user_ns146.i = getelementptr inbounds %struct.cred, ptr %72, i32 0, i32 25
  %73 = ptrtoint ptr %user_ns146.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %user_ns146.i, align 4
  %75 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %option.i, align 4
  %call147.i = call i32 @make_kgid(ptr noundef %74, i32 noundef %76) #11
  %77 = ptrtoint ptr %fs_gid.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call147.i, ptr %fs_gid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call147.i)
  %cmp.i432.not.i = icmp eq i32 %call147.i, -1
  br i1 %cmp.i432.not.i, label %if.end135.i.parse_options.exit.thread_crit_edge, label %if.end135.i.cleanup.i_crit_edge

if.end135.i.cleanup.i_crit_edge:                  ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end135.i.parse_options.exit.thread_crit_edge:  ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

sw.bb154.i:                                       ; preds = %if.end72.i
  %call156.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.end159.i, label %sw.bb154.i.parse_options.exit.thread_crit_edge

sw.bb154.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end159.i:                                      ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %option.i, align 4
  %conv160.i = trunc i32 %79 to i16
  %80 = ptrtoint ptr %fs_dmask.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv160.i, ptr %fs_dmask.i, align 2
  %81 = ptrtoint ptr %fs_fmask.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv160.i, ptr %fs_fmask.i, align 8
  br label %cleanup.i

sw.bb163.i:                                       ; preds = %if.end72.i
  %call165.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  br i1 %tobool166.not.i, label %if.end168.i, label %sw.bb163.i.parse_options.exit.thread_crit_edge

sw.bb163.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end168.i:                                      ; preds = %sw.bb163.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %option.i, align 4
  %conv169.i = trunc i32 %83 to i16
  %84 = ptrtoint ptr %fs_dmask.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv169.i, ptr %fs_dmask.i, align 2
  br label %cleanup.i

sw.bb171.i:                                       ; preds = %if.end72.i
  %call173.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %tobool174.not.i = icmp eq i32 %call173.i, 0
  br i1 %tobool174.not.i, label %if.end176.i, label %sw.bb171.i.parse_options.exit.thread_crit_edge

sw.bb171.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end176.i:                                      ; preds = %sw.bb171.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %option.i, align 4
  %conv177.i = trunc i32 %86 to i16
  %87 = ptrtoint ptr %fs_fmask.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv177.i, ptr %fs_fmask.i, align 8
  br label %cleanup.i

sw.bb179.i:                                       ; preds = %if.end72.i
  %call181.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181.i)
  %tobool182.not.i = icmp eq i32 %call181.i, 0
  br i1 %tobool182.not.i, label %if.end184.i, label %sw.bb179.i.parse_options.exit.thread_crit_edge

sw.bb179.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end184.i:                                      ; preds = %sw.bb179.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %option.i, align 4
  %90 = trunc i32 %89 to i16
  %conv185.i = and i16 %90, 18
  %91 = ptrtoint ptr %allow_utime.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv185.i, ptr %allow_utime.i, align 2
  br label %cleanup.i

sw.bb187.i:                                       ; preds = %if.end72.i
  %call189.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %if.end192.i, label %sw.bb187.i.parse_options.exit.thread_crit_edge

sw.bb187.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end192.i:                                      ; preds = %sw.bb187.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %option.i, align 4
  %conv193.i = trunc i32 %93 to i16
  %94 = ptrtoint ptr %codepage.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv193.i, ptr %codepage.i, align 4
  br label %cleanup.i

sw.bb195.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load196.i = load i16, ptr %isvfat.i, align 8
  %bf.set198.i = or i16 %bf.load196.i, 128
  store i16 %bf.set198.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb199.i:                                       ; preds = %if.end72.i
  %call201.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201.i)
  %tobool202.not.i = icmp eq i32 %call201.i, 0
  br i1 %tobool202.not.i, label %if.end204.i, label %sw.bb199.i.parse_options.exit.thread_crit_edge

sw.bb199.i.parse_options.exit.thread_crit_edge:   ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end204.i:                                      ; preds = %sw.bb199.i
  %96 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %option.i, align 4
  %98 = add i32 %97, -1441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2881, i32 %98)
  %99 = icmp ult i32 %98, -2881
  br i1 %99, label %if.end204.i.parse_options.exit.thread_crit_edge, label %if.end210.i

if.end204.i.parse_options.exit.thread_crit_edge:  ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end210.i:                                      ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load212.i = load i16, ptr %isvfat.i, align 8
  %bf.set214.i = or i16 %bf.load212.i, 16
  store i16 %bf.set214.i, ptr %isvfat.i, align 8
  %101 = ptrtoint ptr %time_offset220.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %97, ptr %time_offset220.i, align 8
  br label %cleanup.i

sw.bb215.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load217.i = load i16, ptr %isvfat.i, align 8
  %bf.set219.i = or i16 %bf.load217.i, 16
  store i16 %bf.set219.i, ptr %isvfat.i, align 8
  %103 = ptrtoint ptr %time_offset220.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %time_offset220.i, align 8
  br label %cleanup.i

sw.bb221.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %errors.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %errors.i, align 1
  br label %cleanup.i

sw.bb223.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %errors.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %errors.i, align 1
  br label %cleanup.i

sw.bb225.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %errors.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %errors.i, align 1
  br label %cleanup.i

sw.bb227.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %nfs.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %nfs.i, align 4
  br label %cleanup.i

sw.bb229.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %nfs.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %nfs.i, align 4
  br label %cleanup.i

sw.bb231.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load232.i = load i16, ptr %isvfat.i, align 8
  %bf.set234.i = or i16 %bf.load232.i, 2
  store i16 %bf.set234.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb235.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load237.i = load i16, ptr %isvfat.i, align 8
  %bf.set239.i = or i16 %bf.load237.i, 4096
  store i16 %bf.set239.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb240.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load242.i = load i16, ptr %isvfat.i, align 8
  %bf.clear243.i = and i16 %bf.load242.i, -4097
  store i16 %bf.clear243.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb245.i:                                       ; preds = %if.end72.i
  %112 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iocharset.i.i, align 4
  %cmp.not.i434.i = icmp eq ptr %113, @fat_default_iocharset
  br i1 %cmp.not.i434.i, label %sw.bb245.i.fat_reset_iocharset.exit436.i_crit_edge, label %if.then.i435.i

sw.bb245.i.fat_reset_iocharset.exit436.i_crit_edge: ; preds = %sw.bb245.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_reset_iocharset.exit436.i

if.then.i435.i:                                   ; preds = %sw.bb245.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %113) #11
  %114 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @fat_default_iocharset, ptr %iocharset.i.i, align 4
  br label %fat_reset_iocharset.exit436.i

fat_reset_iocharset.exit436.i:                    ; preds = %if.then.i435.i, %sw.bb245.i.fat_reset_iocharset.exit436.i_crit_edge
  %call247.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #11
  %tobool248.not.i = icmp eq ptr %call247.i, null
  br i1 %tobool248.not.i, label %fat_reset_iocharset.exit436.i.parse_options.exit.thread_crit_edge, label %if.end250.i

fat_reset_iocharset.exit436.i.parse_options.exit.thread_crit_edge: ; preds = %fat_reset_iocharset.exit436.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.end250.i:                                      ; preds = %fat_reset_iocharset.exit436.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call247.i, ptr %iocharset.i.i, align 4
  br label %cleanup.i

sw.bb252.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 257, ptr %41, align 8
  br label %cleanup.i

sw.bb254.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 258, ptr %41, align 8
  br label %cleanup.i

sw.bb256.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 516, ptr %41, align 8
  br label %cleanup.i

sw.bb258.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 260, ptr %41, align 8
  br label %cleanup.i

sw.bb260.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load262.i = load i16, ptr %isvfat.i, align 8
  %bf.clear263.i = and i16 %bf.load262.i, -1025
  store i16 %bf.clear263.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb265.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load267.i = load i16, ptr %isvfat.i, align 8
  %bf.set269.i = or i16 %bf.load267.i, 1024
  store i16 %bf.set269.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb270.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load272.i = load i16, ptr %isvfat.i, align 8
  %bf.clear273.i = and i16 %bf.load272.i, -513
  store i16 %bf.clear273.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb275.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %bf.load277.i = load i16, ptr %isvfat.i, align 8
  %bf.set279.i = or i16 %bf.load277.i, 512
  store i16 %bf.set279.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb280.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load282.i = load i16, ptr %isvfat.i, align 8
  %bf.set284.i = or i16 %bf.load282.i, 256
  store i16 %bf.set284.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb285.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load287.i = load i16, ptr %isvfat.i, align 8
  %bf.clear288.i = and i16 %bf.load287.i, -257
  store i16 %bf.clear288.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb290.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load292.i = load i16, ptr %isvfat.i, align 8
  %bf.set294.i = or i16 %bf.load292.i, 8
  store i16 %bf.set294.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb295.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load296.i = load i16, ptr %isvfat.i, align 8
  %bf.set298.i = or i16 %bf.load296.i, 4
  store i16 %bf.set298.i, ptr %isvfat.i, align 8
  br label %cleanup.i

sw.bb299.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.65, ptr noundef nonnull %call55443.i) #14
  br label %cleanup.i

sw.default.i:                                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool300.not.i = icmp eq i32 %silent, 0
  br i1 %tobool300.not.i, label %if.then301.i, label %sw.default.i.parse_options.exit.thread_crit_edge

sw.default.i.parse_options.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_options.exit.thread

if.then301.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.66, ptr noundef nonnull %call55443.i) #14
  br label %parse_options.exit.thread

cleanup.i:                                        ; preds = %sw.bb299.i, %sw.bb295.i, %sw.bb290.i, %sw.bb285.i, %sw.bb280.i, %sw.bb275.i, %sw.bb270.i, %sw.bb265.i, %sw.bb260.i, %sw.bb258.i, %sw.bb256.i, %sw.bb254.i, %sw.bb252.i, %if.end250.i, %sw.bb240.i, %sw.bb235.i, %sw.bb231.i, %sw.bb229.i, %sw.bb227.i, %sw.bb225.i, %sw.bb223.i, %sw.bb221.i, %sw.bb215.i, %if.end210.i, %sw.bb195.i, %if.end192.i, %if.end184.i, %if.end176.i, %if.end168.i, %if.end159.i, %if.end135.i.cleanup.i_crit_edge, %if.end113.i.cleanup.i_crit_edge, %sw.bb104.i, %sw.bb98.i, %sw.bb93.i, %if.else90.i, %if.then85.i, %sw.bb78.i, %sw.bb76.i, %sw.bb74.i, %sw.bb.i, %if.end72.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %call55.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.62) #11
  %cmp.not.i = icmp eq ptr %call55.i, null
  br i1 %cmp.not.i, label %cleanup.i.out.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.out.i_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

out.i:                                            ; preds = %cleanup.i.out.i_crit_edge, %while.cond.preheader.i.out.i_crit_edge, %fat_reset_iocharset.exit.i.out.i_crit_edge
  %128 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iocharset.i.i, align 4
  %call304.i = call i32 @strcmp(ptr noundef %129, ptr noundef nonnull dereferenceable(5) @.str.67) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %tobool305.not.i = icmp eq i32 %call304.i, 0
  br i1 %tobool305.not.i, label %if.then306.i, label %out.i.if.end307.i_crit_edge

out.i.if.end307.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307.i

if.then306.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.68) #14
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.then306.i, %out.i.if.end307.i_crit_edge
  %130 = ptrtoint ptr %allow_utime.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %allow_utime.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %131)
  %cmp310.i = icmp eq i16 %131, -1
  br i1 %cmp310.i, label %if.then312.i, label %if.end307.i.if.end318.i_crit_edge

if.end307.i.if.end318.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end318.i

if.then312.i:                                     ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %fs_dmask.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %fs_dmask.i, align 2
  %134 = and i16 %133, 18
  %135 = xor i16 %134, 18
  %136 = ptrtoint ptr %allow_utime.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %allow_utime.i, align 2
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.then312.i, %if.end307.i.if.end318.i_crit_edge
  %137 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load320.i = load i16, ptr %isvfat.i, align 8
  %138 = and i16 %bf.load320.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool322.not.i = icmp eq i16 %138, 0
  br i1 %tobool322.not.i, label %if.end318.i.if.end328.i_crit_edge, label %if.then323.i

if.end318.i.if.end328.i_crit_edge:                ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end328.i

if.then323.i:                                     ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear326.i = and i16 %bf.load320.i, -1025
  %139 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %bf.clear326.i, ptr %isvfat.i, align 8
  br label %if.end328.i

if.end328.i:                                      ; preds = %if.then323.i, %if.end318.i.if.end328.i_crit_edge
  %140 = ptrtoint ptr %nfs.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %nfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp331.i = icmp eq i8 %141, 2
  br i1 %cmp331.i, label %if.then333.i, label %if.end328.i.if.end4_crit_edge

if.end328.i.if.end4_crit_edge:                    ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then333.i:                                     ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_flags, align 4
  %or.i = or i32 %143, 1
  store i32 %or.i, ptr %s_flags, align 4
  %144 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @fat_export_ops_nostale, ptr %s_export_op, align 16
  br label %if.end4

parse_options.exit.thread:                        ; preds = %if.then301.i, %sw.default.i.parse_options.exit.thread_crit_edge, %fat_reset_iocharset.exit436.i.parse_options.exit.thread_crit_edge, %if.end204.i.parse_options.exit.thread_crit_edge, %sw.bb199.i.parse_options.exit.thread_crit_edge, %sw.bb187.i.parse_options.exit.thread_crit_edge, %sw.bb179.i.parse_options.exit.thread_crit_edge, %sw.bb171.i.parse_options.exit.thread_crit_edge, %sw.bb163.i.parse_options.exit.thread_crit_edge, %sw.bb154.i.parse_options.exit.thread_crit_edge, %if.end135.i.parse_options.exit.thread_crit_edge, %sw.bb130.i.parse_options.exit.thread_crit_edge, %if.end113.i.parse_options.exit.thread_crit_edge, %sw.bb109.i.parse_options.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -22, %if.then301.i ], [ -22, %sw.default.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb109.i.parse_options.exit.thread_crit_edge ], [ -22, %if.end113.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb130.i.parse_options.exit.thread_crit_edge ], [ -22, %if.end135.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb154.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb163.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb171.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb179.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb187.i.parse_options.exit.thread_crit_edge ], [ -22, %sw.bb199.i.parse_options.exit.thread_crit_edge ], [ -22, %if.end204.i.parse_options.exit.thread_crit_edge ], [ -12, %fat_reset_iocharset.exit436.i.parse_options.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  br label %if.end276

if.end4:                                          ; preds = %if.then333.i, %if.end328.i.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void %setup(ptr noundef %sb) #11
  %call5 = call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #11
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %145 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %147 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %146, i64 noundef 0, i32 noundef %148, i32 noundef 8) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %if.end276

if.end8:                                          ; preds = %if.end4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %149 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %b_data, align 4
  %sector_size.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %sector_size.i, align 1
  %153 = call i16 @llvm.bswap.i16(i16 %152) #11
  %sec_per_clus.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 3
  %154 = ptrtoint ptr %sec_per_clus.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sec_per_clus.i, align 1
  %reserved.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 4
  %156 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %reserved.i, align 2
  %158 = call i16 @llvm.bswap.i16(i16 %157) #11
  %fats.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 5
  %159 = ptrtoint ptr %fats.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %fats.i, align 4
  %dir_entries.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 6
  %161 = ptrtoint ptr %dir_entries.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %dir_entries.i, align 1
  %163 = call i16 @llvm.bswap.i16(i16 %162) #11
  %sectors.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 7
  %164 = ptrtoint ptr %sectors.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %sectors.i, align 1
  %166 = call i16 @llvm.bswap.i16(i16 %165) #11
  %fat_length.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 9
  %167 = ptrtoint ptr %fat_length.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %fat_length.i, align 2
  %169 = call i16 @llvm.bswap.i16(i16 %168) #11
  %total_sect.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 13
  %170 = ptrtoint ptr %total_sect.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %total_sect.i, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171) #11
  %173 = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 14
  %state.i = getelementptr inbounds %struct.anon.83, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %state.i, align 1
  %vol_id.i = getelementptr inbounds %struct.anon.83, ptr %173, i32 0, i32 3
  %176 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %vol_id.i, align 1
  %178 = call i32 @llvm.bswap.i32(i32 %177) #11
  %179 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %173, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180) #11
  %root_cluster.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 14, i32 0, i32 3
  %182 = ptrtoint ptr %root_cluster.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %root_cluster.i, align 4
  %184 = call i32 @llvm.bswap.i32(i32 %183) #11
  %info_sector.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 14, i32 0, i32 4
  %185 = ptrtoint ptr %info_sector.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %info_sector.i, align 4
  %187 = call i16 @llvm.bswap.i16(i16 %186) #11
  %state4.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 14, i32 0, i32 8
  %188 = ptrtoint ptr %state4.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %state4.i, align 1
  %vol_id5.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 14, i32 0, i32 10
  %190 = ptrtoint ptr %vol_id5.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %vol_id5.i, align 1
  %192 = call i32 @llvm.bswap.i32(i32 %191) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool.not.i484 = icmp eq i16 %157, 0
  br i1 %tobool.not.i484, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool9.not.i = icmp eq i32 %silent, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then.i.land.lhs.true_crit_edge

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.140) #14
  br label %land.lhs.true

if.end11.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool13.not.i = icmp eq i8 %160, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end18.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool15.not.i = icmp eq i32 %silent, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.then14.i.land.lhs.true_crit_edge

if.then14.i.land.lhs.true_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.141) #14
  br label %land.lhs.true

if.end18.i:                                       ; preds = %if.end11.i
  %media.i = getelementptr inbounds %struct.fat_boot_sector, ptr %150, i32 0, i32 8
  %193 = ptrtoint ptr %media.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %media.i, align 1
  %195 = zext i8 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %194, label %if.then21.i [
    i8 -1, label %if.end18.i.if.end26.i_crit_edge
    i8 -2, label %if.end18.i.if.end26.i_crit_edge638
    i8 -3, label %if.end18.i.if.end26.i_crit_edge639
    i8 -4, label %if.end18.i.if.end26.i_crit_edge640
    i8 -5, label %if.end18.i.if.end26.i_crit_edge641
    i8 -6, label %if.end18.i.if.end26.i_crit_edge642
    i8 -7, label %if.end18.i.if.end26.i_crit_edge643
    i8 -8, label %if.end18.i.if.end26.i_crit_edge644
    i8 -16, label %if.end18.i.if.end26.i_crit_edge645
  ]

if.end18.i.if.end26.i_crit_edge645:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge644:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge643:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge642:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge641:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge640:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge639:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge638:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool22.not.i = icmp eq i32 %silent, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.then21.i.land.lhs.true_crit_edge

if.then21.i.land.lhs.true_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i485 = zext i8 %194 to i32
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.142, i32 noundef %conv.i485) #14
  br label %land.lhs.true

if.end26.i:                                       ; preds = %if.end18.i.if.end26.i_crit_edge, %if.end18.i.if.end26.i_crit_edge638, %if.end18.i.if.end26.i_crit_edge639, %if.end18.i.if.end26.i_crit_edge640, %if.end18.i.if.end26.i_crit_edge641, %if.end18.i.if.end26.i_crit_edge642, %if.end18.i.if.end26.i_crit_edge643, %if.end18.i.if.end26.i_crit_edge644, %if.end18.i.if.end26.i_crit_edge645
  %conv28.i = zext i16 %153 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %cmp.not.i.i486 = icmp eq i16 %152, 0
  br i1 %cmp.not.i.i486, label %if.end26.i.if.then38.i_crit_edge, label %is_power_of_2.exit.i

if.end26.i.if.then38.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

is_power_of_2.exit.i:                             ; preds = %if.end26.i
  %196 = call i32 @llvm.ctpop.i32(i32 %conv28.i) #11, !range !375
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp1.i.i = icmp ugt i32 %196, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %153)
  %cmp.i = icmp ult i16 %153, 512
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %153)
  %cmp36.i = icmp ugt i16 %153, 4096
  %or.cond118.i = select i1 %or.cond.i, i1 true, i1 %cmp36.i
  br i1 %or.cond118.i, label %is_power_of_2.exit.i.if.then38.i_crit_edge, label %if.end44.i

is_power_of_2.exit.i.if.then38.i_crit_edge:       ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %is_power_of_2.exit.i.if.then38.i_crit_edge, %if.end26.i.if.then38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool39.not.i = icmp eq i32 %silent, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.then38.i.land.lhs.true_crit_edge

if.then38.i.land.lhs.true_crit_edge:              ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.143, i32 noundef %conv28.i) #14
  br label %land.lhs.true

if.end44.i:                                       ; preds = %is_power_of_2.exit.i
  %conv46.i = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %cmp.not.i119.i = icmp ne i8 %155, 0
  %197 = call i32 @llvm.ctpop.i32(i32 %conv46.i) #11, !range !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp1.i120.i = icmp ult i32 %197, 2
  %or.cond128.i = and i1 %cmp.not.i119.i, %cmp1.i120.i
  br i1 %or.cond128.i, label %if.end54.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool49.not.i = icmp eq i32 %silent, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.then48.i.land.lhs.true_crit_edge

if.then48.i.land.lhs.true_crit_edge:              ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then50.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.144, i32 noundef %conv46.i) #14
  br label %land.lhs.true

if.end54.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %cmp57.i = icmp eq i16 %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp60.i = icmp eq i32 %180, 0
  %or.cond129.i = select i1 %cmp57.i, i1 %cmp60.i, i1 false
  br i1 %or.cond129.i, label %if.then62.i, label %if.end54.i.if.end22_crit_edge

if.end54.i.if.end22_crit_edge:                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool63.not.i = icmp eq i32 %silent, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.then62.i.land.lhs.true_crit_edge

if.then62.i.land.lhs.true_crit_edge:              ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then64.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.145) #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then64.i, %if.then62.i.land.lhs.true_crit_edge, %if.then50.i, %if.then48.i.land.lhs.true_crit_edge, %if.then40.i, %if.then38.i.land.lhs.true_crit_edge, %if.then23.i, %if.then21.i.land.lhs.true_crit_edge, %if.then16.i, %if.then14.i.land.lhs.true_crit_edge, %if.then10.i, %if.then.i.land.lhs.true_crit_edge
  %198 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %bf.load = load i16, ptr %isvfat.i, align 8
  %199 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool12.not = icmp eq i16 %199, 0
  br i1 %tobool12.not, label %out_invalid, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %200 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %b_data, align 4
  %202 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %206 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %201, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %207)
  %cmp.not.i489 = icmp eq i8 %207, -21
  br i1 %cmp.not.i489, label %lor.lhs.false.i, label %if.then13.if.then.i491_crit_edge

if.then13.if.then.i491_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i491

lor.lhs.false.i:                                  ; preds = %if.then13
  %arrayidx3.i = getelementptr [3 x i8], ptr %201, i32 0, i32 2
  %208 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %209)
  %cmp5.not.i = icmp eq i8 %209, -112
  br i1 %cmp5.not.i, label %if.end8.i, label %lor.lhs.false.i.if.then.i491_crit_edge

lor.lhs.false.i.if.then.i491_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i491

if.then.i491:                                     ; preds = %lor.lhs.false.i.if.then.i491_crit_edge, %if.then13.if.then.i491_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool.not.i490 = icmp eq i32 %silent, 0
  br i1 %tobool.not.i490, label %if.then7.i, label %if.then.i491.out_invalid.thread605_crit_edge

if.then.i491.out_invalid.thread605_crit_edge:     ; preds = %if.then.i491
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_invalid.thread605

if.then7.i:                                       ; preds = %if.then.i491
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146) #14
  br label %out_invalid.thread602

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %sector_size.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 2
  %210 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %sector_size.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %tobool.not.i.i = icmp eq i16 %211, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.if.then10.i492_crit_edge

if.end8.i.if.then10.i492_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end.i.i:                                       ; preds = %if.end8.i
  %sec_per_clus.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 3
  %212 = ptrtoint ptr %sec_per_clus.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %sec_per_clus.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool1.not.i.i = icmp eq i8 %213, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.if.then10.i492_crit_edge

if.end.i.i.if.then10.i492_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end3.i.i:                                      ; preds = %if.end.i.i
  %reserved.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 4
  %214 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %reserved.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %tobool4.not.i.i = icmp eq i16 %215, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end3.i.i.if.then10.i492_crit_edge

if.end3.i.i.if.then10.i492_crit_edge:             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %fats.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 5
  %216 = ptrtoint ptr %fats.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %fats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool7.not.i.i = icmp eq i8 %217, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end6.i.i.if.then10.i492_crit_edge

if.end6.i.i.if.then10.i492_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %dir_entries.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 6
  %218 = ptrtoint ptr %dir_entries.i.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %219 = load i16, ptr %dir_entries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool11.not.i.i = icmp eq i16 %219, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end9.i.i.if.then10.i492_crit_edge

if.end9.i.i.if.then10.i492_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %sectors.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 7
  %220 = ptrtoint ptr %sectors.i.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %sectors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %tobool15.not.i.i = icmp eq i16 %221, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end13.i.i.if.then10.i492_crit_edge

if.end13.i.i.if.then10.i492_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end17.i.i:                                     ; preds = %if.end13.i.i
  %media.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 8
  %222 = ptrtoint ptr %media.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %media.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool18.not.i.i = icmp eq i8 %223, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end17.i.i.if.then10.i492_crit_edge

if.end17.i.i.if.then10.i492_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %fat_length.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 9
  %224 = ptrtoint ptr %fat_length.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %fat_length.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool21.not.i.i = icmp eq i16 %225, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end20.i.i.if.then10.i492_crit_edge

if.end20.i.i.if.then10.i492_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %secs_track.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 10
  %226 = ptrtoint ptr %secs_track.i.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %secs_track.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %tobool24.not.i.i = icmp eq i16 %227, 0
  br i1 %tobool24.not.i.i, label %fat_bpb_is_zero.exit.i, label %if.end23.i.i.if.then10.i492_crit_edge

if.end23.i.i.if.then10.i492_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

fat_bpb_is_zero.exit.i:                           ; preds = %if.end23.i.i
  %heads.i.i = getelementptr inbounds %struct.fat_boot_sector, ptr %201, i32 0, i32 11
  %228 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %heads.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %229)
  %tobool27.not.i.i = icmp eq i16 %229, 0
  br i1 %tobool27.not.i.i, label %for.body.preheader.i, label %fat_bpb_is_zero.exit.i.if.then10.i492_crit_edge

fat_bpb_is_zero.exit.i.if.then10.i492_crit_edge:  ; preds = %fat_bpb_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10.i492

for.body.preheader.i:                             ; preds = %fat_bpb_is_zero.exit.i
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.159)
  switch i64 %205, label %if.then26.i [
    i64 320, label %for.body.preheader.i.if.end30.i_crit_edge
    i64 360, label %if.end30.fold.split.i
    i64 640, label %if.end30.fold.split70.i
    i64 720, label %if.end30.fold.split71.i
  ]

for.body.preheader.i.if.end30.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then10.i492:                                   ; preds = %fat_bpb_is_zero.exit.i.if.then10.i492_crit_edge, %if.end23.i.i.if.then10.i492_crit_edge, %if.end20.i.i.if.then10.i492_crit_edge, %if.end17.i.i.if.then10.i492_crit_edge, %if.end13.i.i.if.then10.i492_crit_edge, %if.end9.i.i.if.then10.i492_crit_edge, %if.end6.i.i.if.then10.i492_crit_edge, %if.end3.i.i.if.then10.i492_crit_edge, %if.end.i.i.if.then10.i492_crit_edge, %if.end8.i.if.then10.i492_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool11.not.i = icmp eq i32 %silent, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i492.out_invalid.thread605_crit_edge

if.then10.i492.out_invalid.thread605_crit_edge:   ; preds = %if.then10.i492
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_invalid.thread605

if.then12.i:                                      ; preds = %if.then10.i492
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.146) #14
  br label %out_invalid.thread602

if.then26.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool27.not.i = icmp eq i32 %silent, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.then26.i.out_invalid.thread605_crit_edge

if.then26.i.out_invalid.thread605_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_invalid.thread605

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.149, i64 noundef %205) #14
  br label %out_invalid.thread602

if.end30.fold.split.i:                            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.fold.split70.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.fold.split71.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.fold.split71.i, %if.end30.fold.split70.i, %if.end30.fold.split.i, %for.body.preheader.i.if.end30.i_crit_edge
  %i.067.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.end30.i_crit_edge ], [ 1, %if.end30.fold.split.i ], [ 2, %if.end30.fold.split70.i ], [ 3, %if.end30.fold.split71.i ]
  %arrayidx17.lcssa.i = phi ptr [ @floppy_defaults, %for.body.preheader.i.if.end30.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 1), %if.end30.fold.split.i ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 2), %if.end30.fold.split70.i ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 3), %if.end30.fold.split71.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool31.not.i = icmp eq i32 %silent, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end30.i.if.end33.i_crit_edge

if.end30.i.if.end33.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.150) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end33.i_crit_edge
  %sec_per_clus.i493 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %i.067.lcssa.i, i32 1
  %230 = ptrtoint ptr %sec_per_clus.i493 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %sec_per_clus.i493, align 4
  %conv34.i = trunc i32 %231 to i8
  %dir_entries.i497 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %i.067.lcssa.i, i32 2
  %232 = ptrtoint ptr %dir_entries.i497 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %dir_entries.i497, align 4
  %conv35.i = trunc i32 %233 to i16
  %234 = ptrtoint ptr %arrayidx17.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx17.lcssa.i, align 4
  %conv37.i = trunc i32 %235 to i16
  %fat_length.i500 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %i.067.lcssa.i, i32 4
  %236 = ptrtoint ptr %fat_length.i500 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %fat_length.i500, align 4
  %conv38.i = trunc i32 %237 to i16
  br label %if.end22

if.end22:                                         ; preds = %if.end33.i, %if.end54.i.if.end22_crit_edge
  %bpb.sroa.0.1 = phi i16 [ %153, %if.end54.i.if.end22_crit_edge ], [ 512, %if.end33.i ]
  %bpb.sroa.8.1 = phi i8 [ %155, %if.end54.i.if.end22_crit_edge ], [ %conv34.i, %if.end33.i ]
  %bpb.sroa.11538.1 = phi i16 [ %158, %if.end54.i.if.end22_crit_edge ], [ 1, %if.end33.i ]
  %bpb.sroa.14.1 = phi i8 [ %160, %if.end54.i.if.end22_crit_edge ], [ 2, %if.end33.i ]
  %bpb.sroa.17539.1 = phi i16 [ %163, %if.end54.i.if.end22_crit_edge ], [ %conv35.i, %if.end33.i ]
  %bpb.sroa.20.1 = phi i16 [ %166, %if.end54.i.if.end22_crit_edge ], [ %conv37.i, %if.end33.i ]
  %bpb.sroa.23.1 = phi i16 [ %169, %if.end54.i.if.end22_crit_edge ], [ %conv38.i, %if.end33.i ]
  %bpb.sroa.26540.1 = phi i32 [ %172, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.28.1 = phi i8 [ %175, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.30541.1 = phi i32 [ %178, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.32.1 = phi i32 [ %181, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.35.1 = phi i32 [ %184, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.37.1 = phi i16 [ %187, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.39.1 = phi i8 [ %189, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  %bpb.sroa.41543.1 = phi i32 [ %192, %if.end54.i.if.end22_crit_edge ], [ 0, %if.end33.i ]
  call void @__brelse(ptr noundef nonnull %call.i) #11
  %conv = zext i8 %bpb.sroa.8.1 to i16
  %238 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv, ptr %call7.i.i, align 8
  %conv23 = zext i16 %bpb.sroa.0.1 to i32
  %239 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %conv23)
  %cmp24 = icmp ugt i32 %240, %conv23
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %conv23) #14
  br label %if.end276

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %conv23)
  %cmp31 = icmp ult i32 %240, %conv23
  br i1 %cmp31, label %if.then33, label %if.end28.do.body47_crit_edge

if.end28.do.body47_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47

if.then33:                                        ; preds = %if.end28
  %call35 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %conv23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef %conv23) #14
  br label %if.end276

if.end39:                                         ; preds = %if.then33
  %241 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %s_bdev.i, align 4
  %243 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %s_blocksize.i, align 16
  %call.i508 = call ptr @__bread_gfp(ptr noundef %242, i64 noundef 0, i32 noundef %244, i32 noundef 8) #11
  %cmp41 = icmp eq ptr %call.i508, null
  br i1 %cmp41, label %if.then43, label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %245 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %s_blocksize.i, align 16
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %246) #14
  br label %if.end276

cleanup:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call.i508) #11
  br label %do.body47

do.body47:                                        ; preds = %cleanup, %if.end28.do.body47_crit_edge
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 15
  call void @__mutex_init(ptr noundef %s_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @fat_fill_super.__key.6) #11
  %247 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %s_blocksize.i, align 16
  %249 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %call7.i.i, align 8
  %conv52 = zext i16 %250 to i32
  %mul = mul i32 %248, %conv52
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 2
  %251 = ptrtoint ptr %cluster_size to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %mul, ptr %cluster_size, align 4
  %252 = call i32 @llvm.cttz.i32(i32 %mul, i1 true), !range !375
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %iszero = icmp eq i32 %mul, 0
  %253 = trunc i32 %252 to i16
  %conv54 = select i1 %iszero, i16 -1, i16 %253
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 1
  %254 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv54, ptr %cluster_bits, align 2
  %fats = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 3
  %255 = ptrtoint ptr %fats to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %bpb.sroa.14.1, ptr %fats, align 8
  %fat_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 4
  %256 = ptrtoint ptr %fat_bits to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %fat_bits, align 1
  %fat_start = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 5
  %257 = ptrtoint ptr %fat_start to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %bpb.sroa.11538.1, ptr %fat_start, align 2
  %conv55 = zext i16 %bpb.sroa.23.1 to i32
  %fat_length = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 6
  %258 = ptrtoint ptr %fat_length to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv55, ptr %fat_length, align 4
  %root_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 11
  %259 = ptrtoint ptr %root_cluster to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %root_cluster, align 8
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 17
  %260 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -1, ptr %free_clusters, align 8
  %free_clus_valid = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 18
  %261 = ptrtoint ptr %free_clus_valid to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %free_clus_valid, align 4
  %prev_free = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 16
  %262 = ptrtoint ptr %prev_free to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 2, ptr %prev_free, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %263 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 4294967295, ptr %s_maxbytes, align 8
  call void @fat_time_fat2unix(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %ts, i16 noundef zeroext 0, i16 noundef zeroext 8448, i8 noundef zeroext 0) #11
  %264 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %ts, align 8
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %266 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %265, ptr %s_time_min, align 8
  call void @fat_time_fat2unix(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %ts, i16 noundef zeroext 32191, i16 noundef zeroext -24577, i8 noundef zeroext 0) #11
  %267 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %ts, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %269 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 %268, ptr %s_time_max, align 64
  %270 = ptrtoint ptr %fat_length to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %fat_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool58.not = icmp ne i32 %271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bpb.sroa.32.1)
  %tobool60.not = icmp eq i32 %bpb.sroa.32.1, 0
  %or.cond623 = select i1 %tobool58.not, i1 true, i1 %tobool60.not
  br i1 %or.cond623, label %do.body47.if.end109_crit_edge, label %if.then61

do.body47.if.end109_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then61:                                        ; preds = %do.body47
  %272 = ptrtoint ptr %fat_bits to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 32, ptr %fat_bits, align 1
  %273 = ptrtoint ptr %fat_length to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %bpb.sroa.32.1, ptr %fat_length, align 4
  %274 = ptrtoint ptr %root_cluster to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %bpb.sroa.35.1, ptr %root_cluster, align 8
  %fsinfo_sector = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bpb.sroa.37.1)
  %cmp68 = icmp eq i16 %bpb.sroa.37.1, 0
  %narrow = select i1 %cmp68, i16 1, i16 %bpb.sroa.37.1
  %spec.select = zext i16 %narrow to i32
  %275 = ptrtoint ptr %fsinfo_sector to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %spec.select, ptr %fsinfo_sector, align 4
  %conv74 = zext i16 %narrow to i64
  %276 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %s_bdev.i, align 4
  %278 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %s_blocksize.i, align 16
  %call.i514 = call ptr @__bread_gfp(ptr noundef %277, i64 noundef %conv74, i32 noundef %279, i32 noundef 8) #11
  %cmp76 = icmp eq ptr %call.i514, null
  br i1 %cmp76, label %cleanup105, label %if.end80

if.end80:                                         ; preds = %if.then61
  %b_data81 = getelementptr inbounds %struct.buffer_head, ptr %call.i514, i32 0, i32 5
  %280 = ptrtoint ptr %b_data81 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %b_data81, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381130561, i32 %283)
  %cmp82 = icmp eq i32 %283, 1381130561
  br i1 %cmp82, label %land.lhs.true84, label %if.end80.if.then87_crit_edge

if.end80.if.then87_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

land.lhs.true84:                                  ; preds = %if.end80
  %signature2 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %281, i32 0, i32 2
  %284 = ptrtoint ptr %signature2 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %signature2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920090465, i32 %285)
  %cmp85 = icmp eq i32 %285, 1920090465
  br i1 %cmp85, label %if.else91, label %land.lhs.true84.if.then87_crit_edge

land.lhs.true84.if.then87_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

if.then87:                                        ; preds = %land.lhs.true84.if.then87_crit_edge, %if.end80.if.then87_crit_edge
  %286 = call i32 @llvm.bswap.i32(i32 %283)
  %signature289 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %281, i32 0, i32 2
  %287 = ptrtoint ptr %signature289 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %signature289, align 4
  %289 = call i32 @llvm.bswap.i32(i32 %288)
  %290 = ptrtoint ptr %fsinfo_sector to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %fsinfo_sector, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %286, i32 noundef %289, i32 noundef %291) #14
  br label %cleanup105.thread

if.else91:                                        ; preds = %land.lhs.true84
  %292 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %bf.load93 = load i16, ptr %isvfat.i, align 8
  %293 = and i16 %bf.load93, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %293)
  %tobool97.not = icmp eq i16 %293, 0
  br i1 %tobool97.not, label %if.else91.if.end100_crit_edge, label %if.then98

if.else91.if.end100_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then98:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  %294 = ptrtoint ptr %free_clus_valid to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 1, ptr %free_clus_valid, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.else91.if.end100_crit_edge
  %free_clusters101 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %281, i32 0, i32 3
  %295 = ptrtoint ptr %free_clusters101 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %free_clusters101, align 4
  %297 = call i32 @llvm.bswap.i32(i32 %296)
  %298 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %free_clusters, align 8
  %next_cluster = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %281, i32 0, i32 4
  %299 = ptrtoint ptr %next_cluster to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %next_cluster, align 4
  %301 = call i32 @llvm.bswap.i32(i32 %300)
  %302 = ptrtoint ptr %prev_free to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %prev_free, align 4
  br label %cleanup105.thread

cleanup105.thread:                                ; preds = %if.end100, %if.then87
  call void @__brelse(ptr noundef nonnull %call.i514) #11
  br label %if.end109

cleanup105:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %303 = ptrtoint ptr %fsinfo_sector to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %fsinfo_sector, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef %304) #14
  br label %if.end276

if.end109:                                        ; preds = %cleanup105.thread, %do.body47.if.end109_crit_edge
  %305 = ptrtoint ptr %fat_bits to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %fat_bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %306)
  %cmp.i518 = icmp eq i8 %306, 32
  %spec.select631 = select i1 %cmp.i518, i32 %bpb.sroa.41543.1, i32 %bpb.sroa.30541.1
  %307 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 25
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %spec.select631, ptr %307, align 8
  %309 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %s_blocksize.i, align 16
  %div477 = lshr i32 %310, 5
  %dir_per_block = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 23
  %311 = ptrtoint ptr %dir_per_block to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %div477, ptr %dir_per_block, align 8
  %312 = call i32 @llvm.cttz.i32(i32 %div477, i1 true), !range !375
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %310)
  %iszero117 = icmp ult i32 %310, 32
  %sub119 = select i1 %iszero117, i32 -1, i32 %312
  %dir_per_block_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 24
  %313 = ptrtoint ptr %dir_per_block_bits to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %sub119, ptr %dir_per_block_bits, align 4
  %314 = ptrtoint ptr %fat_start to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %fat_start, align 2
  %conv121 = zext i16 %315 to i32
  %316 = ptrtoint ptr %fats to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %fats, align 8
  %conv123 = zext i8 %317 to i32
  %318 = ptrtoint ptr %fat_length to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %fat_length, align 4
  %mul125 = mul i32 %319, %conv123
  %add = add i32 %mul125, %conv121
  %dir_start = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 7
  %320 = ptrtoint ptr %dir_start to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add, ptr %dir_start, align 8
  %dir_entries = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 8
  %321 = ptrtoint ptr %dir_entries to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %bpb.sroa.17539.1, ptr %dir_entries, align 4
  %conv127 = zext i16 %bpb.sroa.17539.1 to i32
  %sub129 = add nuw nsw i32 %div477, 65535
  %and = and i32 %sub129, %conv127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool130.not = icmp eq i32 %and, 0
  br i1 %tobool130.not, label %if.end137, label %if.then131

if.then131:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %cond = icmp eq i32 %silent, 0
  br i1 %cond, label %if.then133, label %if.then131.if.end276_crit_edge

if.then131.if.end276_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %conv127) #14
  br label %if.then269

if.end137:                                        ; preds = %if.end109
  %mul140 = shl nuw nsw i32 %conv127, 5
  %div142 = udiv i32 %mul140, %310
  %add144 = add i32 %div142, %add
  %data_start = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 9
  %322 = ptrtoint ptr %data_start to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %add144, ptr %data_start, align 8
  %conv145 = zext i16 %bpb.sroa.20.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bpb.sroa.20.1)
  %cmp146 = icmp eq i16 %bpb.sroa.20.1, 0
  %spec.select624 = select i1 %cmp146, i32 %bpb.sroa.26540.1, i32 %conv145
  %sub151 = sub i32 %spec.select624, %add144
  %323 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %call7.i.i, align 8
  %conv153 = zext i16 %324 to i32
  %div154 = udiv i32 %sub151, %conv153
  %325 = ptrtoint ptr %fat_bits to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %fat_bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %326)
  %cmp.i520 = icmp eq i8 %326, 32
  br i1 %cmp.i520, label %if.end137.if.end170_crit_edge, label %if.end161

if.end137.if.end170_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.end161:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4084, i32 %div154)
  %cmp157 = icmp ugt i32 %div154, 4084
  %conv159 = select i1 %cmp157, i8 16, i8 12
  %327 = ptrtoint ptr %fat_bits to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %conv159, ptr %fat_bits, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.end161, %if.end137.if.end170_crit_edge
  %and168.sink.in.in = phi i8 [ %bpb.sroa.28.1, %if.end161 ], [ %bpb.sroa.39.1, %if.end137.if.end170_crit_edge ]
  %and168.sink.in = and i8 %and168.sink.in.in, 1
  %and168.sink = zext i8 %and168.sink.in to i32
  %328 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 35
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %and168.sink, ptr %328, align 8
  %330 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %s_fs_info, align 16
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %333)
  %cmp.i.i = icmp eq i8 %333, 12
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i526

if.then.i526:                                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %310, 3
  %conv.i524 = zext i8 %333 to i32
  %div.i = udiv i32 %mul.i, %conv.i524
  %fat_length.i525 = getelementptr inbounds %struct.msdos_sb_info, ptr %331, i32 0, i32 6
  %334 = ptrtoint ptr %fat_length.i525 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %fat_length.i525, align 4
  %mul2.i = mul i32 %335, %div.i
  br label %calc_fat_clusters.exit

if.end.i:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  %fat_length3.i = getelementptr inbounds %struct.msdos_sb_info, ptr %331, i32 0, i32 6
  %336 = ptrtoint ptr %fat_length3.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %fat_length3.i, align 4
  %mul5.i = shl i32 %310, 3
  %mul6.i = mul i32 %mul5.i, %337
  %div9.i = udiv i32 %mul6.i, 12
  br label %calc_fat_clusters.exit

calc_fat_clusters.exit:                           ; preds = %if.end.i, %if.then.i526
  %retval.0.i = phi i32 [ %div9.i, %if.end.i ], [ %mul2.i, %if.then.i526 ]
  %sub172 = add i32 %retval.0.i, -2
  %338 = call i32 @llvm.umin.i32(i32 %div154, i32 %sub172)
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %333)
  %cmp.i.i530 = icmp eq i8 %333, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %333)
  %cmp.i6.i = icmp eq i8 %333, 16
  %cond.i = select i1 %cmp.i6.i, i32 65524, i32 4084
  %cond3.i = select i1 %cmp.i.i530, i32 268435446, i32 %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %338, i32 %cond3.i)
  %cmp177 = icmp ugt i32 %338, %cond3.i
  br i1 %cmp177, label %if.then179, label %if.end183

if.then179:                                       ; preds = %calc_fat_clusters.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %cond483 = icmp eq i32 %silent, 0
  br i1 %cond483, label %if.then181, label %if.then179.if.end276_crit_edge

if.then179.if.end276_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

if.then181:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, i32 noundef %338) #14
  br label %if.then269

if.end183:                                        ; preds = %calc_fat_clusters.exit
  %add184 = add i32 %338, 2
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 10
  %339 = ptrtoint ptr %max_cluster to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %add184, ptr %max_cluster, align 4
  %340 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %free_clusters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %341)
  %cmp186.not = icmp ne i32 %341, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %341, i32 %338)
  %cmp190 = icmp ugt i32 %341, %338
  %or.cond = select i1 %cmp186.not, i1 %cmp190, i1 false
  br i1 %or.cond, label %if.then192, label %if.end183.if.end194_crit_edge

if.end183.if.end194_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then192:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  %342 = ptrtoint ptr %free_clusters to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -1, ptr %free_clusters, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end183.if.end194_crit_edge
  %343 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %max_cluster, align 4
  %345 = ptrtoint ptr %prev_free to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %prev_free, align 4
  %rem = urem i32 %346, %344
  %347 = call i32 @llvm.umax.i32(i32 %rem, i32 2)
  %348 = ptrtoint ptr %prev_free to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %prev_free, align 4
  %inode_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %331, i32 0, i32 31
  call void @__raw_spin_lock_init(ptr noundef %inode_hash_lock.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @fat_hash_init.__key, i16 noundef signext 3) #11
  %uglygep.i = getelementptr i8, ptr %331, i32 516
  %349 = call ptr @memset(ptr %uglygep.i, i32 0, i32 1024)
  %350 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %s_fs_info, align 16
  %dir_hash_lock.i = getelementptr inbounds %struct.msdos_sb_info, ptr %351, i32 0, i32 33
  call void @__raw_spin_lock_init(ptr noundef %dir_hash_lock.i, ptr noundef nonnull @.str.152, ptr noundef nonnull @dir_hash_init.__key, i16 noundef signext 3) #11
  %uglygep.i533 = getelementptr i8, ptr %351, i32 1584
  %352 = call ptr @memset(ptr %uglygep.i533, i32 0, i32 1024)
  call void @fat_ent_access_init(ptr noundef %sb) #11
  %353 = ptrtoint ptr %codepage.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %codepage.i, align 4
  %conv204 = zext i16 %354 to i32
  %call205 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.13, i32 noundef %conv204)
  %call207 = call ptr @load_nls(ptr noundef nonnull %buf) #11
  %nls_disk = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 20
  %355 = ptrtoint ptr %nls_disk to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call207, ptr %nls_disk, align 4
  %tobool209.not = icmp eq ptr %call207, null
  br i1 %tobool209.not, label %if.then210, label %if.end212

if.then210:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull %buf) #14
  br label %if.end276

if.end212:                                        ; preds = %if.end194
  %356 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %bf.load215 = load i16, ptr %isvfat.i, align 8
  %357 = and i16 %bf.load215, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %357)
  %tobool219.not = icmp eq i16 %357, 0
  br i1 %tobool219.not, label %if.end212.if.end229_crit_edge, label %if.then220

if.end212.if.end229_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then220:                                       ; preds = %if.end212
  %358 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %iocharset.i.i, align 4
  %call222 = call ptr @load_nls(ptr noundef %359) #11
  %nls_io = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 21
  %360 = ptrtoint ptr %nls_io to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call222, ptr %nls_io, align 8
  %tobool224.not = icmp eq ptr %call222, null
  br i1 %tobool224.not, label %if.then225, label %if.then220.if.end229_crit_edge

if.then220.if.end229_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then225:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #13
  %361 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %iocharset.i.i, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, ptr noundef %362) #14
  br label %if.end276

if.end229:                                        ; preds = %if.then220.if.end229_crit_edge, %if.end212.if.end229_crit_edge
  %call230 = call ptr @new_inode(ptr noundef %sb) #11
  %tobool231.not = icmp eq ptr %call230, null
  br i1 %tobool231.not, label %if.end229.if.end276_crit_edge, label %if.end233

if.end229.if.end276_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

if.end233:                                        ; preds = %if.end229
  %fat_inode234 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 28
  %363 = ptrtoint ptr %fat_inode234 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call230, ptr %fat_inode234, align 4
  %call235 = call ptr @new_inode(ptr noundef %sb) #11
  %tobool236.not = icmp eq ptr %call235, null
  br i1 %tobool236.not, label %if.end233.if.then275_crit_edge, label %if.end238

if.end233.if.then275_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then275

if.end238:                                        ; preds = %if.end233
  %i_ino = getelementptr inbounds %struct.inode, ptr %call235, i32 0, i32 11
  %364 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 2, ptr %i_ino, align 8
  %fsinfo_inode239 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 29
  %365 = ptrtoint ptr %fsinfo_inode239 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call235, ptr %fsinfo_inode239, align 8
  %366 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call235, i32 noundef %366) #11
  %call240 = call ptr @new_inode(ptr noundef %sb) #11
  %tobool241.not = icmp eq ptr %call240, null
  br i1 %tobool241.not, label %if.end238.if.end273.thread_crit_edge, label %if.end243

if.end238.if.end273.thread_crit_edge:             ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273.thread

if.end243:                                        ; preds = %if.end238
  %i_ino244 = getelementptr inbounds %struct.inode, ptr %call240, i32 0, i32 11
  %367 = ptrtoint ptr %i_ino244 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 1, ptr %i_ino244, align 8
  call fastcc void @inode_set_iversion(ptr noundef nonnull %call240)
  %call245 = call fastcc i32 @fat_read_root(ptr noundef nonnull %call240)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %call240) #11
  br label %if.end273.thread

if.end249:                                        ; preds = %if.end243
  %368 = ptrtoint ptr %i_ino244 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %i_ino244, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call240, i32 noundef %369) #11
  call void @fat_attach(ptr noundef nonnull %call240, i64 noundef 0)
  %call250 = call ptr @d_make_root(ptr noundef nonnull %call240) #11
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %370 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %call250, ptr %s_root, align 64
  %tobool252.not = icmp eq ptr %call250, null
  br i1 %tobool252.not, label %if.then253, label %if.end254

if.then253:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #14
  br label %if.end273.thread

if.end254:                                        ; preds = %if.end249
  %371 = ptrtoint ptr %isvfat.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %bf.load256 = load i16, ptr %isvfat.i, align 8
  %372 = and i16 %bf.load256, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %372)
  %tobool260.not = icmp eq i16 %372, 0
  br i1 %tobool260.not, label %if.end254.if.end267_crit_edge, label %if.then261

if.end254.if.end267_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

if.then261:                                       ; preds = %if.end254
  %373 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %374, i32 0, i32 18
  %375 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %376, i32 0, i32 11
  %377 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load volatile i32, ptr %queue_flags, align 4
  %379 = and i32 %378, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool264.not = icmp eq i32 %379, 0
  br i1 %tobool264.not, label %if.then265, label %if.then261.if.end267_crit_edge

if.then261.if.end267_crit_edge:                   ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

if.then265:                                       ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #14
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.then261.if.end267_crit_edge, %if.end254.if.end267_crit_edge
  call fastcc void @fat_set_state(ptr noundef %sb, i32 noundef 1, i32 noundef 0)
  br label %cleanup281

out_invalid.thread602:                            ; preds = %if.then28.i, %if.then12.i, %if.then7.i
  call void @__brelse(ptr noundef nonnull %call.i) #11
  br label %if.then269

out_invalid.thread605:                            ; preds = %if.then26.i.out_invalid.thread605_crit_edge, %if.then10.i492.out_invalid.thread605_crit_edge, %if.then.i491.out_invalid.thread605_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i) #11
  br label %if.end276

out_invalid:                                      ; preds = %land.lhs.true
  call void @__brelse(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool268.not = icmp eq i32 %silent, 0
  br i1 %tobool268.not, label %out_invalid.if.then269_crit_edge, label %out_invalid.if.end276_crit_edge

out_invalid.if.end276_crit_edge:                  ; preds = %out_invalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

out_invalid.if.then269_crit_edge:                 ; preds = %out_invalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then269

if.then269:                                       ; preds = %out_invalid.if.then269_crit_edge, %out_invalid.thread602, %if.then181, %if.then133
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %if.end276

if.end273.thread:                                 ; preds = %if.then253, %if.then248, %if.end238.if.end273.thread_crit_edge
  %error.1 = phi i32 [ %call245, %if.then248 ], [ -12, %if.then253 ], [ -12, %if.end238.if.end273.thread_crit_edge ]
  call void @iput(ptr noundef nonnull %call235) #11
  br label %if.then275

if.then275:                                       ; preds = %if.end273.thread, %if.end233.if.then275_crit_edge
  %error.1612616 = phi i32 [ %error.1, %if.end273.thread ], [ -12, %if.end233.if.then275_crit_edge ]
  call void @iput(ptr noundef nonnull %call230) #11
  br label %if.end276

if.end276:                                        ; preds = %if.then275, %if.then269, %out_invalid.if.end276_crit_edge, %out_invalid.thread605, %if.end229.if.end276_crit_edge, %if.then225, %if.then210, %if.then179.if.end276_crit_edge, %if.then131.if.end276_crit_edge, %cleanup105, %if.then43, %if.then37, %if.then26, %if.then7, %parse_options.exit.thread
  %error.1612617 = phi i32 [ %error.1612616, %if.then275 ], [ -5, %if.then7 ], [ -22, %out_invalid.if.end276_crit_edge ], [ -22, %if.then269 ], [ -5, %if.then26 ], [ -12, %if.end229.if.end276_crit_edge ], [ -22, %if.then225 ], [ -22, %if.then210 ], [ -5, %cleanup105 ], [ -22, %if.then131.if.end276_crit_edge ], [ -22, %if.then179.if.end276_crit_edge ], [ %retval.2.i.ph, %parse_options.exit.thread ], [ -22, %out_invalid.thread605 ], [ -5, %if.then43 ], [ -5, %if.then37 ]
  %nls_io277 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 21
  %380 = ptrtoint ptr %nls_io277 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %nls_io277, align 8
  call void @unload_nls(ptr noundef %381) #11
  %nls_disk278 = getelementptr inbounds %struct.msdos_sb_info, ptr %call7.i.i, i32 0, i32 20
  %382 = ptrtoint ptr %nls_disk278 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %nls_disk278, align 4
  call void @unload_nls(ptr noundef %383) #11
  %384 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %iocharset.i.i, align 4
  %cmp.not.i535 = icmp eq ptr %385, @fat_default_iocharset
  br i1 %cmp.not.i535, label %if.end276.fat_reset_iocharset.exit_crit_edge, label %if.then.i536

if.end276.fat_reset_iocharset.exit_crit_edge:     ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_reset_iocharset.exit

if.then.i536:                                     ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %385) #11
  %386 = ptrtoint ptr %iocharset.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @fat_default_iocharset, ptr %iocharset.i.i, align 4
  br label %fat_reset_iocharset.exit

fat_reset_iocharset.exit:                         ; preds = %if.then.i536, %if.end276.fat_reset_iocharset.exit_crit_edge
  %387 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr null, ptr %s_fs_info, align 16
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup281

cleanup281:                                       ; preds = %fat_reset_iocharset.exit, %if.end267, %entry.cleanup281_crit_edge
  %retval.0 = phi i32 [ %error.1612617, %fat_reset_iocharset.exit ], [ 0, %if.end267 ], [ -12, %entry.cleanup281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_ent_access_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_read_root(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %fclus.i = alloca i32, align 4
  %dclus.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_pos = getelementptr i8, ptr %inode, i32 -120
  %4 = ptrtoint ptr %i_pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %i_pos, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options, align 4
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %fs_gid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs_gid, align 4
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_gid, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !374
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %entry ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %11 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %11, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #11
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !371

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %12 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %i_generation, align 8
  %fs_dmask.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 3
  %13 = ptrtoint ptr %fs_dmask.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %.sink35.i = load i16, ptr %fs_dmask.i, align 2
  %neg21.i = and i16 %.sink35.i, 511
  %or23.i = xor i16 %neg21.i, 16895
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or23.i, ptr %inode, align 8
  %dir_ops = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 22
  %15 = ptrtoint ptr %dir_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dir_ops, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %17 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %i_op, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fat_dir_operations, ptr %18, align 8
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fat_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp.i = icmp eq i8 %21, 32
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %inode_inc_iversion.exit
  %root_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %root_cluster to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %root_cluster, align 4
  %i_start = getelementptr i8, ptr %inode, i32 -136
  %24 = ptrtoint ptr %i_start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %i_start, align 8
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus.i) #11
  %29 = ptrtoint ptr %fclus.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %fclus.i, align 4, !annotation !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclus.i) #11
  %30 = ptrtoint ptr %dclus.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dclus.i, align 4, !annotation !370
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %31 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i66 = icmp eq i32 %23, 0
  br i1 %cmp.i66, label %if.then.fat_calc_dir_size.exit.thread_crit_edge, label %if.end.i

if.then.fat_calc_dir_size.exit.thread_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_calc_dir_size.exit.thread

if.end.i:                                         ; preds = %if.then
  %call2.i = call i32 @fat_get_cluster(ptr noundef %inode, i32 noundef 268435455, ptr noundef nonnull %fclus.i, ptr noundef nonnull %dclus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %fat_calc_dir_size.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %fclus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fclus.i, align 4
  %add.i = add i32 %33, 1
  %cluster_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cluster_bits.i, align 2
  %conv.i = zext i16 %35 to i32
  %shl.i = shl i32 %add.i, %conv.i
  %conv6.i = sext i32 %shl.i to i64
  %36 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv6.i, ptr %i_size.i, align 8
  br label %fat_calc_dir_size.exit.thread

fat_calc_dir_size.exit.thread:                    ; preds = %if.end5.i, %if.then.fat_calc_dir_size.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #11
  br label %if.end11

fat_calc_dir_size.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #11
  br label %cleanup

if.else:                                          ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i_start9 = getelementptr i8, ptr %inode, i32 -136
  %37 = ptrtoint ptr %i_start9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i_start9, align 8
  %dir_entries = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dir_entries, align 4
  %conv = zext i16 %39 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %conv10 = zext i32 %mul to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv10, ptr %i_size, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %fat_calc_dir_size.exit.thread
  %i_size12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %41 = ptrtoint ptr %i_size12 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_size12, align 8
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cluster_size, align 4
  %sub = add i32 %44, -1
  %conv13 = zext i32 %sub to i64
  %add = add i64 %42, %conv13
  %conv15 = zext i32 %44 to i64
  %neg = sub nsw i64 0, %conv15
  %and = and i64 %add, %neg
  %shr = ashr i64 %and, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %45 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shr, ptr %i_blocks, align 8
  %i_logstart = getelementptr i8, ptr %inode, i32 -132
  %46 = ptrtoint ptr %i_logstart to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %i_logstart, align 4
  %mmu_private = getelementptr i8, ptr %inode, i32 -144
  %47 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %42, ptr %mmu_private, align 8
  %i_attrs5.i = getelementptr i8, ptr %inode, i32 -128
  %48 = ptrtoint ptr %i_attrs5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %i_attrs5.i, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %49 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %i_ctime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %50 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %51 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %52 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %tv_nsec24 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tv_nsec24, align 8
  %tv_nsec26 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %54 = ptrtoint ptr %tv_nsec26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tv_nsec26, align 8
  %call27 = call i32 @fat_subdirs(ptr noundef %inode) #11
  %add28 = add i32 %call27, 2
  call void @set_nlink(ptr noundef %inode, i32 noundef %add28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %fat_calc_dir_size.exit
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call2.i, %fat_calc_dir_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fat_set_state(ptr noundef %sb, i32 noundef %set, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  %or.cond = and i1 %tobool.not, %tobool.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dirty = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool4.not = icmp eq i32 %set, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.153) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef 0, i32 noundef %9, i32 noundef 8) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.154) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fat_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp.i = icmp eq i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool13.not = icmp eq i32 %set, 0
  br i1 %cmp.i, label %if.then12, label %if.else20

if.then12:                                        ; preds = %if.end10
  %state16 = getelementptr inbounds %struct.fat_boot_sector, ptr %11, i32 0, i32 14, i32 0, i32 8
  %14 = ptrtoint ptr %state16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state16, align 1
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = or i8 %15, 1
  %17 = ptrtoint ptr %state16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %state16, align 1
  br label %brelse.exit

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %18 = and i8 %15, -2
  %19 = ptrtoint ptr %state16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %state16, align 1
  br label %brelse.exit

if.else20:                                        ; preds = %if.end10
  %20 = getelementptr inbounds %struct.fat_boot_sector, ptr %11, i32 0, i32 14
  %state28 = getelementptr inbounds %struct.anon.83, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %state28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state28, align 1
  br i1 %tobool13.not, label %if.else27, label %if.then22

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %23 = or i8 %22, 1
  %24 = ptrtoint ptr %state28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %state28, align 1
  br label %brelse.exit

if.else27:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %25 = and i8 %22, -2
  %26 = ptrtoint ptr %state28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %state28, align 1
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.else27, %if.then22, %if.else, %if.then14
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #11
  %call34 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then9, %if.then5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_flush_inodes(ptr nocapture noundef readonly %sb, ptr noundef %i1, ptr noundef %i2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %flush = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 12
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %flush, align 4
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %i1, null
  br i1 %tobool1.not, label %if.end.land.lhs.true_crit_edge, label %if.then2

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @sync_inode_metadata(ptr noundef nonnull %i1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.then2
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %i1, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping.i, align 8
  %call1.i = tail call i32 @filemap_fdatawrite(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %if.end4.land.lhs.true_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.land.lhs.true_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %tobool6.not = icmp eq ptr %i2, null
  br i1 %tobool6.not, label %land.lhs.true.if.then11_crit_edge, label %if.then7

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then7:                                         ; preds = %land.lhs.true
  %call.i19 = tail call i32 @sync_inode_metadata(ptr noundef nonnull %i2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end9, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then7
  %i_mapping.i21 = getelementptr inbounds %struct.inode, ptr %i2, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping.i21, align 8
  %call1.i22 = tail call i32 @filemap_fdatawrite(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool10.not = icmp eq i32 %call1.i22, 0
  br i1 %tobool10.not, label %if.end9.if.then11_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %call12 = tail call i32 @sync_blockdev_nowait(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i22, %if.end9.cleanup_crit_edge ], [ %call12, %if.then11 ], [ %call.i19, %if.then7.cleanup_crit_edge ], [ %call1.i, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_fat_fs() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fat_cache_destroy() #11
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @fat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_destroy() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fat_fs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fat_cache_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.155, i32 noundef 992, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #11
  store ptr %call.i, ptr @fat_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %failed, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

failed:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fat_cache_destroy() #11
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %failed ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @fat_get_block, ptr noundef %wbc) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @fat_get_block) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @fat_get_block) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @fat_get_block) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %mmu_private = getelementptr i8, ptr %2, i32 -144
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @fat_get_block, ptr noundef %mmu_private) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %3 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %add)
  %cmp.i = icmp slt i64 %6, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @truncate_pagecache(ptr noundef %4, i64 noundef %6) #11
  %7 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size.i, align 8
  tail call void @fat_truncate_blocks(ptr noundef %4, i64 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp = icmp ult i32 %call, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %add)
  %cmp.i = icmp slt i64 %5, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @truncate_pagecache(ptr noundef %3, i64 noundef %5) #11
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  tail call void @fat_truncate_blocks(ptr noundef %3, i64 noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %i_attrs = getelementptr i8, ptr %1, i32 -128
  %8 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_attrs, align 8
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @fat_truncate_time(ptr noundef %1, ptr noundef null, i32 noundef 6) #11
  %10 = ptrtoint ptr %i_attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_attrs, align 8
  %or = or i32 %11, 32
  store i32 %or, ptr %i_attrs, align 8
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_fat_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %truncate_lock = getelementptr i8, ptr %1, i32 -96
  tail call void @down_read(ptr noundef %truncate_lock) #11
  %call1 = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @fat_get_block_bmap) #11
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %truncate_lock4 = getelementptr i8, ptr %3, i32 -96
  tail call void @up_read(ptr noundef %truncate_lock4) #11
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %conv3 = zext i32 %7 to i64
  %add = add i64 %9, %conv3
  %mmu_private = getelementptr i8, ptr %5, i32 -144
  %12 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp5 = icmp slt i64 %13, %add
  br i1 %cmp5, label %if.then.cleanup20_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %17, ptr noundef %iter, ptr noundef nonnull @fat_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end8.cleanup20_crit_edge

if.end8.cleanup20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

land.lhs.true:                                    ; preds = %if.end8
  %18 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_source.i, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp14 = icmp eq i8 %19, 1
  br i1 %cmp14, label %if.then16, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.then16:                                        ; preds = %land.lhs.true
  %conv17 = zext i32 %7 to i64
  %add18 = add i64 %9, %conv17
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add18)
  %cmp.i = icmp slt i64 %23, %add18
  br i1 %cmp.i, label %if.then.i, label %if.then16.cleanup20_crit_edge

if.then16.cleanup20_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @truncate_pagecache(ptr noundef %21, i64 noundef %23) #11
  %24 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size.i, align 8
  tail call void @fat_truncate_blocks(ptr noundef %21, i64 noundef %25) #11
  br label %cleanup20

cleanup20:                                        ; preds = %if.then.i, %if.then16.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge, %if.end8.cleanup20_crit_edge, %if.then.cleanup20_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup20_crit_edge ], [ %call.i, %land.lhs.true.cleanup20_crit_edge ], [ %call.i, %if.end8.cleanup20_crit_edge ], [ %call.i, %if.then16.cleanup20_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_truncate_blocks(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_get_block_bmap(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %bmap = alloca i64, align 8
  %mapped_blocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %2 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bmap) #11
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %bmap, align 8, !annotation !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_blocks) #11
  %7 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mapped_blocks, align 4, !annotation !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %cmp.not = icmp eq i32 %create, 0
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !371

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #11, !srcloc !378
  unreachable

do.end8:                                          ; preds = %entry
  %call = call i32 @fat_bmap(ptr noundef %inode, i64 noundef %iblock, ptr noundef nonnull %bmap, ptr noundef nonnull %mapped_blocks, i32 noundef 0, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %8 = ptrtoint ptr %bmap to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bmap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool12.not = icmp eq i64 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  %10 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh_result, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then13.map_bh.exit_crit_edge

if.then13.map_bh.exit_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then13.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %15 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %9, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i, align 16
  %19 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %b_size, align 8
  %20 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mapped_blocks, align 4
  %22 = call i32 @llvm.umin.i32(i32 %21, i32 %shr)
  br label %if.end16

if.end16:                                         ; preds = %map_bh.exit, %if.end11.if.end16_crit_edge
  %max_blocks.0 = phi i32 [ %22, %map_bh.exit ], [ %shr, %if.end11.if.end16_crit_edge ]
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %conv17 = zext i8 %24 to i32
  %shl = shl i32 %max_blocks.0, %conv17
  %25 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %b_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_blocks) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bmap) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fat_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fat_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %truncate_lock = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 11
  tail call void @__init_rwsem(ptr noundef %truncate_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @fat_alloc_inode.__key) #11
  %mmu_private = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 4
  %i_pos = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %i_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %i_pos, align 8
  %vfs_inode = getelementptr inbounds %struct.msdos_inode_info, ptr %call, i32 0, i32 12
  %2 = call ptr @memset(ptr %mmu_private, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fat_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -208
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %call1 = tail call i32 @fat_clusters_flush(ptr noundef %3) #11
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock3 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %s_lock3) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %8 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call fastcc i32 @__fat_write_inode(ptr noundef %inode, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.else ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #11
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_size, align 8
  tail call void @fat_truncate_blocks(ptr noundef %inode, i64 noundef 0) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %4 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_blocks.i, align 8
  %shl.i = shl i64 %5, 9
  %mmu_private.i = getelementptr i8, ptr %inode, i32 -144
  %6 = ptrtoint ptr %mmu_private.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mmu_private.i, align 8
  %sub.i = add i64 %7, -1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %cluster_size.i = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_size.i, align 4
  %sub2.i = add i32 %13, -1
  %conv.i = zext i32 %sub2.i to i64
  %or.i = or i64 %sub.i, %conv.i
  %add.i = add i64 %or.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %add.i)
  %cmp.i = icmp ugt i64 %shl.i, %add.i
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.else
  tail call void @fat_truncate_blocks(ptr noundef %inode, i64 noundef %7) #11
  %call6.i = tail call i32 @inode_needs_sync(ptr noundef %inode) #11
  %call7.i = tail call fastcc i32 @__fat_write_inode(ptr noundef %inode, i32 noundef %call6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then8.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26) #14
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.then.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #11
  tail call void @clear_inode(ptr noundef %inode) #11
  tail call void @fat_cache_inval_inode(ptr noundef %inode) #11
  tail call void @fat_detach(ptr noundef %inode)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fat_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call fastcc void @fat_set_state(ptr noundef %sb, i32 noundef 0, i32 noundef 0)
  %fsinfo_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %fsinfo_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsinfo_inode, align 4
  tail call void @iput(ptr noundef %3) #11
  %fat_inode = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %fat_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fat_inode, align 4
  tail call void @iput(ptr noundef %5) #11
  %rcu = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 36
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @delayed_free) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %free_clus_valid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %free_clus_valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %free_clus_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @fat_count_free_clusters(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup13_crit_edge

if.then.cleanup13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %13 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_magic, align 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %buf, align 8
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cluster_size, align 4
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %f_bsize, align 4
  %max_cluster = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %max_cluster to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cluster, align 4
  %sub = add i32 %22, -2
  %conv = zext i32 %sub to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %23 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %f_blocks, align 8
  %24 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %free_clusters, align 4
  %conv9 = zext i32 %25 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %26 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv9, ptr %f_bfree, align 8
  %27 = load i32, ptr %free_clusters, align 4
  %conv11 = zext i32 %27 to i64
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %28 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv11, ptr %f_bavail, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %29 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %30 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %isvfat, align 4
  %31 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool12.not = icmp eq i16 %31, 0
  %mul = select i1 %tobool12.not, i32 72, i32 1530
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %32 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %f_namelen, align 8
  br label %cleanup13

cleanup13:                                        ; preds = %if.end6, %if.then.cleanup13_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6 ], [ %call3, %if.then.cleanup13_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 12
  %2 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %isvfat, align 4
  %3 = lshr i16 %bf.load, 1
  %4 = and i16 %3, 1024
  %5 = xor i16 %4, 3072
  %or = zext i16 %5 to i32
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or1 = or i32 %7, %or
  store i32 %or1, ptr %flags, align 4
  %call2 = tail call i32 @sync_filesystem(ptr noundef %sb) #11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %12 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %cmp.not = xor i1 %13, %tobool.i
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  br i1 %13, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fat_set_state(ptr noundef %sb, i32 noundef 0, i32 noundef 0)
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fat_set_state(ptr noundef %sb, i32 noundef 1, i32 noundef 1)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19
  %isvfat1 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %4 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %isvfat1, align 4
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %6) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %call6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fs_gid = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack245 = load i32, ptr %fs_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack245)
  %cmp.i247 = icmp eq i32 %.unpack245, 0
  br i1 %cmp.i247, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = insertvalue [1 x i32] undef, i32 %.unpack245, 0
  %call15 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %8) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %call15) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %fs_fmask = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 2
  %9 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fs_fmask, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %conv) #11
  %fs_dmask = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 3
  %11 = ptrtoint ptr %fs_dmask to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fs_dmask, align 2
  %conv17 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %conv17) #11
  %allow_utime = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 11
  %13 = ptrtoint ptr %allow_utime to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %allow_utime, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %conv20) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  %nls_disk = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %nls_disk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nls_disk, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef %arrayidx) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %19 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool26.not = icmp eq i16 %19, 0
  br i1 %tobool26.not, label %if.end25.if.end37_crit_edge, label %if.then27

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then27:                                        ; preds = %if.end25
  %nls_io = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 21
  %20 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nls_io, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %if.then27.if.end32_crit_edge, label %if.then29

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, ptr noundef %23) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then27.if.end32_crit_edge
  %shortname = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 7
  %24 = ptrtoint ptr %shortname to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %shortname, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.160)
  switch i16 %25, label %sw.default [
    i16 258, label %if.end32.if.end37.sink.split_crit_edge
    i16 516, label %sw.bb34
    i16 260, label %sw.bb35
    i16 257, label %sw.bb36
  ]

if.end32.if.end37.sink.split_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

sw.bb34:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

sw.bb35:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

sw.bb36:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %sw.default, %sw.bb36, %sw.bb35, %sw.bb34, %if.end32.if.end37.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.35, %sw.bb34 ], [ @.str.36, %sw.bb35 ], [ @.str.37, %sw.bb36 ], [ @.str.38, %sw.default ], [ @.str.34, %if.end32.if.end37.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.34.sink) #11
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.end25.if.end37_crit_edge
  %name_check = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 8
  %27 = ptrtoint ptr %name_check to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %name_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %28)
  %cmp.not = icmp eq i8 %28, 110
  br i1 %cmp.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %conv38 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %conv38) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %29 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load44 = load i16, ptr %isvfat1, align 4
  %30 = and i16 %bf.load44, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool48.not = icmp eq i16 %30, 0
  br i1 %tobool48.not, label %if.end43.if.end50_crit_edge, label %if.then49

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.40) #11
  %31 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load51.pr = load i16, ptr %isvfat1, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end43.if.end50_crit_edge
  %bf.load51 = phi i16 [ %bf.load51.pr, %if.then49 ], [ %bf.load44, %if.end43.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load51)
  %tobool54.not = icmp sgt i16 %bf.load51, -1
  br i1 %tobool54.not, label %if.end50.if.end56_crit_edge, label %if.then55

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.41) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50.if.end56_crit_edge
  %32 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load57 = load i16, ptr %isvfat1, align 4
  %33 = and i16 %bf.load57, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool61.not = icmp eq i16 %33, 0
  br i1 %tobool61.not, label %if.end56.if.end63_crit_edge, label %if.then62

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end56.if.end63_crit_edge
  %34 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load64 = load i16, ptr %isvfat1, align 4
  %35 = and i16 %bf.load64, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool68.not = icmp eq i16 %35, 0
  br i1 %tobool68.not, label %if.end63.if.end70_crit_edge, label %if.then69

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end63.if.end70_crit_edge
  %36 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load73 = load i16, ptr %isvfat1, align 4
  br i1 %tobool26.not, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end70
  %37 = and i16 %bf.load73, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool77.not = icmp eq i16 %37, 0
  br i1 %tobool77.not, label %if.then72.if.end79_crit_edge, label %if.then78

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then78:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.then72.if.end79_crit_edge
  %38 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load80 = load i16, ptr %isvfat1, align 4
  %39 = and i16 %bf.load80, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool84.not = icmp eq i16 %39, 0
  br i1 %tobool84.not, label %if.end79.if.end115_crit_edge, label %if.end79.if.end115.sink.split_crit_edge

if.end79.if.end115.sink.split_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115.sink.split

if.end79.if.end115_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.else:                                          ; preds = %if.end70
  %40 = and i16 %bf.load73, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool91.not = icmp eq i16 %40, 0
  br i1 %tobool91.not, label %if.else.if.end93_crit_edge, label %if.then92

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.46) #11
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.else.if.end93_crit_edge
  %41 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load94 = load i16, ptr %isvfat1, align 4
  %42 = and i16 %bf.load94, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool98.not = icmp eq i16 %42, 0
  br i1 %tobool98.not, label %if.end93.if.end100_crit_edge, label %if.then99

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.47) #11
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end93.if.end100_crit_edge
  %43 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load101 = load i16, ptr %isvfat1, align 4
  %44 = and i16 %bf.load101, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool105.not = icmp eq i16 %44, 0
  br i1 %tobool105.not, label %if.then106, label %if.end100.if.end107_crit_edge

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then106:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.48) #11
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end100.if.end107_crit_edge
  %45 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load108 = load i16, ptr %isvfat1, align 4
  %46 = and i16 %bf.load108, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool112.not = icmp eq i16 %46, 0
  br i1 %tobool112.not, label %if.end107.if.end115_crit_edge, label %if.end107.if.end115.sink.split_crit_edge

if.end107.if.end115.sink.split_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115.sink.split

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.end115.sink.split:                             ; preds = %if.end107.if.end115.sink.split_crit_edge, %if.end79.if.end115.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.45, %if.end79.if.end115.sink.split_crit_edge ], [ @.str.49, %if.end107.if.end115.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.49.sink) #11
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.end107.if.end115_crit_edge, %if.end79.if.end115_crit_edge
  %47 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load116 = load i16, ptr %isvfat1, align 4
  %48 = and i16 %bf.load116, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool120.not = icmp eq i16 %48, 0
  br i1 %tobool120.not, label %if.end115.if.end122_crit_edge, label %if.then121

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.50) #11
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end115.if.end122_crit_edge
  %49 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load123 = load i16, ptr %isvfat1, align 4
  %50 = and i16 %bf.load123, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool127.not = icmp eq i16 %50, 0
  br i1 %tobool127.not, label %if.end122.if.end134_crit_edge, label %if.then128

if.end122.if.end134_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then128:                                       ; preds = %if.end122
  %time_offset = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 5
  %51 = ptrtoint ptr %time_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %time_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool129.not = icmp eq i32 %52, 0
  br i1 %tobool129.not, label %if.else132, label %if.then130

if.then130:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %52) #11
  br label %if.end134

if.else132:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #11
  br label %if.end134

if.end134:                                        ; preds = %if.else132, %if.then130, %if.end122.if.end134_crit_edge
  %errors = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 9
  %53 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %switch.selectcmp = icmp eq i8 %54, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.54, ptr @.str.55
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %switch.selectcmp248 = icmp eq i8 %54, 1
  %switch.select249 = select i1 %switch.selectcmp248, ptr @.str.53, ptr %switch.select
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.select249) #11
  %nfs = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 10
  %55 = ptrtoint ptr %nfs to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nfs, align 4
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %56, label %if.then155 [
    i8 2, label %if.end134.if.end157.sink.split_crit_edge
    i8 0, label %if.end134.if.end157_crit_edge
  ]

if.end134.if.end157_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.end134.if.end157.sink.split_crit_edge:         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157.sink.split

if.then155:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157.sink.split

if.end157.sink.split:                             ; preds = %if.then155, %if.end134.if.end157.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %if.then155 ], [ @.str.56, %if.end134.if.end157.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.57.sink) #11
  br label %if.end157

if.end157:                                        ; preds = %if.end157.sink.split, %if.end134.if.end157_crit_edge
  %58 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load158 = load i16, ptr %isvfat1, align 4
  %59 = and i16 %bf.load158, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool162.not = icmp eq i16 %59, 0
  br i1 %tobool162.not, label %if.end157.if.end164_crit_edge, label %if.then163

if.end157.if.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.58) #11
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end157.if.end164_crit_edge
  %60 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load165 = load i16, ptr %isvfat1, align 4
  %61 = and i16 %bf.load165, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool169.not = icmp eq i16 %61, 0
  br i1 %tobool169.not, label %if.end164.if.end171_crit_edge, label %if.then170

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then170:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #11
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.end164.if.end171_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_clusters_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_free(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nls_disk = getelementptr i8, ptr %p, i32 -2248
  %0 = ptrtoint ptr %nls_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nls_disk, align 4
  tail call void @unload_nls(ptr noundef %1) #11
  %nls_io = getelementptr i8, ptr %p, i32 -2244
  %2 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls_io, align 4
  tail call void @unload_nls(ptr noundef %3) #11
  %iocharset.i = getelementptr i8, ptr %p, i32 -2264
  %4 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iocharset.i, align 4
  %cmp.not.i = icmp eq ptr %5, @fat_default_iocharset
  br i1 %cmp.not.i, label %entry.fat_reset_iocharset.exit_crit_edge, label %if.then.i

entry.fat_reset_iocharset.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_reset_iocharset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fat_default_iocharset, ptr %iocharset.i, align 4
  br label %fat_reset_iocharset.exit

fat_reset_iocharset.exit:                         ; preds = %if.then.i, %entry.fat_reset_iocharset.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %p, i32 -2612
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_count_free_clusters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_cache_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %foo, ptr noundef nonnull @.str.156, ptr noundef nonnull @init_once.__key, i16 noundef signext 3) #11
  %nr_caches = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 2
  %0 = ptrtoint ptr %nr_caches to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_caches, align 4
  %cache_valid_id = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 3
  %1 = ptrtoint ptr %cache_valid_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cache_valid_id, align 8
  %cache_lru = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 1
  %2 = ptrtoint ptr %cache_lru to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cache_lru, ptr %cache_lru, align 4
  %prev.i = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cache_lru, ptr %prev.i, align 4
  %i_fat_hash = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 9
  %vfs_inode = getelementptr inbounds %struct.msdos_inode_info, ptr %foo, i32 0, i32 12
  %4 = call ptr @memset(ptr %i_fat_hash, i32 0, i32 16)
  tail call void @inode_init_once(ptr noundef %vfs_inode) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !346, !348, !349, !351, !353, !355, !357, !359}
!llvm.named.register.sp = !{!360}
!llvm.module.flags = !{!361, !362, !363, !364, !365, !366, !367, !368}
!llvm.ident = !{!369}

!0 = !{ptr @__ksymtab_fat_attach, !1, !"__ksymtab_fat_attach", i1 false, i1 false}
!1 = !{!"../fs/fat/inode.c", i32 432, i32 1}
!2 = !{ptr @__ksymtab_fat_detach, !3, !"__ksymtab_fat_detach", i1 false, i1 false}
!3 = !{!"../fs/fat/inode.c", i32 448, i32 1}
!4 = !{ptr @__ksymtab_fat_build_inode, !5, !"__ksymtab_fat_build_inode", i1 false, i1 false}
!5 = !{!"../fs/fat/inode.c", i32 621, i32 1}
!6 = !{ptr @__ksymtab_fat_sync_inode, !7, !"__ksymtab_fat_sync_inode", i1 false, i1 false}
!7 = !{!"../fs/fat/inode.c", i32 925, i32 1}
!8 = !{ptr @fat_fill_super.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/fat/inode.c", i32 1635, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/fat/inode.c", i32 1649, i32 15}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/fat/inode.c", i32 1649, i32 25}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/fat/inode.c", i32 1670, i32 25}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/fat/inode.c", i32 1679, i32 26}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/fat/inode.c", i32 1687, i32 26}
!21 = !{ptr @fat_fill_super.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/fat/inode.c", i32 1695, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/fat/inode.c", i32 1730, i32 26}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/fat/inode.c", i32 1737, i32 16}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/fat/inode.c", i32 1737, i32 30}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/fat/inode.c", i32 1765, i32 26}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/fat/inode.c", i32 1793, i32 26}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/fat/inode.c", i32 1825, i32 15}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/fat/inode.c", i32 1828, i32 25}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/fat/inode.c", i32 1836, i32 26}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/fat/inode.c", i32 1870, i32 25}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/fat/inode.c", i32 1878, i32 6}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/fat/inode.c", i32 1888, i32 15}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/fat/inode.c", i32 1888, i32 26}
!48 = !{ptr @__ksymtab_fat_fill_super, !49, !"__ksymtab_fat_fill_super", i1 false, i1 false}
!49 = !{!"../fs/fat/inode.c", i32 1903, i32 1}
!50 = !{ptr @__ksymtab_fat_flush_inodes, !51, !"__ksymtab_fat_flush_inodes", i1 false, i1 false}
!51 = !{!"../fs/fat/inode.c", i32 1947, i32 1}
!52 = !{ptr @__initcall__kmod_fat__293_1974_init_fat_fs6, !53, !"__initcall__kmod_fat__293_1974_init_fat_fs6", i1 false, i1 false}
!53 = !{!"../fs/fat/inode.c", i32 1974, i32 1}
!54 = !{ptr @__exitcall_exit_fat_fs, !55, !"__exitcall_exit_fat_fs", i1 false, i1 false}
!55 = !{!"../fs/fat/inode.c", i32 1975, i32 1}
!56 = !{ptr @__UNIQUE_ID_file294, !57, !"__UNIQUE_ID_file294", i1 false, i1 false}
!57 = !{!"../fs/fat/inode.c", i32 1977, i32 1}
!58 = !{ptr @__UNIQUE_ID_license295, !57, !"__UNIQUE_ID_license295", i1 false, i1 false}
!59 = !{ptr @fat_inode_cachep, !60, !"fat_inode_cachep", i1 false, i1 false}
!60 = !{!"../fs/fat/inode.c", i32 743, i32 27}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/fat/inode.c", i32 141, i32 3}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/fat/inode.c", i32 169, i32 3}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/fat/inode.c", i32 503, i32 3}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/fat/inode.c", i32 509, i32 3}
!69 = !{ptr @fat_aops, !70, !"fat_aops", i1 false, i1 false}
!70 = !{!"../fs/fat/inode.c", i32 344, i32 46}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/fat/inode.c", i32 868, i32 25}
!73 = !{ptr @fat_sops, !74, !"fat_sops", i1 false, i1 false}
!74 = !{!"../fs/fat/inode.c", i32 928, i32 38}
!75 = !{ptr @fat_alloc_inode.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../fs/fat/inode.c", i32 752, i32 2}
!77 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/fat/inode.c", i32 642, i32 39}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/fat/inode.c", i32 947, i32 17}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/fat/inode.c", i32 950, i32 17}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/fat/inode.c", i32 952, i32 16}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/fat/inode.c", i32 953, i32 16}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/fat/inode.c", i32 955, i32 17}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/fat/inode.c", i32 958, i32 17}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/fat/inode.c", i32 961, i32 18}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/fat/inode.c", i32 965, i32 16}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/fat/inode.c", i32 968, i32 16}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/fat/inode.c", i32 971, i32 16}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/fat/inode.c", i32 974, i32 16}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/fat/inode.c", i32 977, i32 16}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/fat/inode.c", i32 982, i32 17}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/fat/inode.c", i32 984, i32 15}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/fat/inode.c", i32 986, i32 15}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/fat/inode.c", i32 988, i32 15}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/fat/inode.c", i32 990, i32 15}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/fat/inode.c", i32 993, i32 16}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/fat/inode.c", i32 995, i32 16}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/fat/inode.c", i32 998, i32 16}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/fat/inode.c", i32 1000, i32 16}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/fat/inode.c", i32 1002, i32 16}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/fat/inode.c", i32 1004, i32 16}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/fat/inode.c", i32 1007, i32 15}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/fat/inode.c", i32 1010, i32 18}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/fat/inode.c", i32 1012, i32 16}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/fat/inode.c", i32 1015, i32 15}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/fat/inode.c", i32 1017, i32 15}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/fat/inode.c", i32 1019, i32 15}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/fat/inode.c", i32 1021, i32 15}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/fat/inode.c", i32 1023, i32 15}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/fat/inode.c", i32 1025, i32 15}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/fat/inode.c", i32 1027, i32 15}
!146 = !{ptr @ratelimit_state_init.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../fs/fat/inode.c", i32 1137, i32 17}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../fs/fat/inode.c", i32 1138, i32 17}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/fat/inode.c", i32 1165, i32 31}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../fs/fat/inode.c", i32 1214, i32 29}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../fs/fat/inode.c", i32 1221, i32 29}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/fat/inode.c", i32 1348, i32 27}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/fat/inode.c", i32 1355, i32 12}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/fat/inode.c", i32 1364, i32 31}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/fat/inode.c", i32 1365, i32 29}
!167 = distinct !{null, !168, !"fat_default_codepage", i1 false, i1 false}
!168 = !{!"../fs/fat/inode.c", i32 64, i32 12}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/fat/inode.c", i32 1046, i32 16}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/fat/inode.c", i32 1047, i32 16}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/fat/inode.c", i32 1048, i32 16}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/fat/inode.c", i32 1049, i32 16}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/fat/inode.c", i32 1050, i32 16}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/fat/inode.c", i32 1051, i32 16}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/fat/inode.c", i32 1052, i32 12}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/fat/inode.c", i32 1053, i32 12}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/fat/inode.c", i32 1054, i32 14}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/fat/inode.c", i32 1055, i32 14}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/fat/inode.c", i32 1056, i32 14}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/fat/inode.c", i32 1057, i32 20}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/fat/inode.c", i32 1058, i32 17}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/fat/inode.c", i32 1059, i32 16}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/fat/inode.c", i32 1060, i32 15}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/fat/inode.c", i32 1061, i32 14}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/fat/inode.c", i32 1062, i32 17}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/fat/inode.c", i32 1063, i32 14}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/fat/inode.c", i32 1064, i32 18}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/fat/inode.c", i32 1065, i32 14}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/fat/inode.c", i32 1066, i32 15}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/fat/inode.c", i32 1067, i32 20}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/fat/inode.c", i32 1068, i32 17}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/fat/inode.c", i32 1069, i32 18}
!217 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/fat/inode.c", i32 1070, i32 15}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/fat/inode.c", i32 1071, i32 16}
!221 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/fat/inode.c", i32 1072, i32 21}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/fat/inode.c", i32 1073, i32 21}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/fat/inode.c", i32 1074, i32 23}
!227 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/fat/inode.c", i32 1075, i32 20}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/fat/inode.c", i32 1076, i32 17}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/fat/inode.c", i32 1077, i32 17}
!233 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/fat/inode.c", i32 1078, i32 17}
!235 = !{ptr @.str.102, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/fat/inode.c", i32 1079, i32 17}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/fat/inode.c", i32 1080, i32 17}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/fat/inode.c", i32 1081, i32 17}
!241 = !{ptr @.str.105, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/fat/inode.c", i32 1082, i32 17}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/fat/inode.c", i32 1083, i32 17}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/fat/inode.c", i32 1084, i32 17}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/fat/inode.c", i32 1085, i32 17}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/fat/inode.c", i32 1086, i32 17}
!251 = !{ptr @fat_tokens, !252, !"fat_tokens", i1 false, i1 false}
!252 = !{!"../fs/fat/inode.c", i32 1045, i32 28}
!253 = !{ptr @.str.110, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/fat/inode.c", i32 1097, i32 16}
!255 = !{ptr @.str.111, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/fat/inode.c", i32 1098, i32 24}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/fat/inode.c", i32 1099, i32 24}
!259 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/fat/inode.c", i32 1100, i32 24}
!261 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/fat/inode.c", i32 1101, i32 24}
!263 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/fat/inode.c", i32 1102, i32 16}
!265 = !{ptr @.str.116, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/fat/inode.c", i32 1103, i32 16}
!267 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/fat/inode.c", i32 1104, i32 16}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/fat/inode.c", i32 1105, i32 17}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/fat/inode.c", i32 1106, i32 17}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/fat/inode.c", i32 1107, i32 17}
!275 = !{ptr @.str.121, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/fat/inode.c", i32 1109, i32 18}
!277 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/fat/inode.c", i32 1110, i32 18}
!279 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/fat/inode.c", i32 1111, i32 18}
!281 = !{ptr @.str.124, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/fat/inode.c", i32 1112, i32 19}
!283 = !{ptr @.str.125, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/fat/inode.c", i32 1113, i32 19}
!285 = !{ptr @.str.126, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/fat/inode.c", i32 1114, i32 19}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/fat/inode.c", i32 1115, i32 19}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/fat/inode.c", i32 1116, i32 21}
!291 = !{ptr @.str.129, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/fat/inode.c", i32 1117, i32 21}
!293 = !{ptr @.str.130, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/fat/inode.c", i32 1118, i32 21}
!295 = !{ptr @.str.131, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/fat/inode.c", i32 1119, i32 22}
!297 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/fat/inode.c", i32 1120, i32 22}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/fat/inode.c", i32 1121, i32 22}
!301 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/fat/inode.c", i32 1122, i32 22}
!303 = !{ptr @.str.135, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/fat/inode.c", i32 1123, i32 14}
!305 = !{ptr @vfat_tokens, !306, !"vfat_tokens", i1 false, i1 false}
!306 = !{!"../fs/fat/inode.c", i32 1096, i32 28}
!307 = !{ptr @.str.136, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/fat/inode.c", i32 1090, i32 15}
!309 = !{ptr @.str.137, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/fat/inode.c", i32 1091, i32 15}
!311 = !{ptr @.str.138, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/fat/inode.c", i32 1092, i32 13}
!313 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/fat/inode.c", i32 1093, i32 13}
!315 = !{ptr @msdos_tokens, !316, !"msdos_tokens", i1 false, i1 false}
!316 = !{!"../fs/fat/inode.c", i32 1089, i32 28}
!317 = !{ptr @.str.140, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/fat/inode.c", i32 1485, i32 5}
!319 = !{ptr @.str.141, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/fat/inode.c", i32 1490, i32 26}
!321 = !{ptr @.str.142, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/fat/inode.c", i32 1501, i32 26}
!323 = !{ptr @.str.143, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/fat/inode.c", i32 1510, i32 26}
!325 = !{ptr @.str.144, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/fat/inode.c", i32 1517, i32 26}
!327 = !{ptr @.str.145, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/fat/inode.c", i32 1524, i32 26}
!329 = !{ptr @.str.146, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/fat/inode.c", i32 1538, i32 32}
!331 = distinct !{null, !332, !"notdos1x", i1 false, i1 false}
!332 = !{!"../fs/fat/inode.c", i32 1538, i32 21}
!333 = !{ptr @.str.147, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/fat/inode.c", i32 1548, i32 5}
!335 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/fat/inode.c", i32 1559, i32 5}
!337 = !{ptr @.str.149, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/fat/inode.c", i32 1573, i32 5}
!339 = !{ptr @.str.150, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/fat/inode.c", i32 1580, i32 4}
!341 = !{ptr @floppy_defaults, !342, !"floppy_defaults", i1 false, i1 false}
!342 = !{!"../fs/fat/inode.c", i32 73, i32 3}
!343 = !{ptr @fat_hash_init.__key, !344, !"__key", i1 false, i1 false}
!344 = !{!"../fs/fat/inode.c", i32 385, i32 2}
!345 = !{ptr @.str.151, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @dir_hash_init.__key, !347, !"__key", i1 false, i1 false}
!347 = !{!"../fs/fat/inode.c", i32 400, i32 2}
!348 = !{ptr @.str.152, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.153, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/fat/inode.c", i32 681, i32 30}
!351 = !{ptr @.str.154, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/fat/inode.c", i32 689, i32 25}
!353 = !{ptr @fat_default_iocharset, !354, !"fat_default_iocharset", i1 false, i1 false}
!354 = !{!"../fs/fat/inode.c", i32 65, i32 13}
!355 = !{ptr @.str.155, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/fat/inode.c", i32 783, i32 39}
!357 = !{ptr @init_once.__key, !358, !"__key", i1 false, i1 false}
!358 = !{!"../fs/fat/inode.c", i32 772, i32 2}
!359 = !{ptr @.str.156, !358, !"<string literal>", i1 false, i1 false}
!360 = !{!"sp"}
!361 = !{i32 1, !"wchar_size", i32 2}
!362 = !{i32 1, !"min_enum_size", i32 4}
!363 = !{i32 8, !"branch-target-enforcement", i32 0}
!364 = !{i32 8, !"sign-return-address", i32 0}
!365 = !{i32 8, !"sign-return-address-all", i32 0}
!366 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!367 = !{i32 7, !"uwtable", i32 1}
!368 = !{i32 7, !"frame-pointer", i32 2}
!369 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!370 = !{!"auto-init"}
!371 = !{!"branch_weights", i32 2000, i32 1}
!372 = !{i64 2154936709, i64 2154937188, i64 2154936746, i64 2154936802, i64 2154936836, i64 2154936860, i64 2154936901, i64 2154936922, i64 2154936950, i64 2154936984}
!373 = !{i64 2154948011, i64 2154948490, i64 2154948048, i64 2154948104, i64 2154948138, i64 2154948162, i64 2154948203, i64 2154948224, i64 2154948252, i64 2154948286}
!374 = !{i64 2154847418}
!375 = !{i32 0, i32 33}
!376 = !{i32 0, i32 9}
!377 = !{i8 0, i8 2}
!378 = !{i64 2154938306, i64 2154938785, i64 2154938343, i64 2154938399, i64 2154938433, i64 2154938457, i64 2154938498, i64 2154938519, i64 2154938547, i64 2154938581}
