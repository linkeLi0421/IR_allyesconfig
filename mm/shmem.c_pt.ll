; ModuleID = '/llk/IR_all_yes/mm/shmem.c_pt.bc'
source_filename = "../mm/shmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+shmem_truncate_range\22, \22a\22\09"
module asm "\09.weak\09__crc_shmem_truncate_range\09\09\09\09"
module asm "\09.long\09__crc_shmem_truncate_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_truncate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_truncate_range\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_truncate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+shmem_aops\22, \22a\22\09"
module asm "\09.weak\09__crc_shmem_aops\09\09\09\09"
module asm "\09.long\09__crc_shmem_aops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_aops\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+shmem_file_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_shmem_file_setup\09\09\09\09"
module asm "\09.long\09__crc_shmem_file_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_file_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_file_setup\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_file_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+shmem_file_setup_with_mnt\22, \22a\22\09"
module asm "\09.weak\09__crc_shmem_file_setup_with_mnt\09\09\09\09"
module asm "\09.long\09__crc_shmem_file_setup_with_mnt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_file_setup_with_mnt:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_file_setup_with_mnt\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_file_setup_with_mnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+shmem_read_mapping_page_gfp\22, \22a\22\09"
module asm "\09.weak\09__crc_shmem_read_mapping_page_gfp\09\09\09\09"
module asm "\09.long\09__crc_shmem_read_mapping_page_gfp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_read_mapping_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_read_mapping_page_gfp\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_read_mapping_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.constant_table = type { ptr, i32 }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%union.anon.81 = type { i32 }
%struct.vm_event_state = type { [76 x i32] }
%struct.static_key_true = type { %struct.static_key }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.29 }
%union.anon.29 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.110, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.111, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.112, ptr, %struct.address_space, %struct.list_head, %union.anon.113, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.110 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.112 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.113 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.18, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.94, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.94 = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.shmem_sb_info = type { i32, %struct.percpu_counter, i32, i32, %struct.raw_spinlock, i16, i8, %struct.kuid_t, %struct.kgid_t, i8, i32, ptr, ptr, %struct.spinlock, %struct.list_head, i32 }
%struct.anon.13 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.114, [64 x ptr], %union.anon.115 }
%union.anon.114 = type { %struct.list_head }
%union.anon.115 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.anon.96 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.17 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.shmem_falloc = type { ptr, i32, i32, i32, i32 }
%struct.shmem_options = type { i64, i64, ptr, %struct.kuid_t, %struct.kgid_t, i16, i8, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.vm_fault = type { %struct.anon.20, i32, ptr, ptr, %union.anon.21, ptr, ptr, ptr, ptr, ptr }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%union.anon.21 = type { i32 }
%struct.shmem_inode_info = type { %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.shared_policy, %struct.simple_xattrs, %struct.atomic_t, %struct.inode }
%struct.shared_policy = type {}
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fs_parse_result = type { i8, %union.anon.103 }
%union.anon.103 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon.7, i32, i32 }
%union.anon.7 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.108, %struct.list_head, %struct.list_head, %union.anon.109 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.108 = type { %struct.list_head }
%union.anon.109 = type { %struct.hlist_node }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.97, %union.anon.98 }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%struct.xattr = type { ptr, ptr, i32 }
%struct.delayed_call = type { ptr, ptr }

@shmem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/shmem.c\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_shmem_truncate_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_truncate_range = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_truncate_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_truncate_range to i32), ptr @__kstrtab_shmem_truncate_range, ptr @__kstrtabns_shmem_truncate_range }, section "___ksymtab_gpl+shmem_truncate_range", align 4
@shmem_swaplist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @shmem_swaplist, ptr @shmem_swaplist }, [24 x i8] zeroinitializer }, align 32
@shmem_swaplist_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shmem_swaplist_mutex, i64 52), ptr getelementptr (i8, ptr @shmem_swaplist_mutex, i64 52) }, ptr @shmem_swaplist_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"huge\00", [27 x i8] zeroinitializer }, align 32
@shmem_param_enums_huge = internal constant { [5 x %struct.constant_table], [56 x i8] } { [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.43, i32 0 }, %struct.constant_table { ptr @.str.44, i32 1 }, %struct.constant_table { ptr @.str.45, i32 2 }, %struct.constant_table { ptr @.str.46, i32 3 }, %struct.constant_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpol\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_blocks\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_inodes\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inode32\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inode64\00", [24 x i8] zeroinitializer }, align 32
@shmem_fs_parameters = dso_local constant { [11 x %struct.fs_parameter_spec], [48 x i8] } { [11 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.1, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.2, ptr @fs_param_is_enum, i8 1, i16 0, ptr @shmem_param_enums_huge }, %struct.fs_parameter_spec { ptr @.str.3, ptr @fs_param_is_u32, i8 2, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.4, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.5, ptr @fs_param_is_string, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.6, ptr @fs_param_is_string, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.7, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr @fs_param_is_u32, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.10, ptr null, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@shmem_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @shmem_writepage, ptr null, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr @shmem_write_begin, ptr @shmem_write_end, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_shmem_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_aops to i32), ptr @__kstrtab_shmem_aops, ptr @__kstrtabns_shmem_aops }, section "___ksymtab+shmem_aops", align 4
@shmem_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @shmem_free_fc, ptr null, ptr @shmem_parse_one, ptr @shmem_parse_options, ptr @shmem_get_tree, ptr @shmem_reconfigure }, [40 x i8] zeroinitializer }, align 32
@shmem_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.76, i32 8, ptr @shmem_init_fs_context, ptr @shmem_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@shmem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 3885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Could not register tmpfs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shmem_init\00", [21 x i8] zeroinitializer }, align 32
@shmem_init._entry_ptr = internal global ptr @shmem_init._entry, section ".printk_index", align 4
@shm_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@shmem_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 3892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Could not kern_mount tmpfs\0A\00", [34 x i8] zeroinitializer }, align 32
@shmem_init._entry_ptr.16 = internal global ptr @shmem_init._entry.14, section ".printk_index", align 4
@__kstrtab_shmem_file_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_file_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_file_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_file_setup to i32), ptr @__kstrtab_shmem_file_setup, ptr @__kstrtabns_shmem_file_setup }, section "___ksymtab_gpl+shmem_file_setup", align 4
@__kstrtab_shmem_file_setup_with_mnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_file_setup_with_mnt = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_file_setup_with_mnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_file_setup_with_mnt to i32), ptr @__kstrtab_shmem_file_setup_with_mnt, ptr @__kstrtabns_shmem_file_setup_with_mnt }, section "___ksymtab_gpl+shmem_file_setup_with_mnt", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev/zero\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_shmem_read_mapping_page_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_read_mapping_page_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_read_mapping_page_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_read_mapping_page_gfp to i32), ptr @__kstrtab_shmem_read_mapping_page_gfp, ptr @__kstrtabns_shmem_read_mapping_page_gfp }, section "___ksymtab_gpl+shmem_read_mapping_page_gfp", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_writeback(folio))\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"shmem_swaplist_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shmem_swaplist_mutex\00", [43 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@count_memcg_event_mm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/memcontrol.h\00", [37 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@vma_init.dummy_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"VM_BUG_ON_PAGE(index != ((index) & ~((__typeof__(index))((nr)-1))))\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VM_BUG_ON_PAGE(!PageSwapBacked(page))\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"never\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"within_size\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"advise\00", [25 x i8] zeroinitializer }, align 32
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@shmem_writepage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PageCompound(page))\00", [61 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot use inode64 with <64bit inums in kernel\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported parameter '%s'\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad value for '%s'\00", [45 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@shmem_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @shmem_encode_fh, ptr @shmem_fh_to_dentry, ptr null, ptr null, ptr @shmem_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@shmem_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sbinfo->stat_lock\00", [45 x i8] zeroinitializer }, align 32
@shmem_fill_super.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@shmem_fill_super.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&sbinfo->shrinklist_lock\00", [39 x i8] zeroinitializer }, align 32
@shmem_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @shmem_alloc_inode, ptr @shmem_destroy_inode, ptr @shmem_free_in_core_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @shmem_evict_inode, ptr @shmem_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_statfs, ptr null, ptr null, ptr @shmem_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@shmem_xattr_handlers = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @shmem_security_xattr_handler, ptr @shmem_trusted_xattr_handler, ptr null], [44 x i8] zeroinitializer }, align 32
@_totalhigh_pages = external dso_local global %struct.atomic_t, align 4
@shmem_encode_fh.lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@shmem_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",size=%luk\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",nr_inodes=%lu\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",mode=%03ho\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",inode%d\00", [23 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@shmem_security_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.64, i32 0, ptr null, ptr @shmem_xattr_handler_get, ptr @shmem_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@shmem_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.65, i32 0, ptr null, ptr @shmem_xattr_handler_get, ptr @shmem_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@shmem_get_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@shmem_special_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_setattr, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@shmem_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_setattr, ptr @shmem_getattr, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@shmem_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @shmem_file_llseek, ptr null, ptr null, ptr @shmem_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_mmap, i32 0, ptr null, ptr null, ptr null, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr @shmem_get_unmapped_area, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @shmem_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@shmem_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @shmem_create, ptr @shmem_link, ptr @shmem_unlink, ptr @shmem_symlink, ptr @shmem_mkdir, ptr @shmem_rmdir, ptr @shmem_mknod, ptr @shmem_rename2, ptr @shmem_setattr, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr @shmem_tmpfile, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_xattrs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&xattrs->lock\00", [18 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@shmem_fallocate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&shmem_falloc_waitq\00", [44 x i8] zeroinitializer }, align 32
@shmem_fallocate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shmem_short_symlink_operations = internal constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@shmem_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @shmem_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot retroactively limit size\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Too small a size for current use\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot retroactively limit inodes\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Too few inodes for current use\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shmem_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmpfs\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.79 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"shmem_vm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3840, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 880, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"shmem_swaplist\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 256, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"shmem_swaplist_mutex\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3315, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3316, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"shmem_param_enums_huge\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3306, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3317, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3318, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3319, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3320, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3321, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3322, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3323, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3324, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"shmem_fs_parameters\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3314, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"shmem_aops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3754, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"shmem_fs_context_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3695, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"shmem_fs_type\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3866, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3885, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [8 x i8] c"shm_mnt\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 42, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3892, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 4126, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 695, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2089, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1182, i32 9 }
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 723, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1022, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 698, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 260, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 717, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 777, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 257, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1059, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant [13 x i8] c"dummy_vm_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 610, i32 43 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1160, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 493, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 156, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 705, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 706, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 707, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3307, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3308, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3309, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3310, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 770, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 271, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3402, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3412, i32 9 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3414, i32 9 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"shmem_export_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3287, i32 39 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3645, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3646, i32 6 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3648, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [10 x i8] c"shmem_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3823, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant [21 x i8] c"shmem_xattr_handlers\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3181, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3271, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"shmem_inode_cachep\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3705, i32 27 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3538, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3541, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3543, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3545, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3548, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3572, i32 19 }
@___asan_gen_.306 = private unnamed_addr constant [29 x i8] c"shmem_security_xattr_handler\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3169, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant [28 x i8] c"shmem_trusted_xattr_handler\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3175, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3170, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3176, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2264, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [22 x i8] c"shmem_file_operations\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3768, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"../include/linux/xattr.h\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 100, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2643, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3480, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3485, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3491, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3495, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3530, i32 9 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3737, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [14 x i8] c"../mm/shmem.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3868, i32 11 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__ksymtab_shmem_aops, ptr @__ksymtab_shmem_file_setup, ptr @__ksymtab_shmem_file_setup_with_mnt, ptr @__ksymtab_shmem_read_mapping_page_gfp, ptr @__ksymtab_shmem_truncate_range, ptr @shmem_init._entry, ptr @shmem_init._entry.14, ptr @shmem_init._entry_ptr, ptr @shmem_init._entry_ptr.16, ptr @shmem_vm_ops, ptr @.str, ptr @shmem_swaplist, ptr @shmem_swaplist_mutex, ptr @.str.1, ptr @.str.2, ptr @shmem_param_enums_huge, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @shmem_fs_parameters, ptr @shmem_aops, ptr @shmem_fs_context_ops, ptr @shmem_fs_type, ptr @.str.12, ptr @.str.13, ptr @shm_mnt, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @vma_init.dummy_vm_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @shmem_export_ops, ptr @shmem_fill_super.__key, ptr @.str.53, ptr @shmem_fill_super.__key.54, ptr @shmem_fill_super.__key.55, ptr @.str.56, ptr @shmem_ops, ptr @shmem_xattr_handlers, ptr @shmem_encode_fh.lock, ptr @.str.57, ptr @shmem_inode_cachep, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @shmem_security_xattr_handler, ptr @shmem_trusted_xattr_handler, ptr @.str.64, ptr @.str.65, ptr @shmem_get_inode.__key, ptr @.str.66, ptr @shmem_file_operations, ptr @simple_xattrs_init.__key, ptr @.str.67, ptr @shmem_fallocate.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_swaplist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_swaplist_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_param_enums_huge to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fs_parameters to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vma_init.dummy_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fill_super.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fill_super.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_xattr_handlers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_encode_fh.lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_security_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_get_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_xattrs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem_fallocate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_getpage(ptr noundef %inode, i32 noundef %index, ptr nocapture noundef writeonly %pagep, i32 noundef %sgp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i, align 4
  %call1 = tail call fastcc i32 @shmem_getpage_gfp(ptr noundef %inode, i32 noundef %index, ptr noundef %pagep, i32 noundef %sgp, i32 noundef %3, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shmem_getpage_gfp(ptr noundef %inode, i32 noundef %index, ptr nocapture noundef writeonly %pagep, i32 noundef %sgp, i32 noundef %gfp, ptr noundef %vma, ptr noundef %vmf, ptr noundef %fault_type) unnamed_addr #0 align 64 {
entry:
  %pvma.i.i = alloca %struct.vm_area_struct, align 4
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !230
  %conv = zext i32 %index to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sgp)
  %cmp2 = icmp ult i32 %sgp, 3
  %shl = shl nuw nsw i64 %conv, 12
  %tobool.not = icmp eq ptr %vma, null
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %i_sb.le = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sgp)
  %cmp35 = icmp eq i32 %sgp, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgp)
  %cmp43.not = icmp eq i32 %sgp, 0
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %flags.i.i = getelementptr i8, ptr %inode, i32 -88
  %vm_ops.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i.i, i32 0, i32 12
  %anon_vma_chain.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i.i, i32 0, i32 10
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i.i, i32 0, i32 10, i32 1
  %i_ino.i.i.i = getelementptr i8, ptr %inode, i32 40
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i.i, i32 0, i32 13
  %vm_private_data.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i.i, i32 0, i32 15
  %and108 = and i32 %gfp, 34336480
  %alloced114 = getelementptr i8, ptr %inode, i32 -84
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %swapped.i = getelementptr i8, ptr %inode, i32 -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sgp)
  %cmp146 = icmp eq i32 %sgp, 4
  br label %repeat.outer

repeat.outer:                                     ; preds = %shmem_recalc_inode.exit470, %entry
  %tobool191.not = phi i1 [ false, %shmem_recalc_inode.exit470 ], [ true, %entry ]
  %alloced.0.ph = phi i32 [ %alloced.2.ph634, %shmem_recalc_inode.exit470 ], [ 0, %entry ]
  br label %repeat.outer508

repeat.outer508:                                  ; preds = %if.end195.repeat.outer508_crit_edge, %repeat.outer
  %alloced.0.ph509 = phi i32 [ %alloced.0.ph, %repeat.outer ], [ %alloced.2494499, %if.end195.repeat.outer508_crit_edge ]
  br label %repeat

repeat:                                           ; preds = %if.then25.repeat_crit_edge, %repeat.outer508
  br i1 %cmp2, label %land.lhs.true, label %repeat.if.end9_crit_edge

repeat.if.end9_crit_edge:                         ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true:                                    ; preds = %repeat
  %call5 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call5)
  %cmp6.not = icmp slt i64 %shl, %call5
  br i1 %cmp6.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup200_crit_edge

land.lhs.true.cleanup200_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup200

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %repeat.if.end9_crit_edge
  br i1 %tobool.not, label %if.end9.cond.end_crit_edge, label %cond.true

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_mm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end9.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %if.end9.cond.end_crit_edge ]
  %call11 = call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %index, i32 noundef 386, i32 noundef 0) #15
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %page, align 4
  %6 = ptrtoint ptr %call11 to i32
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end31, label %if.then25

if.then25:                                        ; preds = %cond.end
  %call26 = call fastcc i32 @shmem_swapin_page(ptr noundef %inode, i32 noundef %index, ptr noundef nonnull %page, i32 noundef %sgp, i32 noundef %gfp, ptr noundef %vma, ptr noundef %fault_type)
  %cmp27 = icmp eq i32 %call26, -17
  br i1 %cmp27, label %if.then25.repeat_crit_edge, label %if.end30

if.then25.repeat_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %repeat

if.end30:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 4
  %9 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pagep, align 4
  br label %cleanup200

if.end31:                                         ; preds = %cond.end
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end47, label %if.then33

if.then33:                                        ; preds = %if.end31
  %index34 = getelementptr inbounds %struct.page, ptr %call11, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index34, align 4
  br i1 %cmp35, label %if.then37, label %if.then33.if.end38_crit_edge

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  call void @mark_page_accessed(ptr noundef nonnull %call11) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then33.if.end38_crit_edge
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i305 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i305)
  %tobool.not.i.i306 = icmp eq i32 %and.i.i305, 0
  br i1 %tobool.not.i.i306, label %if.end.i.i309, label %if.then.i.i308, !prof !231

if.then.i.i308:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i307 = add i32 %16, -1
  br label %_compound_head.exit.i313

if.end.i.i309:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i313

_compound_head.exit.i313:                         ; preds = %if.end.i.i309, %if.then.i.i308
  %retval.0.i.i310 = phi i32 [ %sub.i.i307, %if.then.i.i308 ], [ %17, %if.end.i.i309 ]
  %18 = inttoptr i32 %retval.0.i.i310 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i311 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i311)
  %tobool.not.i.i.i312 = icmp eq i32 %and.i.i.i.i311, 0
  br i1 %tobool.not.i.i.i312, label %folio_flags.exit.i.i, label %if.then.i.i.i314, !prof !231

if.then.i.i.i314:                                 ; preds = %_compound_head.exit.i313
  call void @__sanitizer_cov_trace_pc() #17
  %22 = inttoptr i32 %retval.0.i.i310 to ptr
  call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i313
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %18, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %if.end42, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %out

if.end42:                                         ; preds = %folio_flags.exit.i.i
  br i1 %cmp43.not, label %if.end46, label %if.end42.clear_crit_edge

if.end42.clear_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear

if.end46:                                         ; preds = %if.end42
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %27) #15
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i315 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i315)
  %tobool.not.i.i316 = icmp eq i32 %and.i.i315, 0
  br i1 %tobool.not.i.i316, label %if.end.i.i319, label %if.then.i.i318, !prof !231

if.then.i.i318:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i317 = add i32 %32, -1
  br label %_compound_head.exit.i321

if.end.i.i319:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %29 to i32
  br label %_compound_head.exit.i321

_compound_head.exit.i321:                         ; preds = %if.end.i.i319, %if.then.i.i318
  %retval.0.i.i320 = phi i32 [ %sub.i.i317, %if.then.i.i318 ], [ %33, %if.end.i.i319 ]
  %34 = inttoptr i32 %retval.0.i.i320 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i321
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i321
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %37 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_getpage_gfp, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end47.thread_crit_edge

folio_put_testzero.exit.i.i.if.end47.thread_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.thread

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %34) #15
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end47.thread_crit_edge
  %38 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %pagep, align 4
  br label %cleanup200

if.end47:                                         ; preds = %if.end31
  %39 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %pagep, align 4
  %40 = zext i32 %sgp to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sgp, label %if.end55 [
    i32 0, label %if.end47.cleanup200.loopexit750_crit_edge
    i32 1, label %if.end47.cleanup200_crit_edge
  ]

if.end47.cleanup200_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup200

if.end47.cleanup200.loopexit750_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup200.loopexit750

if.end55:                                         ; preds = %if.end47
  br i1 %tobool.not, label %if.end55.alloc_nohuge_crit_edge, label %land.lhs.true57

if.end55.alloc_nohuge_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_nohuge

land.lhs.true57:                                  ; preds = %if.end55
  %41 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_flags.i, align 4
  %and.i322 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i322)
  %tobool.i323.not = icmp eq i32 %and.i322, 0
  br i1 %tobool.i323.not, label %land.lhs.true57.alloc_nohuge_crit_edge, label %if.then60

land.lhs.true57.alloc_nohuge_crit_edge:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_nohuge

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  %call61 = call i32 @handle_userfault(ptr noundef %vmf, i32 noundef 512) #15
  %43 = ptrtoint ptr %fault_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call61, ptr %fault_type, align 4
  br label %cleanup200

alloc_nohuge:                                     ; preds = %land.lhs.true57.alloc_nohuge_crit_edge, %if.end55.alloc_nohuge_crit_edge
  %44 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i, align 8
  %and.i.i27.i = and i32 %49, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27.i)
  %tobool.not.i.i28.i = icmp eq i32 %and.i.i27.i, 0
  br i1 %tobool.not.i.i28.i, label %alloc_nohuge.if.end.i.i325_crit_edge, label %shmem_acct_block.exit.i.i

alloc_nohuge.if.end.i.i325_crit_edge:             ; preds = %alloc_nohuge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i325

shmem_acct_block.exit.i.i:                        ; preds = %alloc_nohuge
  %50 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i324 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i324 to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %mm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 53
  %54 = ptrtoint ptr %mm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mm.i.i.i, align 8
  %call1.i.i.i = call i32 @security_vm_enough_memory_mm(ptr noundef %55, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i29.i, label %shmem_acct_block.exit.i.i.if.end.i.i325_crit_edge, label %shmem_acct_block.exit.i.i.if.then79_crit_edge

shmem_acct_block.exit.i.i.if.then79_crit_edge:    ; preds = %shmem_acct_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

shmem_acct_block.exit.i.i.if.end.i.i325_crit_edge: ; preds = %shmem_acct_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i325

if.end.i.i325:                                    ; preds = %shmem_acct_block.exit.i.i.if.end.i.i325_crit_edge, %alloc_nohuge.if.end.i.i325_crit_edge
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool3.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i325.if.else.i_crit_edge, label %if.then4.i.i

if.end.i.i325.if.else.i_crit_edge:                ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then4.i.i:                                     ; preds = %if.end.i.i325
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %47, i32 0, i32 1
  %sub.i.i326 = add i32 %57, -1
  %conv.i.i = zext i32 %sub.i.i326 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %58 = load i32, ptr @percpu_counter_batch, align 4
  %call.i.i.i = call i32 @__percpu_counter_compare(ptr noundef %used_blocks.i.i, i64 noundef %conv.i.i, i32 noundef %58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %unacct.i.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %59 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef 1, i32 noundef %59) #15
  br label %if.else.i

unacct.i.i:                                       ; preds = %if.then4.i.i
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i, align 8
  %and.i23.i.i = and i32 %61, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i.i)
  %tobool.not.i24.i.i = icmp eq i32 %and.i23.i.i, 0
  br i1 %tobool.not.i24.i.i, label %unacct.i.i.if.then79_crit_edge, label %unacct.i.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge

unacct.i.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge: ; preds = %unacct.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_alloc_and_acct_page.exit.thread.sink.split

unacct.i.i.if.then79_crit_edge:                   ; preds = %unacct.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

if.else.i:                                        ; preds = %if.end9.i.i, %if.end.i.i325.if.else.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pvma.i.i) #15
  %62 = call ptr @memset(ptr %pvma.i.i, i32 0, i32 96)
  %63 = ptrtoint ptr %vm_ops.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @vma_init.dummy_vm_ops, ptr %vm_ops.i.i.i.i, align 4
  %64 = ptrtoint ptr %anon_vma_chain.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %anon_vma_chain.i.i.i.i, ptr %anon_vma_chain.i.i.i.i, align 4
  %65 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %anon_vma_chain.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_ino.i.i.i, align 8
  %add.i.i.i = add i32 %67, %index
  %68 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i.i.i, ptr %vm_pgoff.i.i.i, align 4
  %69 = ptrtoint ptr %vm_private_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %vm_private_data.i.i.i, align 4
  %call38.i.i.i.i.i = call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pvma.i.i) #15
  %tobool7.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  %70 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i327 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i327, label %do.body7.i.i, label %if.then.i.i328, !prof !231

if.then.i.i328:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i.i, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !240
  unreachable

do.body7.i.i:                                     ; preds = %if.then8.i
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %70, align 4
  %and.i31.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i.i329 = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i.i329, label %if.end.i.i.i, label %if.then.i.i.i330, !prof !231

if.then.i.i.i330:                                 ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = add i32 %74, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i330
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i330 ], [ %75, %if.end.i.i.i ]
  %76 = inttoptr i32 %retval.0.i.i.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i.i = icmp eq i32 %78, -1
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %70, align 4
  %and.i32.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then17.i.i, label %do.end24.i.i, !prof !234

if.then17.i.i:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i36.i.i, label %if.then.i35.i.i, !prof !231

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i.i = add i32 %80, -1
  br label %_compound_head.exit38.i.i

if.end.i36.i.i:                                   ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.end.i36.i.i, %if.then.i35.i.i
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %81, %if.end.i36.i.i ]
  %82 = inttoptr i32 %retval.0.i37.i.i to ptr
  call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !241
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i43.i.i, label %if.then.i42.i.i, !prof !231

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i.i = add i32 %80, -1
  br label %__SetPageLocked.exit.i

if.end.i43.i.i:                                   ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %__SetPageLocked.exit.i

__SetPageLocked.exit.i:                           ; preds = %if.end.i43.i.i, %if.then.i42.i.i
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %83, %if.end.i43.i.i ]
  %84 = inttoptr i32 %retval.0.i44.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %or.i.i.i = or i32 %86, 1
  store i32 %or.i.i.i, ptr %84, align 4
  %87 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %70, align 4
  %and.i.i1.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1.i)
  %tobool.not.i2.i = icmp eq i32 %and.i.i1.i, 0
  br i1 %tobool.not.i2.i, label %do.body7.i6.i, label %if.then.i3.i, !prof !231

if.then.i3.i:                                     ; preds = %__SetPageLocked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i.i, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !242
  unreachable

do.body7.i6.i:                                    ; preds = %__SetPageLocked.exit.i
  %89 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %70, align 4
  %and.i31.i4.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i4.i)
  %tobool.not.i.i5.i = icmp eq i32 %and.i31.i4.i, 0
  br i1 %tobool.not.i.i5.i, label %if.end.i.i9.i, label %if.then.i.i8.i, !prof !231

if.then.i.i8.i:                                   ; preds = %do.body7.i6.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i7.i = add i32 %90, -1
  br label %_compound_head.exit.i14.i

if.end.i.i9.i:                                    ; preds = %do.body7.i6.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit.i14.i

_compound_head.exit.i14.i:                        ; preds = %if.end.i.i9.i, %if.then.i.i8.i
  %retval.0.i.i10.i = phi i32 [ %sub.i.i7.i, %if.then.i.i8.i ], [ %91, %if.end.i.i9.i ]
  %92 = inttoptr i32 %retval.0.i.i10.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i.not.i11.i = icmp eq i32 %94, -1
  %95 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %70, align 4
  %and.i32.i12.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i12.i)
  %tobool.not.i33.i13.i = icmp eq i32 %and.i32.i12.i, 0
  br i1 %cmp.i.not.i11.i, label %if.then17.i15.i, label %do.end24.i21.i, !prof !234

if.then17.i15.i:                                  ; preds = %_compound_head.exit.i14.i
  br i1 %tobool.not.i33.i13.i, label %if.end.i36.i18.i, label %if.then.i35.i17.i, !prof !231

if.then.i35.i17.i:                                ; preds = %if.then17.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i16.i = add i32 %96, -1
  br label %_compound_head.exit38.i20.i

if.end.i36.i18.i:                                 ; preds = %if.then17.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit38.i20.i

_compound_head.exit38.i20.i:                      ; preds = %if.end.i36.i18.i, %if.then.i35.i17.i
  %retval.0.i37.i19.i = phi i32 [ %sub.i34.i16.i, %if.then.i35.i17.i ], [ %97, %if.end.i36.i18.i ]
  %98 = inttoptr i32 %retval.0.i37.i19.i to ptr
  call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !243
  unreachable

do.end24.i21.i:                                   ; preds = %_compound_head.exit.i14.i
  br i1 %tobool.not.i33.i13.i, label %if.end.i43.i24.i, label %if.then.i42.i23.i, !prof !231

if.then.i42.i23.i:                                ; preds = %do.end24.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i22.i = add i32 %96, -1
  br label %shmem_alloc_and_acct_page.exit

if.end.i43.i24.i:                                 ; preds = %do.end24.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %shmem_alloc_and_acct_page.exit

if.end9.i:                                        ; preds = %if.else.i
  %100 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i32.i = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 33
  %102 = ptrtoint ptr %s_fs_info.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i.i32.i, align 16
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i33.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i33.i, label %if.end9.i.if.end.i39.i_crit_edge, label %if.then.i35.i

if.end9.i.if.end.i39.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i39.i

if.then.i35.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i34.i = getelementptr inbounds %struct.shmem_sb_info, ptr %103, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %106 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i34.i, i64 noundef -1, i32 noundef %106) #15
  br label %if.end.i39.i

if.end.i39.i:                                     ; preds = %if.then.i35.i, %if.end9.i.if.end.i39.i_crit_edge
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i.i, align 8
  %and.i.i37.i = and i32 %108, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i)
  %tobool.not.i.i38.i = icmp eq i32 %and.i.i37.i, 0
  br i1 %tobool.not.i.i38.i, label %if.end.i39.i.if.then79_crit_edge, label %if.end.i39.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge

if.end.i39.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_alloc_and_acct_page.exit.thread.sink.split

if.end.i39.i.if.then79_crit_edge:                 ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

shmem_alloc_and_acct_page.exit.thread.sink.split: ; preds = %if.end.i39.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge, %unacct.i.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge
  %retval.0.i.ph.ph = phi ptr [ inttoptr (i32 -28 to ptr), %unacct.i.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i39.i.shmem_alloc_and_acct_page.exit.thread.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %109 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef -1, i32 noundef %109) #15
  br label %if.then79

shmem_alloc_and_acct_page.exit:                   ; preds = %if.end.i43.i24.i, %if.then.i42.i23.i
  %retval.0.i44.i25.i = phi i32 [ %sub.i41.i22.i, %if.then.i42.i23.i ], [ %99, %if.end.i43.i24.i ]
  %110 = inttoptr i32 %retval.0.i44.i25.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %or.i.i26.i = or i32 %112, 524288
  store i32 %or.i.i26.i, ptr %110, align 4
  %113 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call38.i.i.i.i.i, ptr %page, align 4
  %cmp.i = icmp ugt ptr %call38.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %shmem_alloc_and_acct_page.exit.if.then79_crit_edge, label %if.end96

shmem_alloc_and_acct_page.exit.if.then79_crit_edge: ; preds = %shmem_alloc_and_acct_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79

if.then79:                                        ; preds = %shmem_alloc_and_acct_page.exit.if.then79_crit_edge, %shmem_alloc_and_acct_page.exit.thread.sink.split, %if.end.i39.i.if.then79_crit_edge, %unacct.i.i.if.then79_crit_edge, %shmem_acct_block.exit.i.i.if.then79_crit_edge
  %retval.0.i475 = phi ptr [ %call38.i.i.i.i.i, %shmem_alloc_and_acct_page.exit.if.then79_crit_edge ], [ inttoptr (i32 -28 to ptr), %unacct.i.i.if.then79_crit_edge ], [ inttoptr (i32 -28 to ptr), %shmem_acct_block.exit.i.i.if.then79_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i39.i.if.then79_crit_edge ], [ %retval.0.i.ph.ph, %shmem_alloc_and_acct_page.exit.thread.sink.split ]
  %114 = ptrtoint ptr %retval.0.i475 to i32
  %115 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %page, align 4
  %cmp81.not = icmp eq ptr %retval.0.i475, inttoptr (i32 -28 to ptr)
  br i1 %cmp81.not, label %if.then79.if.end186_crit_edge, label %if.then79.if.end195_crit_edge

if.then79.if.end195_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

if.then79.if.end186_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.end96:                                         ; preds = %shmem_alloc_and_acct_page.exit
  br i1 %cmp35, label %if.then106, label %if.end96.if.end107_crit_edge

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then106:                                       ; preds = %if.end96
  %116 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %70, align 4
  %and.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %117, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %118, %if.end.i.i ]
  %119 = inttoptr i32 %retval.0.i.i to ptr
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.i.not.i = icmp eq i32 %121, -1
  %122 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %70, align 4
  %and.i12.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !234

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !231

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i14.i = add i32 %123, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %124, %if.end.i16.i ]
  %125 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 419, 0\0A.popsection", ""() #15, !srcloc !244
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !231

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i21.i = add i32 %123, -1
  br label %__SetPageReferenced.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %__SetPageReferenced.exit

__SetPageReferenced.exit:                         ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %126, %if.end.i23.i ]
  %127 = inttoptr i32 %retval.0.i24.i to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %or.i.i = or i32 %129, 2
  store i32 %or.i.i, ptr %127, align 4
  br label %if.end107

if.end107:                                        ; preds = %__SetPageReferenced.exit, %if.end96.if.end107_crit_edge
  %130 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %page, align 4
  %call109 = call fastcc i32 @shmem_add_to_page_cache(ptr noundef %131, ptr noundef %1, i32 noundef %index, ptr noundef null, i32 noundef %and108, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  %132 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %page, align 4
  br i1 %tobool110.not, label %if.end112, label %unacct

if.end112:                                        ; preds = %if.end107
  call void @lru_cache_add(ptr noundef %133) #15
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %134 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %page, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %137)
  %cmp.i.not.i.i331 = icmp eq i32 %137, -1
  br i1 %cmp.i.not.i.i331, label %if.then.i.i332, label %PageHead.exit.i, !prof !234

if.then.i.i332:                                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %135, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i:                                  ; preds = %if.end112
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %135, align 4
  %140 = and i32 %139, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_nr.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_nr.exit_crit_edge:       ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_nr.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i = getelementptr %struct.page, ptr %135, i32 1, i32 1, i32 0, i32 2
  %141 = ptrtoint ptr %compound_nr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i, %PageHead.exit.i.compound_nr.exit_crit_edge
  %retval.0.i333 = phi i32 [ %142, %if.end.i ], [ 1, %PageHead.exit.i.compound_nr.exit_crit_edge ]
  %143 = ptrtoint ptr %alloced114 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %alloced114, align 4
  %add = add i32 %144, %retval.0.i333
  store i32 %add, ptr %alloced114, align 4
  %145 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp.i.not.i.i334 = icmp eq i32 %146, -1
  br i1 %cmp.i.not.i.i334, label %if.then.i.i335, label %PageHead.exit.i337, !prof !234

if.then.i.i335:                                   ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %135, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i337:                               ; preds = %compound_nr.exit
  %147 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %135, align 4
  %149 = and i32 %148, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i336 = icmp eq i32 %149, 0
  br i1 %tobool.not.i336, label %PageHead.exit.i337.compound_order.exit_crit_edge, label %if.end.i338

PageHead.exit.i337.compound_order.exit_crit_edge: ; preds = %PageHead.exit.i337
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit

if.end.i338:                                      ; preds = %PageHead.exit.i337
  call void @__sanitizer_cov_trace_pc() #17
  %150 = getelementptr %struct.page, ptr %135, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.13, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %compound_order.i, align 1
  %conv.i = zext i8 %152 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i338, %PageHead.exit.i337.compound_order.exit_crit_edge
  %retval.0.i339 = phi i32 [ %conv.i, %if.end.i338 ], [ 0, %PageHead.exit.i337.compound_order.exit_crit_edge ]
  %shl116 = shl i32 8, %retval.0.i339
  %conv117 = zext i32 %shl116 to i64
  %153 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %i_blocks, align 8
  %add118 = add i64 %154, %conv117
  store i64 %add118, ptr %i_blocks, align 8
  %155 = ptrtoint ptr %alloced114 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %alloced114, align 4
  %157 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %swapped.i, align 8
  %159 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %160, i32 0, i32 7
  %161 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nrpages.i, align 4
  %163 = add i32 %162, %158
  %sub1.i = sub i32 %156, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i340 = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i340, label %if.then.i345, label %compound_order.exit.shmem_recalc_inode.exit_crit_edge

compound_order.exit.shmem_recalc_inode.exit_crit_edge: ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i345:                                     ; preds = %compound_order.exit
  %164 = ptrtoint ptr %alloced114 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %alloced114, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i341 = zext i32 %mul.i to i64
  %sub4.i = sub i64 %add118, %conv.i341
  %165 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %sub4.i, ptr %i_blocks, align 8
  %166 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i.i343 = getelementptr inbounds %struct.super_block, ptr %167, i32 0, i32 33
  %168 = ptrtoint ptr %s_fs_info.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %s_fs_info.i.i.i343, align 16
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i.i344 = icmp eq i32 %171, 0
  br i1 %tobool.not.i.i344, label %if.then.i345.if.end.i.i352_crit_edge, label %if.then.i.i348

if.then.i345.if.end.i.i352_crit_edge:             ; preds = %if.then.i345
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i352

if.then.i.i348:                                   ; preds = %if.then.i345
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i346 = getelementptr inbounds %struct.shmem_sb_info, ptr %169, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i347 = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %172 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i346, i64 noundef %sub.i.i.i347, i32 noundef %172) #15
  br label %if.end.i.i352

if.end.i.i352:                                    ; preds = %if.then.i.i348, %if.then.i345.if.end.i.i352_crit_edge
  %173 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i350 = and i32 %174, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i350)
  %tobool.not.i.i.i351 = icmp eq i32 %and.i.i.i350, 0
  br i1 %tobool.not.i.i.i351, label %if.end.i.i352.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i354

if.end.i.i352.shmem_recalc_inode.exit_crit_edge:  ; preds = %if.end.i.i352
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i354:                                 ; preds = %if.end.i.i352
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i353 = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %175 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i353, i32 noundef %175) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i354, %if.end.i.i352.shmem_recalc_inode.exit_crit_edge, %compound_order.exit.shmem_recalc_inode.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  br i1 %cmp146, label %shmem_recalc_inode.exit.out_crit_edge, label %shmem_recalc_inode.exit.clear_crit_edge

shmem_recalc_inode.exit.clear_crit_edge:          ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear

shmem_recalc_inode.exit.out_crit_edge:            ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

clear:                                            ; preds = %shmem_recalc_inode.exit.clear_crit_edge, %if.end42.clear_crit_edge
  %hindex.0 = phi i32 [ %11, %if.end42.clear_crit_edge ], [ %index, %shmem_recalc_inode.exit.clear_crit_edge ]
  %alloced.1 = phi i32 [ %alloced.0.ph509, %if.end42.clear_crit_edge ], [ 1, %shmem_recalc_inode.exit.clear_crit_edge ]
  br i1 %cmp35, label %clear.out_crit_edge, label %land.lhs.true152

clear.out_crit_edge:                              ; preds = %clear
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true152:                                 ; preds = %clear
  %176 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %page, align 4
  %178 = getelementptr inbounds %struct.page, ptr %177, i32 0, i32 1
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %178, align 4
  %and.i.i356 = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i356)
  %tobool.not.i.i357 = icmp eq i32 %and.i.i356, 0
  br i1 %tobool.not.i.i357, label %if.end.i.i360, label %if.then.i.i359, !prof !231

if.then.i.i359:                                   ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i358 = add i32 %180, -1
  br label %_compound_head.exit.i364

if.end.i.i360:                                    ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #17
  %181 = ptrtoint ptr %177 to i32
  br label %_compound_head.exit.i364

_compound_head.exit.i364:                         ; preds = %if.end.i.i360, %if.then.i.i359
  %retval.0.i.i361 = phi i32 [ %sub.i.i358, %if.then.i.i359 ], [ %181, %if.end.i.i360 ]
  %182 = inttoptr i32 %retval.0.i.i361 to ptr
  %183 = getelementptr inbounds %struct.page, ptr %182, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %183, align 4
  %and.i.i.i.i362 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i362)
  %tobool.not.i.i.i363 = icmp eq i32 %and.i.i.i.i362, 0
  br i1 %tobool.not.i.i.i363, label %folio_flags.exit.i.i367, label %if.then.i.i.i365, !prof !231

if.then.i.i.i365:                                 ; preds = %_compound_head.exit.i364
  call void @__sanitizer_cov_trace_pc() #17
  %186 = inttoptr i32 %retval.0.i.i361 to ptr
  call void @dump_page(ptr noundef %186, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i367:                          ; preds = %_compound_head.exit.i364
  %187 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %182, align 4
  %189 = and i32 %188, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cond507 = icmp eq i32 %189, 0
  br i1 %cond507, label %for.cond.preheader, label %do.end.i.i368

for.cond.preheader:                               ; preds = %folio_flags.exit.i.i367
  %190 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %page, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %193)
  %cmp.i.not.i.i371569 = icmp eq i32 %193, -1
  br i1 %cmp.i.not.i.i371569, label %for.cond.preheader.if.then.i.i372_crit_edge, label %for.cond.preheader.PageHead.exit.i374_crit_edge, !prof !234

for.cond.preheader.PageHead.exit.i374_crit_edge:  ; preds = %for.cond.preheader
  br label %PageHead.exit.i374

for.cond.preheader.if.then.i.i372_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i372

do.end.i.i368:                                    ; preds = %folio_flags.exit.i.i367
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end161

if.then.i.i372:                                   ; preds = %for.body.if.then.i.i372_crit_edge, %for.cond.preheader.if.then.i.i372_crit_edge
  %.lcssa = phi ptr [ %205, %for.body.if.then.i.i372_crit_edge ], [ %191, %for.cond.preheader.if.then.i.i372_crit_edge ]
  call void @dump_page(ptr noundef %.lcssa, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i374:                               ; preds = %for.body.PageHead.exit.i374_crit_edge, %for.cond.preheader.PageHead.exit.i374_crit_edge
  %194 = phi ptr [ %205, %for.body.PageHead.exit.i374_crit_edge ], [ %191, %for.cond.preheader.PageHead.exit.i374_crit_edge ]
  %i.0570 = phi i32 [ %inc160, %for.body.PageHead.exit.i374_crit_edge ], [ 0, %for.cond.preheader.PageHead.exit.i374_crit_edge ]
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %194, align 4
  %197 = and i32 %196, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.not.i373 = icmp eq i32 %197, 0
  br i1 %tobool.not.i373, label %PageHead.exit.i374.compound_nr.exit378_crit_edge, label %if.end.i376

PageHead.exit.i374.compound_nr.exit378_crit_edge: ; preds = %PageHead.exit.i374
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_nr.exit378

if.end.i376:                                      ; preds = %PageHead.exit.i374
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i375 = getelementptr %struct.page, ptr %194, i32 1, i32 1, i32 0, i32 2
  %198 = ptrtoint ptr %compound_nr.i375 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %compound_nr.i375, align 4
  br label %compound_nr.exit378

compound_nr.exit378:                              ; preds = %if.end.i376, %PageHead.exit.i374.compound_nr.exit378_crit_edge
  %retval.0.i377 = phi i32 [ %199, %if.end.i376 ], [ 1, %PageHead.exit.i374.compound_nr.exit378_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0570, i32 %retval.0.i377)
  %cmp157 = icmp ult i32 %i.0570, %retval.0.i377
  br i1 %cmp157, label %for.body, label %for.end

for.body:                                         ; preds = %compound_nr.exit378
  %add.ptr = getelementptr %struct.page, ptr %194, i32 %i.0570
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %200 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i379 = or i32 %200, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i379) #15
  %201 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  %202 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %page, align 4
  %add.ptr159 = getelementptr %struct.page, ptr %203, i32 %i.0570
  call void @flush_dcache_page(ptr noundef %add.ptr159) #15
  %inc160 = add nuw i32 %i.0570, 1
  %204 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %page, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %205, align 4
  %cmp.i.not.i.i371 = icmp eq i32 %207, -1
  br i1 %cmp.i.not.i.i371, label %for.body.if.then.i.i372_crit_edge, label %for.body.PageHead.exit.i374_crit_edge, !prof !234

for.body.PageHead.exit.i374_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %PageHead.exit.i374

for.body.if.then.i.i372_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i372

for.end:                                          ; preds = %compound_nr.exit378
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %208 = getelementptr inbounds %struct.page, ptr %194, i32 0, i32 1
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %208, align 4
  %and.i.i.i.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %194, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

SetPageUptodate.exit:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 2, ptr noundef %194) #15
  br label %if.end161

if.end161:                                        ; preds = %SetPageUptodate.exit, %do.end.i.i368
  br i1 %cmp2, label %land.lhs.true164, label %if.end161.out_crit_edge

if.end161.out_crit_edge:                          ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true164:                                 ; preds = %if.end161
  %call167 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call167)
  %cmp168.not = icmp slt i64 %shl, %call167
  br i1 %cmp168.not, label %land.lhs.true164.out_crit_edge, label %if.then170

land.lhs.true164.out_crit_edge:                   ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then170:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloced.1)
  %tobool171.not = icmp eq i32 %alloced.1, 0
  br i1 %tobool171.not, label %if.then170.unlock_crit_edge, label %if.then172

if.then170.unlock_crit_edge:                      ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.then172:                                       ; preds = %if.then170
  %211 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %page, align 4
  %213 = getelementptr inbounds %struct.page, ptr %212, i32 0, i32 1
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %213, align 4
  %and.i.i284 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i284)
  %tobool.not.i.i285 = icmp eq i32 %and.i.i284, 0
  br i1 %tobool.not.i.i285, label %if.end.i.i288, label %if.then.i.i287, !prof !231

if.then.i.i287:                                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i286 = add i32 %215, -1
  br label %_compound_head.exit.i293

if.end.i.i288:                                    ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #17
  %216 = ptrtoint ptr %212 to i32
  br label %_compound_head.exit.i293

_compound_head.exit.i293:                         ; preds = %if.end.i.i288, %if.then.i.i287
  %retval.0.i.i289 = phi i32 [ %sub.i.i286, %if.then.i.i287 ], [ %216, %if.end.i.i288 ]
  %217 = inttoptr i32 %retval.0.i.i289 to ptr
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %219)
  %cmp.i.not.i290 = icmp eq i32 %219, -1
  %220 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %213, align 4
  %and.i12.i291 = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i291)
  %tobool.not.i13.i292 = icmp eq i32 %and.i12.i291, 0
  br i1 %cmp.i.not.i290, label %if.then.i294, label %do.end8.i300, !prof !234

if.then.i294:                                     ; preds = %_compound_head.exit.i293
  br i1 %tobool.not.i13.i292, label %if.end.i16.i297, label %if.then.i15.i296, !prof !231

if.then.i15.i296:                                 ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i14.i295 = add i32 %221, -1
  br label %_compound_head.exit18.i299

if.end.i16.i297:                                  ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #17
  %222 = ptrtoint ptr %212 to i32
  br label %_compound_head.exit18.i299

_compound_head.exit18.i299:                       ; preds = %if.end.i16.i297, %if.then.i15.i296
  %retval.0.i17.i298 = phi i32 [ %sub.i14.i295, %if.then.i15.i296 ], [ %222, %if.end.i16.i297 ]
  %223 = inttoptr i32 %retval.0.i17.i298 to ptr
  call void @dump_page(ptr noundef %223, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #15, !srcloc !247
  unreachable

do.end8.i300:                                     ; preds = %_compound_head.exit.i293
  br i1 %tobool.not.i13.i292, label %if.end.i23.i303, label %if.then.i22.i302, !prof !231

if.then.i22.i302:                                 ; preds = %do.end8.i300
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i21.i301 = add i32 %221, -1
  br label %ClearPageDirty.exit

if.end.i23.i303:                                  ; preds = %do.end8.i300
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %212 to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i303, %if.then.i22.i302
  %retval.0.i24.i304 = phi i32 [ %sub.i21.i301, %if.then.i22.i302 ], [ %224, %if.end.i23.i303 ]
  %225 = inttoptr i32 %retval.0.i24.i304 to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %225) #15
  %226 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %page, align 4
  call void @delete_from_page_cache(ptr noundef %227) #15
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %228 = ptrtoint ptr %alloced114 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %alloced114, align 4
  %230 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %swapped.i, align 8
  %232 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %i_mapping, align 8
  %nrpages.i383 = getelementptr inbounds %struct.address_space, ptr %233, i32 0, i32 7
  %234 = ptrtoint ptr %nrpages.i383 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %nrpages.i383, align 4
  %236 = add i32 %235, %231
  %sub1.i384 = sub i32 %229, %236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i384)
  %cmp.i385 = icmp sgt i32 %sub1.i384, 0
  br i1 %cmp.i385, label %if.then.i393, label %ClearPageDirty.exit.shmem_recalc_inode.exit406_crit_edge

ClearPageDirty.exit.shmem_recalc_inode.exit406_crit_edge: ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit406

if.then.i393:                                     ; preds = %ClearPageDirty.exit
  %237 = ptrtoint ptr %alloced114 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %alloced114, align 4
  %mul.i386 = shl i32 %sub1.i384, 3
  %conv.i387 = zext i32 %mul.i386 to i64
  %238 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %i_blocks, align 8
  %sub4.i389 = sub i64 %239, %conv.i387
  store i64 %sub4.i389, ptr %i_blocks, align 8
  %240 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i.i391 = getelementptr inbounds %struct.super_block, ptr %241, i32 0, i32 33
  %242 = ptrtoint ptr %s_fs_info.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %s_fs_info.i.i.i391, align 16
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i.i392 = icmp eq i32 %245, 0
  br i1 %tobool.not.i.i392, label %if.then.i393.if.end.i.i401_crit_edge, label %if.then.i.i397

if.then.i393.if.end.i.i401_crit_edge:             ; preds = %if.then.i393
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i401

if.then.i.i397:                                   ; preds = %if.then.i393
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i394 = getelementptr inbounds %struct.shmem_sb_info, ptr %243, i32 0, i32 1
  %conv.i13.i395 = zext i32 %sub1.i384 to i64
  %sub.i.i.i396 = sub nsw i64 0, %conv.i13.i395
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %246 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i394, i64 noundef %sub.i.i.i396, i32 noundef %246) #15
  br label %if.end.i.i401

if.end.i.i401:                                    ; preds = %if.then.i.i397, %if.then.i393.if.end.i.i401_crit_edge
  %247 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i399 = and i32 %248, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i399)
  %tobool.not.i.i.i400 = icmp eq i32 %and.i.i.i399, 0
  br i1 %tobool.not.i.i.i400, label %if.end.i.i401.shmem_recalc_inode.exit406_crit_edge, label %if.then.i.i.i404

if.end.i.i401.shmem_recalc_inode.exit406_crit_edge: ; preds = %if.end.i.i401
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit406

if.then.i.i.i404:                                 ; preds = %if.end.i.i401
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i402 = sub nsw i32 0, %sub1.i384
  %conv.i.i.i.i.i403 = sext i32 %sub.i.i.i.i402 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %249 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i403, i32 noundef %249) #15
  br label %shmem_recalc_inode.exit406

shmem_recalc_inode.exit406:                       ; preds = %if.then.i.i.i404, %if.end.i.i401.shmem_recalc_inode.exit406_crit_edge, %ClearPageDirty.exit.shmem_recalc_inode.exit406_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  br label %unlock

out:                                              ; preds = %land.lhs.true164.out_crit_edge, %if.end161.out_crit_edge, %clear.out_crit_edge, %shmem_recalc_inode.exit.out_crit_edge, %PageUptodate.exit
  %hindex.1 = phi i32 [ %11, %PageUptodate.exit ], [ %index, %shmem_recalc_inode.exit.out_crit_edge ], [ %hindex.0, %clear.out_crit_edge ], [ %hindex.0, %if.end161.out_crit_edge ], [ %hindex.0, %land.lhs.true164.out_crit_edge ]
  %250 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %page, align 4
  %add.ptr177 = getelementptr %struct.page, ptr %251, i32 %index
  %idx.neg = sub i32 0, %hindex.1
  %add.ptr178 = getelementptr %struct.page, ptr %add.ptr177, i32 %idx.neg
  %252 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %add.ptr178, ptr %pagep, align 4
  br label %cleanup200

unacct:                                           ; preds = %if.end107
  %253 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load volatile i32, ptr %133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %254)
  %cmp.i.not.i.i407 = icmp eq i32 %254, -1
  br i1 %cmp.i.not.i.i407, label %if.then.i.i408, label %PageHead.exit.i410, !prof !234

if.then.i.i408:                                   ; preds = %unacct
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %133, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i410:                               ; preds = %unacct
  %255 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %133, align 4
  %257 = and i32 %256, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool.not.i409 = icmp eq i32 %257, 0
  br i1 %tobool.not.i409, label %PageHead.exit.i410.compound_nr.exit414_crit_edge, label %if.end.i412

PageHead.exit.i410.compound_nr.exit414_crit_edge: ; preds = %PageHead.exit.i410
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_nr.exit414

if.end.i412:                                      ; preds = %PageHead.exit.i410
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i411 = getelementptr %struct.page, ptr %133, i32 1, i32 1, i32 0, i32 2
  %258 = ptrtoint ptr %compound_nr.i411 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %compound_nr.i411, align 4
  br label %compound_nr.exit414

compound_nr.exit414:                              ; preds = %if.end.i412, %PageHead.exit.i410.compound_nr.exit414_crit_edge
  %retval.0.i413 = phi i32 [ %259, %if.end.i412 ], [ 1, %PageHead.exit.i410.compound_nr.exit414_crit_edge ]
  %260 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %261, i32 0, i32 33
  %262 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %s_fs_info.i.i, align 16
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i415 = icmp eq i32 %265, 0
  br i1 %tobool.not.i415, label %compound_nr.exit414.if.end.i421_crit_edge, label %if.then.i418

compound_nr.exit414.if.end.i421_crit_edge:        ; preds = %compound_nr.exit414
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i421

if.then.i418:                                     ; preds = %compound_nr.exit414
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %263, i32 0, i32 1
  %conv.i416 = sext i32 %retval.0.i413 to i64
  %sub.i.i417 = sub nsw i64 0, %conv.i416
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %266 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i, i64 noundef %sub.i.i417, i32 noundef %266) #15
  br label %if.end.i421

if.end.i421:                                      ; preds = %if.then.i418, %compound_nr.exit414.if.end.i421_crit_edge
  %267 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flags.i.i, align 8
  %and.i.i419 = and i32 %268, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i419)
  %tobool.not.i.i420 = icmp eq i32 %and.i.i419, 0
  br i1 %tobool.not.i.i420, label %if.end.i421.unlock_crit_edge, label %if.then.i.i423

if.end.i421.unlock_crit_edge:                     ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.then.i.i423:                                   ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i422 = sub i32 0, %retval.0.i413
  %conv.i.i.i.i = sext i32 %sub.i.i.i422 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %269 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i, i32 noundef %269) #15
  br label %unlock

unlock:                                           ; preds = %if.then.i.i423, %if.end.i421.unlock_crit_edge, %shmem_recalc_inode.exit406, %if.then170.unlock_crit_edge
  %error.0.ph.ph = phi i32 [ -22, %shmem_recalc_inode.exit406 ], [ -22, %if.then170.unlock_crit_edge ], [ %call109, %if.end.i421.unlock_crit_edge ], [ %call109, %if.then.i.i423 ]
  %alloced.2.ph.ph = phi i32 [ %alloced.1, %shmem_recalc_inode.exit406 ], [ 0, %if.then170.unlock_crit_edge ], [ %alloced.0.ph509, %if.end.i421.unlock_crit_edge ], [ %alloced.0.ph509, %if.then.i.i423 ]
  %270 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pr.pr = load ptr, ptr %page, align 4
  %tobool184.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool184.not, label %unlock.if.end186_crit_edge, label %if.then185

unlock.if.end186_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then185:                                       ; preds = %unlock
  call void @unlock_page(ptr noundef nonnull %.pr.pr) #15
  %271 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %page, align 4
  %273 = getelementptr inbounds %struct.page, ptr %272, i32 0, i32 1
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile i32, ptr %273, align 4
  %and.i.i424 = and i32 %275, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i424)
  %tobool.not.i.i425 = icmp eq i32 %and.i.i424, 0
  br i1 %tobool.not.i.i425, label %if.end.i.i428, label %if.then.i.i427, !prof !231

if.then.i.i427:                                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i426 = add i32 %275, -1
  br label %_compound_head.exit.i433

if.end.i.i428:                                    ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #17
  %276 = ptrtoint ptr %272 to i32
  br label %_compound_head.exit.i433

_compound_head.exit.i433:                         ; preds = %if.end.i.i428, %if.then.i.i427
  %retval.0.i.i429 = phi i32 [ %sub.i.i426, %if.then.i.i427 ], [ %276, %if.end.i.i428 ]
  %277 = inttoptr i32 %retval.0.i.i429 to ptr
  %_refcount.i.i.i.i.i430 = getelementptr inbounds %struct.page, ptr %277, i32 0, i32 3
  %call.i.i.i.i.i.i.i431 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i430, i32 noundef 4) #15
  %278 = ptrtoint ptr %_refcount.i.i.i.i.i430 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile i32, ptr %_refcount.i.i.i.i.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp.i.i.i.i432 = icmp eq i32 %279, 0
  br i1 %cmp.i.i.i.i432, label %if.then.i.i.i.i434, label %do.end5.i.i.i.i438, !prof !234

if.then.i.i.i.i434:                               ; preds = %_compound_head.exit.i433
  call void @__sanitizer_cov_trace_pc() #17
  %280 = inttoptr i32 %retval.0.i.i429 to ptr
  call void @dump_page(ptr noundef %280, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i438:                               ; preds = %_compound_head.exit.i433
  %call.i.i.i10.i.i.i.i435 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i430, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i430, i32 1, i32 3, i32 1) #15
  %281 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i430, ptr %_refcount.i.i.i.i.i430, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i430) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i436 = extractvalue { i32, i32 } %281, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i436)
  %cmp.i.i.i.i.i.i.i437 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i436, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_getpage_gfp, %if.then.i.i.i.i.i440)) #15
          to label %folio_put_testzero.exit.i.i441 [label %if.then.i.i.i.i.i440], !srcloc !239

if.then.i.i.i.i.i440:                             ; preds = %do.end5.i.i.i.i438
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i439 = zext i1 %cmp.i.i.i.i.i.i.i437 to i32
  call void @__page_ref_mod_and_test(ptr noundef %277, i32 noundef -1, i32 noundef %conv.i.i.i.i.i439) #15
  br label %folio_put_testzero.exit.i.i441

folio_put_testzero.exit.i.i441:                   ; preds = %if.then.i.i.i.i.i440, %do.end5.i.i.i.i438
  br i1 %cmp.i.i.i.i.i.i.i437, label %if.then.i4.i442, label %folio_put_testzero.exit.i.i441.if.end186_crit_edge

folio_put_testzero.exit.i.i441.if.end186_crit_edge: ; preds = %folio_put_testzero.exit.i.i441
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then.i4.i442:                                  ; preds = %folio_put_testzero.exit.i.i441
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %277) #15
  br label %if.end186

if.end186:                                        ; preds = %if.then.i4.i442, %folio_put_testzero.exit.i.i441.if.end186_crit_edge, %unlock.if.end186_crit_edge, %if.then79.if.end186_crit_edge
  %alloced.2.ph634 = phi i32 [ %alloced.2.ph.ph, %if.then.i4.i442 ], [ %alloced.2.ph.ph, %folio_put_testzero.exit.i.i441.if.end186_crit_edge ], [ %alloced.2.ph.ph, %unlock.if.end186_crit_edge ], [ %alloced.0.ph509, %if.then79.if.end186_crit_edge ]
  %error.0.ph633 = phi i32 [ %error.0.ph.ph, %if.then.i4.i442 ], [ %error.0.ph.ph, %folio_put_testzero.exit.i.i441.if.end186_crit_edge ], [ %error.0.ph.ph, %unlock.if.end186_crit_edge ], [ %114, %if.then79.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error.0.ph633)
  %cmp187 = icmp eq i32 %error.0.ph633, -28
  br i1 %cmp187, label %land.lhs.true189, label %if.end186.if.end195_crit_edge

if.end186.if.end195_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

land.lhs.true189:                                 ; preds = %if.end186
  br i1 %tobool191.not, label %if.then192, label %land.lhs.true189.cleanup200_crit_edge

land.lhs.true189.cleanup200_crit_edge:            ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup200

if.then192:                                       ; preds = %land.lhs.true189
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %282 = ptrtoint ptr %alloced114 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %alloced114, align 4
  %284 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %swapped.i, align 8
  %286 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %i_mapping, align 8
  %nrpages.i447 = getelementptr inbounds %struct.address_space, ptr %287, i32 0, i32 7
  %288 = ptrtoint ptr %nrpages.i447 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %nrpages.i447, align 4
  %290 = add i32 %289, %285
  %sub1.i448 = sub i32 %283, %290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i448)
  %cmp.i449 = icmp sgt i32 %sub1.i448, 0
  br i1 %cmp.i449, label %if.then.i457, label %if.then192.shmem_recalc_inode.exit470_crit_edge

if.then192.shmem_recalc_inode.exit470_crit_edge:  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit470

if.then.i457:                                     ; preds = %if.then192
  %291 = ptrtoint ptr %alloced114 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %alloced114, align 4
  %mul.i450 = shl i32 %sub1.i448, 3
  %conv.i451 = zext i32 %mul.i450 to i64
  %292 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %i_blocks, align 8
  %sub4.i453 = sub i64 %293, %conv.i451
  store i64 %sub4.i453, ptr %i_blocks, align 8
  %294 = ptrtoint ptr %i_sb.le to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %i_sb.le, align 4
  %s_fs_info.i.i.i455 = getelementptr inbounds %struct.super_block, ptr %295, i32 0, i32 33
  %296 = ptrtoint ptr %s_fs_info.i.i.i455 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %s_fs_info.i.i.i455, align 16
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.i.i456 = icmp eq i32 %299, 0
  br i1 %tobool.not.i.i456, label %if.then.i457.if.end.i.i465_crit_edge, label %if.then.i.i461

if.then.i457.if.end.i.i465_crit_edge:             ; preds = %if.then.i457
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i465

if.then.i.i461:                                   ; preds = %if.then.i457
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i458 = getelementptr inbounds %struct.shmem_sb_info, ptr %297, i32 0, i32 1
  %conv.i13.i459 = zext i32 %sub1.i448 to i64
  %sub.i.i.i460 = sub nsw i64 0, %conv.i13.i459
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %300 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i458, i64 noundef %sub.i.i.i460, i32 noundef %300) #15
  br label %if.end.i.i465

if.end.i.i465:                                    ; preds = %if.then.i.i461, %if.then.i457.if.end.i.i465_crit_edge
  %301 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i463 = and i32 %302, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i463)
  %tobool.not.i.i.i464 = icmp eq i32 %and.i.i.i463, 0
  br i1 %tobool.not.i.i.i464, label %if.end.i.i465.shmem_recalc_inode.exit470_crit_edge, label %if.then.i.i.i468

if.end.i.i465.shmem_recalc_inode.exit470_crit_edge: ; preds = %if.end.i.i465
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit470

if.then.i.i.i468:                                 ; preds = %if.end.i.i465
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i466 = sub nsw i32 0, %sub1.i448
  %conv.i.i.i.i.i467 = sext i32 %sub.i.i.i.i466 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %303 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i467, i32 noundef %303) #15
  br label %shmem_recalc_inode.exit470

shmem_recalc_inode.exit470:                       ; preds = %if.then.i.i.i468, %if.end.i.i465.shmem_recalc_inode.exit470_crit_edge, %if.then192.shmem_recalc_inode.exit470_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  br label %repeat.outer

if.end195:                                        ; preds = %if.end186.if.end195_crit_edge, %if.then79.if.end195_crit_edge
  %error.0493500 = phi i32 [ %error.0.ph633, %if.end186.if.end195_crit_edge ], [ %114, %if.then79.if.end195_crit_edge ]
  %alloced.2494499 = phi i32 [ %alloced.2.ph634, %if.end186.if.end195_crit_edge ], [ %alloced.0.ph509, %if.then79.if.end195_crit_edge ]
  %cmp196 = icmp eq i32 %error.0493500, -17
  br i1 %cmp196, label %if.end195.repeat.outer508_crit_edge, label %if.end195.cleanup200.loopexit750_crit_edge

if.end195.cleanup200.loopexit750_crit_edge:       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup200.loopexit750

if.end195.repeat.outer508_crit_edge:              ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %repeat.outer508

cleanup200.loopexit750:                           ; preds = %if.end195.cleanup200.loopexit750_crit_edge, %if.end47.cleanup200.loopexit750_crit_edge
  %retval.0.ph = phi i32 [ %sgp, %if.end47.cleanup200.loopexit750_crit_edge ], [ %error.0493500, %if.end195.cleanup200.loopexit750_crit_edge ]
  br label %cleanup200

cleanup200:                                       ; preds = %cleanup200.loopexit750, %land.lhs.true189.cleanup200_crit_edge, %out, %if.then60, %if.end47.cleanup200_crit_edge, %if.end47.thread, %if.end30, %land.lhs.true.cleanup200_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end30 ], [ 0, %out ], [ 0, %if.then60 ], [ 0, %if.end47.thread ], [ %retval.0.ph, %cleanup200.loopexit750 ], [ -2, %if.end47.cleanup200_crit_edge ], [ -22, %land.lhs.true.cleanup200_crit_edge ], [ -28, %land.lhs.true189.cleanup200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vma_is_shmem(ptr nocapture noundef readonly %vma) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_ops, align 4
  %cmp = icmp eq ptr %1, @shmem_vm_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @shmem_charge(ptr noundef %inode, i32 noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr i8, ptr %inode, i32 -88
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %shmem_acct_block.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

shmem_acct_block.exit.i:                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm.i.i, align 8
  %call1.i.i = tail call i32 @security_vm_enough_memory_mm(ptr noundef %11, i32 noundef %pages) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %shmem_acct_block.exit.i.if.end.i_crit_edge, label %shmem_acct_block.exit.i.cleanup_crit_edge

shmem_acct_block.exit.i.cleanup_crit_edge:        ; preds = %shmem_acct_block.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

shmem_acct_block.exit.i.if.end.i_crit_edge:       ; preds = %shmem_acct_block.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %shmem_acct_block.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %if.then4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 1
  %sub.i = sub i32 %13, %pages
  %conv.i = zext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %14 = load i32, ptr @percpu_counter_batch, align 4
  %call.i.i = tail call i32 @__percpu_counter_compare(ptr noundef %used_blocks.i, i64 noundef %conv.i, i32 noundef %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i, label %unacct.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.i = sext i32 %pages to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %15 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i, i64 noundef %conv11.i, i32 noundef %15) #15
  br label %if.end

unacct.i:                                         ; preds = %if.then4.i
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i23.i = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i24.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i24.i, label %unacct.i.cleanup_crit_edge, label %if.then.i.i

unacct.i.cleanup_crit_edge:                       ; preds = %unacct.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i:                                      ; preds = %unacct.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = sub i32 0, %pages
  %conv.i.i.i.i = sext i32 %sub.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %18 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i, i32 noundef %18) #15
  br label %cleanup

if.end:                                           ; preds = %if.end9.i, %if.end.i.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nrpages, align 4
  %add = add i32 %22, %pages
  store i32 %add, ptr %nrpages, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #15
  %alloced = getelementptr i8, ptr %inode, i32 -84
  %23 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alloced, align 4
  %add7 = add i32 %24, %pages
  store i32 %add7, ptr %alloced, align 4
  %mul = shl i32 %pages, 3
  %conv8 = zext i32 %mul to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %25 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_blocks, align 8
  %add9 = add i64 %26, %conv8
  store i64 %add9, ptr %i_blocks, align 8
  %swapped.i = getelementptr i8, ptr %inode, i32 -80
  %27 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swapped.i, align 8
  %29 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nrpages.i, align 4
  %33 = add i32 %32, %28
  %sub1.i = sub i32 %add7, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i21 = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i21, label %if.then.i, label %if.end.shmem_recalc_inode.exit_crit_edge

if.end.shmem_recalc_inode.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i:                                        ; preds = %if.end
  %34 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %alloced, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i22 = zext i32 %mul.i to i64
  %sub4.i = sub i64 %add9, %conv.i22
  %35 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub4.i, ptr %i_blocks, align 8
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i23 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i23, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i25

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i25:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %39, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i24 = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %42 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i24, i32 noundef %42) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i25, %if.then.i.if.end.i.i_crit_edge
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 8
  %and.i.i.i26 = and i32 %44, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i26, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.shmem_recalc_inode.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %45 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %45) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i, %if.end.i.i.shmem_recalc_inode.exit_crit_edge, %if.end.shmem_recalc_inode.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %shmem_recalc_inode.exit, %if.then.i.i, %unacct.i.cleanup_crit_edge, %shmem_acct_block.exit.i.cleanup_crit_edge
  %retval.0.i29 = phi i1 [ true, %shmem_recalc_inode.exit ], [ false, %shmem_acct_block.exit.i.cleanup_crit_edge ], [ false, %unacct.i.cleanup_crit_edge ], [ false, %if.then.i.i ]
  ret i1 %retval.0.i29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmem_recalc_inode(ptr nocapture noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %alloced = getelementptr i8, ptr %inode, i32 -84
  %0 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloced, align 4
  %swapped = getelementptr i8, ptr %inode, i32 -80
  %2 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swapped, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nrpages, align 4
  %8 = add i32 %7, %3
  %sub1 = sub i32 %1, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp sgt i32 %sub1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %alloced, align 4
  %mul = shl i32 %sub1, 3
  %conv = zext i32 %mul to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %10 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_blocks, align 8
  %sub4 = sub i64 %11, %conv
  store i64 %sub4, ptr %i_blocks, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %15, i32 0, i32 1
  %conv.i13 = zext i32 %sub1 to i64
  %sub.i.i = sub nsw i64 0, %conv.i13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %18 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i, i64 noundef %sub.i.i, i32 noundef %18) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %flags.i = getelementptr i8, ptr %inode, i32 -88
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %if.then.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = sub nsw i32 0, %sub1
  %conv.i.i.i.i = sext i32 %sub.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %21 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i, i32 noundef %21) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_uncharge(ptr noundef %inode, i32 noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #15
  %alloced = getelementptr i8, ptr %inode, i32 -84
  %0 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloced, align 4
  %sub = sub i32 %1, %pages
  store i32 %sub, ptr %alloced, align 4
  %mul = shl i32 %pages, 3
  %conv6 = zext i32 %mul to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %2 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_blocks, align 8
  %sub7 = sub i64 %3, %conv6
  store i64 %sub7, ptr %i_blocks, align 8
  %swapped.i = getelementptr i8, ptr %inode, i32 -80
  %4 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %swapped.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nrpages.i, align 4
  %10 = add i32 %9, %5
  %sub1.i = sub i32 %sub, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.shmem_recalc_inode.exit_crit_edge

entry.shmem_recalc_inode.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %alloced, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i = zext i32 %mul.i to i64
  %sub4.i = sub i64 %sub7, %conv.i
  %12 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub4.i, ptr %i_blocks, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %16, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %19 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i, i32 noundef %19) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %flags.i.i = getelementptr i8, ptr %inode, i32 -88
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.shmem_recalc_inode.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %22 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %22) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i, %if.end.i.i.shmem_recalc_inode.exit_crit_edge, %entry.shmem_recalc_inode.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call3) #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %shmem_recalc_inode.exit.if.end.i_crit_edge, label %if.then.i17

shmem_recalc_inode.exit.if.end.i_crit_edge:       ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i17:                                      ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %26, i32 0, i32 1
  %conv.i16 = sext i32 %pages to i64
  %sub.i.i = sub nsw i64 0, %conv.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %29 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i, i64 noundef %sub.i.i, i32 noundef %29) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i17, %shmem_recalc_inode.exit.if.end.i_crit_edge
  %flags.i = getelementptr i8, ptr %inode, i32 -88
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i18, label %if.end.i.shmem_inode_unacct_blocks.exit_crit_edge, label %if.then.i.i20

if.end.i.shmem_inode_unacct_blocks.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_inode_unacct_blocks.exit

if.then.i.i20:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i19 = sub i32 0, %pages
  %conv.i.i.i.i = sext i32 %sub.i.i.i19 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %32 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i, i32 noundef %32) #15
  br label %shmem_inode_unacct_blocks.exit

shmem_inode_unacct_blocks.exit:                   ; preds = %if.then.i.i20, %if.end.i.shmem_inode_unacct_blocks.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @shmem_is_huge(ptr nocapture readnone %vma, ptr nocapture readnone %inode, i32 %index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_partial_swap_usage(ptr noundef %mapping, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #15
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i_pages, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sub = add i32 %end, -1
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %sub) #15
  %tobool.not25 = icmp eq ptr %call, null
  br i1 %tobool.not25, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %swapped.027 = phi i32 [ %swapped.2, %for.inc.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %page.026 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %magicptr.i = ptrtoint ptr %page.026 to i32
  %15 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %magicptr.i, label %if.end [
    i32 1030, label %for.body.for.inc_crit_edge
    i32 1026, label %if.end4.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and.i = and i32 %magicptr.i, 1
  %spec.select = add i32 %and.i, %swapped.027
  %17 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 16384
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @xas_pause(ptr noundef nonnull %xas) #15
  call fastcc void @cond_resched_rcu()
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge, %if.end4.i, %for.body.for.inc_crit_edge
  %swapped.2 = phi i32 [ %spec.select, %if.then6 ], [ %spec.select, %if.end.for.inc_crit_edge ], [ %swapped.027, %if.end4.i ], [ %swapped.027, %for.body.for.inc_crit_edge ]
  %call9 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %sub)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %swapped.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %swapped.2, %for.inc.for.end_crit_edge ]
  %call.i15 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i15, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end
  %call1.i16 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !249
  %22 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i22 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %shl = shl i32 %swapped.0.lcssa, 12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #15
  ret i32 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cond_resched_rcu() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !249
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 2089, i32 noundef 0) #15
  %call.i10 = tail call i32 @__cond_resched() #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %xas, i32 noundef %max) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %0 = ptrtoint ptr %xa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_node, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false, !prof !234

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.cleanup.sink.split_crit_edge, !prof !231

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %5 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xa_offset, align 2
  %conv2 = zext i8 %6 to i32
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %7 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_index, align 4
  %and = and i32 %8, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv2)
  %cmp.not = icmp eq i32 %and, %conv2
  br i1 %cmp.not, label %lor.rhs.do.body_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !231

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %lor.rhs.do.body_crit_edge
  %9 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max)
  %cmp8.not = icmp ult i32 %10, %max
  br i1 %cmp8.not, label %if.end18, label %do.body.cleanup.sink.split_crit_edge, !prof !231

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.body
  %11 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xa_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %12)
  %cmp21 = icmp eq i8 %12, 63
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end31, !prof !234

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end18
  %conv20 = zext i8 %12 to i32
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  %add = add nuw nsw i32 %conv20, 1
  %arrayidx.i = getelementptr %struct.xa_node, ptr %1, i32 0, i32 7, i32 %add
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i73 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i73, label %lor.lhs.false.i, label %if.end31.xa_entry.exit_crit_edge

if.end31.xa_entry.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %call4.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1183, ptr noundef nonnull @.str.22) #15
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end31.xa_entry.exit_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i74 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74)
  %cmp.i = icmp eq i32 %and.i74, 2
  br i1 %cmp.i, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %if.end44, !prof !234

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end44:                                         ; preds = %xa_entry.exit
  %18 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xa_offset, align 2
  %inc = add i8 %19, 1
  store i8 %inc, ptr %xa_offset, align 2
  %20 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xa_index, align 4
  %inc47 = add i32 %21, 1
  store i32 %inc47, ptr %xa_index, align 4
  %tobool48.not = icmp eq ptr %16, null
  br i1 %tobool48.not, label %if.end44.do.body_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call43 = tail call ptr @xas_find(ptr noundef %xas, i32 noundef %max) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %cleanup.sink.split ], [ %16, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_swap_usage(ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %swapped2 = getelementptr i8, ptr %3, i32 -80
  %6 = ptrtoint ptr %swapped2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %swapped2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma, align 4
  %sub = sub i32 %11, %13
  %conv = zext i32 %sub to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp.not = icmp sgt i64 %15, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %shl = shl i32 %7, 12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end.i, align 4
  %18 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %17, %19
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %shr.i, %9
  %call10 = tail call i32 @shmem_partial_swap_usage(ptr noundef %5, i32 noundef %9, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end6 ], [ %shl, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_unlock_mapping(ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #15
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #15
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index, align 4
  %2 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %3 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %flags.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %mapping, null
  br label %while.cond

while.cond:                                       ; preds = %pagevec_release.exit, %entry
  br i1 %tobool.not.i, label %while.cond.while.body_crit_edge, label %mapping_unevictable.exit

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

mapping_unevictable.exit:                         ; preds = %while.cond
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mapping_unevictable.exit.while.body_crit_edge, label %mapping_unevictable.exit.while.end_crit_edge

mapping_unevictable.exit.while.end_crit_edge:     ; preds = %mapping_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

mapping_unevictable.exit.while.body_crit_edge:    ; preds = %mapping_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %mapping_unevictable.exit.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call.i = call i32 @pagevec_lookup_range(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @check_move_unevictable_pages(ptr noundef nonnull %pvec) #15
  %7 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i4 = icmp eq i8 %8, 0
  br i1 %tobool.not.i4, label %if.end.pagevec_release.exit_crit_edge, label %if.then.i

if.end.pagevec_release.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %pagevec_release.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__pagevec_release(ptr noundef nonnull %pvec) #15
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i, %if.end.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 880, i32 noundef 0) #15
  %call.i5 = call i32 @__cond_resched() #15
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %mapping_unevictable.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_move_unevictable_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmem_truncate_range(ptr noundef %inode, i64 noundef %lstart, i64 noundef %lend) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @shmem_undo_range(ptr noundef %inode, i64 noundef %lstart, i64 noundef %lend, i1 noundef zeroext false)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #15
  %0 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %1 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmem_undo_range(ptr noundef %inode, i64 noundef %lstart, i64 noundef %lend, i1 noundef zeroext %unfalloc) unnamed_addr #0 align 64 {
entry:
  %page.i282 = alloca ptr, align 4
  %page.i = alloca ptr, align 4
  %fbatch = alloca %struct.folio_batch, align 4
  %indices = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  %sub = add i64 %lstart, 4095
  %2 = lshr i64 %sub, 12
  %conv = trunc i64 %2 to i32
  %add1 = add i64 %lend, 1
  %3 = lshr i64 %add1, 12
  %conv3 = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fbatch) #15
  %4 = call ptr @memset(ptr %fbatch, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %indices) #15
  %5 = call ptr @memset(ptr %indices, i32 255, i32 60)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lend)
  %cmp = icmp eq i64 %lend, -1
  %spec.select = select i1 %cmp, i32 -1, i32 %conv3
  %fallocend = getelementptr i8, ptr %inode, i32 -76
  %6 = ptrtoint ptr %fallocend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fallocend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp5 = icmp ule i32 %7, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp8.not = icmp ugt i32 %7, %spec.select
  %or.cond = or i1 %cmp5, %cmp8.not
  %brmerge = or i1 %or.cond, %unfalloc
  br i1 %brmerge, label %entry.if.end13_crit_edge, label %if.then11

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %fallocend to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %fallocend, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %entry.if.end13_crit_edge
  %9 = ptrtoint ptr %fbatch to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fbatch, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.folio_batch, ptr %fbatch, i32 0, i32 1
  %10 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv)
  %cmp14428 = icmp ugt i32 %spec.select, %conv
  br i1 %cmp14428, label %land.rhs.lr.ph, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end13
  %sub16 = add i32 %spec.select, -1
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %folio_batch_release.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %index.0430 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %inc41, %folio_batch_release.exit.land.rhs_crit_edge ]
  %nr_swaps_freed.0429 = phi i32 [ 0, %land.rhs.lr.ph ], [ %nr_swaps_freed.1.lcssa, %folio_batch_release.exit.land.rhs_crit_edge ]
  %call17 = call i32 @find_lock_entries(ptr noundef %1, i32 noundef %index.0430, i32 noundef %sub16, ptr noundef nonnull %fbatch, ptr noundef nonnull %indices) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.rhs.while.end_crit_edge, label %for.cond.preheader

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

for.cond.preheader:                               ; preds = %land.rhs
  %11 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fbatch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp20424.not = icmp eq i8 %12, 0
  br i1 %cmp20424.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0426 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nr_swaps_freed.1425 = phi i32 [ %nr_swaps_freed.2, %for.inc.for.body_crit_edge ], [ %nr_swaps_freed.0429, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.folio_batch, ptr %fbatch, i32 0, i32 2, i32 %i.0426
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr [15 x i32], ptr %indices, i32 0, i32 %i.0426
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %17 = ptrtoint ptr %14 to i32
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i255.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i255.not, label %if.end31, label %if.then24

if.then24:                                        ; preds = %for.body
  br i1 %unfalloc, label %if.then24.for.inc_crit_edge, label %if.end27

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end27:                                         ; preds = %if.then24
  call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #15
  %call.i.i = call ptr @__xa_cmpxchg(ptr noundef %i_pages.i, i32 noundef %16, ptr noundef %14, ptr noundef null, i32 noundef 0) #15
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i) #15
  %cmp.not.i = icmp eq ptr %call.i.i, %14
  br i1 %cmp.not.i, label %if.end.i, label %if.end27.shmem_free_swap.exit_crit_edge

if.end27.shmem_free_swap.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_free_swap.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i.i.i = lshr i32 %17, 1
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %shr.i.i.i, 0
  %call3.i = call i32 @free_swap_and_cache([1 x i32] %.fca.0.insert.i) #15
  br label %shmem_free_swap.exit

shmem_free_swap.exit:                             ; preds = %if.end.i, %if.end27.shmem_free_swap.exit_crit_edge
  %lnot.ext = zext i1 %cmp.not.i to i32
  %add30 = add i32 %nr_swaps_freed.1425, %lnot.ext
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i.i.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !234

if.then.i.i.i:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end31
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %14, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i256 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i256, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i = getelementptr %struct.page, ptr %14, i32 1, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %24, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %sub33 = add i32 %16, -1
  %add34 = add i32 %sub33, %retval.0.i.i
  br i1 %unfalloc, label %lor.lhs.false, label %folio_nr_pages.exit.if.then37_crit_edge

folio_nr_pages.exit.if.then37_crit_edge:          ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

lor.lhs.false:                                    ; preds = %folio_nr_pages.exit
  %25 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i257 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i257)
  %tobool.not.i.i258 = icmp eq i32 %and.i.i.i257, 0
  br i1 %tobool.not.i.i258, label %folio_flags.exit.i, label %if.then.i.i259, !prof !231

if.then.i.i259:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i:                               ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %14, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i260.not = icmp eq i32 %30, 0
  br i1 %tobool.i260.not, label %folio_flags.exit.i.if.then37_crit_edge, label %folio_test_uptodate.exit.thread

folio_flags.exit.i.if.then37_crit_edge:           ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end39

if.then37:                                        ; preds = %folio_flags.exit.i.if.then37_crit_edge, %folio_nr_pages.exit.if.then37_crit_edge
  %call38 = call i32 @truncate_inode_folio(ptr noundef %1, ptr noundef %14) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %folio_test_uptodate.exit.thread
  call void @folio_unlock(ptr noundef %14) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %shmem_free_swap.exit, %if.then24.for.inc_crit_edge
  %nr_swaps_freed.2 = phi i32 [ %nr_swaps_freed.1425, %if.then24.for.inc_crit_edge ], [ %add30, %shmem_free_swap.exit ], [ %nr_swaps_freed.1425, %if.end39 ]
  %index.2 = phi i32 [ %16, %if.then24.for.inc_crit_edge ], [ %16, %shmem_free_swap.exit ], [ %add34, %if.end39 ]
  %inc = add nuw nsw i32 %i.0426, 1
  %31 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fbatch, align 4
  %conv.i = zext i8 %32 to i32
  %cmp20 = icmp ult i32 %inc, %conv.i
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_swaps_freed.1.lcssa = phi i32 [ %nr_swaps_freed.0429, %for.cond.preheader.for.end_crit_edge ], [ %nr_swaps_freed.2, %for.inc.for.end_crit_edge ]
  %index.1.lcssa = phi i32 [ %index.0430, %for.cond.preheader.for.end_crit_edge ], [ %index.2, %for.inc.for.end_crit_edge ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %fbatch) #15
  %33 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fbatch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i262 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i262, label %for.end.folio_batch_release.exit_crit_edge, label %if.then.i.i263

for.end.folio_batch_release.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_batch_release.exit

if.then.i.i263:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__pagevec_release(ptr noundef nonnull %fbatch) #15
  br label %folio_batch_release.exit

folio_batch_release.exit:                         ; preds = %if.then.i.i263, %for.end.folio_batch_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 955, i32 noundef 0) #15
  %call.i = call i32 @__cond_resched() #15
  %inc41 = add i32 %index.1.lcssa, 1
  %cmp14 = icmp ult i32 %inc41, %spec.select
  br i1 %cmp14, label %folio_batch_release.exit.land.rhs_crit_edge, label %folio_batch_release.exit.while.end_crit_edge

folio_batch_release.exit.while.end_crit_edge:     ; preds = %folio_batch_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

folio_batch_release.exit.land.rhs_crit_edge:      ; preds = %folio_batch_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

while.end:                                        ; preds = %folio_batch_release.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end13.while.end_crit_edge
  %nr_swaps_freed.0.lcssa = phi i32 [ 0, %if.end13.while.end_crit_edge ], [ %nr_swaps_freed.1.lcssa, %folio_batch_release.exit.while.end_crit_edge ], [ %nr_swaps_freed.0429, %land.rhs.while.end_crit_edge ]
  %shr42 = ashr i64 %lstart, 12
  %shr43 = ashr i64 %lend, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr42, i64 %shr43)
  %cmp44 = icmp eq i64 %shr42, %shr43
  %conv48 = trunc i64 %shr42 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #15
  %35 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping, align 8
  %call.i264 = call ptr @__filemap_get_folio(ptr noundef %36, i32 noundef %conv48, i32 noundef 258, i32 noundef 0) #15
  %37 = ptrtoint ptr %call.i264 to i32
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %while.end.shmem_get_partial_folio.exit_crit_edge, label %if.end.i265

while.end.shmem_get_partial_folio.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_get_partial_folio.exit

if.end.i265:                                      ; preds = %while.end
  %38 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %page.i, align 4
  %39 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gfp_mask.i.i.i, align 4
  %call1.i.i = call fastcc i32 @shmem_getpage_gfp(ptr noundef %inode, i32 noundef %conv48, ptr noundef nonnull %page.i, i32 noundef 0, i32 noundef %42, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %43 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %shmem_get_partial_folio.exit.thread, label %cond.true.i

shmem_get_partial_folio.exit.thread:              ; preds = %if.end.i265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #15
  br i1 %cmp44, label %shmem_get_partial_folio.exit.thread.if.end84_crit_edge, label %shmem_get_partial_folio.exit.thread.if.then72_crit_edge

shmem_get_partial_folio.exit.thread.if.then72_crit_edge: ; preds = %shmem_get_partial_folio.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then72

shmem_get_partial_folio.exit.thread.if.end84_crit_edge: ; preds = %shmem_get_partial_folio.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

cond.true.i:                                      ; preds = %if.end.i265
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i8.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i.i266 = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i.i266, label %if.end.i.i268, label %if.then.i.i267, !prof !231

if.then.i.i267:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %47, -1
  br label %_compound_head.exit.i

if.end.i.i268:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %44 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i268, %if.then.i.i267
  %retval.0.i.i269 = phi i32 [ %sub.i.i, %if.then.i.i267 ], [ %48, %if.end.i.i268 ]
  %49 = inttoptr i32 %retval.0.i.i269 to ptr
  br label %shmem_get_partial_folio.exit

shmem_get_partial_folio.exit:                     ; preds = %_compound_head.exit.i, %while.end.shmem_get_partial_folio.exit_crit_edge
  %retval.0.i270 = phi ptr [ %call.i264, %while.end.shmem_get_partial_folio.exit_crit_edge ], [ %49, %_compound_head.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #15
  %tobool50.not = icmp eq ptr %retval.0.i270, null
  br i1 %tobool50.not, label %shmem_get_partial_folio.exit.if.end70_crit_edge, label %if.then51

shmem_get_partial_folio.exit.if.end70_crit_edge:  ; preds = %shmem_get_partial_folio.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then51:                                        ; preds = %shmem_get_partial_folio.exit
  %index.i.i = getelementptr inbounds %struct.page, ptr %retval.0.i270, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %51 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %52 = ptrtoint ptr %retval.0.i270 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %retval.0.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i.i.i.i = icmp eq i32 %53, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %retval.0.i270, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.then51
  %54 = ptrtoint ptr %retval.0.i270 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %retval.0.i270, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %57 = getelementptr %struct.page, ptr %retval.0.i270, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.13, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %59 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv54 = zext i32 %shl.i to i64
  %add55 = add nuw nsw i64 %shl.i.i, %conv54
  call void @__sanitizer_cov_trace_cmp8(i64 %add55, i64 %lend)
  %cmp56 = icmp sgt i64 %add55, %lend
  %call59 = call zeroext i1 @folio_mark_dirty(ptr noundef nonnull %retval.0.i270) #15
  %call60 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %retval.0.i270, i64 noundef %lstart, i64 noundef %lend) #15
  br i1 %call60, label %folio_size.exit.if.end69_crit_edge, label %if.then61

folio_size.exit.if.end69_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then61:                                        ; preds = %folio_size.exit
  %60 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index.i.i, align 4
  %62 = ptrtoint ptr %retval.0.i270 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %retval.0.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.not.i.i.i271 = icmp eq i32 %63, -1
  br i1 %cmp.i.not.i.i.i271, label %if.then.i.i.i272, label %PageHead.exit.i.i274, !prof !234

if.then.i.i.i272:                                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %retval.0.i270, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i.i274:                             ; preds = %if.then61
  %64 = ptrtoint ptr %retval.0.i270 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %retval.0.i270, align 4
  %66 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i273 = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i273, label %PageHead.exit.i.i274.folio_nr_pages.exit278_crit_edge, label %if.end.i.i276

PageHead.exit.i.i274.folio_nr_pages.exit278_crit_edge: ; preds = %PageHead.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_nr_pages.exit278

if.end.i.i276:                                    ; preds = %PageHead.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i275 = getelementptr %struct.page, ptr %retval.0.i270, i32 1, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %compound_nr.i.i275 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %compound_nr.i.i275, align 4
  br label %folio_nr_pages.exit278

folio_nr_pages.exit278:                           ; preds = %if.end.i.i276, %PageHead.exit.i.i274.folio_nr_pages.exit278_crit_edge
  %retval.0.i.i277 = phi i32 [ %68, %if.end.i.i276 ], [ 1, %PageHead.exit.i.i274.folio_nr_pages.exit278_crit_edge ]
  %add64 = add i32 %retval.0.i.i277, %61
  %spec.select380 = select i1 %cmp56, i32 %61, i32 %spec.select
  br label %if.end69

if.end69:                                         ; preds = %folio_nr_pages.exit278, %folio_size.exit.if.end69_crit_edge
  %start.0 = phi i32 [ %conv, %folio_size.exit.if.end69_crit_edge ], [ %add64, %folio_nr_pages.exit278 ]
  %end.1 = phi i32 [ %spec.select, %folio_size.exit.if.end69_crit_edge ], [ %spec.select380, %folio_nr_pages.exit278 ]
  call void @folio_unlock(ptr noundef nonnull %retval.0.i270) #15
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %retval.0.i270, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %69 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i279, label %do.end5.i.i.i, !prof !234

if.then.i.i.i279:                                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %retval.0.i270, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i:                                    ; preds = %if.end69
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_undo_range, %if.then.i.i.i.i280)) #15
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i280], !srcloc !239

if.then.i.i.i.i280:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %retval.0.i270, i32 noundef -1, i32 noundef %conv.i.i.i.i) #15
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i280, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.if.end70_crit_edge

folio_put_testzero.exit.i.if.end70_crit_edge:     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__put_page(ptr noundef nonnull %retval.0.i270) #15
  br i1 %cmp56, label %if.then.i.if.end84_crit_edge, label %if.then.i.if.then72_crit_edge

if.then.i.if.then72_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then72

if.then.i.if.end84_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.end70:                                         ; preds = %folio_put_testzero.exit.i.if.end70_crit_edge, %shmem_get_partial_folio.exit.if.end70_crit_edge
  %start.1 = phi i32 [ %conv, %shmem_get_partial_folio.exit.if.end70_crit_edge ], [ %start.0, %folio_put_testzero.exit.i.if.end70_crit_edge ]
  %end.2 = phi i32 [ %spec.select, %shmem_get_partial_folio.exit.if.end70_crit_edge ], [ %end.1, %folio_put_testzero.exit.i.if.end70_crit_edge ]
  %same_folio.0.in = phi i1 [ %cmp44, %shmem_get_partial_folio.exit.if.end70_crit_edge ], [ %cmp56, %folio_put_testzero.exit.i.if.end70_crit_edge ]
  br i1 %same_folio.0.in, label %if.end70.if.end84_crit_edge, label %if.end70.if.then72_crit_edge

if.end70.if.then72_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then72

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then72:                                        ; preds = %if.end70.if.then72_crit_edge, %if.then.i.if.then72_crit_edge, %shmem_get_partial_folio.exit.thread.if.then72_crit_edge
  %end.2366 = phi i32 [ %spec.select, %shmem_get_partial_folio.exit.thread.if.then72_crit_edge ], [ %end.2, %if.end70.if.then72_crit_edge ], [ %end.1, %if.then.i.if.then72_crit_edge ]
  %start.1364 = phi i32 [ %conv, %shmem_get_partial_folio.exit.thread.if.then72_crit_edge ], [ %start.1, %if.end70.if.then72_crit_edge ], [ %start.0, %if.then.i.if.then72_crit_edge ]
  %conv74 = trunc i64 %shr43 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i282) #15
  %72 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_mapping, align 8
  %call.i284 = call ptr @__filemap_get_folio(ptr noundef %73, i32 noundef %conv74, i32 noundef 258, i32 noundef 0) #15
  %74 = ptrtoint ptr %call.i284 to i32
  %and.i.i285 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i285)
  %tobool.i.not.i286 = icmp eq i32 %and.i.i285, 0
  br i1 %tobool.i.not.i286, label %if.then72.if.end76_crit_edge, label %if.end.i290

if.then72.if.end76_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.end.i290:                                      ; preds = %if.then72
  %75 = ptrtoint ptr %page.i282 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %page.i282, align 4
  %76 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i.i287 = getelementptr inbounds %struct.address_space, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %gfp_mask.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gfp_mask.i.i.i287, align 4
  %call1.i.i288 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %inode, i32 noundef %conv74, ptr noundef nonnull %page.i282, i32 noundef 0, i32 noundef %79, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %80 = ptrtoint ptr %page.i282 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %page.i282, align 4
  %tobool.not.i289 = icmp eq ptr %81, null
  br i1 %tobool.not.i289, label %if.end76.thread375, label %cond.true.i293

if.end76.thread375:                               ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i282) #15
  br label %if.end84

cond.true.i293:                                   ; preds = %if.end.i290
  %82 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %and.i8.i291 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i291)
  %tobool.not.i.i292 = icmp eq i32 %and.i8.i291, 0
  br i1 %tobool.not.i.i292, label %if.end.i.i296, label %if.then.i.i295, !prof !231

if.then.i.i295:                                   ; preds = %cond.true.i293
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i294 = add i32 %84, -1
  br label %_compound_head.exit.i298

if.end.i.i296:                                    ; preds = %cond.true.i293
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %81 to i32
  br label %_compound_head.exit.i298

_compound_head.exit.i298:                         ; preds = %if.end.i.i296, %if.then.i.i295
  %retval.0.i.i297 = phi i32 [ %sub.i.i294, %if.then.i.i295 ], [ %85, %if.end.i.i296 ]
  %86 = inttoptr i32 %retval.0.i.i297 to ptr
  br label %if.end76

if.end76:                                         ; preds = %_compound_head.exit.i298, %if.then72.if.end76_crit_edge
  %retval.0.i299 = phi ptr [ %call.i284, %if.then72.if.end76_crit_edge ], [ %86, %_compound_head.exit.i298 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i282) #15
  %tobool77.not = icmp eq ptr %retval.0.i299, null
  br i1 %tobool77.not, label %if.end76.if.end84_crit_edge, label %if.then78

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then78:                                        ; preds = %if.end76
  %call79 = call zeroext i1 @folio_mark_dirty(ptr noundef nonnull %retval.0.i299) #15
  %call80 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %retval.0.i299, i64 noundef %lstart, i64 noundef %lend) #15
  br i1 %call80, label %if.then78.if.end83_crit_edge, label %if.then81

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  %index82 = getelementptr inbounds %struct.anon.96, ptr %retval.0.i299, i32 0, i32 3
  %87 = ptrtoint ptr %index82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then78.if.end83_crit_edge
  %end.3 = phi i32 [ %end.2366, %if.then78.if.end83_crit_edge ], [ %88, %if.then81 ]
  call void @folio_unlock(ptr noundef nonnull %retval.0.i299) #15
  %_refcount.i.i.i.i301 = getelementptr inbounds %struct.page, ptr %retval.0.i299, i32 0, i32 3
  %call.i.i.i.i.i.i302 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i301, i32 noundef 4) #15
  %89 = ptrtoint ptr %_refcount.i.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %_refcount.i.i.i.i301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i.i303 = icmp eq i32 %90, 0
  br i1 %cmp.i.i.i303, label %if.then.i.i.i304, label %do.end5.i.i.i308, !prof !234

if.then.i.i.i304:                                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %retval.0.i299, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i308:                                 ; preds = %if.end83
  %call.i.i.i10.i.i.i305 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i301, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i301, i32 1, i32 3, i32 1) #15
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i301, ptr %_refcount.i.i.i.i301, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i301) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i306 = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i306)
  %cmp.i.i.i.i.i.i307 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i306, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_undo_range, %if.then.i.i.i.i310)) #15
          to label %folio_put_testzero.exit.i311 [label %if.then.i.i.i.i310], !srcloc !239

if.then.i.i.i.i310:                               ; preds = %do.end5.i.i.i308
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i309 = zext i1 %cmp.i.i.i.i.i.i307 to i32
  call void @__page_ref_mod_and_test(ptr noundef nonnull %retval.0.i299, i32 noundef -1, i32 noundef %conv.i.i.i.i309) #15
  br label %folio_put_testzero.exit.i311

folio_put_testzero.exit.i311:                     ; preds = %if.then.i.i.i.i310, %do.end5.i.i.i308
  br i1 %cmp.i.i.i.i.i.i307, label %if.then.i312, label %folio_put_testzero.exit.i311.if.end84_crit_edge

folio_put_testzero.exit.i311.if.end84_crit_edge:  ; preds = %folio_put_testzero.exit.i311
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then.i312:                                     ; preds = %folio_put_testzero.exit.i311
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef nonnull %retval.0.i299) #15
  br label %if.end84

if.end84:                                         ; preds = %if.then.i312, %folio_put_testzero.exit.i311.if.end84_crit_edge, %if.end76.if.end84_crit_edge, %if.end76.thread375, %if.end70.if.end84_crit_edge, %if.then.i.if.end84_crit_edge, %shmem_get_partial_folio.exit.thread.if.end84_crit_edge
  %start.1365372 = phi i32 [ %start.1364, %if.end76.if.end84_crit_edge ], [ %start.1364, %if.end76.thread375 ], [ %start.1364, %folio_put_testzero.exit.i311.if.end84_crit_edge ], [ %start.1364, %if.then.i312 ], [ %start.0, %if.then.i.if.end84_crit_edge ], [ %conv, %shmem_get_partial_folio.exit.thread.if.end84_crit_edge ], [ %start.1, %if.end70.if.end84_crit_edge ]
  %end.4 = phi i32 [ %end.2366, %if.end76.if.end84_crit_edge ], [ %end.2366, %if.end76.thread375 ], [ %end.3, %folio_put_testzero.exit.i311.if.end84_crit_edge ], [ %end.3, %if.then.i312 ], [ %end.1, %if.then.i.if.end84_crit_edge ], [ %spec.select, %shmem_get_partial_folio.exit.thread.if.end84_crit_edge ], [ %end.2, %if.end70.if.end84_crit_edge ]
  %sub91 = add i32 %end.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %end.4)
  %cmp99.not = icmp eq i32 %end.4, -1
  %i_pages.i319 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  br label %while.cond85.outer

while.cond85.outer:                               ; preds = %folio_batch_release.exit350, %if.end84
  %nr_swaps_freed.3.ph = phi i32 [ %nr_swaps_freed.4396, %folio_batch_release.exit350 ], [ %nr_swaps_freed.0.lcssa, %if.end84 ]
  %index.3.ph = phi i32 [ %inc156, %folio_batch_release.exit350 ], [ %start.1365372, %if.end84 ]
  br label %while.cond85

while.cond85:                                     ; preds = %if.then95.while.cond85_crit_edge, %while.cond85.outer
  %index.3 = phi i32 [ %start.1365372, %if.then95.while.cond85_crit_edge ], [ %index.3.ph, %while.cond85.outer ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.3, i32 %end.4)
  %cmp86 = icmp ult i32 %index.3, %end.4
  br i1 %cmp86, label %while.body88, label %while.cond85.while.end157_crit_edge

while.cond85.while.end157_crit_edge:              ; preds = %while.cond85
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end157

while.body88:                                     ; preds = %while.cond85
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 986, i32 noundef 0) #15
  %call.i315 = call i32 @__cond_resched() #15
  %call93 = call i32 @find_get_entries(ptr noundef %1, i32 noundef %index.3, i32 noundef %sub91, ptr noundef nonnull %fbatch, ptr noundef nonnull %indices) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %while.body88
  %92 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %fbatch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp106434.not = icmp eq i8 %93, 0
  br i1 %cmp106434.not, label %for.cond104.preheader.for.end155_crit_edge, label %for.cond104.preheader.for.body108_crit_edge

for.cond104.preheader.for.body108_crit_edge:      ; preds = %for.cond104.preheader
  br label %for.body108

for.cond104.preheader.for.end155_crit_edge:       ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end155

if.then95:                                        ; preds = %while.body88
  call void @__sanitizer_cov_trace_cmp4(i32 %index.3, i32 %start.1365372)
  %cmp96 = icmp ne i32 %index.3, %start.1365372
  %or.cond254 = select i1 %cmp96, i1 %cmp99.not, i1 false
  br i1 %or.cond254, label %if.then95.while.cond85_crit_edge, label %if.then95.while.end157_crit_edge

if.then95.while.end157_crit_edge:                 ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end157

if.then95.while.cond85_crit_edge:                 ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond85

for.body108:                                      ; preds = %for.inc153.for.body108_crit_edge, %for.cond104.preheader.for.body108_crit_edge
  %i.1437 = phi i32 [ %inc154, %for.inc153.for.body108_crit_edge ], [ 0, %for.cond104.preheader.for.body108_crit_edge ]
  %nr_swaps_freed.4435 = phi i32 [ %nr_swaps_freed.5, %for.inc153.for.body108_crit_edge ], [ %nr_swaps_freed.3.ph, %for.cond104.preheader.for.body108_crit_edge ]
  %arrayidx110 = getelementptr %struct.folio_batch, ptr %fbatch, i32 0, i32 2, i32 %i.1437
  %94 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx110, align 4
  %arrayidx111 = getelementptr [15 x i32], ptr %indices, i32 0, i32 %i.1437
  %96 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx111, align 4
  %98 = ptrtoint ptr %95 to i32
  %and.i317 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.i318.not = icmp eq i32 %and.i317, 0
  br i1 %tobool.i318.not, label %if.end122, label %if.then113

if.then113:                                       ; preds = %for.body108
  br i1 %unfalloc, label %if.then113.for.inc153_crit_edge, label %if.end116

if.then113.for.inc153_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc153

if.end116:                                        ; preds = %if.then113
  call void @_raw_spin_lock_irq(ptr noundef %i_pages.i319) #15
  %call.i.i320 = call ptr @__xa_cmpxchg(ptr noundef %i_pages.i319, i32 noundef %97, ptr noundef %95, ptr noundef null, i32 noundef 0) #15
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i319) #15
  %cmp.not.i321 = icmp eq ptr %call.i.i320, %95
  br i1 %cmp.not.i321, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %97, -1
  br label %for.end155

if.end120:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i.i.i322 = lshr i32 %98, 1
  %.fca.0.insert.i323 = insertvalue [1 x i32] poison, i32 %shr.i.i.i322, 0
  %call3.i324 = call i32 @free_swap_and_cache([1 x i32] %.fca.0.insert.i323) #15
  %inc121 = add i32 %nr_swaps_freed.4435, 1
  br label %for.inc153

if.end122:                                        ; preds = %for.body108
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 777) #15
  %99 = getelementptr inbounds %struct.page, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  %and.i.i.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i328 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i328, label %folio_flags.exit.i.i, label %if.then.i.i.i329, !prof !231

if.then.i.i.i329:                                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %if.end122
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %95, i32 noundef 4) #15
  %102 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %95, align 4
  %and.i.i4.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i330_crit_edge

folio_flags.exit.i.i.if.then.i330_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i330

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %95, i32 1, i32 3, i32 1) #15
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #15, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %104, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !251
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.folio_lock.exit_crit_edge, label %folio_trylock.exit.i.if.then.i330_crit_edge

folio_trylock.exit.i.if.then.i330_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i330

folio_trylock.exit.i.folio_lock.exit_crit_edge:   ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_lock.exit

if.then.i330:                                     ; preds = %folio_trylock.exit.i.if.then.i330_crit_edge, %folio_flags.exit.i.i.if.then.i330_crit_edge
  call void @__folio_lock(ptr noundef %95) #15
  br label %folio_lock.exit

folio_lock.exit:                                  ; preds = %if.then.i330, %folio_trylock.exit.i.folio_lock.exit_crit_edge
  br i1 %unfalloc, label %lor.lhs.false124, label %folio_lock.exit.if.then126_crit_edge

folio_lock.exit.if.then126_crit_edge:             ; preds = %folio_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126

lor.lhs.false124:                                 ; preds = %folio_lock.exit
  %105 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %99, align 4
  %and.i.i.i332 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i332)
  %tobool.not.i.i333 = icmp eq i32 %and.i.i.i332, 0
  br i1 %tobool.not.i.i333, label %folio_flags.exit.i336, label %if.then.i.i334, !prof !231

if.then.i.i334:                                   ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i336:                            ; preds = %lor.lhs.false124
  %107 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %95, align 4
  %109 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i335.not = icmp eq i32 %109, 0
  br i1 %tobool.i335.not, label %folio_flags.exit.i336.if.then126_crit_edge, label %folio_test_uptodate.exit339.thread

folio_flags.exit.i336.if.then126_crit_edge:       ; preds = %folio_flags.exit.i336
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126

folio_test_uptodate.exit339.thread:               ; preds = %folio_flags.exit.i336
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end148

if.then126:                                       ; preds = %folio_flags.exit.i336.if.then126_crit_edge, %folio_lock.exit.if.then126_crit_edge
  %call127 = call ptr @folio_mapping(ptr noundef %95) #15
  %cmp128.not = icmp eq ptr %call127, %1
  br i1 %cmp128.not, label %do.body, label %if.then130

if.then130:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #17
  call void @folio_unlock(ptr noundef %95) #15
  %dec131 = add i32 %97, -1
  br label %for.end155

do.body:                                          ; preds = %if.then126
  %110 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %99, align 4
  %and.i.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_test_writeback.exit:                        ; preds = %do.body
  %112 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %95, align 4
  %114 = and i32 %113, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i.not = icmp eq i32 %114, 0
  br i1 %tobool.i.not, label %do.end146, label %if.then139, !prof !231

if.then139:                                       ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.24) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1023, 0\0A.popsection", ""() #15, !srcloc !252
  unreachable

do.end146:                                        ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call147 = call i32 @truncate_inode_folio(ptr noundef %1, ptr noundef %95) #15
  br label %if.end148

if.end148:                                        ; preds = %do.end146, %folio_test_uptodate.exit339.thread
  %index149 = getelementptr inbounds %struct.anon.96, ptr %95, i32 0, i32 3
  %115 = ptrtoint ptr %index149 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %index149, align 4
  %117 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i.not.i.i.i340 = icmp eq i32 %118, -1
  br i1 %cmp.i.not.i.i.i340, label %if.then.i.i.i341, label %PageHead.exit.i.i343, !prof !234

if.then.i.i.i341:                                 ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.25) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i.i343:                             ; preds = %if.end148
  %119 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %95, align 4
  %121 = and i32 %120, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i342 = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i342, label %PageHead.exit.i.i343.folio_nr_pages.exit347_crit_edge, label %if.end.i.i345

PageHead.exit.i.i343.folio_nr_pages.exit347_crit_edge: ; preds = %PageHead.exit.i.i343
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_nr_pages.exit347

if.end.i.i345:                                    ; preds = %PageHead.exit.i.i343
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i344 = getelementptr %struct.page, ptr %95, i32 1, i32 1, i32 0, i32 2
  %122 = ptrtoint ptr %compound_nr.i.i344 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %compound_nr.i.i344, align 4
  br label %folio_nr_pages.exit347

folio_nr_pages.exit347:                           ; preds = %if.end.i.i345, %PageHead.exit.i.i343.folio_nr_pages.exit347_crit_edge
  %retval.0.i.i346 = phi i32 [ %123, %if.end.i.i345 ], [ 1, %PageHead.exit.i.i343.folio_nr_pages.exit347_crit_edge ]
  %add151 = add i32 %116, -1
  %sub152 = add i32 %add151, %retval.0.i.i346
  call void @folio_unlock(ptr noundef %95) #15
  br label %for.inc153

for.inc153:                                       ; preds = %folio_nr_pages.exit347, %if.end120, %if.then113.for.inc153_crit_edge
  %nr_swaps_freed.5 = phi i32 [ %nr_swaps_freed.4435, %if.then113.for.inc153_crit_edge ], [ %inc121, %if.end120 ], [ %nr_swaps_freed.4435, %folio_nr_pages.exit347 ]
  %index.5 = phi i32 [ %97, %if.then113.for.inc153_crit_edge ], [ %97, %if.end120 ], [ %sub152, %folio_nr_pages.exit347 ]
  %inc154 = add nuw nsw i32 %i.1437, 1
  %124 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %fbatch, align 4
  %conv.i316 = zext i8 %125 to i32
  %cmp106 = icmp ult i32 %inc154, %conv.i316
  br i1 %cmp106, label %for.inc153.for.body108_crit_edge, label %for.inc153.for.end155_crit_edge

for.inc153.for.end155_crit_edge:                  ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end155

for.inc153.for.body108_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body108

for.end155:                                       ; preds = %for.inc153.for.end155_crit_edge, %if.then130, %if.then119, %for.cond104.preheader.for.end155_crit_edge
  %nr_swaps_freed.4396 = phi i32 [ %nr_swaps_freed.4435, %if.then119 ], [ %nr_swaps_freed.4435, %if.then130 ], [ %nr_swaps_freed.3.ph, %for.cond104.preheader.for.end155_crit_edge ], [ %nr_swaps_freed.5, %for.inc153.for.end155_crit_edge ]
  %index.6 = phi i32 [ %dec, %if.then119 ], [ %dec131, %if.then130 ], [ %index.3, %for.cond104.preheader.for.end155_crit_edge ], [ %index.5, %for.inc153.for.end155_crit_edge ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %fbatch) #15
  %126 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %fbatch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i.i348 = icmp eq i8 %127, 0
  br i1 %tobool.not.i.i348, label %for.end155.folio_batch_release.exit350_crit_edge, label %if.then.i.i349

for.end155.folio_batch_release.exit350_crit_edge: ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_batch_release.exit350

if.then.i.i349:                                   ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #17
  call void @__pagevec_release(ptr noundef nonnull %fbatch) #15
  br label %folio_batch_release.exit350

folio_batch_release.exit350:                      ; preds = %if.then.i.i349, %for.end155.folio_batch_release.exit350_crit_edge
  %inc156 = add i32 %index.6, 1
  br label %while.cond85.outer

while.end157:                                     ; preds = %if.then95.while.end157_crit_edge, %while.cond85.while.end157_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %swapped = getelementptr i8, ptr %inode, i32 -80
  %128 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %swapped, align 8
  %sub158 = sub i32 %129, %nr_swaps_freed.3.ph
  store i32 %sub158, ptr %swapped, align 8
  %alloced.i = getelementptr i8, ptr %inode, i32 -84
  %130 = ptrtoint ptr %alloced.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %alloced.i, align 4
  %132 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nrpages.i, align 4
  %136 = add i32 %135, %sub158
  %sub1.i = sub i32 %131, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i, label %if.then.i354, label %while.end157.shmem_recalc_inode.exit_crit_edge

while.end157.shmem_recalc_inode.exit_crit_edge:   ; preds = %while.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i354:                                     ; preds = %while.end157
  %137 = ptrtoint ptr %alloced.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %alloced.i, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i352 = zext i32 %mul.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %138 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_blocks.i, align 8
  %sub4.i = sub i64 %139, %conv.i352
  store i64 %sub4.i, ptr %i_blocks.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %140 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %141, i32 0, i32 33
  %142 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i.i353 = icmp eq i32 %145, 0
  br i1 %tobool.not.i.i353, label %if.then.i354.if.end.i.i358_crit_edge, label %if.then.i.i355

if.then.i354.if.end.i.i358_crit_edge:             ; preds = %if.then.i354
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i358

if.then.i.i355:                                   ; preds = %if.then.i354
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %143, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %146 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i, i32 noundef %146) #15
  br label %if.end.i.i358

if.end.i.i358:                                    ; preds = %if.then.i.i355, %if.then.i354.if.end.i.i358_crit_edge
  %flags.i.i = getelementptr i8, ptr %inode, i32 -88
  %147 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i356 = and i32 %148, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i356)
  %tobool.not.i.i.i357 = icmp eq i32 %and.i.i.i356, 0
  br i1 %tobool.not.i.i.i357, label %if.end.i.i358.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i359

if.end.i.i358.shmem_recalc_inode.exit_crit_edge:  ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i359:                                 ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %149 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %149) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i359, %if.end.i.i358.shmem_recalc_inode.exit_crit_edge, %while.end157.shmem_recalc_inode.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %indices) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fbatch) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_unuse(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %xas.i.i = alloca %struct.xa_state, align 4
  %pvec.i = alloca %struct.pagevec, align 4
  %indices.i = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @shmem_swaplist, align 4
  %cmp.i.not = icmp eq ptr %0, @shmem_swaplist
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @shmem_swaplist_mutex, i32 noundef 0) #15
  %1 = load ptr, ptr @shmem_swaplist, align 4
  %cmp.not64 = icmp eq ptr %1, @shmem_swaplist
  br i1 %cmp.not64, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %percpu_pvec_drained.i.i = getelementptr inbounds %struct.pagevec, ptr %pvec.i, i32 0, i32 1
  %pages.i = getelementptr inbounds %struct.pagevec, ptr %pvec.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas.i.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas.i.i, i32 0, i32 6
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas.i.i, i32 0, i32 7
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas.i.i, i32 0, i32 8
  %.fca.2.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 2
  %.fca.3.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 3
  %.fca.4.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 4
  %.fca.5.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 5
  %.fca.6.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 6
  %.fca.7.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 7
  %.fca.8.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 8
  %.fca.9.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 9
  %.fca.10.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 10
  %.fca.11.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 11
  %.fca.12.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 12
  %.fca.13.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 13
  %.fca.14.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 14
  %.fca.15.gep.i = getelementptr inbounds [16 x i32], ptr %pvec.i, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in65 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn50, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn68 = load ptr, ptr %.pn.in65, align 8
  %swapped = getelementptr i8, ptr %.pn.in65, i32 -16
  %8 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swapped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %call.i.i53 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in65) #15
  br i1 %call.i.i53, label %if.end.i.i, label %if.then7.list_del_init.exit_crit_edge

if.then7.list_del_init.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in65, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then7.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn.in65, ptr %.pn.in65, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in65, ptr %prev.i3.i, align 4
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %stop_eviction = getelementptr i8, ptr %.pn.in65, i32 60
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop_eviction, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %stop_eviction, i32 1, i32 3, i32 1) #15
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stop_eviction, ptr %stop_eviction, i32 1, ptr elementtype(i32) %stop_eviction) #15, !srcloc !253
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #15
  %vfs_inode = getelementptr i8, ptr %.pn.in65, i32 64
  %i_mapping.i = getelementptr i8, ptr %.pn.in65, i32 96
  %19 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec.i) #15
  %21 = call ptr @memset(ptr %pvec.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %indices.i) #15
  %22 = call ptr @memset(ptr %indices.i, i32 255, i32 60)
  %23 = ptrtoint ptr %pvec.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pvec.i, align 4
  %24 = ptrtoint ptr %percpu_pvec_drained.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %percpu_pvec_drained.i.i, align 1
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i, %if.end9
  %start.0.i = phi i32 [ 0, %if.end9 ], [ %70, %cleanup.i ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i.i) #15
  %25 = ptrtoint ptr %xas.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %i_pages.i.i, ptr %xas.i.i, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %start.0.i, ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %3, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 3 to ptr), ptr %4, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %5, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %6, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i, label %do.body.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.body.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.body.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i54 = call ptr @xas_find(ptr noundef nonnull %xas.i.i, i32 noundef -1) #15
  %tobool2.not12.i.i = icmp eq ptr %call.i.i54, null
  br i1 %tobool2.not12.i.i, label %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge, label %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge

rcu_read_lock.exit.i.i.for.body.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  br label %for.body.i.i

rcu_read_lock.exit.i.i.for.end.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge
  %ret.014.i.i = phi i32 [ %ret.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge ]
  %page.013.i.i = phi ptr [ %call22.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i54, %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge ]
  %magicptr.i.i.i = ptrtoint ptr %page.013.i.i to i32
  %35 = zext i32 %magicptr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %magicptr.i.i.i, label %if.end5.i.i [
    i32 1030, label %for.body.i.i.for.inc.i.i_crit_edge
    i32 1026, label %if.end4.i.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end4.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 3 to ptr), ptr %4, align 4
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %and.i.i.i = and i32 %magicptr.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i1.i.i = icmp ne i32 %and.i.i.i, 0
  %shr.i.i.i.i = lshr i32 %magicptr.i.i.i, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %type)
  %cmp.not.i.i = icmp eq i32 %shr.i.i.i.i, %type
  %or.cond.i.i = and i1 %tobool.i1.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end13.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %arrayidx.i.i = getelementptr i32, ptr %indices.i, i32 %ret.014.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i.i, align 4
  %arrayidx15.i.i = getelementptr ptr, ptr %pages.i, i32 %ret.014.i.i
  %40 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %page.013.i.i, ptr %arrayidx15.i.i, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 16384
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i, label %if.end13.i.i.if.end18.i.i_crit_edge, label %if.then17.i.i

if.end13.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @xas_pause(ptr noundef nonnull %xas.i.i) #15
  call fastcc void @cond_resched_rcu() #15
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i.i.if.end18.i.i_crit_edge
  %inc.i.i = add i32 %ret.014.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i.i)
  %cmp19.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %cmp19.i.i, label %if.end18.i.i.for.end.i.i_crit_edge, label %if.end18.i.i.for.inc.i.i_crit_edge

if.end18.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end18.i.i.for.end.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end18.i.i.for.inc.i.i_crit_edge, %if.end5.i.i.for.inc.i.i_crit_edge, %if.end4.i.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %inc.i.i, %if.end18.i.i.for.inc.i.i_crit_edge ], [ %ret.014.i.i, %if.end5.i.i.for.inc.i.i_crit_edge ], [ %ret.014.i.i, %if.end4.i.i.i ], [ %ret.014.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %call22.i.i = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas.i.i, i32 noundef -1) #15
  %tobool2.not.i.i = icmp eq ptr %call22.i.i, null
  br i1 %tobool2.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end18.i.i.for.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge
  %ret.2.i.i = phi i32 [ 0, %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge ], [ 15, %if.end18.i.i.for.end.i.i_crit_edge ], [ %ret.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i2.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i2.i.i, label %for.end.i.i.shmem_find_swap_entries.exit.i_crit_edge, label %land.lhs.true.i5.i.i

for.end.i.i.shmem_find_swap_entries.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_find_swap_entries.exit.i

land.lhs.true.i5.i.i:                             ; preds = %for.end.i.i
  %call1.i3.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.shmem_find_swap_entries.exit.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.shmem_find_swap_entries.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_find_swap_entries.exit.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.shmem_find_swap_entries.exit.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.shmem_find_swap_entries.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_find_swap_entries.exit.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %shmem_find_swap_entries.exit.i

shmem_find_swap_entries.exit.i:                   ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.shmem_find_swap_entries.exit.i_crit_edge, %land.lhs.true.i5.i.i.shmem_find_swap_entries.exit.i_crit_edge, %for.end.i.i.shmem_find_swap_entries.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !249
  %46 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i9.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i.i) #15
  %conv.i55 = trunc i32 %ret.2.i.i to i8
  %50 = ptrtoint ptr %pvec.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i55, ptr %pvec.i, align 4
  %conv3.i = and i32 %ret.2.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i56 = icmp eq i32 %conv3.i, 0
  br i1 %cmp.i56, label %shmem_find_swap_entries.exit.i.shmem_unuse_inode.exit_crit_edge, label %if.end.i

shmem_find_swap_entries.exit.i.shmem_unuse_inode.exit_crit_edge: ; preds = %shmem_find_swap_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_unuse_inode.exit

if.end.i:                                         ; preds = %shmem_find_swap_entries.exit.i
  %51 = ptrtoint ptr %pvec.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.0.load.i = load i32, ptr %pvec.i, align 4
  %.fca.0.insert.i = insertvalue [16 x i32] poison, i32 %.fca.0.load.i, 0
  %52 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.1.load.i = load i32, ptr %pages.i, align 4
  %.fca.1.insert.i = insertvalue [16 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %53 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [16 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %54 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [16 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %55 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [16 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %56 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [16 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %57 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [16 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %58 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [16 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  %59 = ptrtoint ptr %.fca.8.gep.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.8.load.i = load i32, ptr %.fca.8.gep.i, align 4
  %.fca.8.insert.i = insertvalue [16 x i32] %.fca.7.insert.i, i32 %.fca.8.load.i, 8
  %60 = ptrtoint ptr %.fca.9.gep.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.9.load.i = load i32, ptr %.fca.9.gep.i, align 4
  %.fca.9.insert.i = insertvalue [16 x i32] %.fca.8.insert.i, i32 %.fca.9.load.i, 9
  %61 = ptrtoint ptr %.fca.10.gep.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.10.load.i = load i32, ptr %.fca.10.gep.i, align 4
  %.fca.10.insert.i = insertvalue [16 x i32] %.fca.9.insert.i, i32 %.fca.10.load.i, 10
  %62 = ptrtoint ptr %.fca.11.gep.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.11.load.i = load i32, ptr %.fca.11.gep.i, align 4
  %.fca.11.insert.i = insertvalue [16 x i32] %.fca.10.insert.i, i32 %.fca.11.load.i, 11
  %63 = ptrtoint ptr %.fca.12.gep.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.12.load.i = load i32, ptr %.fca.12.gep.i, align 4
  %.fca.12.insert.i = insertvalue [16 x i32] %.fca.11.insert.i, i32 %.fca.12.load.i, 12
  %64 = ptrtoint ptr %.fca.13.gep.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.13.load.i = load i32, ptr %.fca.13.gep.i, align 4
  %.fca.13.insert.i = insertvalue [16 x i32] %.fca.12.insert.i, i32 %.fca.13.load.i, 13
  %65 = ptrtoint ptr %.fca.14.gep.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.14.load.i = load i32, ptr %.fca.14.gep.i, align 4
  %.fca.14.insert.i = insertvalue [16 x i32] %.fca.13.insert.i, i32 %.fca.14.load.i, 14
  %66 = ptrtoint ptr %.fca.15.gep.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.15.load.i = load i32, ptr %.fca.15.gep.i, align 4
  %.fca.15.insert.i = insertvalue [16 x i32] %.fca.14.insert.i, i32 %.fca.15.load.i, 15
  %call6.i = call fastcc i32 @shmem_unuse_swap_entries(ptr noundef %vfs_inode, [16 x i32] %.fca.15.insert.i, ptr noundef nonnull %indices.i) #15
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.shmem_unuse_inode.exit_crit_edge, label %cleanup.i

if.end.i.shmem_unuse_inode.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_unuse_inode.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %pvec.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pvec.i, align 4
  %conv12.i = zext i8 %68 to i32
  %sub.i = add nsw i32 %conv12.i, -1
  %arrayidx.i = getelementptr [15 x i32], ptr %indices.i, i32 0, i32 %sub.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  br label %do.body.i

shmem_unuse_inode.exit:                           ; preds = %if.end.i.shmem_unuse_inode.exit_crit_edge, %shmem_find_swap_entries.exit.i.shmem_unuse_inode.exit_crit_edge
  %ret.0.ph.i = phi i32 [ %call6.i, %if.end.i.shmem_unuse_inode.exit_crit_edge ], [ 0, %shmem_find_swap_entries.exit.i.shmem_unuse_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %indices.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec.i) #15
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 0) #15
  %call.i = call i32 @__cond_resched() #15
  call void @mutex_lock_nested(ptr noundef nonnull @shmem_swaplist_mutex, i32 noundef 0) #15
  %71 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %.pn.in65, align 8
  %73 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %swapped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool19.not = icmp eq i32 %74, 0
  br i1 %tobool19.not, label %if.then20, label %shmem_unuse_inode.exit.if.end22_crit_edge

shmem_unuse_inode.exit.if.end22_crit_edge:        ; preds = %shmem_unuse_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then20:                                        ; preds = %shmem_unuse_inode.exit
  %call.i.i57 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in65) #15
  br i1 %call.i.i57, label %if.end.i.i60, label %if.then20.list_del_init.exit62_crit_edge

if.then20.list_del_init.exit62_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit62

if.end.i.i60:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i58 = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i58, align 4
  %77 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %.pn.in65, align 4
  %prev1.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i59, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del_init.exit62

list_del_init.exit62:                             ; preds = %if.end.i.i60, %if.then20.list_del_init.exit62_crit_edge
  %81 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %.pn.in65, ptr %.pn.in65, align 4
  %prev.i3.i61 = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i3.i61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %.pn.in65, ptr %prev.i3.i61, align 4
  br label %if.end22

if.end22:                                         ; preds = %list_del_init.exit62, %shmem_unuse_inode.exit.if.end22_crit_edge
  %call.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef %stop_eviction, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %stop_eviction, i32 1, i32 3, i32 1) #15
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stop_eviction, ptr %stop_eviction, i32 1, ptr elementtype(i32) %stop_eviction) #15, !srcloc !237
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then25, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  call void @wake_up_var(ptr noundef %stop_eviction) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %tobool28.not = icmp eq i32 %ret.0.ph.i, 0
  br i1 %tobool28.not, label %if.end27.for.inc_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %list_del_init.exit
  %.pn50 = phi ptr [ %72, %if.end27.for.inc_crit_edge ], [ %.pn68, %list_del_init.exit ]
  %cmp.not = icmp eq ptr %.pn50, @shmem_swaplist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge, %if.end.for.end_crit_edge
  %error.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ret.0.ph.i, %if.end27.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_get_unmapped_area(ptr noundef %file, i32 noundef %uaddr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %len)
  %cmp = icmp ugt i32 %len, -1226833920
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
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
  %get_unmapped_area = getelementptr inbounds %struct.anon.17, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 8
  %call1 = tail call i32 %7(ptr noundef %file, i32 noundef %uaddr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_lock(ptr nocapture noundef readonly %file, i32 noundef %lock, ptr noundef %ucounts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  %flags11 = getelementptr i8, ptr %1, i32 -88
  %2 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags11, align 8
  %and12 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %land.lhs.true10.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool13.not, label %if.then, label %land.lhs.true.out_nomem_crit_edge

land.lhs.true.out_nomem_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_nomem

if.then:                                          ; preds = %land.lhs.true
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %5 to i32
  %call4 = tail call i32 @user_shm_lock(i32 noundef %conv, ptr noundef %ucounts) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.out_nomem_crit_edge, label %if.end

if.then.out_nomem_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_nomem

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags11, align 8
  %or = or i32 %7, 8192
  store i32 %or, ptr %flags11, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %8 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_mapping, align 4
  %flags.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #15
  br label %out_nomem

land.lhs.true10.critedge:                         ; preds = %entry
  %tobool15.not = icmp eq ptr %ucounts, null
  %or.cond = or i1 %tobool15.not, %tobool13.not
  br i1 %or.cond, label %land.lhs.true10.critedge.out_nomem_crit_edge, label %if.then16

land.lhs.true10.critedge.out_nomem_crit_edge:     ; preds = %land.lhs.true10.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_nomem

if.then16:                                        ; preds = %land.lhs.true10.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %i_size17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %i_size17 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size17, align 8
  %conv18 = trunc i64 %11 to i32
  tail call void @user_shm_unlock(i32 noundef %conv18, ptr noundef nonnull %ucounts) #15
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 8
  %and20 = and i32 %13, -8193
  store i32 %and20, ptr %flags11, align 8
  %f_mapping21 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %14 = ptrtoint ptr %f_mapping21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_mapping21, align 4
  %flags.i34 = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i34) #15
  br label %out_nomem

out_nomem:                                        ; preds = %if.then16, %land.lhs.true10.critedge.out_nomem_crit_edge, %if.end, %if.then.out_nomem_crit_edge, %land.lhs.true.out_nomem_crit_edge
  %retval2.0 = phi i32 [ -12, %if.then.out_nomem_crit_edge ], [ 0, %land.lhs.true.out_nomem_crit_edge ], [ 0, %if.end ], [ 0, %if.then16 ], [ 0, %land.lhs.true10.critedge.out_nomem_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_shm_lock(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_shm_unlock(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_mfill_atomic_pte(ptr noundef %dst_mm, ptr noundef %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, i32 noundef %src_addr, i1 noundef zeroext %zeropage, ptr nocapture noundef %pagep) local_unnamed_addr #0 align 64 {
entry:
  %pvma.i = alloca %struct.vm_area_struct, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -136
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gfp_mask.i, align 4
  %8 = ptrtoint ptr %dst_vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_vma, align 4
  %sub.i = sub i32 %dst_addr, %9
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr i8, ptr %3, i32 -88
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i.i203 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i203)
  %tobool.not.i.i204 = icmp eq i32 %and.i.i203, 0
  br i1 %tobool.not.i.i204, label %entry.if.end.i_crit_edge, label %shmem_acct_block.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

shmem_acct_block.exit.i:                          ; preds = %entry
  %18 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm.i.i, align 8
  %call1.i.i = tail call i32 @security_vm_enough_memory_mm(ptr noundef %23, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i205 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i205, label %shmem_acct_block.exit.i.if.end.i_crit_edge, label %shmem_acct_block.exit.i.if.then_crit_edge

shmem_acct_block.exit.i.if.then_crit_edge:        ; preds = %shmem_acct_block.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

shmem_acct_block.exit.i.if.end.i_crit_edge:       ; preds = %shmem_acct_block.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %shmem_acct_block.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8_crit_edge, label %if.then4.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then4.i:                                       ; preds = %if.end.i
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %15, i32 0, i32 1
  %sub.i206 = add i32 %25, -1
  %conv.i = zext i32 %sub.i206 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %26 = load i32, ptr @percpu_counter_batch, align 4
  %call.i.i207 = tail call i32 @__percpu_counter_compare(ptr noundef %used_blocks.i, i64 noundef %conv.i, i32 noundef %26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %cmp.i = icmp sgt i32 %call.i.i207, 0
  br i1 %cmp.i, label %unacct.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %27 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i, i64 noundef 1, i32 noundef %27) #15
  br label %if.end8

unacct.i:                                         ; preds = %if.then4.i
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and.i23.i = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i24.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i24.i, label %unacct.i.if.then_crit_edge, label %if.then.i.i208

unacct.i.if.then_crit_edge:                       ; preds = %unacct.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.i.i208:                                   ; preds = %unacct.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %30 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef -1, i32 noundef %30) #15
  br label %if.then

if.then:                                          ; preds = %if.then.i.i208, %unacct.i.if.then_crit_edge, %shmem_acct_block.exit.i.if.then_crit_edge
  %31 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pagep, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then7, !prof !231

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @put_page(ptr noundef nonnull %32)
  %33 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pagep, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end9.i, %if.end.i.if.end8_crit_edge
  %34 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pagep, align 4
  %tobool9.not = icmp eq ptr %35, null
  br i1 %tobool9.not, label %if.then10, label %if.else32

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pvma.i) #15
  %vm_ops.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 12
  %36 = call ptr @memset(ptr %pvma.i, i32 0, i32 96)
  %37 = ptrtoint ptr %vm_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vma_init.dummy_vm_ops, ptr %vm_ops.i.i.i, align 4
  %anon_vma_chain.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10
  %38 = ptrtoint ptr %anon_vma_chain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %anon_vma_chain.i.i.i, ptr %anon_vma_chain.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %anon_vma_chain.i.i.i, ptr %prev.i.i.i.i, align 4
  %i_ino.i.i = getelementptr i8, ptr %3, i32 40
  %40 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino.i.i, align 8
  %add.i.i = add i32 %41, %add.i
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 13
  %42 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i.i, ptr %vm_pgoff.i.i, align 4
  %vm_private_data.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 15
  %43 = ptrtoint ptr %vm_private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %vm_private_data.i.i, align 4
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pvma.i) #15
  %tobool12.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool12.not, label %if.then10.out_unacct_blocks_crit_edge, label %if.end14

if.then10.out_unacct_blocks_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unacct_blocks

if.end14:                                         ; preds = %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %44 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i212 = or i32 %44, 512
  br i1 %zeropage, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %45 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !254
  %49 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i1.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !255
  %call.i.i209 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %or.i.i212) #15
  %55 = inttoptr i32 %src_addr to ptr
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then16.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then16.if.then11.i.i_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then16
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %55, i32 4096, i32 -1226833920) #18, !srcloc !256
  %asmresult.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !231

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call.i.i209, i32 noundef 4096) #15
  %57 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !257
  %and.i.i.i.i = and i32 %59, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !258
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !259
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %call.i.i209, ptr noundef %55, i32 noundef 4096) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #15, !srcloc !258
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !231

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then16.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4096, %if.then16.if.then11.i.i_crit_edge ], [ 4096, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4096, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i209, i32 %sub.i.i
  %60 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %res.03.i.i, %if.then11.i.i ], [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i209) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !260
  %61 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i1.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 213
  %65 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %66, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !261
  %67 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i210 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i210 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i211 = add i32 %70, -1
  store volatile i32 %sub.i.i211, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool22.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool22.not, label %copy_from_user.exit.do.body34_crit_edge, label %if.then29, !prof !231

copy_from_user.exit.do.body34_crit_edge:          ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body34

if.then29:                                        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call38.i.i.i.i, ptr %pagep, align 4
  br label %out_unacct_blocks

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i213 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %or.i.i212) #15
  %72 = call ptr @memset(ptr %call.i.i213, i32 0, i32 4096)
  call void @kunmap_local_indexed(ptr noundef %call.i.i213) #15
  br label %do.body34

if.else32:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %pagep, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.else32, %if.else, %copy_from_user.exit.do.body34_crit_edge
  %page.0 = phi ptr [ %35, %if.else32 ], [ %call38.i.i.i.i, %if.else ], [ %call38.i.i.i.i, %copy_from_user.exit.do.body34_crit_edge ]
  %74 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i143, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i142 = add i32 %76, -1
  br label %_compound_head.exit.i

if.end.i.i143:                                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i143, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i142, %if.then.i.i ], [ %77, %if.end.i.i143 ]
  %78 = inttoptr i32 %retval.0.i.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i.not.i = icmp eq i32 %80, -1
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %74, align 4
  %and.i16.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i144, label %do.end10.i, !prof !234

if.then.i144:                                     ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !231

if.then.i19.i:                                    ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %82, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %83, %if.end.i20.i ]
  %84 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %84, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !231

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %82, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %page.0 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %85, %if.end.i27.i ]
  %86 = inttoptr i32 %retval.0.i28.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and1.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool36.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool36.not, label %do.body53, label %do.body44, !prof !231

do.body44:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2368, 0\0A.popsection", ""() #15, !srcloc !263
  unreachable

do.body53:                                        ; preds = %PageLocked.exit
  %89 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %74, align 4
  %and.i.i145 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %tobool.not.i.i146 = icmp eq i32 %and.i.i145, 0
  br i1 %tobool.not.i.i146, label %if.end.i.i149, label %if.then.i.i148, !prof !231

if.then.i.i148:                                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i147 = add i32 %90, -1
  br label %_compound_head.exit.i154

if.end.i.i149:                                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i154

_compound_head.exit.i154:                         ; preds = %if.end.i.i149, %if.then.i.i148
  %retval.0.i.i150 = phi i32 [ %sub.i.i147, %if.then.i.i148 ], [ %91, %if.end.i.i149 ]
  %92 = inttoptr i32 %retval.0.i.i150 to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i.not.i151 = icmp eq i32 %94, -1
  %95 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %74, align 4
  %and.i16.i152 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i152)
  %tobool.not.i17.i153 = icmp eq i32 %and.i16.i152, 0
  br i1 %cmp.i.not.i151, label %if.then.i155, label %do.end10.i161, !prof !234

if.then.i155:                                     ; preds = %_compound_head.exit.i154
  br i1 %tobool.not.i17.i153, label %if.end.i20.i158, label %if.then.i19.i157, !prof !231

if.then.i19.i157:                                 ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i156 = add i32 %96, -1
  br label %_compound_head.exit22.i160

if.end.i20.i158:                                  ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit22.i160

_compound_head.exit22.i160:                       ; preds = %if.end.i20.i158, %if.then.i19.i157
  %retval.0.i21.i159 = phi i32 [ %sub.i18.i156, %if.then.i19.i157 ], [ %97, %if.end.i20.i158 ]
  %98 = inttoptr i32 %retval.0.i21.i159 to ptr
  call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #15, !srcloc !264
  unreachable

do.end10.i161:                                    ; preds = %_compound_head.exit.i154
  br i1 %tobool.not.i17.i153, label %if.end.i27.i164, label %if.then.i26.i163, !prof !231

if.then.i26.i163:                                 ; preds = %do.end10.i161
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i162 = add i32 %96, -1
  br label %PageSwapBacked.exit

if.end.i27.i164:                                  ; preds = %do.end10.i161
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %page.0 to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i164, %if.then.i26.i163
  %retval.0.i28.i165 = phi i32 [ %sub.i25.i162, %if.then.i26.i163 ], [ %99, %if.end.i27.i164 ]
  %100 = inttoptr i32 %retval.0.i28.i165 to ptr
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %103 = and i32 %102, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool55.not = icmp eq i32 %103, 0
  br i1 %tobool55.not, label %do.end71, label %do.body63, !prof !231

do.body63:                                        ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2369, 0\0A.popsection", ""() #15, !srcloc !265
  unreachable

do.end71:                                         ; preds = %PageSwapBacked.exit
  %104 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %74, align 4
  %and.i.i167 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i167)
  %tobool.not.i = icmp eq i32 %and.i.i167, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i168, !prof !231

if.then.i168:                                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !240
  unreachable

do.body7.i:                                       ; preds = %do.end71
  %106 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %74, align 4
  %and.i31.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i169 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i169, label %if.end.i.i172, label %if.then.i.i171, !prof !231

if.then.i.i171:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i170 = add i32 %107, -1
  br label %_compound_head.exit.i175

if.end.i.i172:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i175

_compound_head.exit.i175:                         ; preds = %if.end.i.i172, %if.then.i.i171
  %retval.0.i.i173 = phi i32 [ %sub.i.i170, %if.then.i.i171 ], [ %108, %if.end.i.i172 ]
  %109 = inttoptr i32 %retval.0.i.i173 to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp.i.not.i174 = icmp eq i32 %111, -1
  %112 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %74, align 4
  %and.i32.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i174, label %if.then17.i, label %do.end24.i, !prof !234

if.then17.i:                                      ; preds = %_compound_head.exit.i175
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !231

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i = add i32 %113, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %114, %if.end.i36.i ]
  %115 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %115, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !241
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i175
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !231

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i = add i32 %113, -1
  br label %__SetPageLocked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %page.0 to i32
  br label %__SetPageLocked.exit

__SetPageLocked.exit:                             ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %116, %if.end.i43.i ]
  %117 = inttoptr i32 %retval.0.i44.i to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %or.i.i = or i32 %119, 1
  store i32 %or.i.i, ptr %117, align 4
  %120 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %74, align 4
  %and.i.i176 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i176)
  %tobool.not.i177 = icmp eq i32 %and.i.i176, 0
  br i1 %tobool.not.i177, label %do.body7.i181, label %if.then.i178, !prof !231

if.then.i178:                                     ; preds = %__SetPageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !242
  unreachable

do.body7.i181:                                    ; preds = %__SetPageLocked.exit
  %122 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %74, align 4
  %and.i31.i179 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i179)
  %tobool.not.i.i180 = icmp eq i32 %and.i31.i179, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i184, label %if.then.i.i183, !prof !231

if.then.i.i183:                                   ; preds = %do.body7.i181
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i182 = add i32 %123, -1
  br label %_compound_head.exit.i189

if.end.i.i184:                                    ; preds = %do.body7.i181
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i189

_compound_head.exit.i189:                         ; preds = %if.end.i.i184, %if.then.i.i183
  %retval.0.i.i185 = phi i32 [ %sub.i.i182, %if.then.i.i183 ], [ %124, %if.end.i.i184 ]
  %125 = inttoptr i32 %retval.0.i.i185 to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp.i.not.i186 = icmp eq i32 %127, -1
  %128 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %74, align 4
  %and.i32.i187 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i187)
  %tobool.not.i33.i188 = icmp eq i32 %and.i32.i187, 0
  br i1 %cmp.i.not.i186, label %if.then17.i190, label %do.end24.i196, !prof !234

if.then17.i190:                                   ; preds = %_compound_head.exit.i189
  br i1 %tobool.not.i33.i188, label %if.end.i36.i193, label %if.then.i35.i192, !prof !231

if.then.i35.i192:                                 ; preds = %if.then17.i190
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i191 = add i32 %129, -1
  br label %_compound_head.exit38.i195

if.end.i36.i193:                                  ; preds = %if.then17.i190
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit38.i195

_compound_head.exit38.i195:                       ; preds = %if.end.i36.i193, %if.then.i35.i192
  %retval.0.i37.i194 = phi i32 [ %sub.i34.i191, %if.then.i35.i192 ], [ %130, %if.end.i36.i193 ]
  %131 = inttoptr i32 %retval.0.i37.i194 to ptr
  call void @dump_page(ptr noundef %131, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !243
  unreachable

do.end24.i196:                                    ; preds = %_compound_head.exit.i189
  br i1 %tobool.not.i33.i188, label %if.end.i43.i199, label %if.then.i42.i198, !prof !231

if.then.i42.i198:                                 ; preds = %do.end24.i196
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i197 = add i32 %129, -1
  br label %__SetPageSwapBacked.exit

if.end.i43.i199:                                  ; preds = %do.end24.i196
  call void @__sanitizer_cov_trace_pc() #17
  %132 = ptrtoint ptr %page.0 to i32
  br label %__SetPageSwapBacked.exit

__SetPageSwapBacked.exit:                         ; preds = %if.end.i43.i199, %if.then.i42.i198
  %retval.0.i44.i200 = phi i32 [ %sub.i41.i197, %if.then.i42.i198 ], [ %132, %if.end.i43.i199 ]
  %133 = inttoptr i32 %retval.0.i44.i200 to ptr
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %or.i.i201 = or i32 %135, 524288
  store i32 %or.i.i201, ptr %133, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !266
  %136 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %74, align 4
  %and.i.i.i.i202 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i202)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i202, 0
  br i1 %tobool.not.i.i.i, label %__SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %__SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

__SetPageUptodate.exit:                           ; preds = %__SetPageSwapBacked.exit
  %138 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page.0, align 4
  %or.i.i.i = or i32 %139, 4
  store i32 %or.i.i.i, ptr %page.0, align 4
  %call72 = call fastcc i64 @i_size_read(ptr noundef %3)
  %sub = add i64 %call72, 4095
  %div = sdiv i64 %sub, 4096
  %conv = trunc i64 %div to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp.not = icmp ult i32 %add.i, %conv
  br i1 %cmp.not, label %if.end81, label %__SetPageUptodate.exit.out_release_crit_edge, !prof !231

__SetPageUptodate.exit.out_release_crit_edge:     ; preds = %__SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_release

if.end81:                                         ; preds = %__SetPageUptodate.exit
  %and = and i32 %7, 34336480
  %call82 = call fastcc i32 @shmem_add_to_page_cache(ptr noundef nonnull %page.0, ptr noundef %5, i32 noundef %add.i, ptr noundef null, i32 noundef %and, ptr noundef %dst_mm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.out_release_crit_edge

if.end81.out_release_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_release

if.end85:                                         ; preds = %if.end81
  %call86 = call i32 @mfill_atomic_install_pte(ptr noundef %dst_mm, ptr noundef %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, ptr noundef nonnull %page.0, i1 noundef zeroext true, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %out_delete_from_cache

if.end89:                                         ; preds = %if.end85
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %alloced = getelementptr i8, ptr %3, i32 -84
  %140 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %alloced, align 4
  %inc = add i32 %141, 1
  store i32 %inc, ptr %alloced, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %142 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i_blocks, align 8
  %add90 = add i64 %143, 8
  store i64 %add90, ptr %i_blocks, align 8
  %swapped.i = getelementptr i8, ptr %3, i32 -80
  %144 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %swapped.i, align 8
  %146 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %147, i32 0, i32 7
  %148 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nrpages.i, align 4
  %150 = add i32 %149, %145
  %sub1.i = sub i32 %inc, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i214 = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i214, label %if.then.i217, label %if.end89.shmem_recalc_inode.exit_crit_edge

if.end89.shmem_recalc_inode.exit_crit_edge:       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i217:                                     ; preds = %if.end89
  %151 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %alloced, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i215 = zext i32 %mul.i to i64
  %sub4.i = sub i64 %add90, %conv.i215
  %152 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %sub4.i, ptr %i_blocks, align 8
  %153 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 33
  %155 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i.i216 = icmp eq i32 %158, 0
  br i1 %tobool.not.i.i216, label %if.then.i217.if.end.i.i221_crit_edge, label %if.then.i.i218

if.then.i217.if.end.i.i221_crit_edge:             ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i221

if.then.i.i218:                                   ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %156, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %159 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i, i32 noundef %159) #15
  br label %if.end.i.i221

if.end.i.i221:                                    ; preds = %if.then.i.i218, %if.then.i217.if.end.i.i221_crit_edge
  %160 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i, align 8
  %and.i.i.i219 = and i32 %161, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i219)
  %tobool.not.i.i.i220 = icmp eq i32 %and.i.i.i219, 0
  br i1 %tobool.not.i.i.i220, label %if.end.i.i221.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i222

if.end.i.i221.shmem_recalc_inode.exit_crit_edge:  ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i222:                                 ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %162 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %162) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i222, %if.end.i.i221.shmem_recalc_inode.exit_crit_edge, %if.end89.shmem_recalc_inode.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  call void @unlock_page(ptr noundef nonnull %page.0) #15
  br label %cleanup

out_delete_from_cache:                            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  call void @delete_from_page_cache(ptr noundef nonnull %page.0) #15
  br label %out_release

out_release:                                      ; preds = %out_delete_from_cache, %if.end81.out_release_crit_edge, %__SetPageUptodate.exit.out_release_crit_edge
  %ret.0 = phi i32 [ -14, %__SetPageUptodate.exit.out_release_crit_edge ], [ %call82, %if.end81.out_release_crit_edge ], [ %call86, %out_delete_from_cache ]
  call void @unlock_page(ptr noundef nonnull %page.0) #15
  %163 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %74, align 4
  %and.i.i224 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i224)
  %tobool.not.i.i225 = icmp eq i32 %and.i.i224, 0
  br i1 %tobool.not.i.i225, label %if.end.i.i228, label %if.then.i.i227, !prof !231

if.then.i.i227:                                   ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i226 = add i32 %164, -1
  br label %_compound_head.exit.i230

if.end.i.i228:                                    ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i230

_compound_head.exit.i230:                         ; preds = %if.end.i.i228, %if.then.i.i227
  %retval.0.i.i229 = phi i32 [ %sub.i.i226, %if.then.i.i227 ], [ %165, %if.end.i.i228 ]
  %166 = inttoptr i32 %retval.0.i.i229 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %166, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %167 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i.i.i.i = icmp eq i32 %168, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i230
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %166, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i230
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %169 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %169, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_mfill_atomic_pte, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i231 = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %166, i32 noundef -1, i32 noundef %conv.i.i.i.i.i231) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_unacct_blocks_crit_edge

folio_put_testzero.exit.i.i.out_unacct_blocks_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unacct_blocks

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %166) #15
  br label %out_unacct_blocks

out_unacct_blocks:                                ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_unacct_blocks_crit_edge, %if.then29, %if.then10.out_unacct_blocks_crit_edge
  %ret.1 = phi i32 [ -2, %if.then29 ], [ -12, %if.then10.out_unacct_blocks_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i.out_unacct_blocks_crit_edge ], [ %ret.0, %if.then.i4.i ]
  %170 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i233 = getelementptr inbounds %struct.super_block, ptr %171, i32 0, i32 33
  %172 = ptrtoint ptr %s_fs_info.i.i233 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %s_fs_info.i.i233, align 16
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i234 = icmp eq i32 %175, 0
  br i1 %tobool.not.i234, label %out_unacct_blocks.if.end.i240_crit_edge, label %if.then.i236

out_unacct_blocks.if.end.i240_crit_edge:          ; preds = %out_unacct_blocks
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i240

if.then.i236:                                     ; preds = %out_unacct_blocks
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i235 = getelementptr inbounds %struct.shmem_sb_info, ptr %173, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %176 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %used_blocks.i235, i64 noundef -1, i32 noundef %176) #15
  br label %if.end.i240

if.end.i240:                                      ; preds = %if.then.i236, %out_unacct_blocks.if.end.i240_crit_edge
  %177 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags.i, align 8
  %and.i.i238 = and i32 %178, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i238)
  %tobool.not.i.i239 = icmp eq i32 %and.i.i238, 0
  br i1 %tobool.not.i.i239, label %if.end.i240.cleanup_crit_edge, label %if.then.i.i241

if.end.i240.cleanup_crit_edge:                    ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i241:                                   ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %179 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef -1, i32 noundef %179) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i241, %if.end.i240.cleanup_crit_edge, %shmem_recalc_inode.exit, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %shmem_recalc_inode.exit ], [ -12, %if.then7 ], [ -12, %if.then.cleanup_crit_edge ], [ %ret.1, %if.end.i240.cleanup_crit_edge ], [ %ret.1, %if.then.i.i241 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !231

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !234

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !239

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #15
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %4) #15
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !267
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #15
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !268
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !234

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !269
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !271
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !272
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !273
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shmem_add_to_page_cache(ptr noundef %page, ptr noundef %mapping, i32 noundef %index, ptr noundef readnone %expected, i32 noundef %gfp, ptr noundef %charge_mm) unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #15
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 5
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %8 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_pages, ptr %xas, align 4
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i230, label %PageHead.exit.i, !prof !234

if.then.i.i230:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i:                                  ; preds = %entry
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_order.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_order.exit_crit_edge:    ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %compound_order.i, align 1
  %conv.i = zext i8 %16 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i, %PageHead.exit.i.compound_order.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ 0, %PageHead.exit.i.compound_order.exit_crit_edge ]
  %shr = lshr i32 %index, %retval.0.i
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.i231 = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.i231, label %if.then.i.i232, label %PageHead.exit.i234, !prof !234

if.then.i.i232:                                   ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i234:                               ; preds = %compound_order.exit
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i233 = icmp eq i32 %21, 0
  br i1 %tobool.not.i233, label %PageHead.exit.i234.compound_order.exit239_crit_edge, label %if.end.i237

PageHead.exit.i234.compound_order.exit239_crit_edge: ; preds = %PageHead.exit.i234
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit239

if.end.i237:                                      ; preds = %PageHead.exit.i234
  call void @__sanitizer_cov_trace_pc() #17
  %22 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i235 = getelementptr inbounds %struct.anon.13, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %compound_order.i235 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %compound_order.i235, align 1
  %conv.i236 = zext i8 %24 to i32
  br label %compound_order.exit239

compound_order.exit239:                           ; preds = %if.end.i237, %PageHead.exit.i234.compound_order.exit239_crit_edge
  %retval.0.i238 = phi i32 [ %conv.i236, %if.end.i237 ], [ 0, %PageHead.exit.i234.compound_order.exit239_crit_edge ]
  %shl = shl i32 %shr, %retval.0.i238
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %0, align 4
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i.i240 = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i.i240, label %if.then.i.i241, label %PageHead.exit.i243, !prof !234

if.then.i.i241:                                   ; preds = %compound_order.exit239
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i243:                               ; preds = %compound_order.exit239
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i242 = icmp eq i32 %30, 0
  br i1 %tobool.not.i242, label %PageHead.exit.i243.compound_order.exit248_crit_edge, label %if.end.i246

PageHead.exit.i243.compound_order.exit248_crit_edge: ; preds = %PageHead.exit.i243
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit248

if.end.i246:                                      ; preds = %PageHead.exit.i243
  call void @__sanitizer_cov_trace_pc() #17
  %31 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i244 = getelementptr inbounds %struct.anon.13, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %compound_order.i244 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %compound_order.i244, align 1
  br label %compound_order.exit248

compound_order.exit248:                           ; preds = %if.end.i246, %PageHead.exit.i243.compound_order.exit248_crit_edge
  %retval.0.i247 = phi i8 [ %33, %if.end.i246 ], [ 0, %PageHead.exit.i243.compound_order.exit248_crit_edge ]
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i249 = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i249, label %if.then.i.i250, label %PageHead.exit.i252, !prof !234

if.then.i.i250:                                   ; preds = %compound_order.exit248
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i252:                               ; preds = %compound_order.exit248
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i251 = icmp eq i32 %38, 0
  br i1 %tobool.not.i251, label %PageHead.exit.i252.compound_order.exit257_crit_edge, label %if.end.i255

PageHead.exit.i252.compound_order.exit257_crit_edge: ; preds = %PageHead.exit.i252
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit257

if.end.i255:                                      ; preds = %PageHead.exit.i252
  call void @__sanitizer_cov_trace_pc() #17
  %39 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i253 = getelementptr inbounds %struct.anon.13, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %compound_order.i253 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %compound_order.i253, align 1
  br label %compound_order.exit257

compound_order.exit257:                           ; preds = %if.end.i255, %PageHead.exit.i252.compound_order.exit257_crit_edge
  %retval.0.i256 = phi i8 [ %41, %if.end.i255 ], [ 0, %PageHead.exit.i252.compound_order.exit257_crit_edge ]
  %rem307 = urem i8 %retval.0.i256, 6
  %sub = sub i8 %retval.0.i247, %rem307
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sub, ptr %1, align 4
  %43 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i.i258 = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i.i258, label %if.then.i.i259, label %PageHead.exit.i261, !prof !234

if.then.i.i259:                                   ; preds = %compound_order.exit257
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i261:                               ; preds = %compound_order.exit257
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %page, align 4
  %47 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i260 = icmp eq i32 %47, 0
  br i1 %tobool.not.i260, label %PageHead.exit.i261.compound_order.exit266_crit_edge, label %if.end.i264

PageHead.exit.i261.compound_order.exit266_crit_edge: ; preds = %PageHead.exit.i261
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_order.exit266

if.end.i264:                                      ; preds = %PageHead.exit.i261
  call void @__sanitizer_cov_trace_pc() #17
  %48 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i262 = getelementptr inbounds %struct.anon.13, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %compound_order.i262 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %compound_order.i262, align 1
  br label %compound_order.exit266

compound_order.exit266:                           ; preds = %if.end.i264, %PageHead.exit.i261.compound_order.exit266_crit_edge
  %retval.0.i265 = phi i8 [ %50, %if.end.i264 ], [ 0, %PageHead.exit.i261.compound_order.exit266_crit_edge ]
  %rem5308 = urem i8 %retval.0.i265, 6
  %notmask = shl nsw i8 -1, %rem5308
  %conv8 = xor i8 %notmask, -1
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv8, ptr %2, align 1
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %3, align 2
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %4, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %6, align 4
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %7, align 4
  %57 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i.i267 = icmp eq i32 %58, -1
  br i1 %cmp.i.not.i.i267, label %if.then.i.i268, label %PageHead.exit.i270, !prof !234

if.then.i.i268:                                   ; preds = %compound_order.exit266
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !245
  unreachable

PageHead.exit.i270:                               ; preds = %compound_order.exit266
  %59 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %page, align 4
  %61 = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i269 = icmp eq i32 %61, 0
  br i1 %tobool.not.i269, label %PageHead.exit.i270.compound_nr.exit_crit_edge, label %if.end.i271

PageHead.exit.i270.compound_nr.exit_crit_edge:    ; preds = %PageHead.exit.i270
  call void @__sanitizer_cov_trace_pc() #17
  br label %compound_nr.exit

if.end.i271:                                      ; preds = %PageHead.exit.i270
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %compound_nr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i271, %PageHead.exit.i270.compound_nr.exit_crit_edge
  %retval.0.i272 = phi i32 [ %63, %if.end.i271 ], [ 1, %PageHead.exit.i270.compound_nr.exit_crit_edge ]
  %64 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.body19, label %if.then, !prof !231

if.then:                                          ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 704, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

do.body19:                                        ; preds = %compound_nr.exit
  %neg = sub i32 0, %retval.0.i272
  %and = and i32 %neg, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %index)
  %cmp.not = icmp eq i32 %and, %index
  br i1 %cmp.not, label %do.body38, label %if.then28, !prof !231

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 705, 0\0A.popsection", ""() #15, !srcloc !275
  unreachable

do.body38:                                        ; preds = %do.body19
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %64, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %69, %if.end.i.i ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %64, align 4
  %and.i16.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !234

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !231

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %74, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %75, %if.end.i20.i ]
  %76 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.35) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !231

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %74, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %77, %if.end.i27.i ]
  %78 = inttoptr i32 %retval.0.i28.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and1.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool40.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool40.not, label %if.then49, label %do.body59, !prof !234

if.then49:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 706, 0\0A.popsection", ""() #15, !srcloc !276
  unreachable

do.body59:                                        ; preds = %PageLocked.exit
  %81 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %64, align 4
  %and.i.i201 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i201)
  %tobool.not.i.i202 = icmp eq i32 %and.i.i201, 0
  br i1 %tobool.not.i.i202, label %if.end.i.i205, label %if.then.i.i204, !prof !231

if.then.i.i204:                                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i203 = add i32 %82, -1
  br label %_compound_head.exit.i210

if.end.i.i205:                                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i210

_compound_head.exit.i210:                         ; preds = %if.end.i.i205, %if.then.i.i204
  %retval.0.i.i206 = phi i32 [ %sub.i.i203, %if.then.i.i204 ], [ %83, %if.end.i.i205 ]
  %84 = inttoptr i32 %retval.0.i.i206 to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp.i.not.i207 = icmp eq i32 %86, -1
  %87 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %64, align 4
  %and.i16.i208 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i208)
  %tobool.not.i17.i209 = icmp eq i32 %and.i16.i208, 0
  br i1 %cmp.i.not.i207, label %if.then.i211, label %do.end10.i217, !prof !234

if.then.i211:                                     ; preds = %_compound_head.exit.i210
  br i1 %tobool.not.i17.i209, label %if.end.i20.i214, label %if.then.i19.i213, !prof !231

if.then.i19.i213:                                 ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i212 = add i32 %88, -1
  br label %_compound_head.exit22.i216

if.end.i20.i214:                                  ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i216

_compound_head.exit22.i216:                       ; preds = %if.end.i20.i214, %if.then.i19.i213
  %retval.0.i21.i215 = phi i32 [ %sub.i18.i212, %if.then.i19.i213 ], [ %89, %if.end.i20.i214 ]
  %90 = inttoptr i32 %retval.0.i21.i215 to ptr
  tail call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.35) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #15, !srcloc !264
  unreachable

do.end10.i217:                                    ; preds = %_compound_head.exit.i210
  br i1 %tobool.not.i17.i209, label %if.end.i27.i220, label %if.then.i26.i219, !prof !231

if.then.i26.i219:                                 ; preds = %do.end10.i217
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i218 = add i32 %88, -1
  br label %PageSwapBacked.exit

if.end.i27.i220:                                  ; preds = %do.end10.i217
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %page to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i220, %if.then.i26.i219
  %retval.0.i28.i221 = phi i32 [ %sub.i25.i218, %if.then.i26.i219 ], [ %91, %if.end.i27.i220 ]
  %92 = inttoptr i32 %retval.0.i28.i221 to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %95 = and i32 %94, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool61.not = icmp eq i32 %95, 0
  br i1 %tobool61.not, label %if.then70, label %do.body80, !prof !234

if.then70:                                        ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 707, 0\0A.popsection", ""() #15, !srcloc !277
  unreachable

do.body80:                                        ; preds = %PageSwapBacked.exit
  %tobool81.not = icmp eq ptr %expected, null
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #15
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %retval.0.i272, ptr elementtype(i32) %_refcount.i) #15, !srcloc !253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@shmem_add_to_page_cache, %if.then.i273)) #15
          to label %page_ref_add.exit [label %if.then.i273], !srcloc !239

if.then.i273:                                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef %retval.0.i272) #15
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i273, %do.body80
  %mapping100 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %mapping100 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %mapping, ptr %mapping100, align 4
  %index101 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %98 = ptrtoint ptr %index101 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %index, ptr %index101, align 4
  %99 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %64, align 4
  %and.i.i223 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i223)
  %tobool.not.i.i224 = icmp eq i32 %and.i.i223, 0
  br i1 %tobool.not.i.i224, label %if.end.i.i227, label %if.then.i.i226, !prof !231

if.then.i.i226:                                   ; preds = %page_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i225 = add i32 %100, -1
  br label %_compound_head.exit.i229

if.end.i.i227:                                    ; preds = %page_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i229

_compound_head.exit.i229:                         ; preds = %if.end.i.i227, %if.then.i.i226
  %retval.0.i.i228 = phi i32 [ %sub.i.i225, %if.then.i.i226 ], [ %101, %if.end.i.i227 ]
  %102 = inttoptr i32 %retval.0.i.i228 to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  %and.i.i.i.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !231

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i229
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i229
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %102, align 4
  %108 = and i32 %107, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.then103_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.then103_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then103

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %103, align 4
  %and.i.i.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %111 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %102, align 4
  %113 = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.i.not = icmp eq i32 %113, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.then103_crit_edge, label %PageSwapCache.exit.if.end120_crit_edge

PageSwapCache.exit.if.end120_crit_edge:           ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

PageSwapCache.exit.if.then103_crit_edge:          ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then103

if.then103:                                       ; preds = %PageSwapCache.exit.if.then103_crit_edge, %folio_test_swapbacked.exit.i.i.if.then103_crit_edge
  %114 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %64, align 4
  %and.i275 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i275)
  %tobool.not.i276 = icmp eq i32 %and.i275, 0
  br i1 %tobool.not.i276, label %if.end.i278, label %if.then.i277, !prof !231

if.then.i277:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %115, -1
  br label %_compound_head.exit

if.end.i278:                                      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i278, %if.then.i277
  %retval.0.i279 = phi i32 [ %sub.i, %if.then.i277 ], [ %116, %if.end.i278 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@shmem_add_to_page_cache, %mem_cgroup_charge.exit)) #15
          to label %if.end.i280 [label %mem_cgroup_charge.exit], !srcloc !239

if.end.i280:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %117 = inttoptr i32 %retval.0.i279 to ptr
  %call1.i = tail call i32 @__mem_cgroup_charge(ptr noundef %117, ptr noundef %charge_mm, i32 noundef %gfp) #15
  br label %mem_cgroup_charge.exit

mem_cgroup_charge.exit:                           ; preds = %if.end.i280, %_compound_head.exit
  %retval.0.i281 = phi i32 [ %call1.i, %if.end.i280 ], [ 0, %_compound_head.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i281)
  %tobool106.not = icmp eq i32 %retval.0.i281, 0
  br i1 %tobool106.not, label %mem_cgroup_charge.exit.if.end120_crit_edge, label %mem_cgroup_charge.exit.error156_crit_edge

mem_cgroup_charge.exit.error156_crit_edge:        ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %error156

mem_cgroup_charge.exit.if.end120_crit_edge:       ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.end120:                                        ; preds = %mem_cgroup_charge.exit.if.end120_crit_edge, %PageSwapCache.exit.if.end120_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@shmem_add_to_page_cache, %cgroup_throttle_swaprate.exit)) #15
          to label %if.end.i282 [label %cgroup_throttle_swaprate.exit], !srcloc !239

if.end.i282:                                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__cgroup_throttle_swaprate(ptr noundef %page, i32 noundef %gfp) #15
  br label %cgroup_throttle_swaprate.exit

cgroup_throttle_swaprate.exit:                    ; preds = %if.end.i282, %if.end120
  %nrpages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 7
  br label %do.body121

do.body121:                                       ; preds = %unlock.do.body121_crit_edge, %cgroup_throttle_swaprate.exit
  %118 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock_irq(ptr noundef %119) #15
  %call123 = call ptr @xas_find_conflict(ptr noundef nonnull %xas) #15
  %cmp124.not = icmp eq ptr %call123, %expected
  br i1 %cmp124.not, label %if.end127, label %if.then126

if.then126:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -66 to ptr), ptr %5, align 4
  br label %unlock

if.end127:                                        ; preds = %do.body121
  br i1 %tobool81.not, label %if.end127.if.end132_crit_edge, label %land.lhs.true

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132

land.lhs.true:                                    ; preds = %if.end127
  %call129 = call ptr @xas_find_conflict(ptr noundef nonnull %xas) #15
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %land.lhs.true.if.end132_crit_edge, label %if.then131

land.lhs.true.if.end132_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132

if.then131:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -66 to ptr), ptr %5, align 4
  br label %unlock

if.end132:                                        ; preds = %land.lhs.true.if.end132_crit_edge, %if.end127.if.end132_crit_edge
  %call133 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef %page) #15
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %5, align 4
  %124 = ptrtoint ptr %123 to i32
  %and.i.i.i.i285 = and i32 %124, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i285)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i285, 2
  %cmp.i.i.i = icmp ult ptr %123, inttoptr (i32 -16378 to ptr)
  %tobool135.not309 = icmp ult ptr %123, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool135.not = or i1 %tobool135.not309, %not.spec.select.i.i.i
  br i1 %tobool135.not, label %if.end137, label %if.end132.unlock_crit_edge

if.end132.unlock_crit_edge:                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end137:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  %125 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nrpages, align 4
  %add = add i32 %126, %retval.0.i272
  store i32 %add, ptr %nrpages, align 4
  call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 19, i32 noundef %retval.0.i272) #15
  call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 23, i32 noundef %retval.0.i272) #15
  br label %unlock

unlock:                                           ; preds = %if.end137, %if.end132.unlock_crit_edge, %if.then131, %if.then126
  %127 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %128) #15
  %call149 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef %gfp) #15
  br i1 %call149, label %unlock.do.body121_crit_edge, label %do.end150

unlock.do.body121_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body121

do.end150:                                        ; preds = %unlock
  %129 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %5, align 4
  %131 = ptrtoint ptr %130 to i32
  %and.i.i.i.i289 = and i32 %131, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i289)
  %cmp.i.i.i.i290 = icmp eq i32 %and.i.i.i.i289, 2
  %cmp.i.i.i291 = icmp uge ptr %130, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i292 = and i1 %cmp.i.i.i291, %cmp.i.i.i.i290
  %shr.i.i293 = ashr i32 %131, 2
  %retval.0.i.i294 = select i1 %spec.select.i.i.i292, i32 %shr.i.i293, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i294)
  %tobool152.not = icmp eq i32 %retval.0.i.i294, 0
  br i1 %tobool152.not, label %do.end150.cleanup_crit_edge, label %do.end150.error156_crit_edge

do.end150.error156_crit_edge:                     ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %error156

do.end150.cleanup_crit_edge:                      ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

error156:                                         ; preds = %do.end150.error156_crit_edge, %mem_cgroup_charge.exit.error156_crit_edge
  %error.0 = phi i32 [ %retval.0.i281, %mem_cgroup_charge.exit.error156_crit_edge ], [ %retval.0.i.i294, %do.end150.error156_crit_edge ]
  %132 = ptrtoint ptr %mapping100 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %mapping100, align 4
  %call.i.i.i303 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #15
  %133 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %retval.0.i272, ptr elementtype(i32) %_refcount.i) #15, !srcloc !278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@shmem_add_to_page_cache, %if.then.i305)) #15
          to label %cleanup [label %if.then.i305], !srcloc !239

if.then.i305:                                     ; preds = %error156
  call void @__sanitizer_cov_trace_pc() #17
  call void @__page_ref_mod(ptr noundef %page, i32 noundef %neg) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i305, %error156, %do.end150.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end150.cleanup_crit_edge ], [ %error.0, %error156 ], [ %error.0, %if.then.i305 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfill_atomic_install_pte(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !234

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !231

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.35) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !231

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %do.body10, label %do.end16, !prof !234

do.body10:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1325, 0\0A.popsection", ""() #15, !srcloc !279
  unreachable

do.end16:                                         ; preds = %PageLocked.exit
  %mapping17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %mapping17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping17, align 4
  %index18 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index18, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 -136
  %flags = getelementptr i8, ptr %20, i32 -88
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %do.end16.redirty_crit_edge

do.end16.redirty_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %redirty

if.end22:                                         ; preds = %do.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %23 = load i32, ptr @total_swap_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not = icmp eq i32 %23, 0
  br i1 %tobool23.not, label %if.end22.redirty_crit_edge, label %if.end25

if.end22.redirty_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %redirty

if.end25:                                         ; preds = %if.end22
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %24 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %for_reclaim, align 4
  %25 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool26.not = icmp eq i16 %25, 0
  br i1 %tobool26.not, label %land.end, label %if.end71

land.end:                                         ; preds = %if.end25
  %.b198 = load i1, ptr @shmem_writepage.__already_done, align 1
  br i1 %.b198, label %land.end.redirty_crit_edge, label %if.then38, !prof !231

land.end.redirty_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %redirty

if.then38:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @shmem_writepage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1343, i32 noundef 9, ptr noundef null) #15
  br label %redirty

if.end71:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %0, align 4
  %and.i.i199 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i199)
  %tobool.not.i.i200 = icmp eq i32 %and.i.i199, 0
  br i1 %tobool.not.i.i200, label %if.end.i.i203, label %if.then.i.i202, !prof !231

if.then.i.i202:                                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i201 = add i32 %27, -1
  br label %_compound_head.exit.i207

if.end.i.i203:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i207

_compound_head.exit.i207:                         ; preds = %if.end.i.i203, %if.then.i.i202
  %retval.0.i.i204 = phi i32 [ %sub.i.i201, %if.then.i.i202 ], [ %28, %if.end.i.i203 ]
  %29 = inttoptr i32 %retval.0.i.i204 to ptr
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i205 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i205)
  %tobool.not.i.i.i206 = icmp eq i32 %and.i.i.i.i205, 0
  br i1 %tobool.not.i.i.i206, label %folio_flags.exit.i.i, label %if.then.i.i.i208, !prof !231

if.then.i.i.i208:                                 ; preds = %_compound_head.exit.i207
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i207
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %if.then74, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end91

if.then74:                                        ; preds = %folio_flags.exit.i.i
  %i_private = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 54
  %36 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_private, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %if.then74.if.end90_crit_edge, label %if.then76

if.then74.if.end90_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then76:                                        ; preds = %if.then74
  %i_lock = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %38 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_private, align 4
  %tobool78.not = icmp eq ptr %39, null
  br i1 %tobool78.not, label %if.then76.if.end85_crit_edge, label %land.lhs.true

if.then76.if.end85_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

land.lhs.true:                                    ; preds = %if.then76
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool79.not = icmp eq ptr %41, null
  br i1 %tobool79.not, label %land.lhs.true80, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

land.lhs.true80:                                  ; preds = %land.lhs.true
  %start = getelementptr inbounds %struct.shmem_falloc, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %43)
  %cmp81.not = icmp ult i32 %18, %43
  br i1 %cmp81.not, label %land.lhs.true80.if.end85_crit_edge, label %land.lhs.true82

land.lhs.true80.if.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

land.lhs.true82:                                  ; preds = %land.lhs.true80
  %next = getelementptr inbounds %struct.shmem_falloc, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %45)
  %cmp83 = icmp ult i32 %18, %45
  br i1 %cmp83, label %if.then84, label %land.lhs.true82.if.end85_crit_edge

land.lhs.true82.if.end85_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  %nr_unswapped = getelementptr inbounds %struct.shmem_falloc, ptr %39, i32 0, i32 4
  %46 = ptrtoint ptr %nr_unswapped to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_unswapped, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %nr_unswapped, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %redirty

if.end85:                                         ; preds = %land.lhs.true82.if.end85_crit_edge, %land.lhs.true80.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.then76.if.end85_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %if.end90

if.end90:                                         ; preds = %if.end85, %if.then74.if.end90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %48 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %48, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #15
  %49 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  tail call void @flush_dcache_page(ptr noundef %page) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #15
  br label %if.end91

if.end91:                                         ; preds = %SetPageUptodate.exit, %PageUptodate.exit
  %call93 = tail call i32 @get_swap_page(ptr noundef %page) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end91.redirty_crit_edge, label %if.end96

if.end91.redirty_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %redirty

if.end96:                                         ; preds = %if.end91
  tail call void @mutex_lock_nested(ptr noundef nonnull @shmem_swaplist_mutex, i32 noundef 0) #15
  %swaplist = getelementptr i8, ptr %20, i32 -64
  %52 = ptrtoint ptr %swaplist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %swaplist, align 4
  %cmp.i.not = icmp eq ptr %53, %swaplist
  br i1 %cmp.i.not, label %if.then99, label %if.end96.if.end101_crit_edge

if.end96.if.end101_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then99:                                        ; preds = %if.end96
  %54 = load ptr, ptr @shmem_swaplist, align 4
  %call.i.i209 = tail call zeroext i1 @__list_add_valid(ptr noundef %swaplist, ptr noundef nonnull @shmem_swaplist, ptr noundef %54) #15
  br i1 %call.i.i209, label %if.end.i.i210, label %if.then99.if.end101_crit_edge

if.then99.if.end101_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.end.i.i210:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %swaplist, ptr %prev1.i.i, align 4
  %56 = ptrtoint ptr %swaplist to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %swaplist, align 4
  %prev3.i.i = getelementptr i8, ptr %20, i32 -60
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @shmem_swaplist, ptr %prev3.i.i, align 4
  store volatile ptr %swaplist, ptr @shmem_swaplist, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end.i.i210, %if.then99.if.end101_crit_edge, %if.end96.if.end101_crit_edge
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call93, 0
  %call103 = tail call i32 @add_to_swap_cache(ptr noundef %page, [1 x i32] %.fca.0.insert, i32 noundef 532512, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end130

if.then105:                                       ; preds = %if.end101
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %alloced.i = getelementptr i8, ptr %20, i32 -84
  %58 = ptrtoint ptr %alloced.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alloced.i, align 4
  %swapped.i = getelementptr i8, ptr %20, i32 -80
  %60 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %swapped.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 9
  %62 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nrpages.i, align 4
  %66 = add i32 %65, %61
  %sub1.i = sub i32 %59, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i211 = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i211, label %if.then.i214, label %if.then105.shmem_recalc_inode.exit_crit_edge

if.then105.shmem_recalc_inode.exit_crit_edge:     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i214:                                     ; preds = %if.then105
  %67 = ptrtoint ptr %alloced.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %alloced.i, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i212 = zext i32 %mul.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 22
  %68 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_blocks.i, align 8
  %sub4.i = sub i64 %69, %conv.i212
  store i64 %sub4.i, ptr %i_blocks.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i213 = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i213, label %if.then.i214.if.end.i.i217_crit_edge, label %if.then.i.i215

if.then.i214.if.end.i.i217_crit_edge:             ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i217

if.then.i.i215:                                   ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %73, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %76 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i, i32 noundef %76) #15
  br label %if.end.i.i217

if.end.i.i217:                                    ; preds = %if.then.i.i215, %if.then.i214.if.end.i.i217_crit_edge
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 8
  %and.i.i.i = and i32 %78, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i216 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i216, label %if.end.i.i217.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i218

if.end.i.i217.shmem_recalc_inode.exit_crit_edge:  ; preds = %if.end.i.i217
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i218:                                 ; preds = %if.end.i.i217
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %79 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %79) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i218, %if.end.i.i217.shmem_recalc_inode.exit_crit_edge, %if.then105.shmem_recalc_inode.exit_crit_edge
  %80 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %swapped.i, align 8
  %inc106 = add i32 %81, 1
  store i32 %inc106, ptr %swapped.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  tail call void @swap_shmem_alloc([1 x i32] %.fca.0.insert) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp.i.i = icmp slt i32 %call93, 0
  br i1 %cmp.i.i, label %do.end.i.i219, label %shmem_recalc_inode.exit.swp_to_radix_entry.exit_crit_edge, !prof !234

shmem_recalc_inode.exit.swp_to_radix_entry.exit_crit_edge: ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %swp_to_radix_entry.exit

do.end.i.i219:                                    ; preds = %shmem_recalc_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 54, i32 noundef 9, ptr noundef null) #15
  br label %swp_to_radix_entry.exit

swp_to_radix_entry.exit:                          ; preds = %do.end.i.i219, %shmem_recalc_inode.exit.swp_to_radix_entry.exit_crit_edge
  %shl.i.i = shl i32 %call93, 1
  %or.i.i220 = or i32 %shl.i.i, 1
  %82 = inttoptr i32 %or.i.i220 to ptr
  tail call fastcc void @shmem_delete_from_page_cache(ptr noundef %page, ptr noundef nonnull %82)
  tail call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #15
  %call112 = tail call zeroext i1 @page_mapped(ptr noundef %page) #15
  br i1 %call112, label %do.body120, label %do.end128, !prof !234

do.body120:                                       ; preds = %swp_to_radix_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1407, 0\0A.popsection", ""() #15, !srcloc !280
  unreachable

do.end128:                                        ; preds = %swp_to_radix_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call129 = tail call i32 @swap_writepage(ptr noundef %page, ptr noundef %wbc) #15
  br label %cleanup141

if.end130:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #15
  tail call void @put_swap_page(ptr noundef %page, [1 x i32] %.fca.0.insert) #15
  br label %redirty

redirty:                                          ; preds = %if.end130, %if.end91.redirty_crit_edge, %if.then84, %if.then38, %land.end.redirty_crit_edge, %if.end22.redirty_crit_edge, %do.end16.redirty_crit_edge
  %call132 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #15
  %for_reclaim133 = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %83 = ptrtoint ptr %for_reclaim133 to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load134 = load i16, ptr %for_reclaim133, align 4
  %84 = and i16 %bf.load134, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool138.not = icmp eq i16 %84, 0
  br i1 %tobool138.not, label %if.end140, label %redirty.cleanup141_crit_edge

redirty.cleanup141_crit_edge:                     ; preds = %redirty
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup141

if.end140:                                        ; preds = %redirty
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_page(ptr noundef %page) #15
  br label %cleanup141

cleanup141:                                       ; preds = %if.end140, %redirty.cleanup141_crit_edge, %do.end128
  %retval.0 = phi i32 [ 0, %if.end140 ], [ 0, %do.end128 ], [ 524288, %redirty.cleanup141_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_write_begin(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = lshr i64 %pos, 12
  %conv = trunc i64 %2 to i32
  %seals = getelementptr i8, ptr %1, i32 -92
  %3 = ptrtoint ptr %seals to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seals, align 4
  %and = and i32 %4, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !231

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %entry
  %and4 = and i32 %4, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and8 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %conv10 = zext i32 %len to i64
  %add = add i64 %conv10, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %6)
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call fastcc i32 @shmem_getpage_gfp(ptr noundef %1, i32 noundef %conv, ptr noundef %pagep, i32 noundef 3, i32 noundef %10, ptr noundef null, ptr noundef null, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call1.i, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef returned %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp sgt i64 %add, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @i_size_write(ptr noundef %1, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i40 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %and.i.i.i.i40, 0
  br i1 %tobool.not.i.i.i41, label %folio_flags.exit.i.i, label %if.then.i.i.i42, !prof !231

if.then.i.i.i42:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.then4, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end24

if.then4:                                         ; preds = %folio_flags.exit.i.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !231

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %16, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %17, %if.end.i ]
  %18 = inttoptr i32 %retval.0.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %copied)
  %cmp18 = icmp ult i32 %copied, 4096
  br i1 %cmp18, label %if.then20, label %_compound_head.exit.if.end23_crit_edge

_compound_head.exit.if.end23_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then20:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %19 = trunc i64 %pos to i32
  %conv21 = and i32 %19, 4095
  %add22 = add nuw nsw i32 %conv21, %copied
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef %conv21, i32 noundef %add22, i32 noundef 4096) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %_compound_head.exit.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %20 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %18) #15
  br label %if.end24

if.end24:                                         ; preds = %SetPageUptodate.exit, %PageUptodate.exit
  %call25 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #15
  tail call void @unlock_page(ptr noundef %page) #15
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %4, align 4
  %and.i.i43 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i47, label %if.then.i.i46, !prof !231

if.then.i.i46:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i45 = add i32 %24, -1
  br label %_compound_head.exit.i49

if.end.i.i47:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i49

_compound_head.exit.i49:                          ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %25, %if.end.i.i47 ]
  %26 = inttoptr i32 %retval.0.i.i48 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i49
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_write_end, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %26) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %copied
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @shmem_error_remove_page(ptr nocapture noundef readnone %mapping, ptr nocapture noundef readnone %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_init_fs_context(ptr nocapture noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mode = getelementptr inbounds %struct.shmem_options, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1023, ptr %mode, align 4
  %uid = getelementptr inbounds %struct.shmem_options, ptr %call7.i.i, i32 0, i32 3
  %2 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsuid, align 4
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.shmem_options, ptr %call7.i.i, i32 0, i32 4
  %11 = load ptr, ptr %task, align 8
  %cred8 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred8, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsgid, align 4
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gid, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %17 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %18 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @shmem_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.75, i32 noundef 920, i32 noundef 0, i32 noundef 67371008, ptr noundef nonnull @shmem_init_inode) #15
  store ptr %call.i, ptr @shmem_inode_cachep, align 4
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @shmem_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #20
  br label %out2

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kern_mount(ptr noundef nonnull @shmem_fs_type) #15
  store ptr %call2, ptr @shm_mnt, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call2 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #20
  %call12 = tail call i32 @unregister_filesystem(ptr noundef nonnull @shmem_fs_type) #15
  br label %out2

out2:                                             ; preds = %if.then4, %do.end
  %error.0 = phi i32 [ %call, %do.end ], [ %0, %if.then4 ]
  %1 = load ptr, ptr @shmem_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #15
  %2 = inttoptr i32 %error.0 to ptr
  store ptr %2, ptr @shm_mnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shmem_kernel_file_setup(ptr noundef %name, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @shm_mnt, align 4
  %call = tail call fastcc ptr @__shmem_file_setup(ptr noundef %0, ptr noundef %name, i64 noundef %size, i32 noundef %flags, i32 noundef 512)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__shmem_file_setup(ptr noundef %mnt, ptr noundef %name, i64 noundef %size, i32 noundef %flags, i32 noundef %i_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %mnt, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186040320, i64 %size)
  %0 = icmp ugt i64 %size, 17592186040320
  br i1 %0, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %flags, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %shmem_acct_size.exit, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

shmem_acct_size.exit:                             ; preds = %if.end5
  %1 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm.i, align 8
  %add.i = add nuw nsw i64 %size, 4095
  %7 = lshr i64 %add.i, 12
  %conv.i = trunc i64 %7 to i32
  %call2.i = tail call i32 @security_vm_enough_memory_mm(ptr noundef %6, i32 noundef %conv.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %shmem_acct_size.exit.if.end9_crit_edge, label %shmem_acct_size.exit.cleanup_crit_edge

shmem_acct_size.exit.cleanup_crit_edge:           ; preds = %shmem_acct_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

shmem_acct_size.exit.if.end9_crit_edge:           ; preds = %shmem_acct_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %shmem_acct_size.exit.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %8 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_sb, align 4
  %call10 = tail call fastcc ptr @shmem_get_inode(ptr noundef %9, ptr noundef null, i16 noundef zeroext -32257, i32 noundef 0, i32 noundef %flags)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then15, label %if.end24, !prof !234

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @shmem_unacct_size(i32 noundef %flags, i64 noundef %size)
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  %i_flags18 = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags18, align 4
  %or = or i32 %11, %i_flags
  store i32 %or, ptr %i_flags18, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %size, ptr %i_size, align 8
  tail call void @clear_nlink(ptr noundef nonnull %call10) #15
  %call23 = tail call ptr @alloc_file_pseudo(ptr noundef nonnull %call10, ptr noundef %mnt, ptr noundef %name, i32 noundef 2, ptr noundef nonnull @shmem_file_operations) #15
  %cmp.i47 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %if.then15, %shmem_acct_size.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -28 to ptr), %if.then15 ], [ %call23, %if.then26 ], [ %call23, %if.end24.cleanup_crit_edge ], [ %mnt, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %shmem_acct_size.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shmem_file_setup(ptr noundef %name, i64 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @shm_mnt, align 4
  %call = tail call fastcc ptr @__shmem_file_setup(ptr noundef %0, ptr noundef %name, i64 noundef %size, i32 noundef %flags, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shmem_file_setup_with_mnt(ptr noundef %mnt, ptr noundef %name, i64 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__shmem_file_setup(ptr noundef %mnt, ptr noundef %name, i64 noundef %size, i32 noundef %flags, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmem_zero_setup(ptr nocapture noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %conv = zext i32 %sub to i64
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %6 = load ptr, ptr @shm_mnt, align 4
  %call.i = tail call fastcc ptr @__shmem_file_setup(ptr noundef %6, ptr noundef nonnull @.str.17, i64 noundef %conv, i32 noundef %5, i32 noundef 512) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %8 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fput(ptr noundef nonnull %9) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %vm_file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %vm_file, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %11 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @shmem_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @shmem_read_mapping_page_gfp(ptr nocapture noundef readonly %mapping, i32 noundef %index, i32 noundef %gfp) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !230
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %3 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %4, @shmem_aops
  br i1 %cmp.i, label %do.end8, label %do.body3, !prof !231

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4167, 0\0A.popsection", ""() #15, !srcloc !281
  unreachable

do.end8:                                          ; preds = %entry
  %call9 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %1, i32 noundef %index, ptr noundef nonnull %page, i32 noundef 2, i32 noundef %gfp, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %5 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  tail call void @unlock_page(ptr noundef %7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11
  %retval.0 = phi ptr [ %5, %if.then11 ], [ %7, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_lock_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_inode_folio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_batch_remove_exceptionals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @truncate_inode_partial_folio(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_and_cache([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shmem_unuse_swap_entries(ptr noundef %inode, [16 x i32] %pvec.coerce, ptr nocapture noundef readonly %indices) unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pvec.coerce.fca.0.extract = extractvalue [16 x i32] %pvec.coerce, 0
  %0 = ptrtoint ptr %pvec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pvec.coerce.fca.0.extract, ptr %pvec, align 4
  %pvec.coerce.fca.1.extract = extractvalue [16 x i32] %pvec.coerce, 1
  %pvec.coerce.fca.1.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 1
  %1 = ptrtoint ptr %pvec.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pvec.coerce.fca.1.extract, ptr %pvec.coerce.fca.1.gep, align 4
  %pvec.coerce.fca.2.extract = extractvalue [16 x i32] %pvec.coerce, 2
  %pvec.coerce.fca.2.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 2
  %2 = ptrtoint ptr %pvec.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pvec.coerce.fca.2.extract, ptr %pvec.coerce.fca.2.gep, align 4
  %pvec.coerce.fca.3.extract = extractvalue [16 x i32] %pvec.coerce, 3
  %pvec.coerce.fca.3.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 3
  %3 = ptrtoint ptr %pvec.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pvec.coerce.fca.3.extract, ptr %pvec.coerce.fca.3.gep, align 4
  %pvec.coerce.fca.4.extract = extractvalue [16 x i32] %pvec.coerce, 4
  %pvec.coerce.fca.4.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 4
  %4 = ptrtoint ptr %pvec.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pvec.coerce.fca.4.extract, ptr %pvec.coerce.fca.4.gep, align 4
  %pvec.coerce.fca.5.extract = extractvalue [16 x i32] %pvec.coerce, 5
  %pvec.coerce.fca.5.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 5
  %5 = ptrtoint ptr %pvec.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pvec.coerce.fca.5.extract, ptr %pvec.coerce.fca.5.gep, align 4
  %pvec.coerce.fca.6.extract = extractvalue [16 x i32] %pvec.coerce, 6
  %pvec.coerce.fca.6.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 6
  %6 = ptrtoint ptr %pvec.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pvec.coerce.fca.6.extract, ptr %pvec.coerce.fca.6.gep, align 4
  %pvec.coerce.fca.7.extract = extractvalue [16 x i32] %pvec.coerce, 7
  %pvec.coerce.fca.7.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 7
  %7 = ptrtoint ptr %pvec.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pvec.coerce.fca.7.extract, ptr %pvec.coerce.fca.7.gep, align 4
  %pvec.coerce.fca.8.extract = extractvalue [16 x i32] %pvec.coerce, 8
  %pvec.coerce.fca.8.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 8
  %8 = ptrtoint ptr %pvec.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pvec.coerce.fca.8.extract, ptr %pvec.coerce.fca.8.gep, align 4
  %pvec.coerce.fca.9.extract = extractvalue [16 x i32] %pvec.coerce, 9
  %pvec.coerce.fca.9.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 9
  %9 = ptrtoint ptr %pvec.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pvec.coerce.fca.9.extract, ptr %pvec.coerce.fca.9.gep, align 4
  %pvec.coerce.fca.10.extract = extractvalue [16 x i32] %pvec.coerce, 10
  %pvec.coerce.fca.10.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 10
  %10 = ptrtoint ptr %pvec.coerce.fca.10.gep to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %pvec.coerce.fca.10.extract, ptr %pvec.coerce.fca.10.gep, align 4
  %pvec.coerce.fca.11.extract = extractvalue [16 x i32] %pvec.coerce, 11
  %pvec.coerce.fca.11.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 11
  %11 = ptrtoint ptr %pvec.coerce.fca.11.gep to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pvec.coerce.fca.11.extract, ptr %pvec.coerce.fca.11.gep, align 4
  %pvec.coerce.fca.12.extract = extractvalue [16 x i32] %pvec.coerce, 12
  %pvec.coerce.fca.12.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 12
  %12 = ptrtoint ptr %pvec.coerce.fca.12.gep to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pvec.coerce.fca.12.extract, ptr %pvec.coerce.fca.12.gep, align 4
  %pvec.coerce.fca.13.extract = extractvalue [16 x i32] %pvec.coerce, 13
  %pvec.coerce.fca.13.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 13
  %13 = ptrtoint ptr %pvec.coerce.fca.13.gep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pvec.coerce.fca.13.extract, ptr %pvec.coerce.fca.13.gep, align 4
  %pvec.coerce.fca.14.extract = extractvalue [16 x i32] %pvec.coerce, 14
  %pvec.coerce.fca.14.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 14
  %14 = ptrtoint ptr %pvec.coerce.fca.14.gep to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %pvec.coerce.fca.14.extract, ptr %pvec.coerce.fca.14.gep, align 4
  %pvec.coerce.fca.15.extract = extractvalue [16 x i32] %pvec.coerce, 15
  %pvec.coerce.fca.15.gep = getelementptr inbounds [16 x i32], ptr %pvec, i32 0, i32 15
  %15 = ptrtoint ptr %pvec.coerce.fca.15.gep to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %pvec.coerce.fca.15.extract, ptr %pvec.coerce.fca.15.gep, align 4
  %16 = lshr i32 %pvec.coerce.fca.0.extract, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %pvec.coerce.fca.0.extract)
  %cmp42.not = icmp ult i32 %pvec.coerce.fca.0.extract, 16777216
  br i1 %cmp42.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.045 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.232, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.043
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %page, align 4
  %22 = ptrtoint ptr %20 to i32
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr i32, ptr %indices, i32 %i.043
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2, align 4
  %25 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gfp_mask.i, align 4
  %call4 = call fastcc i32 @shmem_swapin_page(ptr noundef %inode, i32 noundef %24, ptr noundef nonnull %page, i32 noundef 2, i32 noundef %26, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page, align 4
  tail call void @unlock_page(ptr noundef %28) #15
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_unuse_swap_entries, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup.thread34_crit_edge

folio_put_testzero.exit.i.i.cleanup.thread34_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread34

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %33) #15
  br label %cleanup.thread34

cleanup.thread34:                                 ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup.thread34_crit_edge
  %inc = add i32 %ret.045, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call4)
  %cmp9 = icmp eq i32 %call4, -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  br i1 %cmp9, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread34, %cleanup.thread
  %ret.232 = phi i32 [ %ret.045, %cleanup.thread ], [ %ret.045, %cleanup.for.inc_crit_edge ], [ %inc, %cleanup.thread34 ]
  %inc13 = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc13, %16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %ret.232, %for.inc.for.end_crit_edge ], [ %ret.045, %cleanup.for.end_crit_edge ]
  %tobool.not = phi i1 [ true, %for.inc.for.end_crit_edge ], [ false, %cleanup.for.end_crit_edge ]
  %error.2 = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ -12, %cleanup.for.end_crit_edge ]
  br i1 %tobool.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %38

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %ret.0.lcssa53 = phi i32 [ %ret.0.lcssa, %for.end.for.end.thread_crit_edge ], [ 0, %entry.for.end.thread_crit_edge ]
  br label %38

38:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %39 = phi i32 [ %ret.0.lcssa53, %for.end.thread ], [ %error.2, %for.end._crit_edge ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shmem_swapin_page(ptr noundef %inode, i32 noundef %index, ptr nocapture noundef %pagep, i32 noundef %sgp, i32 noundef %gfp, ptr noundef readonly %vma, ptr noundef %fault_type) unnamed_addr #0 align 64 {
entry:
  %pvma.i = alloca %struct.vm_area_struct, align 4
  %vmf.i = alloca %struct.vm_fault, align 4
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  %tobool.not = icmp eq ptr %vma, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_mm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %4 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pagep, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %cond.end.do.body6_crit_edge, label %lor.rhs, !prof !234

cond.end.do.body6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

lor.rhs:                                          ; preds = %cond.end
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs.do.body6_crit_edge, label %do.end11, !prof !234

lor.rhs.do.body6_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

do.body6:                                         ; preds = %lor.rhs.do.body6_crit_edge, %cond.end.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1688, 0\0A.popsection", ""() #15, !srcloc !282
  unreachable

do.end11:                                         ; preds = %lor.rhs
  %shr.i.i = lshr i32 %6, 1
  %7 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pagep, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shr.i.i, 0
  %call14 = tail call ptr @lookup_swap_cache([1 x i32] %.fca.0.insert, ptr noundef null, i32 noundef 0) #15
  %8 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %page, align 4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %do.end11.if.end25_crit_edge

do.end11.if.end25_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then16:                                        ; preds = %do.end11
  %tobool17.not = icmp eq ptr %fault_type, null
  br i1 %tobool17.not, label %if.then16.if.end19_crit_edge, label %if.then18

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.then16
  %9 = ptrtoint ptr %fault_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fault_type, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %fault_type, align 4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !267
  %12 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i118 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i118 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 21) to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add14.i = add i32 %20, 1
  store i32 %add14.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !268
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then18.count_vm_event.exit_crit_edge, !prof !234

if.then18.count_vm_event.exit_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_vm_event.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i, %if.then18.count_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #15, !srcloc !269
  tail call fastcc void @count_memcg_event_mm(ptr noundef %cond)
  br label %if.end19

if.end19:                                         ; preds = %count_vm_event.exit, %if.then16.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pvma.i) #15
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %vmf.i) #15
  %22 = getelementptr inbounds i8, ptr %vmf.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 48)
  %24 = ptrtoint ptr %vmf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pvma.i, ptr %vmf.i, align 4
  %vm_ops.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 12
  %25 = call ptr @memset(ptr %pvma.i, i32 0, i32 96)
  %26 = ptrtoint ptr %vm_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vma_init.dummy_vm_ops, ptr %vm_ops.i.i.i, align 4
  %anon_vma_chain.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10
  %27 = ptrtoint ptr %anon_vma_chain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %anon_vma_chain.i.i.i, ptr %anon_vma_chain.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %anon_vma_chain.i.i.i, ptr %prev.i.i.i.i, align 4
  %i_ino.i.i = getelementptr i8, ptr %inode, i32 40
  %29 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino.i.i, align 8
  %add.i.i = add i32 %30, %index
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 13
  %31 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i, ptr %vm_pgoff.i.i, align 4
  %vm_private_data.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 15
  %32 = ptrtoint ptr %vm_private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %vm_private_data.i.i, align 4
  %call.i = call ptr @swap_cluster_readahead([1 x i32] %.fca.0.insert, i32 noundef %gfp, ptr noundef nonnull %vmf.i) #15
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %vmf.i) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pvma.i) #15
  %33 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %page, align 4
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end19.failed_crit_edge, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end19.failed_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = or i32 %6, 1
  %.pre163 = inttoptr i32 %.pre to ptr
  br label %failed

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %do.end11.if.end25_crit_edge
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 788) #15
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i119 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %tobool.not.i.i120 = icmp eq i32 %and.i.i119, 0
  br i1 %tobool.not.i.i120, label %if.end.i.i123, label %if.then.i.i122, !prof !231

if.then.i.i122:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i121 = add i32 %38, -1
  br label %_compound_head.exit.i127

if.end.i.i123:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %35 to i32
  br label %_compound_head.exit.i127

_compound_head.exit.i127:                         ; preds = %if.end.i.i123, %if.then.i.i122
  %retval.0.i.i124 = phi i32 [ %sub.i.i121, %if.then.i.i122 ], [ %39, %if.end.i.i123 ]
  %40 = inttoptr i32 %retval.0.i.i124 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i.i.i125 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i125)
  %tobool.not.i.i.i126 = icmp eq i32 %and.i.i.i.i125, 0
  br i1 %tobool.not.i.i.i126, label %folio_flags.exit.i.i130, label %if.then.i.i.i128, !prof !231

if.then.i.i.i128:                                 ; preds = %_compound_head.exit.i127
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i130:                          ; preds = %_compound_head.exit.i127
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #15
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %40, align 4
  %and.i.i4.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i129 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i129, label %folio_trylock.exit.i, label %folio_flags.exit.i.i130.if.then.i131_crit_edge

folio_flags.exit.i.i130.if.then.i131_crit_edge:   ; preds = %folio_flags.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i131

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i130
  call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #15
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #15, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !251
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i131_crit_edge

folio_trylock.exit.i.if.then.i131_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i131

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lock_page.exit

if.then.i131:                                     ; preds = %folio_trylock.exit.i.if.then.i131_crit_edge, %folio_flags.exit.i.i130.if.then.i131_crit_edge
  call void @__folio_lock(ptr noundef %40) #15
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i131, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %36, align 4
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %48, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %35 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %49, %if.end.i.i ]
  %50 = inttoptr i32 %retval.0.i.i to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !231

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %50, align 4
  %56 = and i32 %55, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.unlock_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.unlock_crit_edge:  ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %51, align 4
  %and.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %50, align 4
  %61 = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.i.not = icmp eq i32 %61, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.unlock_crit_edge, label %lor.lhs.false

PageSwapCache.exit.unlock_crit_edge:              ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

lor.lhs.false:                                    ; preds = %PageSwapCache.exit
  %private = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1, i32 0, i32 3
  %62 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %shr.i.i)
  %cmp.not = icmp eq i32 %63, %shr.i.i
  br i1 %cmp.not, label %lor.lhs.false27, label %lor.lhs.false.unlock_crit_edge

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %call.i132 = call ptr @xa_load(ptr noundef %i_pages.i, i32 noundef %index) #15
  %or.i.i.i = or i32 %6, 1
  %64 = inttoptr i32 %or.i.i.i to ptr
  %cmp.i = icmp eq ptr %call.i132, %64
  br i1 %cmp.i, label %if.end31, label %lor.lhs.false27.unlock_crit_edge

lor.lhs.false27.unlock_crit_edge:                 ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end31:                                         ; preds = %lor.lhs.false27
  %65 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %36, align 4
  %and.i.i133 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %and.i.i133, 0
  br i1 %tobool.not.i.i134, label %if.end.i.i137, label %if.then.i.i136, !prof !231

if.then.i.i136:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i135 = add i32 %66, -1
  br label %_compound_head.exit.i141

if.end.i.i137:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %35 to i32
  br label %_compound_head.exit.i141

_compound_head.exit.i141:                         ; preds = %if.end.i.i137, %if.then.i.i136
  %retval.0.i.i138 = phi i32 [ %sub.i.i135, %if.then.i.i136 ], [ %67, %if.end.i.i137 ]
  %68 = inttoptr i32 %retval.0.i.i138 to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and.i.i.i.i139 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i139)
  %tobool.not.i.i.i140 = icmp eq i32 %and.i.i.i.i139, 0
  br i1 %tobool.not.i.i.i140, label %folio_flags.exit.i.i143, label %if.then.i.i.i142, !prof !231

if.then.i.i.i142:                                 ; preds = %_compound_head.exit.i141
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i143:                          ; preds = %_compound_head.exit.i141
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %68, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i143.failed_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i143.failed_crit_edge:         ; preds = %folio_flags.exit.i.i143
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  call void @wait_on_page_writeback(ptr noundef %35) #15
  %and.i.i144 = and i32 %gfp, 15
  %shr2.i.i = lshr i32 59624, %and.i.i144
  %and3.i.i = and i32 %shr2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i145 = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i145, label %shmem_should_replace_page.exit, label %do.body6.i.i, !prof !231

do.body6.i.i:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #15, !srcloc !283
  unreachable

shmem_should_replace_page.exit:                   ; preds = %PageUptodate.exit
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %35, align 4
  %shr.i.i146 = lshr i32 %76, 30
  %mul.i.i = shl nuw nsw i32 %and.i.i144, 1
  %shr.i2.i = lshr i32 19988769, %mul.i.i
  %and1.i.i = and i32 %shr.i2.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i146, i32 %and1.i.i)
  %cmp.i147 = icmp ugt i32 %shr.i.i146, %and1.i.i
  br i1 %cmp.i147, label %if.then38, label %shmem_should_replace_page.exit.if.end43_crit_edge

shmem_should_replace_page.exit.if.end43_crit_edge: ; preds = %shmem_should_replace_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then38:                                        ; preds = %shmem_should_replace_page.exit
  %call39 = call fastcc i32 @shmem_replace_page(ptr noundef nonnull %page, i32 noundef %gfp, ptr noundef %add.ptr.i, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.failed_crit_edge

if.then38.failed_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %shmem_should_replace_page.exit.if.end43_crit_edge
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %page, align 4
  %call46 = call fastcc i32 @shmem_add_to_page_cache(ptr noundef %78, ptr noundef %1, i32 noundef %index, ptr noundef nonnull %call.i132, i32 noundef %gfp, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.failed_crit_edge

if.end43.failed_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.end49:                                         ; preds = %if.end43
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %swapped = getelementptr i8, ptr %inode, i32 -80
  %79 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %swapped, align 8
  %dec = add i32 %80, -1
  store i32 %dec, ptr %swapped, align 8
  call fastcc void @shmem_recalc_inode(ptr noundef %inode)
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sgp)
  %cmp51 = icmp eq i32 %sgp, 3
  br i1 %cmp51, label %if.then52, label %if.end49.if.end53_crit_edge

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  call void @mark_page_accessed(ptr noundef %78) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49.if.end53_crit_edge
  call void @delete_from_swap_cache(ptr noundef %78) #15
  %call54 = call zeroext i1 @set_page_dirty(ptr noundef %78) #15
  call void @swap_free([1 x i32] %.fca.0.insert) #15
  %81 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %pagep, align 4
  br label %cleanup

failed:                                           ; preds = %if.end43.failed_crit_edge, %if.then38.failed_crit_edge, %folio_flags.exit.i.i143.failed_crit_edge, %if.end19.failed_crit_edge
  %.pre-phi = phi ptr [ %.pre163, %if.end19.failed_crit_edge ], [ %64, %folio_flags.exit.i.i143.failed_crit_edge ], [ %64, %if.end43.failed_crit_edge ], [ %64, %if.then38.failed_crit_edge ]
  %error.0 = phi i32 [ -12, %if.end19.failed_crit_edge ], [ -5, %folio_flags.exit.i.i143.failed_crit_edge ], [ %call46, %if.end43.failed_crit_edge ], [ %call39, %if.then38.failed_crit_edge ]
  %i_pages.i148 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  %call.i149 = call ptr @xa_load(ptr noundef %i_pages.i148, i32 noundef %index) #15
  %cmp.i152 = icmp eq ptr %call.i149, %.pre-phi
  %spec.select = select i1 %cmp.i152, i32 %error.0, i32 -17
  br label %unlock

unlock:                                           ; preds = %failed, %lor.lhs.false27.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %PageSwapCache.exit.unlock_crit_edge, %folio_test_swapbacked.exit.i.i.unlock_crit_edge
  %error.1 = phi i32 [ -17, %lor.lhs.false27.unlock_crit_edge ], [ -17, %lor.lhs.false.unlock_crit_edge ], [ -17, %PageSwapCache.exit.unlock_crit_edge ], [ %spec.select, %failed ], [ -17, %folio_test_swapbacked.exit.i.i.unlock_crit_edge ]
  %82 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %page, align 4
  %tobool60.not = icmp eq ptr %83, null
  br i1 %tobool60.not, label %unlock.cleanup_crit_edge, label %if.then61

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then61:                                        ; preds = %unlock
  call void @unlock_page(ptr noundef nonnull %83) #15
  %84 = getelementptr inbounds %struct.page, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %and.i.i153 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %and.i.i153, 0
  br i1 %tobool.not.i.i154, label %if.end.i.i157, label %if.then.i.i156, !prof !231

if.then.i.i156:                                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i155 = add i32 %86, -1
  br label %_compound_head.exit.i159

if.end.i.i157:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %83 to i32
  br label %_compound_head.exit.i159

_compound_head.exit.i159:                         ; preds = %if.end.i.i157, %if.then.i.i156
  %retval.0.i.i158 = phi i32 [ %sub.i.i155, %if.then.i.i156 ], [ %87, %if.end.i.i157 ]
  %88 = inttoptr i32 %retval.0.i.i158 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %89 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i160, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i160:                               ; preds = %_compound_head.exit.i159
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %88, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i159
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_swapin_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %88, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %88) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %unlock.cleanup_crit_edge, %if.end53
  %retval.0 = phi i32 [ 0, %if.end53 ], [ %error.1, %unlock.cleanup_crit_edge ], [ %error.1, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %error.1, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_swap_cache([1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @count_memcg_event_mm(ptr noundef %mm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@count_memcg_event_mm, %cleanup)) #15
          to label %if.end [label %cleanup], !srcloc !239

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %owner = getelementptr inbounds %struct.anon.17, ptr %mm, i32 0, i32 46
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %owner, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @count_memcg_event_mm.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @count_memcg_event_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 1059, ptr noundef nonnull @.str.22) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %call12 = tail call ptr @mem_cgroup_from_task(ptr noundef %5) #15
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end10.if.end17_crit_edge, label %if.then16, !prof !234

do.end10.if.end17_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %do.end10
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !267
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i2 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i2, label %if.then21.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__count_memcg_events(ptr noundef nonnull %call12, i32 noundef 21, i32 noundef 1) #15
  br label %do.body23.i

if.then21.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  tail call void @__count_memcg_events(ptr noundef nonnull %call12, i32 noundef 21, i32 noundef 1) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then21.i, %do.end11.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !268
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body23.i.count_memcg_events.exit_crit_edge, !prof !234

do.body23.i.count_memcg_events.exit_crit_edge:    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_memcg_events.exit

if.then36.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %count_memcg_events.exit

count_memcg_events.exit:                          ; preds = %if.then36.i, %do.body23.i.count_memcg_events.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !srcloc !269
  br label %if.end17

if.end17:                                         ; preds = %count_memcg_events.exit, %do.end10.if.end17_crit_edge
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %if.end17
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !249
  %8 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i.i10 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shmem_replace_page(ptr nocapture noundef %pagep, i32 noundef %gfp, ptr nocapture noundef readonly %info, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %pvma.i = alloca %struct.vm_area_struct, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagep, align 4
  %private = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  %and.i = and i32 %3, 67108863
  %call2 = tail call ptr @page_mapping(ptr noundef %1) #15
  %and = and i32 %gfp, -3145729
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pvma.i) #15
  %vm_ops.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 12
  %4 = call ptr @memset(ptr %pvma.i, i32 0, i32 96)
  %5 = ptrtoint ptr %vm_ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vma_init.dummy_vm_ops, ptr %vm_ops.i.i.i, align 4
  %anon_vma_chain.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10
  %6 = ptrtoint ptr %anon_vma_chain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %anon_vma_chain.i.i.i, ptr %anon_vma_chain.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %anon_vma_chain.i.i.i, ptr %prev.i.i.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.shmem_inode_info, ptr %info, i32 0, i32 11, i32 11
  %8 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i.i, align 8
  %add.i.i = add i32 %9, %index
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i.i, ptr %vm_pgoff.i.i, align 4
  %vm_private_data.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %pvma.i, i32 0, i32 15
  %11 = ptrtoint ptr %vm_private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vm_private_data.i.i, align 4
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef %and, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pvma.i) #15
  %tobool.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i132 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i133 = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i133, label %if.end.i.i136, label %if.then.i.i135, !prof !231

if.then.i.i135:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i134 = add i32 %14, -1
  br label %_compound_head.exit.i139

if.end.i.i136:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i139

_compound_head.exit.i139:                         ; preds = %if.end.i.i136, %if.then.i.i135
  %retval.0.i.i137 = phi i32 [ %sub.i.i134, %if.then.i.i135 ], [ %15, %if.end.i.i136 ]
  %16 = inttoptr i32 %retval.0.i.i137 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i138 = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i138)
  %cmp.i.i = icmp ult i32 %add.i.i138, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !234

if.then.i1.i:                                     ; preds = %_compound_head.exit.i139
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.33) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !284
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i139
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %19 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@shmem_replace_page, %if.then.i.i.i.i)) #15
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !239

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #15
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i140 = or i32 %20, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i.i140) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %21, 512
  %call.i14.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %or.i13.i) #15
  call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #15
  call void @kunmap_local_indexed(ptr noundef %call.i14.i) #15
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  call void @flush_dcache_page(ptr noundef nonnull %call38.i.i.i.i) #15
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !231

if.then.i:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !240
  unreachable

do.body7.i:                                       ; preds = %get_page.exit
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %12, align 4
  %and.i31.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %12, align 4
  %and.i32.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !234

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !231

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i = add i32 %31, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %32, %if.end.i36.i ]
  %33 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !241
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !231

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i = add i32 %31, -1
  br label %__SetPageLocked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %__SetPageLocked.exit

__SetPageLocked.exit:                             ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %34, %if.end.i43.i ]
  %35 = inttoptr i32 %retval.0.i44.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %or.i.i = or i32 %37, 1
  store i32 %or.i.i, ptr %35, align 4
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %12, align 4
  %and.i.i56 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i57, label %do.body7.i61, label %if.then.i58, !prof !231

if.then.i58:                                      ; preds = %__SetPageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !242
  unreachable

do.body7.i61:                                     ; preds = %__SetPageLocked.exit
  %40 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %12, align 4
  %and.i31.i59 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i31.i59, 0
  br i1 %tobool.not.i.i60, label %if.end.i.i64, label %if.then.i.i63, !prof !231

if.then.i.i63:                                    ; preds = %do.body7.i61
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i62 = add i32 %41, -1
  br label %_compound_head.exit.i69

if.end.i.i64:                                     ; preds = %do.body7.i61
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i69

_compound_head.exit.i69:                          ; preds = %if.end.i.i64, %if.then.i.i63
  %retval.0.i.i65 = phi i32 [ %sub.i.i62, %if.then.i.i63 ], [ %42, %if.end.i.i64 ]
  %43 = inttoptr i32 %retval.0.i.i65 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i66 = icmp eq i32 %45, -1
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %12, align 4
  %and.i32.i67 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i67)
  %tobool.not.i33.i68 = icmp eq i32 %and.i32.i67, 0
  br i1 %cmp.i.not.i66, label %if.then17.i70, label %do.end24.i76, !prof !234

if.then17.i70:                                    ; preds = %_compound_head.exit.i69
  br i1 %tobool.not.i33.i68, label %if.end.i36.i73, label %if.then.i35.i72, !prof !231

if.then.i35.i72:                                  ; preds = %if.then17.i70
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i71 = add i32 %47, -1
  br label %_compound_head.exit38.i75

if.end.i36.i73:                                   ; preds = %if.then17.i70
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit38.i75

_compound_head.exit38.i75:                        ; preds = %if.end.i36.i73, %if.then.i35.i72
  %retval.0.i37.i74 = phi i32 [ %sub.i34.i71, %if.then.i35.i72 ], [ %48, %if.end.i36.i73 ]
  %49 = inttoptr i32 %retval.0.i37.i74 to ptr
  call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #15, !srcloc !243
  unreachable

do.end24.i76:                                     ; preds = %_compound_head.exit.i69
  br i1 %tobool.not.i33.i68, label %if.end.i43.i79, label %if.then.i42.i78, !prof !231

if.then.i42.i78:                                  ; preds = %do.end24.i76
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i77 = add i32 %47, -1
  br label %__SetPageSwapBacked.exit

if.end.i43.i79:                                   ; preds = %do.end24.i76
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %__SetPageSwapBacked.exit

__SetPageSwapBacked.exit:                         ; preds = %if.end.i43.i79, %if.then.i42.i78
  %retval.0.i44.i80 = phi i32 [ %sub.i41.i77, %if.then.i42.i78 ], [ %50, %if.end.i43.i79 ]
  %51 = inttoptr i32 %retval.0.i44.i80 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %or.i.i81 = or i32 %53, 524288
  store i32 %or.i.i81, ptr %51, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %__SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

SetPageUptodate.exit:                             ; preds = %__SetPageSwapBacked.exit
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call38.i.i.i.i) #15
  %private1.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1, i32 0, i32 3
  %56 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %3, ptr %private1.i, align 4
  %57 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %12, align 4
  %and.i.i82 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i83, label %do.body7.i87, label %if.then.i84, !prof !231

if.then.i84:                                      ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #15, !srcloc !285
  unreachable

do.body7.i87:                                     ; preds = %SetPageUptodate.exit
  %59 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %12, align 4
  %and.i31.i85 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i85)
  %tobool.not.i.i86 = icmp eq i32 %and.i31.i85, 0
  br i1 %tobool.not.i.i86, label %if.end.i.i90, label %if.then.i.i89, !prof !231

if.then.i.i89:                                    ; preds = %do.body7.i87
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i88 = add i32 %60, -1
  br label %_compound_head.exit.i95

if.end.i.i90:                                     ; preds = %do.body7.i87
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i95

_compound_head.exit.i95:                          ; preds = %if.end.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %61, %if.end.i.i90 ]
  %62 = inttoptr i32 %retval.0.i.i91 to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i92 = icmp eq i32 %64, -1
  %65 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %12, align 4
  %and.i32.i93 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i93)
  %tobool.not.i33.i94 = icmp eq i32 %and.i32.i93, 0
  br i1 %cmp.i.not.i92, label %if.then17.i96, label %do.end24.i102, !prof !234

if.then17.i96:                                    ; preds = %_compound_head.exit.i95
  br i1 %tobool.not.i33.i94, label %if.end.i36.i99, label %if.then.i35.i98, !prof !231

if.then.i35.i98:                                  ; preds = %if.then17.i96
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i97 = add i32 %66, -1
  br label %_compound_head.exit38.i101

if.end.i36.i99:                                   ; preds = %if.then17.i96
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit38.i101

_compound_head.exit38.i101:                       ; preds = %if.end.i36.i99, %if.then.i35.i98
  %retval.0.i37.i100 = phi i32 [ %sub.i34.i97, %if.then.i35.i98 ], [ %67, %if.end.i36.i99 ]
  %68 = inttoptr i32 %retval.0.i37.i100 to ptr
  call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #15, !srcloc !286
  unreachable

do.end24.i102:                                    ; preds = %_compound_head.exit.i95
  br i1 %tobool.not.i33.i94, label %if.end.i43.i105, label %if.then.i42.i104, !prof !231

if.then.i42.i104:                                 ; preds = %do.end24.i102
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i103 = add i32 %66, -1
  br label %SetPageSwapCache.exit

if.end.i43.i105:                                  ; preds = %do.end24.i102
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %SetPageSwapCache.exit

SetPageSwapCache.exit:                            ; preds = %if.end.i43.i105, %if.then.i42.i104
  %retval.0.i44.i106 = phi i32 [ %sub.i41.i103, %if.then.i42.i104 ], [ %69, %if.end.i43.i105 ]
  %70 = inttoptr i32 %retval.0.i44.i106 to ptr
  call void @_set_bit(i32 noundef 10, ptr noundef %70) #15
  %i_pages = getelementptr inbounds %struct.address_space, ptr %call2, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %i_pages) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #15
  %71 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %72 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %73 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %74 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %75 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %76 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %i_pages, ptr %xas.i, align 4
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and.i, ptr %71, align 4
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %72, align 4
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 3 to ptr), ptr %73, align 4
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %74, align 4
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %75, align 4
  %tobool.not.i141 = icmp eq ptr %1, null
  br i1 %tobool.not.i141, label %do.body4.i, label %do.end29.i, !prof !234

do.body4.i:                                       ; preds = %SetPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #15, !srcloc !287
  unreachable

do.end29.i:                                       ; preds = %SetPageSwapCache.exit
  %call.i = call ptr @xas_load(ptr noundef nonnull %xas.i) #15
  %cmp.not.i = icmp eq ptr %call.i, %1
  br i1 %cmp.not.i, label %if.then7, label %if.then16.critedge

if.then7:                                         ; preds = %do.end29.i
  %call32.i = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull %call38.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #15
  %82 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %and.i142 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %if.end.i, label %if.then.i144, !prof !231

if.then.i144:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %84, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i144
  %retval.0.i145 = phi i32 [ %sub.i, %if.then.i144 ], [ %85, %if.end.i ]
  %86 = inttoptr i32 %retval.0.i145 to ptr
  %87 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %12, align 4
  %and.i146 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.end.i150, label %if.then.i149, !prof !231

if.then.i149:                                     ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i148 = add i32 %88, -1
  br label %_compound_head.exit152

if.end.i150:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit152

_compound_head.exit152:                           ; preds = %if.end.i150, %if.then.i149
  %retval.0.i151 = phi i32 [ %sub.i148, %if.then.i149 ], [ %89, %if.end.i150 ]
  %90 = inttoptr i32 %retval.0.i151 to ptr
  call void @mem_cgroup_migrate(ptr noundef %86, ptr noundef %90) #15
  call void @__mod_lruvec_page_state(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 19, i32 noundef 1) #15
  call void @__mod_lruvec_page_state(ptr noundef nonnull %1, i32 noundef 19, i32 noundef -1) #15
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #15
  call void @lru_cache_add(ptr noundef nonnull %call38.i.i.i.i) #15
  %91 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call38.i.i.i.i, ptr %pagep, align 4
  br label %if.end17

if.then16.critedge:                               ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #15
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16.critedge, %_compound_head.exit152
  %retval.0.i184 = phi i32 [ -2, %if.then16.critedge ], [ 0, %_compound_head.exit152 ]
  %oldpage.0 = phi ptr [ %call38.i.i.i.i, %if.then16.critedge ], [ %1, %_compound_head.exit152 ]
  %92 = getelementptr inbounds %struct.page, ptr %oldpage.0, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %and.i.i107 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107)
  %tobool.not.i108 = icmp eq i32 %and.i.i107, 0
  br i1 %tobool.not.i108, label %do.body7.i112, label %if.then.i109, !prof !231

if.then.i109:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef nonnull %oldpage.0, ptr noundef nonnull @.str.34) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #15, !srcloc !288
  unreachable

do.body7.i112:                                    ; preds = %if.end17
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %92, align 4
  %and.i31.i110 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i110)
  %tobool.not.i.i111 = icmp eq i32 %and.i31.i110, 0
  br i1 %tobool.not.i.i111, label %if.end.i.i115, label %if.then.i.i114, !prof !231

if.then.i.i114:                                   ; preds = %do.body7.i112
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i113 = add i32 %96, -1
  br label %_compound_head.exit.i120

if.end.i.i115:                                    ; preds = %do.body7.i112
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %oldpage.0 to i32
  br label %_compound_head.exit.i120

_compound_head.exit.i120:                         ; preds = %if.end.i.i115, %if.then.i.i114
  %retval.0.i.i116 = phi i32 [ %sub.i.i113, %if.then.i.i114 ], [ %97, %if.end.i.i115 ]
  %98 = inttoptr i32 %retval.0.i.i116 to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp.i.not.i117 = icmp eq i32 %100, -1
  %101 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %92, align 4
  %and.i32.i118 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i118)
  %tobool.not.i33.i119 = icmp eq i32 %and.i32.i118, 0
  br i1 %cmp.i.not.i117, label %if.then17.i121, label %do.end24.i127, !prof !234

if.then17.i121:                                   ; preds = %_compound_head.exit.i120
  br i1 %tobool.not.i33.i119, label %if.end.i36.i124, label %if.then.i35.i123, !prof !231

if.then.i35.i123:                                 ; preds = %if.then17.i121
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i122 = add i32 %102, -1
  br label %_compound_head.exit38.i126

if.end.i36.i124:                                  ; preds = %if.then17.i121
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %oldpage.0 to i32
  br label %_compound_head.exit38.i126

_compound_head.exit38.i126:                       ; preds = %if.end.i36.i124, %if.then.i35.i123
  %retval.0.i37.i125 = phi i32 [ %sub.i34.i122, %if.then.i35.i123 ], [ %103, %if.end.i36.i124 ]
  %104 = inttoptr i32 %retval.0.i37.i125 to ptr
  call void @dump_page(ptr noundef %104, ptr noundef nonnull @.str.35) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #15, !srcloc !289
  unreachable

do.end24.i127:                                    ; preds = %_compound_head.exit.i120
  br i1 %tobool.not.i33.i119, label %if.end.i43.i130, label %if.then.i42.i129, !prof !231

if.then.i42.i129:                                 ; preds = %do.end24.i127
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i128 = add i32 %102, -1
  br label %ClearPageSwapCache.exit

if.end.i43.i130:                                  ; preds = %do.end24.i127
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %oldpage.0 to i32
  br label %ClearPageSwapCache.exit

ClearPageSwapCache.exit:                          ; preds = %if.end.i43.i130, %if.then.i42.i129
  %retval.0.i44.i131 = phi i32 [ %sub.i41.i128, %if.then.i42.i129 ], [ %105, %if.end.i43.i130 ]
  %106 = inttoptr i32 %retval.0.i44.i131 to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %106) #15
  %private1.i153 = getelementptr inbounds %struct.page, ptr %oldpage.0, i32 0, i32 1, i32 0, i32 3
  %107 = ptrtoint ptr %private1.i153 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %private1.i153, align 4
  call void @unlock_page(ptr noundef nonnull %oldpage.0) #15
  %108 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %92, align 4
  %and.i.i154 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.not.i.i155, label %if.end.i.i158, label %if.then.i.i157, !prof !231

if.then.i.i157:                                   ; preds = %ClearPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i156 = add i32 %109, -1
  br label %_compound_head.exit.i160

if.end.i.i158:                                    ; preds = %ClearPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %oldpage.0 to i32
  br label %_compound_head.exit.i160

_compound_head.exit.i160:                         ; preds = %if.end.i.i158, %if.then.i.i157
  %retval.0.i.i159 = phi i32 [ %sub.i.i156, %if.then.i.i157 ], [ %110, %if.end.i.i158 ]
  %111 = inttoptr i32 %retval.0.i.i159 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %111, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %112 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i.i.i.i = icmp eq i32 %113, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i161, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i161:                               ; preds = %_compound_head.exit.i160
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %111, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i160
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %114 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %114, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_replace_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %111, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %111) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %115 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %92, align 4
  %and.i.i162 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.not.i.i163, label %if.end.i.i166, label %if.then.i.i165, !prof !231

if.then.i.i165:                                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i164 = add i32 %116, -1
  br label %_compound_head.exit.i171

if.end.i.i166:                                    ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %oldpage.0 to i32
  br label %_compound_head.exit.i171

_compound_head.exit.i171:                         ; preds = %if.end.i.i166, %if.then.i.i165
  %retval.0.i.i167 = phi i32 [ %sub.i.i164, %if.then.i.i165 ], [ %117, %if.end.i.i166 ]
  %118 = inttoptr i32 %retval.0.i.i167 to ptr
  %_refcount.i.i.i.i.i168 = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 3
  %call.i.i.i.i.i.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i168, i32 noundef 4) #15
  %119 = ptrtoint ptr %_refcount.i.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %_refcount.i.i.i.i.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i.i.i.i170 = icmp eq i32 %120, 0
  br i1 %cmp.i.i.i.i170, label %if.then.i.i.i.i172, label %do.end5.i.i.i.i176, !prof !234

if.then.i.i.i.i172:                               ; preds = %_compound_head.exit.i171
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %118, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i176:                               ; preds = %_compound_head.exit.i171
  %call.i.i.i10.i.i.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i168, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i168, i32 1, i32 3, i32 1) #15
  %121 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i168, ptr %_refcount.i.i.i.i.i168, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i168) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i174 = extractvalue { i32, i32 } %121, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i174)
  %cmp.i.i.i.i.i.i.i175 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i174, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_replace_page, %if.then.i.i.i.i.i178)) #15
          to label %folio_put_testzero.exit.i.i179 [label %if.then.i.i.i.i.i178], !srcloc !239

if.then.i.i.i.i.i178:                             ; preds = %do.end5.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i177 = zext i1 %cmp.i.i.i.i.i.i.i175 to i32
  call void @__page_ref_mod_and_test(ptr noundef %118, i32 noundef -1, i32 noundef %conv.i.i.i.i.i177) #15
  br label %folio_put_testzero.exit.i.i179

folio_put_testzero.exit.i.i179:                   ; preds = %if.then.i.i.i.i.i178, %do.end5.i.i.i.i176
  br i1 %cmp.i.i.i.i.i.i.i175, label %if.then.i4.i180, label %folio_put_testzero.exit.i.i179.cleanup_crit_edge

folio_put_testzero.exit.i.i179.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i179
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i180:                                  ; preds = %folio_put_testzero.exit.i.i179
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %118) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i180, %folio_put_testzero.exit.i.i179.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i184, %folio_put_testzero.exit.i.i179.cleanup_crit_edge ], [ %retval.0.i184, %if.then.i4.i180 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_swap_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_free([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_from_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__count_memcg_events(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swap_cluster_readahead([1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_migrate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_userfault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_conflict(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mem_cgroup_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_throttle_swaprate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_swap_cache(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_shmem_alloc([1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmem_delete_from_page_cache(ptr noundef %page, ptr noundef %radswap) unnamed_addr #0 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

PageCompound.exit:                                ; preds = %entry
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %do.end9, label %PageCompound.exit.if.then_crit_edge, !prof !231

PageCompound.exit.if.then_crit_edge:              ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %PageCompound.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.47) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 770, 0\0A.popsection", ""() #15, !srcloc !290
  unreachable

do.end9:                                          ; preds = %PageCompound.exit
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #15
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #15
  %10 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %13 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %14 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %15 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i_pages, ptr %xas.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %14, align 4
  %tobool.not.i43 = icmp eq ptr %page, null
  br i1 %tobool.not.i43, label %do.body4.i, label %do.body10.i, !prof !234

do.body4.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #15, !srcloc !287
  unreachable

do.body10.i:                                      ; preds = %do.end9
  %tobool11.not.i = icmp eq ptr %radswap, null
  br i1 %tobool11.not.i, label %do.body21.i, label %do.end29.i, !prof !234

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #15, !srcloc !291
  unreachable

do.end29.i:                                       ; preds = %do.body10.i
  %call.i = call ptr @xas_load(ptr noundef nonnull %xas.i) #15
  %cmp.not.i = icmp eq ptr %call.i, %page
  br i1 %cmp.not.i, label %if.end31.i, label %do.end29.i.shmem_replace_entry.exit_crit_edge

do.end29.i.shmem_replace_entry.exit_crit_edge:    ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_replace_entry.exit

if.end31.i:                                       ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %call32.i = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull %radswap) #15
  br label %shmem_replace_entry.exit

shmem_replace_entry.exit:                         ; preds = %if.end31.i, %do.end29.i.shmem_replace_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #15
  %21 = ptrtoint ptr %mapping1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mapping1, align 4
  %nrpages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nrpages, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %nrpages, align 4
  call void @__mod_lruvec_page_state(ptr noundef nonnull %page, i32 noundef 19, i32 noundef -1) #15
  call void @__mod_lruvec_page_state(ptr noundef nonnull %page, i32 noundef 23, i32 noundef -1) #15
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #15
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %5, align 4
  %and.i.i44 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %shmem_replace_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %shmem_replace_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_delete_from_page_cache, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %27) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  br i1 %cmp.not.i, label %do.end31, label %do.body23, !prof !231

do.body23:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 780, 0\0A.popsection", ""() #15, !srcloc !292
  unreachable

do.end31:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_writepage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !294
  %9 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !295
  %18 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !296
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !297
  %37 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !231

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !298
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #15
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !299
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !300
  %48 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_fault(ptr noundef %vmf) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  %shmem_fault_wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfp_mask.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #15
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %ret, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %11 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_private, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then, !prof !231

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then:                                          ; preds = %entry
  %i_lock = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %13 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_private, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.then.cleanup.thread_crit_edge, label %land.lhs.true

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true8

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

land.lhs.true8:                                   ; preds = %land.lhs.true
  %pgoff = getelementptr inbounds %struct.anon.20, ptr %vmf, i32 0, i32 2
  %17 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pgoff, align 4
  %start = getelementptr inbounds %struct.shmem_falloc, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not = icmp ult i32 %18, %20
  br i1 %cmp.not, label %land.lhs.true8.cleanup.thread_crit_edge, label %land.lhs.true9

land.lhs.true8.cleanup.thread_crit_edge:          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

land.lhs.true9:                                   ; preds = %land.lhs.true8
  %next = getelementptr inbounds %struct.shmem_falloc, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp11 = icmp ult i32 %18, %22
  br i1 %cmp11, label %if.then12, label %land.lhs.true9.cleanup.thread_crit_edge

land.lhs.true9.cleanup.thread_crit_edge:          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %shmem_fault_wait) #15
  %23 = getelementptr inbounds %struct.wait_queue_entry, ptr %shmem_fault_wait, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %shmem_fault_wait, i32 0, i32 2
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %shmem_fault_wait, i32 0, i32 3
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %shmem_fault_wait, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %shmem_fault_wait to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %shmem_fault_wait, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %23, align 4
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @synchronous_wake_function, ptr %24, align 4
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %25, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %25, ptr %26, align 4
  %36 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %ret, align 4
  %call18 = call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %vmf)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end27.critedge, label %if.then20

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1024, ptr %ret, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %14, align 4
  call void @prepare_to_wait(ptr noundef %39, ptr noundef nonnull %shmem_fault_wait, i32 noundef 2) #15
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  call void @schedule() #15
  call void @_raw_spin_lock(ptr noundef %i_lock) #15
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %shmem_fault_wait) #15
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  call void @fput(ptr noundef nonnull %call18) #15
  br label %cleanup

if.end27.critedge:                                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %14, align 4
  call void @prepare_to_wait(ptr noundef %41, ptr noundef nonnull %shmem_fault_wait, i32 noundef 2) #15
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  call void @schedule() #15
  call void @_raw_spin_lock(ptr noundef %i_lock) #15
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %shmem_fault_wait) #15
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true9.cleanup.thread_crit_edge, %land.lhs.true8.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %if.end30

cleanup:                                          ; preds = %if.end27.critedge, %if.then20
  %42 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %shmem_fault_wait) #15
  br label %cleanup37

if.end30:                                         ; preds = %cleanup.thread, %entry.if.end30_crit_edge
  %pgoff31 = getelementptr inbounds %struct.anon.20, ptr %vmf, i32 0, i32 2
  %44 = ptrtoint ptr %pgoff31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pgoff31, align 4
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %call32 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %5, i32 noundef %45, ptr noundef %page, i32 noundef 2, i32 noundef %9, ptr noundef %1, ptr noundef %vmf, ptr noundef nonnull %ret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call32)
  %cmp.i = icmp eq i32 %call32, -12
  %..i = select i1 %cmp.i, i32 1, i32 2
  br label %cleanup37

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ret, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %if.end36, %if.then34, %cleanup
  %retval.1 = phi i32 [ %..i, %if.then34 ], [ %47, %if.end36 ], [ %43, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #15
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synchronous_wake_function(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @default_wake_function(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #15
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry1, ptr %prev.i3.i, align 4
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @maybe_unlock_mmap_for_io(ptr nocapture noundef readonly %vmf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %flags1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %2 = and i32 %1, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp eq i32 %2, 4
  br i1 %3, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %entry
  %4 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_file, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #15, !srcloc !253
  %9 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmf, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@maybe_unlock_mmap_for_io, %if.then.i.i)) #15
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !239

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_released(ptr noundef %12, i1 noundef zeroext false) #15
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.then3
  %mmap_lock.i = getelementptr inbounds %struct.anon.17, ptr %12, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %entry.cleanup_crit_edge
  %fpin.addr.0 = phi ptr [ %7, %mmap_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %fpin.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_parse_one(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  %rest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #15
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rest) #15
  %3 = ptrtoint ptr %rest to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rest, align 4, !annotation !230
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @shmem_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 4, label %sw.bb202
    i32 5, label %sw.bb210
    i32 2, label %sw.bb217
    i32 7, label %sw.bb220
    i32 0, label %sw.bb231
    i32 1, label %sw.bb249
    i32 3, label %if.end.unsupported_parameter_crit_edge
    i32 8, label %sw.bb258
    i32 9, label %sw.bb261
  ]

if.end.unsupported_parameter_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %unsupported_parameter

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = call i64 @memparse(ptr noundef %7, ptr noundef nonnull %rest) #15
  %8 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rest, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %11)
  %cmp2 = icmp eq i8 %11, 37
  br i1 %cmp2, label %if.then4, label %sw.bb.if.end194_crit_edge

sw.bb.if.end194_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end194

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %shl = shl i64 %call1, 12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %12 = load volatile i32, ptr @_totalram_pages, align 4
  %conv6 = zext i32 %12 to i64
  %mul = mul i64 %shl, %conv6
  %13 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #18, !srcloc !301
  %asmresult.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i = extractvalue { i64, i32 } %13, 1
  %14 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #18, !srcloc !302
  %asmresult10.i = extractvalue { i64, i32 } %14, 0
  %div172386 = lshr i64 %asmresult10.i, 6
  %15 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rest, align 4
  %incdec.ptr = getelementptr i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %rest, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then4, %sw.bb.if.end194_crit_edge
  %size.0 = phi i64 [ %div172386, %if.then4 ], [ %call1, %sw.bb.if.end194_crit_edge ]
  %17 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rest, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool195.not = icmp eq i8 %20, 0
  br i1 %tobool195.not, label %if.end197, label %if.end194.bad_value_crit_edge

if.end194.bad_value_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_value

if.end197:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  %sub199 = add i64 %size.0, 4095
  %div200385 = lshr i64 %sub199, 12
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %div200385, ptr %1, align 8
  %seen = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seen, align 4
  %or201 = or i32 %23, 1
  store i32 %or201, ptr %seen, align 4
  br label %cleanup

sw.bb202:                                         ; preds = %if.end
  %24 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call203 = call i64 @memparse(ptr noundef %26, ptr noundef nonnull %rest) #15
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call203, ptr %1, align 8
  %28 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rest, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool205.not = icmp eq i8 %31, 0
  br i1 %tobool205.not, label %if.end207, label %sw.bb202.bad_value_crit_edge

sw.bb202.bad_value_crit_edge:                     ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_value

if.end207:                                        ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #17
  %seen208 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %seen208 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seen208, align 4
  %or209 = or i32 %33, 1
  store i32 %or209, ptr %seen208, align 4
  br label %cleanup

sw.bb210:                                         ; preds = %if.end
  %34 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call211 = call i64 @memparse(ptr noundef %36, ptr noundef nonnull %rest) #15
  %inodes = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %inodes to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call211, ptr %inodes, align 8
  %38 = ptrtoint ptr %rest to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rest, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool212.not = icmp eq i8 %41, 0
  br i1 %tobool212.not, label %if.end214, label %sw.bb210.bad_value_crit_edge

sw.bb210.bad_value_crit_edge:                     ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_value

if.end214:                                        ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #17
  %seen215 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %seen215 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seen215, align 4
  %or216 = or i32 %43, 2
  store i32 %or216, ptr %seen215, align 4
  br label %cleanup

sw.bb217:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %44 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %47 = trunc i32 %46 to i16
  %conv219 = and i16 %47, 4095
  %mode = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv219, ptr %mode, align 4
  br label %cleanup

sw.bb220:                                         ; preds = %if.end
  %uid = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 3
  %49 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 25
  %55 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns, align 4
  %57 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %call225 = call i32 @make_kuid(ptr noundef %56, i32 noundef %59) #15
  %60 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call225, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call225)
  %cmp.i.not = icmp eq i32 %call225, -1
  br i1 %cmp.i.not, label %sw.bb220.bad_value_crit_edge, label %sw.bb220.cleanup_crit_edge

sw.bb220.cleanup_crit_edge:                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb220.bad_value_crit_edge:                     ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_value

sw.bb231:                                         ; preds = %if.end
  %gid = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 4
  %61 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i387 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i387 to ptr
  %task239 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task239 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task239, align 8
  %cred240 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 99
  %65 = ptrtoint ptr %cred240 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cred240, align 16
  %user_ns241 = getelementptr inbounds %struct.cred, ptr %66, i32 0, i32 25
  %67 = ptrtoint ptr %user_ns241 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ns241, align 4
  %69 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %call242 = call i32 @make_kgid(ptr noundef %68, i32 noundef %71) #15
  %72 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call242, ptr %gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call242)
  %cmp.i388.not = icmp eq i32 %call242, -1
  br i1 %cmp.i388.not, label %sw.bb231.bad_value_crit_edge, label %sw.bb231.cleanup_crit_edge

sw.bb231.cleanup_crit_edge:                       ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb231.bad_value_crit_edge:                     ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #17
  br label %bad_value

sw.bb249:                                         ; preds = %if.end
  %73 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %huge = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 7
  %76 = ptrtoint ptr %huge to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %huge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp251.not = icmp eq i32 %75, 0
  br i1 %cmp251.not, label %if.end254, label %sw.bb249.unsupported_parameter_crit_edge

sw.bb249.unsupported_parameter_crit_edge:         ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #17
  br label %unsupported_parameter

if.end254:                                        ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #17
  %seen255 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %77 = ptrtoint ptr %seen255 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %seen255, align 4
  %or256 = or i32 %78, 4
  store i32 %or256, ptr %seen255, align 4
  br label %cleanup

sw.bb258:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %full_inums = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %full_inums to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %full_inums, align 2
  %seen259 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %seen259 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %seen259, align 4
  %or260 = or i32 %81, 8
  store i32 %or260, ptr %seen259, align 4
  br label %cleanup

sw.bb261:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %log262 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %82 = ptrtoint ptr %log262 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %log262, align 4
  %84 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %83, ptr noundef %85, i8 noundef zeroext 101, ptr noundef nonnull @.str.50) #15
  br label %cleanup

unsupported_parameter:                            ; preds = %sw.bb249.unsupported_parameter_crit_edge, %if.end.unsupported_parameter_crit_edge
  %log265 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %log265 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %log265, align 4
  %88 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %log.i, align 4
  %90 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %87, ptr noundef %89, i8 noundef zeroext 101, ptr noundef nonnull @.str.51, ptr noundef %91) #15
  br label %cleanup

bad_value:                                        ; preds = %sw.bb231.bad_value_crit_edge, %sw.bb220.bad_value_crit_edge, %sw.bb210.bad_value_crit_edge, %sw.bb202.bad_value_crit_edge, %if.end194.bad_value_crit_edge
  %log269 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %92 = ptrtoint ptr %log269 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %log269, align 4
  %94 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %log.i, align 4
  %96 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %93, ptr noundef %95, i8 noundef zeroext 101, ptr noundef nonnull @.str.52, ptr noundef %97) #15
  br label %cleanup

cleanup:                                          ; preds = %bad_value, %unsupported_parameter, %sw.bb261, %sw.bb258, %if.end254, %sw.bb231.cleanup_crit_edge, %sw.bb220.cleanup_crit_edge, %sw.bb217, %if.end214, %if.end207, %if.end197, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb261 ], [ -22, %unsupported_parameter ], [ -22, %bad_value ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %sw.bb231.cleanup_crit_edge ], [ 0, %sw.bb220.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb258 ], [ 0, %if.end254 ], [ 0, %sw.bb217 ], [ 0, %if.end214 ], [ 0, %if.end207 ], [ 0, %if.end197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rest) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_parse_options(ptr noundef %fc, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = icmp eq ptr %data, null
  br i1 %cond, label %entry.cleanup35_crit_edge, label %if.then

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

if.then:                                          ; preds = %entry
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %call = tail call i32 @security_sb_eat_lsm_opts(ptr noundef nonnull %data, ptr noundef %security) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.for.cond.preheader_crit_edge, label %if.then.cleanup35_crit_edge

if.then.cleanup35_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

if.then.for.cond.preheader_crit_edge:             ; preds = %if.then
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cleanup32.for.cond.preheader_crit_edge, %if.then.for.cond.preheader_crit_edge
  %options.060 = phi ptr [ %options.2, %cleanup32.for.cond.preheader_crit_edge ], [ %data, %if.then.for.cond.preheader_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %for.cond.preheader
  %options.1 = phi ptr [ %incdec.ptr, %if.end7.for.cond_crit_edge ], [ %options.060, %for.cond.preheader ]
  %call4 = tail call ptr @strchr(ptr noundef %options.1, i32 noundef 44)
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %for.cond.for.end_crit_edge, label %if.end7

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end7:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr i8, ptr %call4, i32 1
  %0 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %if.then10, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call4, align 1
  br label %for.end

for.end:                                          ; preds = %if.then10, %for.cond.for.end_crit_edge
  %options.2 = phi ptr [ %incdec.ptr, %if.then10 ], [ null, %for.cond.for.end_crit_edge ]
  %5 = ptrtoint ptr %options.060 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %options.060, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %for.end.cleanup32_crit_edge, label %if.then13

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.then13:                                        ; preds = %for.end
  %call14 = tail call ptr @strchr(ptr noundef nonnull %options.060, i32 noundef 61)
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then13.if.end20_crit_edge, label %if.then17

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr18 = getelementptr i8, ptr %call14, i32 1
  %7 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call14, align 1
  %call19 = tail call i32 @strlen(ptr noundef %incdec.ptr18) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then13.if.end20_crit_edge
  %value.0 = phi ptr [ %incdec.ptr18, %if.then17 ], [ null, %if.then13.if.end20_crit_edge ]
  %len.0 = phi i32 [ %call19, %if.then17 ], [ 0, %if.then13.if.end20_crit_edge ]
  %call21 = tail call i32 @vfs_parse_fs_string(ptr noundef %fc, ptr noundef nonnull %options.060, ptr noundef %value.0, i32 noundef %len.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup35_crit_edge, label %if.end20.cleanup32_crit_edge

if.end20.cleanup32_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup32

if.end20.cleanup35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

cleanup32:                                        ; preds = %if.end20.cleanup32_crit_edge, %for.end.cleanup32_crit_edge
  %cmp.not = icmp eq ptr %options.2, null
  br i1 %cmp.not, label %cleanup32.cleanup35_crit_edge, label %cleanup32.for.cond.preheader_crit_edge

cleanup32.for.cond.preheader_crit_edge:           ; preds = %cleanup32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

cleanup32.cleanup35_crit_edge:                    ; preds = %cleanup32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup32.cleanup35_crit_edge, %if.end20.cleanup35_crit_edge, %if.then.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.6 = phi i32 [ %call, %if.then.cleanup35_crit_edge ], [ 0, %entry.cleanup35_crit_edge ], [ 0, %cleanup32.cleanup35_crit_edge ], [ %call21, %if.end20.cleanup35_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_nodev(ptr noundef %fc, ptr noundef nonnull @shmem_fill_super) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_reconfigure(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %stat_lock = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock) #15
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %max_inodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_inodes, align 8
  %free_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %free_inodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_inodes, align 4
  %sub = sub i32 %9, %11
  %seen = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seen, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool1.not = icmp eq i64 %15, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %if.then
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %18 = load i32, ptr @percpu_counter_batch, align 4
  %call.i = tail call i32 @__percpu_counter_compare(ptr noundef %used_blocks, i64 noundef %15, i32 noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %19 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seen, align 4
  %and10 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end25_crit_edge, label %land.lhs.true12

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true12:                                  ; preds = %if.end8
  %inodes13 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %inodes13 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %inodes13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool14.not = icmp eq i64 %22, 0
  br i1 %tobool14.not, label %land.lhs.true12.if.end25_crit_edge, label %if.then15

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then15:                                        ; preds = %land.lhs.true12
  %23 = ptrtoint ptr %max_inodes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_inodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.then15.out_crit_edge, label %if.end19

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end19:                                         ; preds = %if.then15
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv)
  %cmp21 = icmp ult i64 %22, %conv
  br i1 %cmp21, label %if.end19.out_crit_edge, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %land.lhs.true12.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  %and37 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end25.if.end42_crit_edge, label %if.then39

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then39:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %huge = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %huge to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %huge, align 8
  %conv40 = trunc i32 %26 to i8
  %huge41 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 6
  %27 = ptrtoint ptr %huge41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv40, ptr %huge41, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end25.if.end42_crit_edge
  %28 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seen, align 4
  %and44 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end50_crit_edge, label %if.then46

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %full_inums47 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %full_inums47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %full_inums47, align 2, !range !303
  %full_inums49 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 9
  %32 = ptrtoint ptr %full_inums49 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %full_inums49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end42.if.end50_crit_edge
  %33 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seen, align 4
  %and52 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end58_crit_edge, label %if.then54

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %1, align 8
  %conv56 = trunc i64 %36 to i32
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv56, ptr %7, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end50.if.end58_crit_edge
  %38 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seen, align 4
  %and60 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end71_crit_edge, label %if.then62

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %inodes63 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %inodes63 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %inodes63, align 8
  %conv64 = trunc i64 %41 to i32
  %42 = ptrtoint ptr %max_inodes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv64, ptr %max_inodes, align 8
  %43 = load i64, ptr %inodes63, align 8
  %44 = trunc i64 %43 to i32
  %conv69 = sub i32 %44, %sub
  %45 = ptrtoint ptr %free_inodes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv69, ptr %free_inodes, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %if.end58.if.end71_crit_edge
  %mpol72 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %mpol72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mpol72, align 8
  %tobool73.not = icmp eq ptr %47, null
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %if.then74

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %mpol75 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 12
  %48 = ptrtoint ptr %mpol75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mpol75, align 4
  %49 = ptrtoint ptr %mpol72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %mpol72, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #15
  br label %cleanup

out:                                              ; preds = %if.end19.out_crit_edge, %if.then15.out_crit_edge, %if.end.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi ptr [ @.str.69, %if.then.out_crit_edge ], [ @.str.70, %if.end.out_crit_edge ], [ @.str.71, %if.then15.out_crit_edge ], [ @.str.72, %if.end19.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock) #15
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log82 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %log82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %log82, align 4
  %52 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %51, ptr noundef %53, i8 noundef zeroext 101, ptr noundef nonnull @.str.74, ptr noundef nonnull %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end79
  %retval.0 = phi i32 [ -22, %out ], [ 0, %if.end79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_eat_lsm_opts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %seen = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seen, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %8 = load volatile i32, ptr @_totalram_pages, align 4
  %div1.i = lshr i32 %8, 1
  %conv = zext i32 %div1.i to i64
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %1, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge
  %10 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seen, align 4
  %and9 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i129 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %12 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalhigh_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalhigh_pages to i32))
  %13 = load volatile i32, ptr @_totalhigh_pages, align 4
  %sub.i = sub i32 %12, %13
  %div5.i = lshr i32 %12, 1
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %div5.i) #15
  %conv13 = zext i32 %14 to i64
  %inodes = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %inodes to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv13, ptr %inodes, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %16 = ptrtoint ptr %seen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seen, align 4
  %and16 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %full_inums = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %full_inums to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %full_inums, align 2
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %5, -2147483648
  %19 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %s_flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18, %if.end14.if.end21_crit_edge
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %20 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @shmem_export_ops, ptr %s_export_op, align 16
  %21 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_flags, align 4
  %or23 = or i32 %22, 268435456
  store i32 %or23, ptr %s_flags, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %1, align 8
  %conv25 = trunc i64 %24 to i32
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv25, ptr %call7.i.i, align 8
  %inodes26 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %inodes26 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %inodes26, align 8
  %conv27 = trunc i64 %27 to i32
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %max_inodes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv27, ptr %max_inodes, align 8
  %free_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %free_inodes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv27, ptr %free_inodes, align 4
  %and29 = and i32 %22, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end21.if.end37_crit_edge, label %if.then31

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then31:                                        ; preds = %if.end21
  %call32 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #22
  %ino_batch = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %ino_batch to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %ino_batch, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.then31.failed_crit_edge, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then31.failed_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  %uid = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 7
  %uid38 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %uid38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uid38, align 4
  %33 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 8
  %gid39 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %gid39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid39, align 8
  %36 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %gid, align 4
  %full_inums40 = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %full_inums40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %full_inums40, align 2, !range !303
  %full_inums42 = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %full_inums42 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %full_inums42, align 8
  %mode = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mode, align 4
  %mode43 = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %mode43 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %mode43, align 4
  %huge = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %huge to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %huge, align 8
  %conv44 = trunc i32 %44 to i8
  %huge45 = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %huge45 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv44, ptr %huge45, align 2
  %mpol = getelementptr inbounds %struct.shmem_options, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %mpol to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mpol, align 8
  %mpol46 = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %mpol46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mpol46, align 4
  store ptr null, ptr %mpol, align 8
  %stat_lock = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %stat_lock, ptr noundef nonnull @.str.53, ptr noundef nonnull @shmem_fill_super.__key, i16 noundef signext 2) #15
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 1
  %call48 = tail call i32 @__percpu_counter_init(ptr noundef %used_blocks, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @shmem_fill_super.__key.54) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %if.end37.failed_crit_edge

if.end37.failed_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

do.body52:                                        ; preds = %if.end37
  %shrinklist_lock = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %shrinklist_lock, ptr noundef nonnull @.str.56, ptr noundef nonnull @shmem_fill_super.__key.55, i16 noundef signext 3) #15
  %shrinklist = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %shrinklist to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %shrinklist, ptr %shrinklist, align 4
  %prev.i = getelementptr inbounds %struct.shmem_sb_info, ptr %call7.i.i, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %shrinklist, ptr %prev.i, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %51 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %53 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %54 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16914836, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %55 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @shmem_ops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %56 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %s_time_gran, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %57 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @shmem_xattr_handlers, ptr %s_xattr, align 16
  %58 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_flags, align 4
  %or57 = or i32 %59, 65536
  store i32 %or57, ptr %s_flags, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 40
  tail call void @uuid_gen(ptr noundef %s_uuid) #15
  %60 = ptrtoint ptr %mode43 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mode43, align 4
  %62 = or i16 %61, 16384
  %call62 = tail call fastcc ptr @shmem_get_inode(ptr noundef %sb, ptr noundef null, i16 noundef zeroext %62, i32 noundef 0, i32 noundef 2097152)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %do.body52.failed_crit_edge, label %if.end65

do.body52.failed_crit_edge:                       ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

if.end65:                                         ; preds = %do.body52
  %i_uid = getelementptr inbounds %struct.inode, ptr %call62, i32 0, i32 2
  %63 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %uid, align 8
  %65 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call62, i32 0, i32 3
  %66 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %gid, align 4
  %68 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %i_gid, align 8
  %call68 = tail call ptr @d_make_root(ptr noundef nonnull %call62) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %69 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call68, ptr %s_root, align 64
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %if.end65.failed_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end65.failed_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed

failed:                                           ; preds = %if.end65.failed_crit_edge, %do.body52.failed_crit_edge, %if.end37.failed_crit_edge, %if.then31.failed_crit_edge
  %70 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info, align 16
  %ino_batch.i = getelementptr inbounds %struct.shmem_sb_info, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %ino_batch.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ino_batch.i, align 8
  tail call void @free_percpu(ptr noundef %73) #15
  %used_blocks.i = getelementptr inbounds %struct.shmem_sb_info, ptr %71, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %used_blocks.i) #15
  tail call void @kfree(ptr noundef %71) #15
  %74 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end65.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %failed ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uuid_gen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @shmem_get_inode(ptr noundef %sb, ptr noundef %dir, i16 noundef zeroext %mode, i32 noundef %dev, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %stat_lock.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock.i) #15
  %max_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_inodes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_inodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then2.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i
  %free_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_inodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %shmem_reserve_inode.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add i32 %7, -1
  %8 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %free_inodes.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %if.then.i.if.end7.i_crit_edge
  %next_ino.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %next_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_ino.i, align 4
  %inc.i = add i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %if.then13.i, label %if.end7.i.if.end16.i_crit_edge, !prof !234

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end16.i_crit_edge
  %storemerge.i = phi i32 [ 2, %if.then13.i ], [ %inc.i, %if.end7.i.if.end16.i_crit_edge ]
  %ino.0.i = phi i32 [ 1, %if.then13.i ], [ %10, %if.end7.i.if.end16.i_crit_edge ]
  %11 = ptrtoint ptr %next_ino.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge.i, ptr %next_ino.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %if.end

if.else.i:                                        ; preds = %entry
  %ino_batch.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %ino_batch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ino_batch.i, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %18, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !304
  %19 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %14
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %rem.i = and i32 %27, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp40.i = icmp eq i32 %rem.i, 0
  br i1 %cmp40.i, label %if.then47.i, label %if.else.i.if.end63.i_crit_edge, !prof !234

if.else.i.if.end63.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

if.then47.i:                                      ; preds = %if.else.i
  %stat_lock48.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock48.i) #15
  %next_ino49.i = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %next_ino49.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_ino49.i, align 4
  %add51.i = add i32 %29, 1024
  store i32 %add51.i, ptr %next_ino49.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock48.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i100.i = icmp eq i32 %29, 0
  br i1 %cmp.i100.i, label %if.then60.i, label %if.then47.i.if.end63.i_crit_edge, !prof !234

if.then47.i.if.end63.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

if.then60.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.then47.i.if.end63.i_crit_edge, %if.else.i.if.end63.i_crit_edge
  %ino.2.i = phi i32 [ 1, %if.then60.i ], [ %29, %if.then47.i.if.end63.i_crit_edge ], [ %27, %if.else.i.if.end63.i_crit_edge ]
  %inc64.i = add i32 %ino.2.i, 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc64.i, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !305
  %31 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i.i98.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i98.i to ptr
  %preempt_count.i.i99.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i99.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i99.i, align 4
  br label %if.end

shmem_reserve_inode.exit:                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.end63.i, %if.end16.i
  %ino.0.ph = phi i32 [ %ino.2.i, %if.end63.i ], [ %ino.0.i, %if.end16.i ]
  %call2 = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %ino.0.ph, ptr %i_ino, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call2, ptr noundef %dir, i16 noundef zeroext %mode) #15
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 22
  %36 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %i_blocks, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call2) #15
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %38 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %39 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %call5 = call i32 @prandom_u32() #15
  %i_generation = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 49
  %40 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call5, ptr %i_generation, align 8
  %add.ptr.i = getelementptr i8, ptr %call2, i32 -136
  %41 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 136)
  call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @shmem_get_inode.__key, i16 noundef signext 3) #15
  %stop_eviction = getelementptr i8, ptr %call2, i32 -4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop_eviction, i32 noundef 4) #15
  %42 = ptrtoint ptr %stop_eviction to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %stop_eviction, align 4
  %seals = getelementptr i8, ptr %call2, i32 -92
  %43 = ptrtoint ptr %seals to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %seals, align 4
  %and = and i32 %flags, 2097152
  %flags8 = getelementptr i8, ptr %call2, i32 -88
  %44 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %flags8, align 8
  %shrinklist = getelementptr i8, ptr %call2, i32 -72
  %45 = ptrtoint ptr %shrinklist to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %shrinklist, ptr %shrinklist, align 4
  %prev.i = getelementptr i8, ptr %call2, i32 -68
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %shrinklist, ptr %prev.i, align 4
  %swaplist = getelementptr i8, ptr %call2, i32 -64
  %47 = ptrtoint ptr %swaplist to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %swaplist, ptr %swaplist, align 4
  %prev.i59 = getelementptr i8, ptr %call2, i32 -60
  %48 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %swaplist, ptr %prev.i59, align 4
  %xattrs = getelementptr i8, ptr %call2, i32 -56
  %49 = ptrtoint ptr %xattrs to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %xattrs, ptr %xattrs, align 4
  %prev.i.i = getelementptr i8, ptr %call2, i32 -52
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %xattrs, ptr %prev.i.i, align 4
  %lock.i = getelementptr i8, ptr %call2, i32 -48
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @simple_xattrs_init.__key, i16 noundef signext 3) #15
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 5
  %51 = ptrtoint ptr %i_acl.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %i_acl.i, align 8
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 6
  %52 = ptrtoint ptr %i_default_acl.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %i_default_acl.i, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %53 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_mapping, align 8
  %flags.i = getelementptr inbounds %struct.address_space, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %56, 64
  store i32 %or.i.i, ptr %flags.i, align 4
  %57 = and i16 %mode, -4096
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %57, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb13
    i16 -24576, label %if.then4.sw.epilog_crit_edge
  ]

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %59 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @shmem_special_inode_operations, ptr %i_op, align 8
  call void @init_special_inode(ptr noundef nonnull %call2, i16 noundef zeroext %mode, i32 noundef %dev) #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @shmem_aops, ptr %a_ops, align 4
  %i_op11 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %63 = ptrtoint ptr %i_op11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @shmem_inode_operations, ptr %i_op11, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @shmem_file_operations, ptr %64, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  call void @inc_nlink(ptr noundef nonnull %call2) #15
  %i_size = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 14
  %66 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 40, ptr %i_size, align 8
  %i_op14 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %67 = ptrtoint ptr %i_op14 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @shmem_dir_inode_operations, ptr %i_op14, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @simple_dir_operations, ptr %68, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb, %sw.default, %if.then4.sw.epilog_crit_edge
  call void @lockdep_annotate_inode_mutex_key(ptr noundef nonnull %call2) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %70 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i, align 16
  %max_inodes.i61 = getelementptr inbounds %struct.shmem_sb_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %max_inodes.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_inodes.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i62 = icmp eq i32 %73, 0
  br i1 %tobool.not.i62, label %if.else.cleanup_crit_edge, label %if.then.i66

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i66:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %stat_lock.i63 = getelementptr inbounds %struct.shmem_sb_info, ptr %71, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock.i63) #15
  %free_inodes.i64 = getelementptr inbounds %struct.shmem_sb_info, ptr %71, i32 0, i32 3
  %74 = ptrtoint ptr %free_inodes.i64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %free_inodes.i64, align 4
  %inc.i65 = add i32 %75, 1
  store i32 %inc.i65, ptr %free_inodes.i64, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i63) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i66, %if.else.cleanup_crit_edge, %sw.epilog, %shmem_reserve_inode.exit
  %retval.0 = phi ptr [ null, %shmem_reserve_inode.exit ], [ %call2, %sw.epilog ], [ null, %if.else.cleanup_crit_edge ], [ null, %if.then.i66 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %ino_batch = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ino_batch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ino_batch, align 8
  tail call void @free_percpu(ptr noundef %3) #15
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, ptr %1, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %used_blocks) #15
  tail call void @kfree(ptr noundef %1) #15
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_encode_fh(ptr noundef %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %len, ptr nocapture noundef readnone %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then1:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmem_encode_fh.lock) #15
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i25.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i25.not, label %if.then4, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation, align 8
  %add = add i32 %9, %7
  tail call void @__insert_inode_hash(ptr noundef %inode, i32 noundef %add) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then1.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shmem_encode_fh.lock) #15
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end.if.end6_crit_edge
  %i_generation7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %10 = ptrtoint ptr %i_generation7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_generation7, align 8
  %12 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fh, align 4
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino8, align 8
  %arrayidx9 = getelementptr i32, ptr %fh, i32 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr i32, ptr %fh, i32 2
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx12, align 4
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 255, %entry.return_crit_edge ]
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %len, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @shmem_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [0 x i32], ptr %fid, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %2 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fid, align 4
  %add = add i32 %3, %1
  %call = tail call ptr @ilookup5(ptr noundef %sb, i32 noundef %add, ptr noundef nonnull @shmem_match, ptr noundef %fid) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call.i = tail call ptr @d_find_alias(ptr noundef nonnull %call) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.false.i, label %if.then6.shmem_find_alias.exit_crit_edge

if.then6.shmem_find_alias.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_find_alias.exit

cond.false.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @d_find_any_alias(ptr noundef nonnull %call) #15
  br label %shmem_find_alias.exit

shmem_find_alias.exit:                            ; preds = %cond.false.i, %if.then6.shmem_find_alias.exit_crit_edge
  %cond.i = phi ptr [ %call1.i, %cond.false.i ], [ %call.i, %if.then6.shmem_find_alias.exit_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %shmem_find_alias.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %cond.i, %shmem_find_alias.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @shmem_get_parent(ptr nocapture noundef readnone %child) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -116 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @shmem_match(ptr nocapture noundef readonly %ino, ptr nocapture noundef readonly %vfh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %vfh, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx1 = getelementptr i32, ptr %vfh, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %conv2 = zext i32 %3 to i64
  %or = or i64 %shl, %conv2
  %i_ino = getelementptr inbounds %struct.inode, ptr %ino, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %conv3 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %conv3)
  %cmp = icmp eq i64 %or, %conv3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %vfh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vfh, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %ino, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp eq i32 %7, %9
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %10 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @shmem_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @shmem_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.shmem_inode_info, ptr %call, i32 0, i32 11
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal void @shmem_destroy_inode(ptr nocapture noundef %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_free_in_core_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = load ptr, ptr @shmem_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -136
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %7, @shmem_aops
  br i1 %cmp.i, label %if.then, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %inode, i32 -88
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %and.i = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.shmem_unacct_size.exit_crit_edge

if.then.shmem_unacct_size.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_unacct_size.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  %add.i = add i64 %11, 4095
  %12 = lshr i64 %add.i, 12
  %conv.i = trunc i64 %12 to i32
  %sub.i.i = sub i32 0, %conv.i
  %conv.i.i.i = sext i32 %sub.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %13 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i, i32 noundef %13) #15
  br label %shmem_unacct_size.exit

shmem_unacct_size.exit:                           ; preds = %if.then.i, %if.then.shmem_unacct_size.exit_crit_edge
  %14 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %i_size, align 8
  tail call fastcc void @shmem_undo_range(ptr noundef %inode, i64 noundef 0, i64 noundef -1, i1 noundef zeroext false) #15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #15
  %15 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #15
  %16 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_mtime.i, i32 16)
  %shrinklist = getelementptr i8, ptr %inode, i32 -72
  %17 = ptrtoint ptr %shrinklist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %shrinklist, align 4
  %cmp.i95.not = icmp eq ptr %18, %shrinklist
  br i1 %cmp.i95.not, label %shmem_unacct_size.exit.if.end12_crit_edge, label %if.then5

shmem_unacct_size.exit.if.end12_crit_edge:        ; preds = %shmem_unacct_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then5:                                         ; preds = %shmem_unacct_size.exit
  %shrinklist_lock = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 13
  call void @_raw_spin_lock(ptr noundef %shrinklist_lock) #15
  %19 = ptrtoint ptr %shrinklist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %shrinklist, align 4
  %cmp.i97.not = icmp eq ptr %20, %shrinklist
  br i1 %cmp.i97.not, label %if.then5.if.end_crit_edge, label %if.then9

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then9:                                         ; preds = %if.then5
  %call.i.i99 = call zeroext i1 @__list_del_entry_valid(ptr noundef %shrinklist) #15
  br i1 %call.i.i99, label %if.end.i.i, label %if.then9.list_del_init.exit_crit_edge

if.then9.list_del_init.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %inode, i32 -68
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %shrinklist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shrinklist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then9.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %shrinklist to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %shrinklist, ptr %shrinklist, align 4
  %prev.i3.i = getelementptr i8, ptr %inode, i32 -68
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %shrinklist, ptr %prev.i3.i, align 4
  %shrinklist_len = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %shrinklist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shrinklist_len, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %shrinklist_len, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %if.then5.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %shrinklist_lock) #15
  br label %if.end12

if.end12:                                         ; preds = %if.end, %shmem_unacct_size.exit.if.end12_crit_edge
  %swaplist = getelementptr i8, ptr %inode, i32 -64
  %31 = ptrtoint ptr %swaplist to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %swaplist, align 4
  %cmp.i100.not115 = icmp eq ptr %32, %swaplist
  br i1 %cmp.i100.not115, label %if.end12.if.end41_crit_edge, label %do.body15.lr.ph

if.end12.if.end41_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

do.body15.lr.ph:                                  ; preds = %if.end12
  %stop_eviction = getelementptr i8, ptr %inode, i32 -4
  %33 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %prev.i.i103 = getelementptr i8, ptr %inode, i32 -60
  br label %do.body15

do.body15:                                        ; preds = %if.end40.do.body15_crit_edge, %do.body15.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1136) #15
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop_eviction, i32 noundef 4) #15
  %34 = ptrtoint ptr %stop_eviction to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %stop_eviction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not = icmp eq i32 %35, 0
  br i1 %tobool20.not, label %do.body15.do.end34_crit_edge, label %if.end22

do.body15.do.end34_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34

if.end22:                                         ; preds = %do.body15
  %call24 = call ptr @__var_waitqueue(ptr noundef %stop_eviction) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #15
  %36 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %stop_eviction, i32 noundef 0) #15
  %call26112 = call i32 @prepare_to_wait_event(ptr noundef %call24, ptr noundef %33, i32 noundef 2) #15
  %call.i.i93113 = call zeroext i1 @__kasan_check_read(ptr noundef %stop_eviction, i32 noundef 4) #15
  %37 = ptrtoint ptr %stop_eviction to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %stop_eviction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool29.not114 = icmp eq i32 %38, 0
  br i1 %tobool29.not114, label %if.end22.for.end_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  br label %cleanup

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @schedule() #15
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %call24, ptr noundef %33, i32 noundef 2) #15
  %call.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef %stop_eviction, i32 noundef 4) #15
  %39 = ptrtoint ptr %stop_eviction to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %stop_eviction, align 4
  %tobool29.not = icmp eq i32 %40, 0
  br i1 %tobool29.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end22.for.end_crit_edge
  call void @finish_wait(ptr noundef %call24, ptr noundef %33) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #15
  br label %do.end34

do.end34:                                         ; preds = %for.end, %do.body15.do.end34_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @shmem_swaplist_mutex, i32 noundef 0) #15
  %call.i.i94 = call zeroext i1 @__kasan_check_read(ptr noundef %stop_eviction, i32 noundef 4) #15
  %41 = ptrtoint ptr %stop_eviction to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %stop_eviction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool37.not = icmp eq i32 %42, 0
  br i1 %tobool37.not, label %if.then38, label %do.end34.if.end40_crit_edge

do.end34.if.end40_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then38:                                        ; preds = %do.end34
  %call.i.i102 = call zeroext i1 @__list_del_entry_valid(ptr noundef %swaplist) #15
  br i1 %call.i.i102, label %if.end.i.i105, label %if.then38.list_del_init.exit107_crit_edge

if.then38.list_del_init.exit107_crit_edge:        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit107

if.end.i.i105:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i103, align 4
  %45 = ptrtoint ptr %swaplist to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %swaplist, align 4
  %prev1.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i104, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del_init.exit107

list_del_init.exit107:                            ; preds = %if.end.i.i105, %if.then38.list_del_init.exit107_crit_edge
  %49 = ptrtoint ptr %swaplist to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %swaplist, ptr %swaplist, align 4
  %50 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %swaplist, ptr %prev.i.i103, align 4
  br label %if.end40

if.end40:                                         ; preds = %list_del_init.exit107, %do.end34.if.end40_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #15
  %51 = ptrtoint ptr %swaplist to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %swaplist, align 4
  %cmp.i100.not = icmp eq ptr %52, %swaplist
  br i1 %cmp.i100.not, label %if.end40.if.end41_crit_edge, label %if.end40.do.body15_crit_edge

if.end40.do.body15_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

if.end40.if.end41_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end41:                                         ; preds = %if.end40.if.end41_crit_edge, %if.end12.if.end41_crit_edge, %entry.if.end41_crit_edge
  %xattrs = getelementptr i8, ptr %inode, i32 -56
  %53 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xattrs, align 4
  %cmp.not17.i = icmp eq ptr %54, %xattrs
  br i1 %cmp.not17.i, label %if.end41.simple_xattrs_free.exit_crit_edge, label %if.end41.for.body.i_crit_edge

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

if.end41.simple_xattrs_free.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %simple_xattrs_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %xattr.018.i = phi ptr [ %node.0.i, %for.body.i.for.body.i_crit_edge ], [ %54, %if.end41.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %xattr.018.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %node.0.i = load ptr, ptr %xattr.018.i, align 4
  %name.i = getelementptr inbounds %struct.simple_xattr, ptr %xattr.018.i, i32 0, i32 1
  %56 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %57) #15
  call void @kvfree(ptr noundef %xattr.018.i) #15
  %cmp.not.i = icmp eq ptr %node.0.i, %xattrs
  br i1 %cmp.not.i, label %for.body.i.simple_xattrs_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.simple_xattrs_free.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %simple_xattrs_free.exit

simple_xattrs_free.exit:                          ; preds = %for.body.i.simple_xattrs_free.exit_crit_edge, %if.end41.simple_xattrs_free.exit_crit_edge
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %58 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool42.not = icmp eq i64 %59, 0
  br i1 %tobool42.not, label %simple_xattrs_free.exit.if.end61_crit_edge, label %do.end55, !prof !231

simple_xattrs_free.exit.if.end61_crit_edge:       ; preds = %simple_xattrs_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

do.end55:                                         ; preds = %simple_xattrs_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef null) #15
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %simple_xattrs_free.exit.if.end61_crit_edge
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i, align 16
  %max_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %max_inodes.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_inodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i108 = icmp eq i32 %65, 0
  br i1 %tobool.not.i108, label %if.end61.shmem_free_inode.exit_crit_edge, label %if.then.i109

if.end61.shmem_free_inode.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_free_inode.exit

if.then.i109:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %stat_lock.i = getelementptr inbounds %struct.shmem_sb_info, ptr %63, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %stat_lock.i) #15
  %free_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %free_inodes.i, align 4
  %inc.i = add i32 %67, 1
  store i32 %inc.i, ptr %free_inodes.i, align 4
  call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %shmem_free_inode.exit

shmem_free_inode.exit:                            ; preds = %if.then.i109, %if.end61.shmem_free_inode.exit_crit_edge
  call void @clear_inode(ptr noundef %inode) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16914836, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %f_bsize, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %6 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %f_namelen, align 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %8 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %f_blocks, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %conv3 = zext i32 %11 to i64
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 1
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %used_blocks) #15
  %sub = sub i64 %conv3, %call.i
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %13 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub, ptr %f_bavail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %max_inodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_inodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv8 = zext i32 %15 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %16 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv8, ptr %f_files, align 8
  %free_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %free_inodes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_inodes, align 4
  %conv9 = zext i32 %18 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %19 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv9, ptr %f_ffree, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %20 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_sb, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 40
  %22 = ptrtoint ptr %s_uuid to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_uuid, align 8, !noalias !306
  %add.ptr.i = getelementptr %struct.super_block, ptr %21, i32 0, i32 40, i32 0, i32 8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i, align 8, !noalias !306
  %26 = xor i64 %25, %23
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #15
  %tmp.sroa.0.0.insert.insert = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 32)
  %28 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %6 = load volatile i32, ptr @_totalram_pages, align 4
  %div1.i = lshr i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div1.i)
  %cmp.not = icmp eq i32 %5, %div1.i
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl = shl i32 %8, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, i32 noundef %shl) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %max_inodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_inodes, align 8
  %call.i.i.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %11 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalhigh_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalhigh_pages to i32))
  %12 = load volatile i32, ptr @_totalhigh_pages, align 4
  %sub.i = sub i32 %11, %12
  %div5.i = lshr i32 %11, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %div5.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp4.not = icmp eq i32 %10, %13
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %max_inodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_inodes, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, i32 noundef %15) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %17)
  %cmp8.not = icmp eq i16 %17, 1023
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.60, i32 noundef %conv) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %uid = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %19 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %19) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.61, i32 noundef %call19) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %gid = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack57 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack57)
  %cmp.i60 = icmp eq i32 %.unpack57, 0
  br i1 %cmp.i60, label %if.end20.if.end30_crit_edge, label %if.then26

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %21 = insertvalue [1 x i32] undef, i32 %.unpack57, 0
  %call29 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %21) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, i32 noundef %call29) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end20.if.end30_crit_edge
  %full_inums = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %full_inums to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %full_inums, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef 64) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shmem_unacct_size(i32 noundef %flags, i64 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %flags, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i64 %size, 4095
  %0 = lshr i64 %add, 12
  %conv = trunc i64 %0 to i32
  %sub.i = sub i32 0, %conv
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %1 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_xattr_handler_get(ptr noundef %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #15
  %xattrs = getelementptr i8, ptr %inode, i32 -56
  %call2 = tail call i32 @simple_xattr_get(ptr noundef %xattrs, ptr noundef %call1, ptr noundef %buffer, i32 noundef %size) #15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_xattr_handler_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #15
  %xattrs = getelementptr i8, ptr %inode, i32 -56
  %call2 = tail call i32 @simple_xattr_set(ptr noundef %xattrs, ptr noundef %call1, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr noundef null) #15
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_annotate_inode_mutex_key(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %and4 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end46_crit_edge, label %if.then6

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then6:                                         ; preds = %land.lhs.true
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %8)
  %cmp7 = icmp slt i64 %10, %8
  br i1 %cmp7, label %land.lhs.true9, label %if.then6.lor.lhs.false_crit_edge

if.then6.lor.lhs.false_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true9:                                   ; preds = %if.then6
  %seals = getelementptr i8, ptr %1, i32 -92
  %11 = ptrtoint ptr %seals to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seals, align 4
  %and10 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true9.lor.lhs.false_crit_edge, label %land.lhs.true9.cleanup54_crit_edge

land.lhs.true9.cleanup54_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

land.lhs.true9.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9.lor.lhs.false_crit_edge, %if.then6.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %8)
  %cmp12 = icmp sgt i64 %10, %8
  br i1 %cmp12, label %land.lhs.true14, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %seals15 = getelementptr i8, ptr %1, i32 -92
  %13 = ptrtoint ptr %seals15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seals15, align 4
  %and16 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true14.if.end19_crit_edge, label %land.lhs.true14.cleanup54_crit_edge

land.lhs.true14.cleanup54_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %lor.lhs.false.if.end19_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %8)
  %cmp20.not = icmp eq i64 %10, %8
  br i1 %cmp20.not, label %if.end19.if.end28_crit_edge, label %if.then22

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then22:                                        ; preds = %if.end19
  %flags = getelementptr i8, ptr %1, i32 -88
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and.i = and i32 %16, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then.i:                                        ; preds = %if.then22
  %add.i = add i64 %10, 4095
  %shr.i = ashr i64 %add.i, 12
  %add2.i = add i64 %8, 4095
  %shr4.i = ashr i64 %add2.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %shr4.i)
  %cmp.i = icmp sgt i64 %shr.i, %shr4.i
  br i1 %cmp.i, label %shmem_reacct_size.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %shr4.i)
  %cmp19.i = icmp slt i64 %shr.i, %shr4.i
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i.if.end27_crit_edge

if.else.i.if.end27_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub28.neg.i = sub nsw i64 %shr.i, %shr4.i
  %17 = shl i64 %sub28.neg.i, 32
  %conv.i.i.i = ashr exact i64 %17, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %18 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i, i32 noundef %18) #15
  br label %if.end27

shmem_reacct_size.exit:                           ; preds = %if.then.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm.i, align 8
  %sub.i = sub nsw i64 %shr.i, %shr4.i
  %conv.i = trunc i64 %sub.i to i32
  %call12.i = tail call i32 @security_vm_enough_memory_mm(ptr noundef %24, i32 noundef %conv.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool25.not = icmp eq i32 %call12.i, 0
  br i1 %tobool25.not, label %shmem_reacct_size.exit.if.end27_crit_edge, label %shmem_reacct_size.exit.cleanup54_crit_edge

shmem_reacct_size.exit.cleanup54_crit_edge:       ; preds = %shmem_reacct_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

shmem_reacct_size.exit.if.end27_crit_edge:        ; preds = %shmem_reacct_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end27:                                         ; preds = %shmem_reacct_size.exit.if.end27_crit_edge, %if.then21.i, %if.else.i.if.end27_crit_edge, %if.then22.if.end27_crit_edge
  tail call fastcc void @i_size_write(ptr noundef %1, i64 noundef %10)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #15
  %25 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %26 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end19.if.end28_crit_edge
  br i1 %cmp12, label %if.end28.if.end46_crit_edge, label %if.then31

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then31:                                        ; preds = %if.end28
  %sub = add i64 %10, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %add)
  %cmp32 = icmp sgt i64 %8, %add
  br i1 %cmp32, label %if.then34, label %if.then31.if.end35_crit_edge

if.then31.if.end35_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping, align 8
  call void @unmap_mapping_range(ptr noundef %28, i64 noundef %add, i64 noundef 0, i32 noundef 1) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then31.if.end35_crit_edge
  %alloced = getelementptr i8, ptr %1, i32 -84
  %29 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alloced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool36.not = icmp eq i32 %30, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  call void @shmem_truncate_range(ptr noundef %1, i64 noundef %10, i64 noundef -1)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  br i1 %cmp32, label %if.then41, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %i_mapping42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %i_mapping42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping42, align 8
  call void @unmap_mapping_range(ptr noundef %32, i64 noundef %add, i64 noundef 0, i32 noundef 1) #15
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38.if.end46_crit_edge, %if.end28.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end.if.end46_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #15
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attr, align 8
  %and48 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.cleanup54_crit_edge, label %if.then50

if.end46.cleanup54_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup54

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 8
  %call52 = call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %1, i16 noundef zeroext %36) #15
  br label %cleanup54

cleanup54:                                        ; preds = %if.then50, %if.end46.cleanup54_crit_edge, %shmem_reacct_size.exit.cleanup54_crit_edge, %land.lhs.true14.cleanup54_crit_edge, %land.lhs.true9.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.1 = phi i32 [ %call2, %entry.cleanup54_crit_edge ], [ %call52, %if.then50 ], [ 0, %if.end46.cleanup54_crit_edge ], [ -1, %land.lhs.true14.cleanup54_crit_edge ], [ -1, %land.lhs.true9.cleanup54_crit_edge ], [ %call12.i, %shmem_reacct_size.exit.cleanup54_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %xattrs = getelementptr i8, ptr %1, i32 -56
  %call3 = tail call i32 @simple_xattr_list(ptr noundef %1, ptr noundef %xattrs, ptr noundef %buffer, i32 noundef %size) #15
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -136
  %alloced = getelementptr i8, ptr %3, i32 -84
  %4 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloced, align 4
  %swapped = getelementptr i8, ptr %3, i32 -80
  %6 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %swapped, align 8
  %sub = sub i32 %5, %7
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp.not = icmp eq i32 %sub, %11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #15
  %12 = ptrtoint ptr %alloced to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alloced, align 4
  %14 = ptrtoint ptr %swapped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swapped, align 8
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nrpages.i, align 4
  %20 = add i32 %19, %15
  %sub1.i = sub i32 %13, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i = icmp sgt i32 %sub1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.shmem_recalc_inode.exit_crit_edge

if.then.shmem_recalc_inode.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i:                                        ; preds = %if.then
  %21 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %alloced, align 4
  %mul.i = shl i32 %sub1.i, 3
  %conv.i = zext i32 %mul.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_blocks.i, align 8
  %sub4.i = sub i64 %23, %conv.i
  store i64 %sub4.i, ptr %i_blocks.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %used_blocks.i.i = getelementptr inbounds %struct.shmem_sb_info, ptr %27, i32 0, i32 1
  %conv.i13.i = zext i32 %sub1.i to i64
  %sub.i.i.i = sub nsw i64 0, %conv.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %30 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %used_blocks.i.i, i64 noundef %sub.i.i.i, i32 noundef %30) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %flags.i.i = getelementptr i8, ptr %3, i32 -88
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %32, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.shmem_recalc_inode.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.shmem_recalc_inode.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %shmem_recalc_inode.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub nsw i32 0, %sub1.i
  %conv.i.i.i.i.i = sext i32 %sub.i.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %33 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i.i.i, i32 noundef %33) #15
  br label %shmem_recalc_inode.exit

shmem_recalc_inode.exit:                          ; preds = %if.then.i.i.i, %if.end.i.i.shmem_recalc_inode.exit_crit_edge, %if.then.shmem_recalc_inode.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #15
  br label %if.end

if.end:                                           ; preds = %shmem_recalc_inode.exit, %entry.if.end_crit_edge
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @shmem_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %whence.off = add i32 %whence, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence.off)
  %switch = icmp ult i32 %whence.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %call2 = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef 17592186040320, i64 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp3 = icmp slt i64 %offset, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %call6 = tail call i64 @mapping_seek_hole_data(ptr noundef %1, i64 noundef %offset, i64 noundef %5, i32 noundef %whence) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call6)
  %cmp7 = icmp sgt i64 %call6, -1
  br i1 %cmp7, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i64 @vfs_setpos(ptr noundef %file, i64 noundef %call6, i64 noundef 17592186040320) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %offset.addr.0 = phi i64 [ %call9, %if.then8 ], [ %call6, %if.end5.if.end10_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %offset.addr.0, %if.end10 ], [ -6, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_file_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %to, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  %spec.select = select i1 %cmp.i, i32 0, i32 2
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %10 = lshr i64 %9, 12
  %conv = trunc i64 %10 to i32
  %11 = trunc i64 %9 to i32
  %conv3 = and i32 %11, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %12 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %page, align 4
  %call4195 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %13 = lshr i64 %call4195, 12
  %conv6196 = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv6196)
  %cmp197 = icmp ugt i32 %conv, %conv6196
  br i1 %cmp197, label %entry.for.end_crit_edge, label %if.end9.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end9.lr.ph:                                    ; preds = %entry
  %i_mmap_writable.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %extract.t = trunc i64 %call4195 to i32
  br label %if.end9

if.end9:                                          ; preds = %cleanup.if.end9_crit_edge, %if.end9.lr.ph
  %conv6205 = phi i32 [ %conv6196, %if.end9.lr.ph ], [ %conv6, %cleanup.if.end9_crit_edge ]
  %call4204.off0 = phi i32 [ %extract.t, %if.end9.lr.ph ], [ %extract.t221, %cleanup.if.end9_crit_edge ]
  %retval1.0202 = phi i32 [ 0, %if.end9.lr.ph ], [ %add, %cleanup.if.end9_crit_edge ]
  %offset.0200 = phi i32 [ %conv3, %if.end9.lr.ph ], [ %and69, %cleanup.if.end9_crit_edge ]
  %index.0198 = phi i32 [ %conv, %if.end9.lr.ph ], [ %add68, %cleanup.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0198, i32 %conv6205)
  %cmp10 = icmp ne i32 %index.0198, %conv6205
  %conv14 = and i32 %call4204.off0, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %offset.0200)
  %cmp15.not = icmp ugt i32 %conv14, %offset.0200
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %if.end19, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end19:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = call fastcc i32 @shmem_getpage_gfp(ptr noundef %3, i32 noundef %index.0198, ptr noundef nonnull %page, i32 noundef %spec.select, i32 noundef %17, ptr noundef null, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call1.i)
  %cmp22 = icmp eq i32 %call1.i, -22
  %spec.store.select = select i1 %cmp22, i32 0, i32 %call1.i
  br label %for.end

if.end26:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.end26.if.end38_crit_edge, label %if.then28

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then28:                                        ; preds = %if.end26
  br i1 %cmp.i, label %if.then28.if.end33_crit_edge, label %if.then31

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %19) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28.if.end33_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %19) #15
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %if.end26.if.end38_crit_edge
  %call39 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %20 = lshr i64 %call39, 12
  %conv41 = trunc i64 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0198, i32 %conv41)
  %cmp42 = icmp eq i32 %index.0198, %conv41
  br i1 %cmp42, label %if.then44, label %if.end38.if.end54_crit_edge

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then44:                                        ; preds = %if.end38
  %21 = trunc i64 %call39 to i32
  %conv46 = and i32 %21, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46, i32 %offset.0200)
  %cmp47.not = icmp ugt i32 %conv46, %offset.0200
  br i1 %cmp47.not, label %if.then44.if.end54_crit_edge, label %if.then49

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then49:                                        ; preds = %if.then44
  br i1 %tobool27.not, label %if.then49.for.end_crit_edge, label %if.then51

if.then49.for.end_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then51:                                        ; preds = %if.then49
  %22 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %19 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_file_read_iter, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.end_crit_edge

folio_put_testzero.exit.i.i.for.end_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %26) #15
  br label %for.end

if.end54:                                         ; preds = %if.then44.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %nr.0 = phi i32 [ %conv46, %if.then44.if.end54_crit_edge ], [ 4096, %if.end38.if.end54_crit_edge ]
  %sub = sub nsw i32 %nr.0, %offset.0200
  br i1 %tobool27.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end54
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_mmap_writable.i, i32 noundef 4) #15
  %30 = ptrtoint ptr %i_mmap_writable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_mmap_writable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i135 = icmp slt i32 %31, 1
  br i1 %cmp.i135, label %if.then56.if.end60_crit_edge, label %if.then59

if.then56.if.end60_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @flush_dcache_page(ptr noundef nonnull %19) #15
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0200)
  %tobool61.not = icmp eq i32 %offset.0200, 0
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mark_page_accessed(ptr noundef nonnull %19) #15
  br label %if.end64

if.else:                                          ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %32 = load ptr, ptr @empty_zero_page, align 4
  %33 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %page, align 4
  %34 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i136 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i136)
  %tobool.not.i.i137 = icmp eq i32 %and.i.i136, 0
  br i1 %tobool.not.i.i137, label %if.end.i.i140, label %if.then.i.i139, !prof !231

if.then.i.i139:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i138 = add i32 %36, -1
  br label %_compound_head.exit.i142

if.end.i.i140:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %32 to i32
  br label %_compound_head.exit.i142

_compound_head.exit.i142:                         ; preds = %if.end.i.i140, %if.then.i.i139
  %retval.0.i.i141 = phi i32 [ %sub.i.i138, %if.then.i.i139 ], [ %37, %if.end.i.i140 ]
  %38 = inttoptr i32 %retval.0.i.i141 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %39 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !234

if.then.i1.i:                                     ; preds = %_compound_head.exit.i142
  call void @__sanitizer_cov_trace_pc() #17
  %41 = inttoptr i32 %retval.0.i.i141 to ptr
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.33) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !284
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i142
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@shmem_file_read_iter, %if.then.i.i.i.i143)) #15
          to label %if.end64 [label %if.then.i.i.i.i143], !srcloc !239

if.then.i.i.i.i143:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %38, i32 noundef 1) #15
  br label %if.end64

if.end64:                                         ; preds = %if.then.i.i.i.i143, %do.end5.i.i, %if.then62, %if.end60.if.end64_crit_edge
  %43 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page, align 4
  %call65 = tail call i32 @copy_page_to_iter(ptr noundef %44, i32 noundef %offset.0200, i32 noundef %sub, ptr noundef %to) #15
  %add = add i32 %call65, %retval1.0202
  %add66 = add i32 %call65, %offset.0200
  %shr67 = lshr i32 %add66, 12
  %add68 = add i32 %shr67, %index.0198
  %and69 = and i32 %add66, 4095
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i144 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool.not.i.i145 = icmp eq i32 %and.i.i144, 0
  br i1 %tobool.not.i.i145, label %if.end.i.i148, label %if.then.i.i147, !prof !231

if.then.i.i147:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i146 = add i32 %47, -1
  br label %_compound_head.exit.i153

if.end.i.i148:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %44 to i32
  br label %_compound_head.exit.i153

_compound_head.exit.i153:                         ; preds = %if.end.i.i148, %if.then.i.i147
  %retval.0.i.i149 = phi i32 [ %sub.i.i146, %if.then.i.i147 ], [ %48, %if.end.i.i148 ]
  %49 = inttoptr i32 %retval.0.i.i149 to ptr
  %_refcount.i.i.i.i.i150 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i.i.i151 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i150, i32 noundef 4) #15
  %50 = ptrtoint ptr %_refcount.i.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_refcount.i.i.i.i.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i.i152 = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i.i152, label %if.then.i.i.i.i154, label %do.end5.i.i.i.i158, !prof !234

if.then.i.i.i.i154:                               ; preds = %_compound_head.exit.i153
  call void @__sanitizer_cov_trace_pc() #17
  %52 = inttoptr i32 %retval.0.i.i149 to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i158:                               ; preds = %_compound_head.exit.i153
  %call.i.i.i10.i.i.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i150, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i150, i32 1, i32 3, i32 1) #15
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i150, ptr %_refcount.i.i.i.i.i150, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i150) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i156 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i156)
  %cmp.i.i.i.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i156, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_file_read_iter, %if.then.i.i.i.i.i160)) #15
          to label %folio_put_testzero.exit.i.i161 [label %if.then.i.i.i.i.i160], !srcloc !239

if.then.i.i.i.i.i160:                             ; preds = %do.end5.i.i.i.i158
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i159 = zext i1 %cmp.i.i.i.i.i.i.i157 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %49, i32 noundef -1, i32 noundef %conv.i.i.i.i.i159) #15
  br label %folio_put_testzero.exit.i.i161

folio_put_testzero.exit.i.i161:                   ; preds = %if.then.i.i.i.i.i160, %do.end5.i.i.i.i158
  br i1 %cmp.i.i.i.i.i.i.i157, label %if.then.i4.i162, label %folio_put_testzero.exit.i.i161.put_page.exit163_crit_edge

folio_put_testzero.exit.i.i161.put_page.exit163_crit_edge: ; preds = %folio_put_testzero.exit.i.i161
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit163

if.then.i4.i162:                                  ; preds = %folio_put_testzero.exit.i.i161
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %49) #15
  br label %put_page.exit163

put_page.exit163:                                 ; preds = %if.then.i4.i162, %folio_put_testzero.exit.i.i161.put_page.exit163_crit_edge
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool71.not = icmp eq i32 %55, 0
  br i1 %tobool71.not, label %put_page.exit163.for.end_crit_edge, label %if.end73

put_page.exit163.for.end_crit_edge:               ; preds = %put_page.exit163
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end73:                                         ; preds = %put_page.exit163
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %sub)
  %cmp74 = icmp ult i32 %call65, %sub
  br i1 %cmp74, label %if.end73.for.end_crit_edge, label %cleanup

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %if.end73
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2596, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %56 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %page, align 4
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %57 = lshr i64 %call4, 12
  %conv6 = trunc i64 %57 to i32
  %cmp = icmp ugt i32 %add68, %conv6
  %extract.t221 = trunc i64 %call4 to i32
  br i1 %cmp, label %cleanup.for.end_crit_edge, label %cleanup.if.end9_crit_edge

cleanup.if.end9_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end73.for.end_crit_edge, %put_page.exit163.for.end_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.for.end_crit_edge, %if.then49.for.end_crit_edge, %if.then21, %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  %index.1.ph = phi i32 [ %index.0198, %if.then.i4.i ], [ %index.0198, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ %index.0198, %if.then49.for.end_crit_edge ], [ %index.0198, %if.then21 ], [ %conv, %entry.for.end_crit_edge ], [ %add68, %if.end73.for.end_crit_edge ], [ %add68, %put_page.exit163.for.end_crit_edge ], [ %conv6205, %if.end9.for.end_crit_edge ], [ %add68, %cleanup.for.end_crit_edge ]
  %offset.1.ph = phi i32 [ %offset.0200, %if.then.i4.i ], [ %offset.0200, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ %offset.0200, %if.then49.for.end_crit_edge ], [ %offset.0200, %if.then21 ], [ %conv3, %entry.for.end_crit_edge ], [ %and69, %if.end73.for.end_crit_edge ], [ %and69, %put_page.exit163.for.end_crit_edge ], [ %offset.0200, %if.end9.for.end_crit_edge ], [ %and69, %cleanup.for.end_crit_edge ]
  %error.1.ph = phi i32 [ 0, %if.then.i4.i ], [ 0, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ 0, %if.then49.for.end_crit_edge ], [ %spec.store.select, %if.then21 ], [ 0, %entry.for.end_crit_edge ], [ -14, %if.end73.for.end_crit_edge ], [ 0, %put_page.exit163.for.end_crit_edge ], [ 0, %if.end9.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %retval1.1.ph = phi i32 [ %retval1.0202, %if.then.i4.i ], [ %retval1.0202, %folio_put_testzero.exit.i.i.for.end_crit_edge ], [ %retval1.0202, %if.then49.for.end_crit_edge ], [ %retval1.0202, %if.then21 ], [ 0, %entry.for.end_crit_edge ], [ %add, %if.end73.for.end_crit_edge ], [ %add, %put_page.exit163.for.end_crit_edge ], [ %retval1.0202, %if.end9.for.end_crit_edge ], [ %add, %cleanup.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  %conv83 = zext i32 %index.1.ph to i64
  %shl = shl nuw nsw i64 %conv83, 12
  %conv84 = zext i32 %offset.1.ph to i64
  %add85 = add nuw nsw i64 %shl, %conv84
  %58 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add85, ptr %ki_pos, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end.file_accessed.exit_crit_edge

for.end.file_accessed.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_accessed.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #15
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %for.end.file_accessed.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.ph)
  %tobool86.not = icmp eq i32 %retval1.1.ph, 0
  %error.1.retval1.1 = select i1 %tobool86.not, i32 %error.1.ph, i32 %retval1.1.ph
  ret i32 %error.1.retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_mmap(ptr noundef %file, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %seals = getelementptr i8, ptr %1, i32 -92
  %2 = ptrtoint ptr %seals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seals, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %entry
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags.i, align 4
  %and1.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %6 = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %.not.i = icmp eq i32 %6, 10
  %brmerge.i = or i1 %.not.i, %tobool2.not.i
  br i1 %brmerge.i, label %seal_check_future_write.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %and12.i = and i32 %5, -33
  %7 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and12.i, ptr %vm_flags.i, align 4
  br label %if.end

seal_check_future_write.exit:                     ; preds = %if.then.i
  br i1 %.not.i, label %seal_check_future_write.exit.cleanup_crit_edge, label %seal_check_future_write.exit.if.end_crit_edge

seal_check_future_write.exit.if.end_crit_edge:    ; preds = %seal_check_future_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

seal_check_future_write.exit.cleanup_crit_edge:   ; preds = %seal_check_future_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %seal_check_future_write.exit.if.end_crit_edge, %if.then10.i, %entry.if.end_crit_edge
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags.i, align 4
  %and.i8 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %if.then.i10, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_accessed.exit

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #15
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i10, %if.end.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @shmem_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %seal_check_future_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -1, %seal_check_future_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %shmem_falloc = alloca %struct.shmem_falloc, align 4
  %shmem_falloc_waitq = alloca %struct.wait_queue_head, align 4
  %page = alloca ptr, align 4
  %tmp183 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %shmem_falloc) #15
  %6 = getelementptr inbounds %struct.shmem_falloc, ptr %shmem_falloc, i32 0, i32 1
  %7 = getelementptr inbounds %struct.shmem_falloc, ptr %shmem_falloc, i32 0, i32 2
  %8 = getelementptr inbounds %struct.shmem_falloc, ptr %shmem_falloc, i32 0, i32 3
  %9 = getelementptr inbounds %struct.shmem_falloc, ptr %shmem_falloc, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 4
  %10 = call ptr @memset(ptr %shmem_falloc, i32 255, i32 20)
  br i1 %tobool.not, label %if.end, label %entry.cleanup188_crit_edge

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup188

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %and3 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end75, label %if.then5

if.then5:                                         ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping, align 4
  %sub = add i64 %offset, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  %add6 = add i64 %len, %offset
  %and7 = and i64 %add6, -4096
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %shmem_falloc_waitq) #15
  %13 = call ptr @memset(ptr %shmem_falloc_waitq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %shmem_falloc_waitq, ptr noundef nonnull @.str.68, ptr noundef nonnull @shmem_fallocate.__key) #15
  %seals = getelementptr i8, ptr %1, i32 -92
  %14 = ptrtoint ptr %seals to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seals, align 4
  %and9 = and i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  %sub8 = add i64 %and7, -1
  %16 = ptrtoint ptr %shmem_falloc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %shmem_falloc_waitq, ptr %shmem_falloc, align 4
  %shr = lshr exact i64 %add, 12
  %conv = trunc i64 %shr to i32
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %6, align 4
  %18 = lshr i64 %add6, 12
  %conv16 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv16, ptr %7, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %20 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %shmem_falloc, ptr %i_private, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8, i64 %add)
  %cmp = icmp ugt i64 %sub8, %add
  br i1 %cmp, label %if.then19, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %sub21 = sub i64 %and7, %add
  call void @unmap_mapping_range(ptr noundef %12, i64 noundef %add, i64 noundef %sub21, i32 noundef 0) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end12.if.end22_crit_edge
  %sub24 = add i64 %add6, -1
  call fastcc void @shmem_undo_range(ptr noundef %1, i64 noundef %offset, i64 noundef %sub24, i1 noundef zeroext false) #15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %1) #15
  %21 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #15
  %22 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_mtime.i, i32 16)
  call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %23 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %i_private, align 4
  call void @__wake_up(ptr noundef nonnull %shmem_falloc_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %shmem_falloc_waitq, i32 0, i32 1
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %25, %head
  br i1 %cmp.i.not, label %if.end22.if.end63_crit_edge, label %land.rhs

if.end22.if.end63_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

land.rhs:                                         ; preds = %if.end22
  %.b270 = load i1, ptr @shmem_fallocate.__already_done, align 1
  br i1 %.b270, label %land.rhs.if.end63_crit_edge, label %if.then38, !prof !231

land.rhs.if.end63_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @shmem_fallocate.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2667, i32 noundef 9, ptr noundef null) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then38, %land.rhs.if.end63_crit_edge, %if.end22.if.end63_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then5.cleanup_crit_edge
  %error.0 = phi i32 [ 0, %if.end63 ], [ -1, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %shmem_falloc_waitq) #15
  br label %out

if.end75:                                         ; preds = %if.end
  %add76 = add i64 %len, %offset
  %call77 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %add76) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end80:                                         ; preds = %if.end75
  %seals81 = getelementptr i8, ptr %1, i32 -92
  %26 = ptrtoint ptr %seals81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seals81, align 4
  %and82 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.if.end88_crit_edge, label %land.lhs.true

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

land.lhs.true:                                    ; preds = %if.end80
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add76, i64 %29)
  %cmp85 = icmp sgt i64 %add76, %29
  br i1 %cmp85, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end88:                                         ; preds = %land.lhs.true.if.end88_crit_edge, %if.end80.if.end88_crit_edge
  %30 = lshr i64 %offset, 12
  %conv90 = trunc i64 %30 to i32
  %sub93 = add i64 %add76, 4095
  %31 = lshr i64 %sub93, 12
  %conv95 = trunc i64 %31 to i32
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool96.not = icmp ne i32 %33, 0
  %sub98 = sub i32 %conv95, %conv90
  call void @__sanitizer_cov_trace_cmp4(i32 %sub98, i32 %33)
  %cmp100 = icmp ugt i32 %sub98, %33
  %or.cond = and i1 %tobool96.not, %cmp100
  br i1 %or.cond, label %if.end88.out_crit_edge, label %if.end103

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end103:                                        ; preds = %if.end88
  %34 = ptrtoint ptr %shmem_falloc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %shmem_falloc, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv90, ptr %6, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv90, ptr %7, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %8, align 4
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %9, align 4
  %i_lock107 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock107) #15
  %i_private108 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %39 = ptrtoint ptr %i_private108 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %shmem_falloc, ptr %i_private108, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock107) #15
  %fallocend = getelementptr i8, ptr %1, i32 -76
  %40 = ptrtoint ptr %fallocend to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fallocend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv95)
  %cmp111 = icmp ult i32 %41, %conv95
  br i1 %cmp111, label %if.then113, label %if.end103.if.end115_crit_edge

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then113:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %fallocend to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv95, ptr %fallocend, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end103.if.end115_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv95, i32 %conv90)
  %cmp116295 = icmp ugt i32 %conv95, %conv90
  br i1 %cmp116295, label %for.body.lr.ph, label %if.end115.for.end_crit_edge

if.end115.for.end_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end115
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup172.for.body_crit_edge, %for.body.lr.ph
  %index.0296 = phi i32 [ %conv90, %for.body.lr.ph ], [ %inc, %cleanup172.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %43 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !230
  %44 = call i32 @llvm.read_register.i32(metadata !220) #15
  %and.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stack.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %for.body.if.then132_crit_edge, !prof !231

for.body.if.then132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then132

signal_pending.exit:                              ; preds = %for.body
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %49, align 4
  %and1.i.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool120.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool120.not, label %if.else, label %signal_pending.exit.if.then132_crit_edge

signal_pending.exit.if.then132_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then132

if.else:                                          ; preds = %signal_pending.exit
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %9, align 4
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp124 = icmp ugt i32 %56, %58
  br i1 %cmp124, label %if.else.if.then132_crit_edge, label %if.end130

if.else.if.then132_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then132

if.end130:                                        ; preds = %if.else
  %59 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_mapping.i, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = call fastcc i32 @shmem_getpage_gfp(ptr noundef %1, i32 noundef %index.0296, ptr noundef nonnull %page, i32 noundef 4, i32 noundef %62, ptr noundef null, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool131.not = icmp eq i32 %call1.i, 0
  br i1 %tobool131.not, label %if.end142, label %if.end130.if.then132_crit_edge

if.end130.if.then132_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then132

if.then132:                                       ; preds = %if.end130.if.then132_crit_edge, %if.else.if.then132_crit_edge, %signal_pending.exit.if.then132_crit_edge, %for.body.if.then132_crit_edge
  %error.2284 = phi i32 [ %call1.i, %if.end130.if.then132_crit_edge ], [ -12, %if.else.if.then132_crit_edge ], [ -4, %signal_pending.exit.if.then132_crit_edge ], [ -4, %for.body.if.then132_crit_edge ]
  %63 = ptrtoint ptr %fallocend to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %41, ptr %fallocend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0296, i32 %conv90)
  %cmp134 = icmp ugt i32 %index.0296, %conv90
  br i1 %cmp134, label %if.then136, label %if.then132.cleanup172.thread_crit_edge

if.then132.cleanup172.thread_crit_edge:           ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup172.thread

if.then136:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #17
  %shl = and i64 %offset, 17592186040320
  %conv138 = zext i32 %index.0296 to i64
  %shl139 = shl nuw nsw i64 %conv138, 12
  %sub140 = add nsw i64 %shl139, -1
  call fastcc void @shmem_undo_range(ptr noundef %1, i64 noundef %shl, i64 noundef %sub140, i1 noundef zeroext true)
  br label %cleanup172.thread

if.end142:                                        ; preds = %if.end130
  %inc = add nuw i32 %index.0296, 1
  %64 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %page, align 4
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %69, %if.end.i.i ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %71 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %and.i.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %74 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.26) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %70, align 4
  %77 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i, label %if.then162, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end167

if.then162:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %7, align 4
  %sub164 = sub i32 %inc, %79
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %8, align 4
  %add166 = add i32 %sub164, %81
  store i32 %add166, ptr %8, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %PageUptodate.exit
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %inc, ptr %7, align 4
  %call169 = call zeroext i1 @set_page_dirty(ptr noundef %65) #15
  call void @unlock_page(ptr noundef %65) #15
  %83 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %66, align 4
  %and.i.i271 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i271)
  %tobool.not.i.i272 = icmp eq i32 %and.i.i271, 0
  br i1 %tobool.not.i.i272, label %if.end.i.i275, label %if.then.i.i274, !prof !231

if.then.i.i274:                                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i273 = add i32 %84, -1
  br label %_compound_head.exit.i277

if.end.i.i275:                                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i277

_compound_head.exit.i277:                         ; preds = %if.end.i.i275, %if.then.i.i274
  %retval.0.i.i276 = phi i32 [ %sub.i.i273, %if.then.i.i274 ], [ %85, %if.end.i.i275 ]
  %86 = inttoptr i32 %retval.0.i.i276 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %87 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i277
  call void @__sanitizer_cov_trace_pc() #17
  %89 = inttoptr i32 %retval.0.i.i276 to ptr
  call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.28) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i277
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_fallocate, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %86, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup172_crit_edge

folio_put_testzero.exit.i.i.cleanup172_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup172

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %86) #15
  br label %cleanup172

cleanup172.thread:                                ; preds = %if.then136, %if.then132.cleanup172.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  br label %undone

cleanup172:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup172_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2764, i32 noundef 0) #15
  %call.i = call i32 @__cond_resched() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  %exitcond.not = icmp eq i32 %inc, %conv95
  br i1 %exitcond.not, label %cleanup172.for.end_crit_edge, label %cleanup172.for.body_crit_edge

cleanup172.for.body_crit_edge:                    ; preds = %cleanup172
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup172.for.end_crit_edge:                     ; preds = %cleanup172
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup172.for.end_crit_edge, %if.end115.for.end_crit_edge
  %and173 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %land.lhs.true175, label %for.end.if.end182_crit_edge

for.end.if.end182_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182

land.lhs.true175:                                 ; preds = %for.end
  %i_size177 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %91 = ptrtoint ptr %i_size177 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %i_size177, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add76, i64 %92)
  %cmp178 = icmp sgt i64 %add76, %92
  br i1 %cmp178, label %if.then180, label %land.lhs.true175.if.end182_crit_edge

land.lhs.true175.if.end182_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182

if.then180:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @i_size_write(ptr noundef %1, i64 noundef %add76)
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %land.lhs.true175.if.end182_crit_edge, %for.end.if.end182_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp183) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp183, ptr noundef %1) #15
  %93 = call ptr @memcpy(ptr %i_ctime, ptr %tmp183, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp183) #15
  br label %undone

undone:                                           ; preds = %if.end182, %cleanup172.thread
  %error.3 = phi i32 [ 0, %if.end182 ], [ %error.2284, %cleanup172.thread ]
  call void @_raw_spin_lock(ptr noundef %i_lock107) #15
  %94 = ptrtoint ptr %i_private108 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %i_private108, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock107) #15
  br label %out

out:                                              ; preds = %undone, %if.end88.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end75.out_crit_edge, %cleanup
  %error.4 = phi i32 [ %error.0, %cleanup ], [ %call77, %if.end75.out_crit_edge ], [ %error.3, %undone ], [ -1, %land.lhs.true.out_crit_edge ], [ -28, %if.end88.out_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #15
  br label %cleanup188

cleanup188:                                       ; preds = %out, %entry.cleanup188_crit_edge
  %retval.0 = phi i32 [ %error.4, %out ], [ -95, %entry.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %shmem_falloc) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mapping_seek_hole_data(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, -32768
  %call = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_link(ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  %stat_lock.i = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock.i) #15
  %max_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %max_inodes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_inodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then2.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i
  %free_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_inodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i, label %shmem_reserve_inode.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add i32 %14, -1
  %15 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec.i, ptr %free_inodes.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %if.then.i.if.end7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %if.end4

shmem_reserve_inode.exit:                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %out

if.end4:                                          ; preds = %if.end7.i, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %16 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size, align 8
  %add = add i64 %17, 20
  store i64 %add, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime5 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #15
  %18 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %19 = call ptr @memcpy(ptr %i_ctime5, ptr %i_mtime, i32 16)
  %20 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @inc_nlink(ptr noundef %1) #15
  call void @ihold(ptr noundef %1) #15
  %tobool.not.i17 = icmp eq ptr %dentry, null
  br i1 %tobool.not.i17, label %if.end4.dget.exit_crit_edge, label %if.then.i18

if.end4.dget.exit_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %dget.exit

if.then.i18:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #15
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i18, %if.end4.dget.exit_crit_edge
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #15
  br label %out

out:                                              ; preds = %dget.exit, %shmem_reserve_inode.exit
  %ret.1 = phi i32 [ -28, %shmem_reserve_inode.exit ], [ 0, %dget.exit ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_unlink(ptr nocapture noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp1 = icmp eq i16 %7, 16384
  br i1 %cmp1, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %max_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %max_inodes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %stat_lock.i = getelementptr inbounds %struct.shmem_sb_info, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %stat_lock.i) #15
  %free_inodes.i = getelementptr inbounds %struct.shmem_sb_info, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %free_inodes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_inodes.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %free_inodes.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stat_lock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %16 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size, align 8
  %sub = add i64 %17, -20
  store i64 %sub, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime3 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #15
  %18 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %19 = call ptr @memcpy(ptr %i_ctime3, ptr %i_mtime, i32 16)
  %20 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @drop_nlink(ptr noundef %1) #15
  call void @dput(ptr noundef %dentry) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !230
  %call = tail call i32 @strlen(ptr noundef %symname) #21
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call1 = tail call fastcc ptr @shmem_get_inode(ptr noundef %2, ptr noundef %dir, i16 noundef zeroext -24065, i32 noundef 0, i32 noundef 2097152)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call4 = tail call i32 @security_inode_init_security(ptr noundef nonnull %call1, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull @shmem_initxattrs, ptr noundef null) #15
  %3 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call4, label %if.then7 [
    i32 0, label %if.end3.if.end8_crit_edge
    i32 -95, label %if.end3.if.end8_crit_edge61
  ]

if.end3.if.end8_crit_edge61:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3.if.end8_crit_edge, %if.end3.if.end8_crit_edge61
  %conv = sext i32 %call to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %add)
  %cmp9 = icmp ult i32 %add, 129
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %call12 = tail call ptr @kmemdup(ptr noundef %symname, i32 noundef %add, i32 noundef 3264) #15
  %5 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 48
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %5, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @shmem_short_symlink_operations, ptr %i_op, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end8
  tail call void @inode_nohighmem(ptr noundef nonnull %call1) #15
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping.i, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = call fastcc i32 @shmem_getpage_gfp(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef nonnull %page, i32 noundef 3, i32 noundef %11, ptr noundef null, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool17.not = icmp eq i32 %call1.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %12 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping.i, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @shmem_aops, ptr %a_ops, align 4
  %i_op20 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %15 = ptrtoint ptr %i_op20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @shmem_symlink_inode_operations, ptr %i_op20, align 8
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page, align 4
  %call21 = tail call ptr @page_address(ptr noundef %17) #15
  %18 = call ptr @memcpy(ptr %call21, ptr %symname, i32 %add)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %19 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %17) #15
  %call22 = tail call zeroext i1 @set_page_dirty(ptr noundef %17) #15
  tail call void @unlock_page(ptr noundef %17) #15
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %17 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_symlink, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end23_crit_edge

folio_put_testzero.exit.i.i.if.end23_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %25) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end23_crit_edge, %if.end15
  %i_size24 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %29 = ptrtoint ptr %i_size24 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size24, align 8
  %add25 = add i64 %30, 20
  store i64 %add25, ptr %i_size24, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #15
  %31 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %32 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1) #15
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %if.then.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end23.cleanup_crit_edge, %if.then18, %if.then14, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then7 ], [ -12, %if.then14 ], [ %call1.i, %if.then18 ], [ -36, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @inc_nlink(ptr noundef %dir) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_empty(ptr noundef %dentry) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  tail call void @drop_nlink(ptr noundef %1) #15
  tail call void @drop_nlink(ptr noundef %dir) #15
  %call2 = tail call i32 @shmem_unlink(ptr noundef %dir, ptr noundef %dentry)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -39, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call fastcc ptr @shmem_get_inode(ptr noundef %1, ptr noundef %dir, i16 noundef zeroext %mode, i32 noundef %dev, i32 noundef 2097152)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @simple_acl_create(ptr noundef %dir, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.out_iput_crit_edge

if.then.out_iput_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_iput

if.end:                                           ; preds = %if.then
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call4 = tail call i32 @security_inode_init_security(ptr noundef nonnull %call, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull @shmem_initxattrs, ptr noundef null) #15
  %2 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call4, label %if.end.out_iput_crit_edge [
    i32 0, label %if.end.if.end7_crit_edge
    i32 -95, label %if.end.if.end7_crit_edge28
  ]

if.end.if.end7_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end.out_iput_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_iput

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge28
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_size, align 8
  %add = add i64 %4, 20
  store i64 %add, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #15
  %5 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %6 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call) #15
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #15
  br label %cleanup

out_iput:                                         ; preds = %if.end.out_iput_crit_edge, %if.then.out_iput_crit_edge
  %error.1 = phi i32 [ %call1, %if.then.out_iput_crit_edge ], [ %call4, %if.end.out_iput_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out_iput, %if.then.i, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_iput ], [ -28, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

if.end:                                           ; preds = %entry
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 @simple_rename_exchange(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #15
  br label %cleanup35

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @simple_empty(ptr noundef %new_dentry) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup35_crit_edge, label %if.end11

if.end7.cleanup35_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

if.end11:                                         ; preds = %if.end7
  %and12 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 3
  %5 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_parent.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call.i = tail call ptr @d_alloc(ptr noundef %6, ptr noundef %d_name.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then14.cleanup35_crit_edge, label %if.end.i

if.then14.cleanup35_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

if.end.i:                                         ; preds = %if.then14
  %call1.i = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %old_dir, ptr noundef nonnull %call.i, i16 noundef zeroext 8192, i32 noundef 0) #15
  tail call void @dput(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %shmem_whiteout.exit, label %if.end.i.cleanup35_crit_edge

if.end.i.cleanup35_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup35

shmem_whiteout.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_rehash(ptr noundef nonnull %call.i) #15
  br label %if.end19

if.end19:                                         ; preds = %shmem_whiteout.exit, %if.end11.if.end19_crit_edge
  %d_inode.i60 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i60, align 8
  %cmp.i.not = icmp eq ptr %8, null
  br i1 %cmp.i.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = tail call i32 @shmem_unlink(ptr noundef %new_dir, ptr noundef %new_dentry)
  br i1 %cmp, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %d_inode.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i60, align 8
  tail call void @drop_nlink(ptr noundef %10) #15
  tail call void @drop_nlink(ptr noundef %old_dir) #15
  br label %if.end30

if.else:                                          ; preds = %if.end19
  br i1 %cmp, label %if.then28, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @drop_nlink(ptr noundef %old_dir) #15
  tail call void @inc_nlink(ptr noundef %new_dir) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else.if.end30_crit_edge, %if.then24, %if.then21.if.end30_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %sub = add i64 %12, -20
  store i64 %sub, ptr %i_size, align 8
  %i_size31 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 14
  %13 = ptrtoint ptr %i_size31 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size31, align 8
  %add = add i64 %14, 20
  store i64 %add, ptr %i_size31, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  %i_ctime32 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %i_mtime33 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_ctime34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %old_dir) #15
  %15 = call ptr @memcpy(ptr %i_ctime34, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %16 = call ptr @memcpy(ptr %i_mtime33, ptr %i_ctime34, i32 16)
  %17 = call ptr @memmove(ptr %i_ctime32, ptr %i_ctime34, i32 16)
  %18 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime32, i32 16)
  %19 = call ptr @memmove(ptr %i_ctime, ptr %i_ctime32, i32 16)
  br label %cleanup35

cleanup35:                                        ; preds = %if.end30, %if.end.i.cleanup35_crit_edge, %if.then14.cleanup35_crit_edge, %if.end7.cleanup35_crit_edge, %if.then5, %entry.cleanup35_crit_edge
  %retval.1 = phi i32 [ %call6, %if.then5 ], [ 0, %if.end30 ], [ -22, %entry.cleanup35_crit_edge ], [ -39, %if.end7.cleanup35_crit_edge ], [ %call1.i, %if.end.i.cleanup35_crit_edge ], [ -12, %if.then14.cleanup35_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call fastcc ptr @shmem_get_inode(ptr noundef %1, ptr noundef %dir, i16 noundef zeroext %mode, i32 noundef 0, i32 noundef 2097152)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @security_inode_init_security(ptr noundef nonnull %call, ptr noundef %dir, ptr noundef null, ptr noundef nonnull @shmem_initxattrs, ptr noundef null) #15
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call1, label %if.then.out_iput_crit_edge [
    i32 0, label %if.then.if.end_crit_edge
    i32 -95, label %if.then.if.end_crit_edge21
  ]

if.then.if.end_crit_edge21:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.out_iput_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_iput

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge21
  %call4 = tail call i32 @simple_acl_create(ptr noundef %dir, ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_iput_crit_edge

if.end.out_iput_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_iput

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_tmpfile(ptr noundef %dentry, ptr noundef nonnull %call) #15
  br label %cleanup

out_iput:                                         ; preds = %if.end.out_iput_crit_edge, %if.then.out_iput_crit_edge
  %error.1 = phi i32 [ %call4, %if.end.out_iput_crit_edge ], [ %call1, %if.then.out_iput_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out_iput, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_iput ], [ 0, %if.end7 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmem_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readnone %fs_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not34 = icmp eq ptr %1, null
  br i1 %cmp.not34, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %xattrs = getelementptr i8, ptr %inode, i32 -56
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %xattr.035 = phi ptr [ %xattr_array, %for.body.lr.ph ], [ %incdec.ptr, %if.end10.for.body_crit_edge ]
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.035, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.035, i32 0, i32 2
  %4 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_len, align 4
  %call1 = tail call ptr @simple_xattr_alloc(ptr noundef %3, i32 noundef %5) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %xattr.035 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr.035, align 4
  %call3 = tail call i32 @strlen(ptr noundef %7) #21
  %add4 = add i32 %call3, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 3264) #22
  %name6 = getelementptr inbounds %struct.simple_xattr, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %name6, align 4
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %call1) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add = add i32 %call3, 1
  %9 = call ptr @memcpy(ptr %call9.i, ptr @.str.64, i32 9)
  %10 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name6, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 9
  %12 = ptrtoint ptr %xattr.035 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xattr.035, align 4
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %13, i32 %add)
  tail call void @simple_xattr_list_add(ptr noundef %xattrs, ptr noundef nonnull %call1) #15
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.035, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %if.then9, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_xattr_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_xattr_list_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @shmem_get_link(ptr noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %page, align 4
  %tobool.not = icmp eq ptr %dentry, null
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %3 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %page, align 4
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !231

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.26) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !232
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.then8, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !233
  br label %if.end25

if.then8:                                         ; preds = %folio_flags.exit.i.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and.i.i30 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !231

if.then.i.i33:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i32 = add i32 %16, -1
  br label %_compound_head.exit.i36

if.end.i.i34:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %17, %if.end.i.i34 ]
  %18 = inttoptr i32 %retval.0.i.i35 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i36
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_get_link, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %18) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = call fastcc i32 @shmem_getpage_gfp(ptr noundef %inode, i32 noundef 0, ptr noundef nonnull %page, i32 noundef 0, i32 noundef %23, ptr noundef null, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool12.not = icmp eq i32 %call1.i, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %24 = inttoptr i32 %call1.i to ptr
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page, align 4
  %tobool16.not = icmp eq ptr %26, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_page(ptr noundef nonnull %26) #15
  br label %if.end25

if.end25:                                         ; preds = %if.end19, %PageUptodate.exit
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page, align 4
  %29 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @shmem_put_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %30 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %arg2.i, align 4
  %call26 = tail call ptr @page_address(ptr noundef %28) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end15.cleanup_crit_edge, %if.then13, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %if.then13 ], [ %call26, %if.end25 ], [ inttoptr (i32 -10 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %if.then.i4.i ], [ inttoptr (i32 -10 to ptr), %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_put_link(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mark_page_accessed(ptr noundef %arg) #15
  %0 = getelementptr inbounds %struct.page, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !231

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %arg to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !234

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.28) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@shmem_put_link, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !239

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %4) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_acl_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename_exchange(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_rehash(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_init_inode(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.shmem_inode_info, ptr %foo, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %vfs_inode) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !87, !89, !91, !93, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !148, !150, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !182, !184, !185, !187, !189, !191, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218}
!llvm.named.register.sp = !{!220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/shmem.c", i32 880, i32 3}
!2 = !{ptr @__ksymtab_shmem_truncate_range, !3, !"__ksymtab_shmem_truncate_range", i1 false, i1 false}
!3 = !{!"../mm/shmem.c", i32 1045, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/shmem.c", i32 3315, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/shmem.c", i32 3316, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/shmem.c", i32 3317, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/shmem.c", i32 3318, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/shmem.c", i32 3319, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/shmem.c", i32 3320, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/shmem.c", i32 3321, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/shmem.c", i32 3322, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/shmem.c", i32 3323, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/shmem.c", i32 3324, i32 2}
!24 = !{ptr @shmem_fs_parameters, !25, !"shmem_fs_parameters", i1 false, i1 false}
!25 = !{!"../mm/shmem.c", i32 3314, i32 32}
!26 = !{ptr @shmem_aops, !27, !"shmem_aops", i1 false, i1 false}
!27 = !{!"../mm/shmem.c", i32 3754, i32 39}
!28 = !{ptr @__ksymtab_shmem_aops, !29, !"__ksymtab_shmem_aops", i1 false, i1 false}
!29 = !{!"../mm/shmem.c", i32 3766, i32 1}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../mm/shmem.c", i32 3858, i32 13}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../mm/shmem.c", i32 3859, i32 13}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/shmem.c", i32 3885, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @shmem_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @shmem_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../mm/shmem.c", i32 3892, i32 3}
!41 = !{ptr @shmem_init._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @shmem_init._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_shmem_file_setup, !44, !"__ksymtab_shmem_file_setup", i1 false, i1 false}
!44 = !{!"../mm/shmem.c", i32 4095, i32 1}
!45 = !{ptr @__ksymtab_shmem_file_setup_with_mnt, !46, !"__ksymtab_shmem_file_setup_with_mnt", i1 false, i1 false}
!46 = !{!"../mm/shmem.c", i32 4109, i32 1}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../mm/shmem.c", i32 4126, i32 33}
!49 = !{ptr @__ksymtab_shmem_read_mapping_page_gfp, !50, !"__ksymtab_shmem_read_mapping_page_gfp", i1 false, i1 false}
!50 = !{!"../mm/shmem.c", i32 4187, i32 1}
!51 = !{ptr @shm_mnt, !52, !"shm_mnt", i1 false, i1 false}
!52 = !{!"../mm/shmem.c", i32 42, i32 25}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/shmem.c", i32 1022, i32 5}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/mm.h", i32 717, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/pagemap.h", i32 777, i32 2}
!78 = !{ptr @shmem_swaplist, !79, !"shmem_swaplist", i1 false, i1 false}
!79 = !{!"../mm/shmem.c", i32 256, i32 8}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../mm/shmem.c", i32 257, i32 8}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @shmem_swaplist_mutex, !81, !"shmem_swaplist_mutex", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/memcontrol.h", i32 1059, i32 31}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @vma_init.dummy_vm_ops, !88, !"dummy_vm_ops", i1 false, i1 false}
!88 = !{!"../include/linux/mm.h", i32 610, i32 43}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/page-flags.h", i32 493, i32 1}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!98 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/shmem.c", i32 705, i32 2}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../mm/shmem.c", i32 706, i32 2}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/shmem.c", i32 707, i32 2}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/shmem.c", i32 3307, i32 3}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../mm/shmem.c", i32 3308, i32 3}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../mm/shmem.c", i32 3309, i32 3}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../mm/shmem.c", i32 3310, i32 3}
!117 = !{ptr @shmem_param_enums_huge, !118, !"shmem_param_enums_huge", i1 false, i1 false}
!118 = !{!"../mm/shmem.c", i32 3306, i32 36}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../mm/shmem.c", i32 1343, i32 3}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/shmem.c", i32 770, i32 2}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @shmem_vm_ops, !127, !"shmem_vm_ops", i1 false, i1 false}
!127 = !{!"../mm/shmem.c", i32 3840, i32 42}
!128 = !{ptr @shmem_fs_context_ops, !129, !"shmem_fs_context_ops", i1 false, i1 false}
!129 = !{!"../mm/shmem.c", i32 3695, i32 43}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../mm/shmem.c", i32 3370, i32 24}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../mm/shmem.c", i32 3375, i32 24}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../mm/shmem.c", i32 3402, i32 11}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/shmem.c", i32 3412, i32 9}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../mm/shmem.c", i32 3414, i32 9}
!140 = !{ptr @shmem_fill_super.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../mm/shmem.c", i32 3645, i32 2}
!142 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @shmem_fill_super.__key.54, !144, !"__key", i1 false, i1 false}
!144 = !{!"../mm/shmem.c", i32 3646, i32 6}
!145 = !{ptr @shmem_fill_super.__key.55, !146, !"__key", i1 false, i1 false}
!146 = !{!"../mm/shmem.c", i32 3648, i32 2}
!147 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @shmem_export_ops, !149, !"shmem_export_ops", i1 false, i1 false}
!149 = !{!"../mm/shmem.c", i32 3287, i32 39}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../mm/shmem.c", i32 3271, i32 10}
!152 = !{ptr @shmem_encode_fh.lock, !151, !"lock", i1 false, i1 false}
!153 = !{ptr @shmem_ops, !154, !"shmem_ops", i1 false, i1 false}
!154 = !{!"../mm/shmem.c", i32 3823, i32 38}
!155 = !{ptr @shmem_inode_cachep, !156, !"shmem_inode_cachep", i1 false, i1 false}
!156 = !{!"../mm/shmem.c", i32 3705, i32 27}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/shmem.c", i32 3538, i32 19}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../mm/shmem.c", i32 3541, i32 19}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../mm/shmem.c", i32 3543, i32 19}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/shmem.c", i32 3545, i32 19}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../mm/shmem.c", i32 3548, i32 19}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../mm/shmem.c", i32 3572, i32 19}
!169 = !{ptr @shmem_xattr_handlers, !170, !"shmem_xattr_handlers", i1 false, i1 false}
!170 = !{!"../mm/shmem.c", i32 3181, i32 36}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../mm/shmem.c", i32 3170, i32 12}
!173 = !{ptr @shmem_security_xattr_handler, !174, !"shmem_security_xattr_handler", i1 false, i1 false}
!174 = !{!"../mm/shmem.c", i32 3169, i32 35}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../mm/shmem.c", i32 3176, i32 12}
!177 = !{ptr @shmem_trusted_xattr_handler, !178, !"shmem_trusted_xattr_handler", i1 false, i1 false}
!178 = !{!"../mm/shmem.c", i32 3175, i32 35}
!179 = !{ptr @shmem_get_inode.__key, !180, !"__key", i1 false, i1 false}
!180 = !{!"../mm/shmem.c", i32 2264, i32 3}
!181 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @simple_xattrs_init.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../include/linux/xattr.h", i32 100, i32 2}
!184 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @shmem_special_inode_operations, !186, !"shmem_special_inode_operations", i1 false, i1 false}
!186 = !{!"../mm/shmem.c", i32 3813, i32 38}
!187 = !{ptr @shmem_inode_operations, !188, !"shmem_inode_operations", i1 false, i1 false}
!188 = !{!"../mm/shmem.c", i32 3782, i32 38}
!189 = !{ptr @shmem_file_operations, !190, !"shmem_file_operations", i1 false, i1 false}
!190 = !{!"../mm/shmem.c", i32 3768, i32 37}
!191 = !{ptr @shmem_fallocate.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../mm/shmem.c", i32 2643, i32 3}
!193 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../mm/shmem.c", i32 2667, i32 3}
!196 = !{ptr @shmem_dir_inode_operations, !197, !"shmem_dir_inode_operations", i1 false, i1 false}
!197 = !{!"../mm/shmem.c", i32 3791, i32 38}
!198 = !{ptr @shmem_short_symlink_operations, !199, !"shmem_short_symlink_operations", i1 false, i1 false}
!199 = !{!"../mm/shmem.c", i32 3198, i32 38}
!200 = !{ptr @shmem_symlink_inode_operations, !201, !"shmem_symlink_inode_operations", i1 false, i1 false}
!201 = !{!"../mm/shmem.c", i32 3205, i32 38}
!202 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../mm/shmem.c", i32 3480, i32 10}
!204 = !{ptr @.str.70, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../mm/shmem.c", i32 3485, i32 10}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../mm/shmem.c", i32 3491, i32 10}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/shmem.c", i32 3495, i32 10}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../mm/shmem.c", i32 3502, i32 9}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../mm/shmem.c", i32 3530, i32 9}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../mm/shmem.c", i32 3737, i32 41}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../mm/shmem.c", i32 3868, i32 11}
!218 = !{ptr @shmem_fs_type, !219, !"shmem_fs_type", i1 false, i1 false}
!219 = !{!"../mm/shmem.c", i32 3866, i32 32}
!220 = !{!"sp"}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{!"branch_weights", i32 2000, i32 1}
!232 = !{i64 2150668488, i64 2150668979, i64 2150668525, i64 2150668581, i64 2150668615, i64 2150668639, i64 2150668680, i64 2150668701, i64 2150668729, i64 2150668763}
!233 = !{i64 2151418380}
!234 = !{!"branch_weights", i32 1, i32 2000}
!235 = !{i64 2153347260, i64 2153347743, i64 2153347297, i64 2153347353, i64 2153347387, i64 2153347411, i64 2153347452, i64 2153347473, i64 2153347501, i64 2153347535}
!236 = !{i64 2148848219}
!237 = !{i64 2148762928, i64 2148762960, i64 2148762989, i64 2148763023, i64 2148763054, i64 2148763077}
!238 = !{i64 2148848448}
!239 = !{i64 2148584341, i64 2148584346, i64 2148584359, i64 2148584403, i64 2148584437, i64 2148584458}
!240 = !{i64 2150678755, i64 2150679246, i64 2150678792, i64 2150678848, i64 2150678882, i64 2150678906, i64 2150678947, i64 2150678968, i64 2150678996, i64 2150679030}
!241 = !{i64 2150681135, i64 2150681626, i64 2150681172, i64 2150681228, i64 2150681262, i64 2150681286, i64 2150681327, i64 2150681348, i64 2150681376, i64 2150681410}
!242 = !{i64 2151121832, i64 2151122323, i64 2151121869, i64 2151121925, i64 2151121959, i64 2151121983, i64 2151122024, i64 2151122045, i64 2151122073, i64 2151122107}
!243 = !{i64 2151124212, i64 2151124703, i64 2151124249, i64 2151124305, i64 2151124339, i64 2151124363, i64 2151124404, i64 2151124425, i64 2151124453, i64 2151124487}
!244 = !{i64 2150774983, i64 2150775474, i64 2150775020, i64 2150775076, i64 2150775110, i64 2150775134, i64 2150775175, i64 2150775196, i64 2150775224, i64 2150775258}
!245 = !{i64 2151431213, i64 2151431704, i64 2151431250, i64 2151431306, i64 2151431340, i64 2151431364, i64 2151431405, i64 2151431426, i64 2151431454, i64 2151431488}
!246 = !{i64 2151419451}
!247 = !{i64 2150789617, i64 2150789790, i64 2150789805, i64 2150789857, i64 2150789916, i64 2150789940, i64 2150789981, i64 2150790002, i64 2150790030, i64 2150790062}
!248 = !{i64 2149572189}
!249 = !{i64 2149572455}
!250 = !{i64 2148768601, i64 2148768633, i64 2148768662, i64 2148768696, i64 2148768727, i64 2148768750}
!251 = !{i64 2148857706}
!252 = !{i64 2155899844, i64 2155900320, i64 2155899881, i64 2155899937, i64 2155899971, i64 2155899995, i64 2155900036, i64 2155900057, i64 2155900085, i64 2155900119}
!253 = !{i64 2148759743, i64 2148759769, i64 2148759798, i64 2148759832, i64 2148759863, i64 2148759886}
!254 = !{i64 2153866253}
!255 = !{i64 2152275039}
!256 = !{i64 2152272222, i64 2152272247}
!257 = !{i64 4767777}
!258 = !{i64 4767974}
!259 = !{i64 2152253207}
!260 = !{i64 2152275246}
!261 = !{i64 2153869024}
!262 = !{i64 2150675921, i64 2150676412, i64 2150675958, i64 2150676014, i64 2150676048, i64 2150676072, i64 2150676113, i64 2150676134, i64 2150676162, i64 2150676196}
!263 = !{i64 2155948800, i64 2155949276, i64 2155948837, i64 2155948893, i64 2155948927, i64 2155948951, i64 2155948992, i64 2155949013, i64 2155949041, i64 2155949075}
!264 = !{i64 2151091941, i64 2151092432, i64 2151091978, i64 2151092034, i64 2151092068, i64 2151092092, i64 2151092133, i64 2151092154, i64 2151092182, i64 2151092216}
!265 = !{i64 2155954467, i64 2155954943, i64 2155954504, i64 2155954560, i64 2155954594, i64 2155954618, i64 2155954659, i64 2155954680, i64 2155954708, i64 2155954742}
!266 = !{i64 2151419069}
!267 = !{i64 1164423, i64 1164484}
!268 = !{i64 1167155}
!269 = !{i64 1167440}
!270 = !{i64 2152602574}
!271 = !{i64 2152602416}
!272 = !{i64 2152602744}
!273 = !{i64 2150188558}
!274 = !{i64 2155876368, i64 2155876843, i64 2155876405, i64 2155876461, i64 2155876495, i64 2155876519, i64 2155876560, i64 2155876581, i64 2155876609, i64 2155876643}
!275 = !{i64 2155878389, i64 2155878864, i64 2155878426, i64 2155878482, i64 2155878516, i64 2155878540, i64 2155878581, i64 2155878602, i64 2155878630, i64 2155878664}
!276 = !{i64 2155880131, i64 2155880606, i64 2155880168, i64 2155880224, i64 2155880258, i64 2155880282, i64 2155880323, i64 2155880344, i64 2155880372, i64 2155880406}
!277 = !{i64 2155881893, i64 2155882368, i64 2155881930, i64 2155881986, i64 2155882020, i64 2155882044, i64 2155882085, i64 2155882106, i64 2155882134, i64 2155882168}
!278 = !{i64 2148762208, i64 2148762234, i64 2148762263, i64 2148762297, i64 2148762328, i64 2148762351}
!279 = !{i64 2155913625, i64 2155914101, i64 2155913662, i64 2155913718, i64 2155913752, i64 2155913776, i64 2155913817, i64 2155913838, i64 2155913866, i64 2155913900}
!280 = !{i64 2155916355, i64 2155916831, i64 2155916392, i64 2155916448, i64 2155916482, i64 2155916506, i64 2155916547, i64 2155916568, i64 2155916596, i64 2155916630}
!281 = !{i64 2155995079, i64 2155995555, i64 2155995116, i64 2155995172, i64 2155995206, i64 2155995230, i64 2155995271, i64 2155995292, i64 2155995320, i64 2155995354}
!282 = !{i64 2155926221, i64 2155926697, i64 2155926258, i64 2155926314, i64 2155926348, i64 2155926372, i64 2155926413, i64 2155926434, i64 2155926462, i64 2155926496}
!283 = !{i64 2151650244, i64 2151650728, i64 2151650281, i64 2151650337, i64 2151650371, i64 2151650395, i64 2151650436, i64 2151650457, i64 2151650485, i64 2151650519}
!284 = !{i64 2153367172, i64 2153367656, i64 2153367209, i64 2153367265, i64 2153367299, i64 2153367323, i64 2153367364, i64 2153367385, i64 2153367413, i64 2153367447}
!285 = !{i64 2151308555, i64 2151308728, i64 2151308743, i64 2151308795, i64 2151308854, i64 2151308878, i64 2151308919, i64 2151308940, i64 2151308968, i64 2151309000}
!286 = !{i64 2151309430, i64 2151309603, i64 2151309618, i64 2151309670, i64 2151309729, i64 2151309753, i64 2151309794, i64 2151309815, i64 2151309843, i64 2151309875}
!287 = !{i64 2155872209, i64 2155872684, i64 2155872246, i64 2155872302, i64 2155872336, i64 2155872360, i64 2155872401, i64 2155872422, i64 2155872450, i64 2155872484}
!288 = !{i64 2151317405, i64 2151317578, i64 2151317593, i64 2151317645, i64 2151317704, i64 2151317728, i64 2151317769, i64 2151317790, i64 2151317818, i64 2151317850}
!289 = !{i64 2151318280, i64 2151318453, i64 2151318468, i64 2151318520, i64 2151318579, i64 2151318603, i64 2151318644, i64 2151318665, i64 2151318693, i64 2151318725}
!290 = !{i64 2155888266, i64 2155888741, i64 2155888303, i64 2155888359, i64 2155888393, i64 2155888417, i64 2155888458, i64 2155888479, i64 2155888507, i64 2155888541}
!291 = !{i64 2155873788, i64 2155874263, i64 2155873825, i64 2155873881, i64 2155873915, i64 2155873939, i64 2155873980, i64 2155874001, i64 2155874029, i64 2155874063}
!292 = !{i64 2155889915, i64 2155890390, i64 2155889952, i64 2155890008, i64 2155890042, i64 2155890066, i64 2155890107, i64 2155890128, i64 2155890156, i64 2155890190}
!293 = !{i64 2152604505}
!294 = !{i64 2150080810}
!295 = !{i64 2150085744}
!296 = !{i64 2150107462}
!297 = !{i64 2150112356}
!298 = !{i64 2150188883}
!299 = !{i64 2150189208}
!300 = !{i64 2152616367}
!301 = !{i64 1123984, i64 1124011, i64 1124033, i64 1124061}
!302 = !{i64 1124392, i64 1124419, i64 1124452, i64 1124473, i64 1124500, i64 1124526}
!303 = !{i8 0, i8 2}
!304 = !{i64 2155870110}
!305 = !{i64 2155870462}
!306 = !{!307}
!307 = distinct !{!307, !308, !"uuid_to_fsid: %agg.result"}
!308 = distinct !{!308, !"uuid_to_fsid"}
